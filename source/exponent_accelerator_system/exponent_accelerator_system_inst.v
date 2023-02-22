	exponent_accelerator_system u0 (
		.clk_clk           (<connected-to-clk_clk>),           //        clk.clk
		.reset_reset_n     (<connected-to-reset_reset_n>),     //      reset.reset_n
		.sdram_clk_clk     (<connected-to-sdram_clk_clk>),     //  sdram_clk.clk
		.pll_locked_export (<connected-to-pll_locked_export>), // pll_locked.export
		.sdram_addr        (<connected-to-sdram_addr>),        //      sdram.addr
		.sdram_ba          (<connected-to-sdram_ba>),          //           .ba
		.sdram_cas_n       (<connected-to-sdram_cas_n>),       //           .cas_n
		.sdram_cke         (<connected-to-sdram_cke>),         //           .cke
		.sdram_cs_n        (<connected-to-sdram_cs_n>),        //           .cs_n
		.sdram_dq          (<connected-to-sdram_dq>),          //           .dq
		.sdram_dqm         (<connected-to-sdram_dqm>),         //           .dqm
		.sdram_ras_n       (<connected-to-sdram_ras_n>),       //           .ras_n
		.sdram_we_n        (<connected-to-sdram_we_n>),        //           .we_n
		.ledr_export       (<connected-to-ledr_export>),       //       ledr.export
		.hex0_export       (<connected-to-hex0_export>),       //       hex0.export
		.hex1_export       (<connected-to-hex1_export>),       //       hex1.export
		.hex2_export       (<connected-to-hex2_export>),       //       hex2.export
		.hex3_export       (<connected-to-hex3_export>),       //       hex3.export
		.hex4_export       (<connected-to-hex4_export>),       //       hex4.export
		.hex5_export       (<connected-to-hex5_export>),       //       hex5.export
		.switch_export     (<connected-to-switch_export>),     //     switch.export
		.vga_vga_blu       (<connected-to-vga_vga_blu>),       //        vga.vga_blu
		.vga_vga_clk       (<connected-to-vga_vga_clk>),       //           .vga_clk
		.vga_vga_grn       (<connected-to-vga_vga_grn>),       //           .vga_grn
		.vga_vga_hsync     (<connected-to-vga_vga_hsync>),     //           .vga_hsync
		.vga_vga_red       (<connected-to-vga_vga_red>),       //           .vga_red
		.vga_vga_vsync     (<connected-to-vga_vga_vsync>)      //           .vga_vsync
	);

