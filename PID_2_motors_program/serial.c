// Code to work with Serial Port (by Yann Hendrikx).

#include "serial.h"


void serialInit(char rateScaler)
{
	set_bit(trisc, 7 );			//RC7/RX as input
	clear_bit(trisc, 6 );		//RC6/TX as output
    spbrg = rateScaler;         //baud rate init
    txsta = 00100100b;          //8 bits, transmit enabled, Async, HighSpeed
    rcsta = 10010000b;          //serial port enable, receive enabled
}

void serialSendChar(char value)
{
    while((txsta & 1 << TRMT) == 0);                                 // TRMT is better then TXIF
    txreg = value;
}

char serialReceiveChar()
{
	if((pir1 & 1 << RCIF) == 0) 
		return 255;
    return rcreg;
}

void serialSendString(const char* text)
{
    char i = 0;
    while(text[i] != 0)
        serialSendChar(text[i++]);
}

void serialSendDec(char n)
{
    if(n > 99)
        serialSendChar(((n / 100) % 10) + '0');
    if(n > 9)
        serialSendChar(((n / 10) % 10) + '0');
    serialSendChar((n % 10) + '0');
}

void serialSendHex(char n)
{
    char hexChar;
    char i;
    for(i = 0; i < 2; i++)
    {
        if(i == 0)
            hexChar = n >> 4;
        else
            hexChar = n & 0x0F;
        if(hexChar < 10)
            hexChar = hexChar + '0';
        else
            hexChar = hexChar + ('A' - 10);
        serialSendChar(hexChar);
    }
}

void serialSendBin(char n)
{
    char i;
    for(i = 0; i < 8; i++)
    {
        if(n & 10000000b)
                serialSendChar('1');
        else
                serialSendChar('0');
        n <<= 1;
    }
}

