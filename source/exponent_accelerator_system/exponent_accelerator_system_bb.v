
module exponent_accelerator_system (
	clk_clk,
	reset_reset_n,
	sdram_clk_clk,
	pll_locked_export,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	ledr_export,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	switch_export,
	vga_vga_blu,
	vga_vga_clk,
	vga_vga_grn,
	vga_vga_hsync,
	vga_vga_red,
	vga_vga_vsync);	

	input		clk_clk;
	input		reset_reset_n;
	output		sdram_clk_clk;
	output		pll_locked_export;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output	[7:0]	ledr_export;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
	output	[6:0]	hex4_export;
	output	[6:0]	hex5_export;
	input	[7:0]	switch_export;
	output	[7:0]	vga_vga_blu;
	output		vga_vga_clk;
	output	[7:0]	vga_vga_grn;
	output		vga_vga_hsync;
	output	[7:0]	vga_vga_red;
	output		vga_vga_vsync;
endmodule
