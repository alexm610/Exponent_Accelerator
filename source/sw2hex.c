#include <stdio.h>

#define switches (volatile char*) 0x2070
#define hex0     (char*)          0x2050
#define hex1     (char*)          0x2040
#define hex2     (char*)          0x2030
#define hex3     (char*)          0x2020
#define hex4     (char*)          0x2010
#define hex5     (char*)          0x2000
#define leds     (char*)          0x2060

void main()
{
    while(1)
    {
        *hex0 = *switches;
        *hex1 = *switches;
        *hex2 = *switches;
        *hex3 = *switches;
        *hex4 = *switches;
        *hex5 = *switches;
        *leds = 0x0AD;//0011 0000 0000//*switches;
        //printf("%d", *switches);
    }
}