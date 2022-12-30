`timescale 1ps/1ps  

module exp_interface (CLOCK_50, SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
    input logic CLOCK_50;
    input logic [3:0] KEY;
    input logic [9:0] SW;
    output logic [9:0] LEDR;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

    Exponent_accelerator EXP (.clk_clk(CLOCK_50),
        .hex0_export(HEX0),
        .hex1_export(HEX1),
        .hex2_export(HEX2),
        .hex3_export(HEX3),
        .hex4_export(HEX4),
        .hex5_export(HEX5),
        .ledr_export(LEDR),
        .reset_reset_n(KEY[3]),
        .switch_export(SW));
endmodule: exp_interface