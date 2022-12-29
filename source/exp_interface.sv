`timescale 1ps/1ps

module exp_interface (clk, rst_n, address, readdata, writedata);
    input logic clk, rst_n;
    input logic [31:0] writedata;
    output logic [3:0] address;
    output logic [31:0] readdata;
    logic acc_enable, acc_ready;
    logic [31:0] acc_x, acc_a, acc_p;
    enum {IDLE, WAIT_ACCELERATOR, START_ACCELERATOR, WRITE_ANSWER, WAIT_ACCELERATOR_FINISH, GET_A, DONE} state; 

    exponent_accelerator EXP (.clock(clk),
        .reset_n(rst_n),
        .enable(acc_enable),
        .x(acc_x),
        .a(acc_a),
        .p(acc_p),
        .ready(acc_ready));

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
            address <= 4'd0;
            readdata <= 32'd0;
        end else begin 
            case (state) 
                IDLE: begin
                    address <= 4'd3;
                    acc_enable <= 0;
                    if (!writedata[1]) begin
                        state <= IDLE;
                    end else begin
                        readdata <= 32'd0; // set the done bit LOW
                        address <= 4'd0; 
                        acc_x <= writedata;
                        state <= GET_A;
                    end
                end
                GET_A: begin
                    address <= 4'd1;
                    acc_a <= writedata;
                    state <= START_ACCELERATOR;
                end
                WAIT_ACCELERATOR: begin
                    if (acc_ready) begin
                        state <= START_ACCELERATOR;
                        acc_enable <= 1;
                    end else begin
                        state <= WAIT_ACCELERATOR;
                    end
                end
                START_ACCELERATOR: begin
                    state <= WAIT_ACCELERATOR_FINISH;
                    acc_enable <= 0;
                end
                WAIT_ACCELERATOR_FINISH: begin
                    if (!acc_ready) begin
                        state <= WAIT_ACCELERATOR_FINISH;
                    end else begin
                        state <= WRITE_ANSWER;
                        address <= 4'd2;
                        readdata <= acc_p; 
                    end
                end
                WRITE_ANSWER: begin
                    address <= 4'd3;
                    readdata <= {31'd0, 1'b1}; // first bit of fourth word is the done signal
                    state <= IDLE;
                end
            endcase
        end 
    end

endmodule: exp_interface

// the read signal is an input from the CPU; it lets this module know it can read the data on the address bus 
// need to define hardware that deals with read/write requests