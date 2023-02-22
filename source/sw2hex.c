#define switches (volatile char*) 0x00000080
#define hex0     (char*)          0x00000060
#define hex1     (char*)          0x00000050
#define hex2     (char*)          0x00000040
#define hex3     (char*)          0x00000030
#define hex4     (char*)          0x00000020
#define hex5     (char*)          0x00000010
#define leds     (char*)          0x00000070

void sw_to_hex_leds()
{
    *leds = *switches;
}