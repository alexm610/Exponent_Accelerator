# Exponent Accelerator

This project is a work in progress (see progress_report.txt for updates).

The goal of this project is to implement a hardware accelerator for a exponent-calculation algorithm written in SystemVerilog and implemented on an FPGA,
specifically a DE1-SoC. The Platform Designer tool within Quartus Prime is being used to implement the system on the embedded NIOS II processor on the DE1-Soc. A custom exponent-calculation component written in SystemVerilog has been drafted, and an interface module between the custom component and the NIOS II processor is being tested. 
When completed, version 1 of this system will have a software/hardware interface, so that a base and exponent would be stored in a program, the program would send the number to a memory location accessible by the hardware, trigger the hardware, wait for the response, and then report the calculation. In the future, I intend to create a second version of this system where a base and exponent can be inputted to the software in real-time. The software will (hopefully) be able to interact with a VGA monitor and a PS/2 keyboard for ease-of-use for the user. 
