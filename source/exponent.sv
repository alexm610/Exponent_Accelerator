`timescale 1ps/1ps

/*
    This module should instantiate the workhorse module below. It should have a state machine that waits for the 
    values "x", "a", and "p" to be written to writedata at different addresses. Each of those values are to be written
    to the memory location of this slave at increasing byte offsets.
*/
module exponent_accelerator (input logic clk, input logic reset_n,
                  input logic [3:0] address,
                  input logic read, output logic [31:0] readdata,
                  input logic write, input logic [31:0] writedata, 
                  output logic [7:0] exp_ledr, output logic [7:0] exp_hex);

    


endmodule: exponent_accelerator

//  instantiate this module in the above main module; this module uses a ready/enable microprotocol 
//      and thus can be re-triggered by the above controlling module
module exponent (clock, reset_n, enable, x, a, p, ready); 
    input logic clock, reset_n, enable;
    input logic [31:0] x, a;
    output logic [31:0] p;
    output logic ready;
    logic [31:0] base, exp;
    enum {IDLE, COMPUTE, DONE} state;

    always @(posedge clock) begin
        if (!reset_n) begin
            state <= IDLE;
            p <= 1;
            ready <= 0;
        end else case (state)
            IDLE: begin
                ready <= 1;
                p <= 1;
                base <= 32'd0;
                exp <= 32'd0;
                if (enable) begin
                    ready <= 0; // processing has begun, lower ready signal so no other requests are made from controller module
                    state <= COMPUTE;
                    // capture x and a
                    base <= x;
                    exp <= a;
                end else begin
                    state <= IDLE;
                end
            end
            COMPUTE: begin
                if (exp != 0) begin
                    p <= p * base;
                    exp <= exp - 32'd1;
                    state <= COMPUTE;
                end else begin
                    state <= DONE;
                end
            end
            DONE: begin
                if (!ready) begin
                    ready <= 1; 
                    state <= DONE;
                end else begin
                    state <= IDLE;
                    // don't forget to send the machine back into IDLE so it can be used again
                end 
            end
        endcase
    end
endmodule: exponent