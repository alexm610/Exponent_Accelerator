`timescale 1ps/1ps  

module tb_exponent;
    logic clock, reset_n, enable, ready;
    logic [31:0] x, a, p;

    exponent_accelerator dut (.*);

    initial forever begin
        clock = 1; #1;
        clock = 0; #1;
    end

    initial begin
        enable = 0;
        x = 32'd5;
        a = 32'd50;
        reset_n = 1; #4;
        reset_n = 0; #2;
        reset_n = 1; #10;
        enable = 1; #2; enable = 0; #2;
        wait (ready == 1); #4;
        $stop;
    end


endmodule: tb_exponent