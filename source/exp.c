/*#include <stdio.h>

#define accelerator_base (volatile int *) 0x2
#define ACC_OFFSET_x 0
#define ACC_OFFSET_a 4
#define ACC_OFFSET_p 8
#define ACC_OFFSET_rd 12

void exponent (void) 
{
    // set the read signal (to be read by the module) low to start off
    *(accelerator_base + ACC_OFFSET_rd) = 0x0;

    // put some data on the address line; 3^12
    *(accelerator_base + ACC_OFFSET_x) = 3;
    *(accelerator_base + ACC_OFFSET_a) = 12; 

    // if while loop breaks, then the module has asserted that is is ready to start a computation
    while (!(*(accelerator_base + ACC_OFFSET_rd) & 0x1));

    // start the module
    // set the second bit of this offset HIGH, indicating to the hardware that inputs are valid
    *(accelerator_base + ACC_OFFSET_rd) = 0x2; 

    // wait for the module to finish computing
    while (1) 
    {
        if (*(accelerator_base + ACC_OFFSET_rd) & 1) break;
    }

    // print the computed value
    printf("%d ^ %d = %d\r\n", *(accelerator_base + ACC_OFFSET_x), *(accelerator_base + ACC_OFFSET_a), *(accelerator_base + ACC_OFFSET_p));
}*/