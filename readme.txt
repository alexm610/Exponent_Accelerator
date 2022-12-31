This repository contains source files for a hardware accelerator for integer exponentials. 

DECEMBER 28, 2022
    - New project started!
    - The hardware accelerator will be based upon the example datapath given in lecture, from CPEN 311 2022W1
    - So far, the draft exponent.sv file has been made, soon to be tested. 

DECEMBER 30, 2022
    - Currently, the exponent accelerator and the interface files have been built, with the former tested thoroughly and the latter not; it is assumed to work.
    - Main goal for this project is to design it using Platform Designer within Quartus, so before I implement and test the main module, I am testing a simpler program.
        - The simpler program is an updated version of the 'lights' Platform Designer tutorial, where I added peripherals for all six HEX displays. The accompanying C code 
            moves the value on the switches to the LEDs and each HEX. 
        - Once the simpler program works, I will test a slightly more complex system, one that utilizes a custom IP component in Platform Designer. 
            - This custom component will take values placed onto its memory location, perform a logical shift left, and put the output on the memory bus to be read from, 
                and hopefully that new value will be put onto the LEDs and the HEX as was done with the simpler program. 
            - In the accompanying C program, the value on the switches will be placed at the base address of the custom component, the component will perform its computation, 
                and then place the output at the next word in memory (base_address_custom_component + 0x4)
    - The current .QSYS project 