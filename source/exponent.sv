`timescale 1ps/1ps

module exponent (clock, reset_n, enable, x, a, p, ready); 
    input logic clock, reset_n, enable;
    input logic [31:0] x, a;
    output logic [31:0] p, ready;
    enum {IDLE, COMPUTE} state;

    always @(posedge clock) begin
        if (!reset_n) begin
            state <= IDLE;
            p <= 1;
            ready <= 0;
        end else case (state)
            IDLE: begin
                ready <= 1;
                if (enable) begin
                    state <= COMPUTE;
                end else begin
                    state <= IDLE;
                end
            end

        endcase
    end
endmodule: exponent

module enable_register (in, out, enable, clock, reset_n);
    parameter k = 64;
    input logic enable, clock;
    input logic [k-1:0] in;
    output logic reset_n;
    output logic [k-1:0] out;

    always @(posedge clock) begin
        if (!reset_n) begin
            out <= 0;
        end else begin
            if (enable) begin
                out <= in;
            end
        end
    end
endmodule: enable_register