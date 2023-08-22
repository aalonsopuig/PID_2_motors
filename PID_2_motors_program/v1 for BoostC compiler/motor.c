/*
  Program: Motor v 1.0
  by Alejandro Alonso-Puig
  mundobot.com
  January 2005

  Motor speed control for BoostC compiler. 
  Control a couple of DC motors with a PID algorithm. Could control the speed of both or each motor. 
  Use one PD controller per motor and an I controller to slave both motors.
  Could receive and send information via RS232C. For more information go to www.mundobot.com
  
*/

/*
	Hardware connections:
	
	RA4	(IN)	Channel 1 from encoder of Right motor (counter register input)
	RB0 (OUT)	Signal for change of direction of Right motor. Connect to E2 on Driver
	RB1	(OUT)	Signal for change of direction of Left motor. Connect to E3 on Driver
	RB2	(IN)	Channel 2 from encoder of Right motor
	RB3	(IN)	Channel 1 from encoder of Left motor
	RC0	(IN)	Channel 2 from encoder of Left motor (counter register input)
	RC1 (OUT)	PWM Signal for Left motor. Connect to E4 on Driver
	RC2 (OUT)	PWM Signal for Right motor. Connect to E1 on Driver
	RC6			RS232
	RC7			RS232
*/	
	
#include <system.h>
#include <rand.h>
#include "motor.h"
#include "serial.h"

#pragma CLOCK_FREQ 4000000

// Set configuration word
#ifdef _PIC16
#pragma DATA 0x2007, _XT_OSC & _WDT_OFF & _LVP_OFF
#endif //_PIC16
	


long		 	SetPoint=0,					//Speed set for Motors (tics)  
				CVRight=0, CVLeft=0,		//Control Variables for the motors
				CV,							//Control Variable for intermediate calculations
				PVRight=0, PVLeft=0,		//Process variables (feedback value)
				Kpro=50,					//Proportional constant (tenths)
				Kint=1,						//Integral constant (tenths)
				Kdif=40,					//Derivative constant (tenths)
				ErrRight=0, ErrLeft=0,		//Error values
				LastErrRight, LastErrLeft, 	//Used for the Derivative part
				ISum=0,						//Used for the Integral part
				Bias=0,						//Allow steering
				UnitDiv=50;					//Units division for internal calculations (This compiler doesn't use floating point)
											//It affects the Kpro, Kint and Kdif values, so if we want for example a derivative 
											//constant of 0,3, Kdif should be 0,3 x UnitDiv
char			Command, Value,				//For instructions received through serial port
				Kpause=12;					//The period for reading the encoders (Milliseconds)
bit 			Ch1Right@0x0005.4,			//Channel 1 from encoder of Right motor (RA4)
				Ch2Right@0x0006.2,			//Channel 2 from encoder of Right motor (RB2)
				Ch1Left@0x0006.3,			//Channel 1 from encoder of Left motor (RB3)
				Ch2Left@0x0007.0,			//Channel 2 from encoder of Left motor (RC0)
				DirRightFwd, DirLeftFwd,	//Used to identify the direction of the motors
				SendFeedback=0;				//Used to identify if feedback values should be sent via RS232
				
char			n;							//General purpose variable



/////////// MOTOR CONTROL FUNCTIONS ///////////

void SetPWM(long CVR, long CVL)
//Sets the PWM values for both motors
{
		long Module;							//Used for internal calculations
		

		//Right MOTOR -----------------
		
		CVR=CVR/UnitDiv;						//Convert units

		//Direction of rotation control
		if (CVR>=0)	clear_bit(portb,0); 		//CW rotation
		else
		{
			set_bit(portb,0); 					//CCW rotation
			CVR=255+CVR;						//obtain the negative PWM wave
		}
		
		//Set the PWM counter
		Module=CVR%4;
		ccpr1l=(CVR - Module)/4; 				//Equiv to floor() function
		clear_bit(ccp1con,5);
		clear_bit(ccp1con,4); 		
		if ((Module)>2)		set_bit(ccp1con,5); 		
		if ((Module%2)==1)	set_bit(ccp1con,4);
		

		//Left MOTOR -----------------

		CVL=CVL/UnitDiv;						//Convert units

		//Direction of rotation control
		if (CVL>=0) clear_bit(portb,1); 		//CW rotation
		else
		{
			set_bit(portb,1); 					//CCW rotation
			CVL=255+CVL;						//obtain the negative PWM wave
		}

		//Set the PWM counter
		Module=CVL%4;
		ccpr2l=(CVL - (Module))/4; 				//Equiv to floor() function
		clear_bit(ccp2con,5);
		clear_bit(ccp2con,4); 		
		if ((Module)>2)		set_bit(ccp2con,5); 		
		if ((Module%2)==1)	set_bit(ccp2con,4);

}

