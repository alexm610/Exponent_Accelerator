
module exponent_accelerator (
	clk_clk,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	ledr_export,
	reset_reset_n,
	switch_export,
	export_conduit_readdata);	

	input		clk_clk;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
	output	[6:0]	hex4_export;
	output	[6:0]	hex5_export;
	output	[9:0]	ledr_export;
	input		reset_reset_n;
	input	[9:0]	switch_export;
	output	[31:0]	export_conduit_readdata;
endmodule
