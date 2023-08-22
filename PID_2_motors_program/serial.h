// Code to work with Serial Port (by Yann Hendrikx).

#ifndef _serial.h
#define _serial.h
#include <system.h>

void serialInit(char rateScaler);

void serialSendChar(char value);
char serialReceiveChar();
void serialSendString(const char* text);
void serialSendHex(char n);
void serialSendDec(char n);
void serialSendBin(char n);


#endif
