#include <16F876.h>
#device adc=8

#FUSES NOWDT                 	//No Watch Dog Timer
#FUSES XT                    	//Crystal osc <= 4mhz
#FUSES PUT                   	//Power Up Timer
#FUSES NOPROTECT             	//Code not protected from reading
#FUSES BROWNOUT              	//Reset when brownout detected
#FUSES NOLVP                 	//No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOCPD                 	//No EE protection
#FUSES NOWRT                 	//Program memory not write protected
#FUSES NODEBUG               	//No Debug mode for ICD

#use delay(clock=4000000)
#use rs232(baud=9600,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)

