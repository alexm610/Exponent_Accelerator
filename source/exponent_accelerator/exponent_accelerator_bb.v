
module Exponent_accelerator (
	clk_clk,
	switch_export,
	ledr_export,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	reset_reset_n);	

	input		clk_clk;
	input	[9:0]	switch_export;
	output	[9:0]	ledr_export;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
	output	[6:0]	hex4_export;
	output	[6:0]	hex5_export;
	input		reset_reset_n;
endmodule