/////////// BODY ///////////

void main()
{
    trisa = 0;									//configure port A as output
    trisb = 0;									//configure port B as output
    trisc = 0;									//configure port C as output
    portb = 0;
    porta = 0;

	serialInit(25);								//Serial port inicialization. 9600bps


	//Configuration of input counters for reading the encoders
	//Timer0
    set_bit(trisa,4); 							//RA4 as input (T0CKI - TMR0) - Right Motor encoder signal
	option_reg=0;
	set_bit(option_reg, T0CS );					//TMR0. Counter mode. External signal
	set_bit(option_reg, PSA );					//Prescaler assigned to watchdog timer (not used by TMR0)
	//Timer1
    set_bit(trisc,0); 							//RC0 as input (T1CKI - TMR1) - Left Motor encoder signal
    t1con=0; 					
    set_bit(t1con,TMR1CS); 						//TMR1. Counter mode. External signal
    set_bit(t1con,TMR1ON); 						//Enable timer
    set_bit(t1con,T1SYNC); 						//No Sync

    set_bit(trisb,2); 							//RB2 as input for 2nd ch of Right Motor quadrature encoder 
    set_bit(trisb,3); 							//RB3 as input for 2nd ch of Left Motor quadrature encoder 

	//PWM generation 
	//CCP1
    clear_bit(trisc,2); 						//RC2 as output (PWM1)
	pr2=49;										//proper value for a 10khz PWM signal
	SetPWM(0, 0);
    t2con=0; 									//Prescaler and postscaler =1
    set_bit(t2con,TMR2ON); 						//Activate timer
    set_bit(ccp1con,CCP1M3); 					//Activate PWM generation
    set_bit(ccp1con,CCP1M2); 					//Activate PWM generation
	//CCP2
    clear_bit(trisc,1); 						//RC1 as output (PWM2)
    set_bit(ccp2con,CCP2M3); 					//Activate PWM generation
    set_bit(ccp2con,CCP2M2); 					//Activate PWM generation
   
	
	while(1)	/////MAIN LOOP/////
    {
		// Check Speed from encoders
		tmr0=tmr1l=0;							//Start measurement period
		delay_ms(Kpause);						//Allow timer to read pulses from encoder
		PVRight=tmr0;							//Read feedback Right encoder
		PVLeft=tmr1l;							//Read feedback Left encoder
		
		// Check direction from quadrature encoders
		for (n=0; n<255;n++) if (!Ch1Right) break;
		for (n=0; n<255;n++) if (Ch1Right) break;
		if (Ch2Right){
			DirRightFwd=0;
			PVRight=-PVRight;}
		else			DirRightFwd=1;
		
		for (n=0; n<255;n++) if (!Ch2Left) break;
		for (n=0; n<255;n++) if (Ch2Left) break;
		if (Ch1Left){
			DirLeftFwd=0;
			PVLeft=-PVLeft;}
		else			DirLeftFwd=1;

		
		//Right Motor Feedback Speed Control
		LastErrRight=ErrRight;
		ErrRight=SetPoint-PVRight;
		CVRight=CVRight + Kpro*ErrRight;					//Proportional part
		CVRight=CVRight + Kdif*(ErrRight-LastErrRight);		//Derivative part

		//Left Motor Feedback Speed Control
		LastErrLeft=ErrLeft;
		ErrLeft=SetPoint-PVLeft;
		CVLeft=CVLeft + Kpro*ErrLeft;						//Proportional part
		CVLeft=CVLeft + Kdif*(ErrLeft-LastErrLeft);			//Derivative part

		//Integral Part
		if (SetPoint>=0) 	ISum=ISum + (PVRight-PVLeft) + Bias;
		else				ISum=ISum + (PVRight-PVLeft) - Bias;
		CVRight=CVRight - Kint*ISum;
		CVLeft=CVLeft + Kint*ISum; 


		//Limits control. Due to the PWM frecuency (10Khz), the maximum resolution 
		//allowed for the counter register by the micro is 8 bits (0-255). As we are 
		//working with units/UnitDiv, the limit then for CVRight & CVLeft are -255*UnitDiv...+25500*UnitDiv
		if (CVRight>(255*UnitDiv)) CVRight=255*UnitDiv;
		if (CVRight<-(255*UnitDiv)) CVRight=-255*UnitDiv;
		if (CVLeft>(255*UnitDiv)) CVLeft=255*UnitDiv;
		if (CVLeft<-(255*UnitDiv)) CVLeft=-255*UnitDiv;

		SetPWM(CVRight, CVLeft);							//Set new PWM values for motor
 
		if (SendFeedback) //Sends through serial port the feedback values
		{
			if (SetPoint >= 0) 	{serialSendDec(SetPoint);}		
			else 				{serialSendChar(45);serialSendDec(-SetPoint);}					
			serialSendChar(9);
			if (PVLeft >= 0) 	{serialSendDec(PVLeft);}		
			else 				{serialSendChar(45);serialSendDec(-PVLeft);}					
			serialSendChar(9);
			if (PVRight >= 0) 	{serialSendDec(PVRight);}		
			else 				{serialSendChar(45);serialSendDec(-PVRight);}					
			serialSendChar(9);
			if (Kpro >= 0) 	{serialSendDec(Kpro);}		
			else 				{serialSendChar(45);serialSendDec(-Kpro);}					
			serialSendChar(9);
			if (Kdif >= 0) 	{serialSendDec(Kdif);}		
			else 				{serialSendChar(45);serialSendDec(-Kdif);}					
			serialSendChar(9);
			if (Kint >= 0) 	{serialSendDec(Kint);}		
			else 				{serialSendChar(45);serialSendDec(-Kint);}					
			serialSendChar(9);
			if (Bias >= 0) 	{serialSendDec(Bias);}		
			else 				{serialSendChar(45);serialSendDec(-Bias);}					
			serialSendChar(9);
			if (Kpause >= 0) 	{serialSendDec(Kpause);}		
			else 				{serialSendChar(45);serialSendDec(-Kpause);}					
			serialSendChar(13);
		}
		else delay_ms(20); //So in case info is transmitted or not, the time taken is the same.
       
        //Check for commands from Serial Port
        Command=serialReceiveChar();
		switch (Command) 
		{
			case 32:	//Set Speed (" ")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Value=serialReceiveChar();
				SetPoint=((int)Value-50)*10;
				break;
			case 33:	//Set Bias ("!")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Value=serialReceiveChar();
				Bias=((int)Value-50)*10;
				break;
			case 34:	//Set Kpro (""")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Value=serialReceiveChar();
				Kpro=((int)Value-50);
				break;
			case 35:	//Set Kint ("#")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Value=serialReceiveChar();
				Kint=((int)Value-50);
				break;
			case 36:	//Set Kdif ("$")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Value=serialReceiveChar();
				Kdif=((int)Value-50);
				break;
			case 37:	//Set Kpause ("%")
				while((pir1 & 1 << RCIF) == 0); //wait for Value
				Kpause=((int)Value-50);
				if (Kpause<0) Kpause=0;
				break;
			case 38:	//Ask for feedback values to be sent via serial port ("&")
				SendFeedback=1;
				break;
			case 39:	//Ask to stop sending feedback values ("'")
				SendFeedback=0;
				break;
			default:
				;
		}
    }
}

