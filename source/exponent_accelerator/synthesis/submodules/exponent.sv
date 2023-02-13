`timescale 1ps/1ps

module exponenet (clock, reset_n, writedata, write, readdata, address, conduit_export);
    input logic clock, reset_n, write;
    input logic [31:0] writedata;
    input logic [23:0] address;
    output logic [31:0] readdata;
    output logic [31:0] conduit_export;
    enum {START} state;

    always @(posedge clock) begin
        if (!reset_n) begin
            state <= START;
            readdata <= 32'd0;
            //address <= 24'd0;
        end else begin
            case (state)
                START: begin
                    conduit_export <= writedata << 1'b1;
                    state <= START;
                    readdata <= writedata << 1'b1;
                    //address <= 24'd2;
                end
            endcase
        end
    end
endmodule: exponenet

/*
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
*/