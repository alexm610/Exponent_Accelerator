	component exponent_accelerator_system is
		port (
			clk_clk           : in    std_logic                     := 'X';             -- clk
			reset_reset_n     : in    std_logic                     := 'X';             -- reset_n
			sdram_clk_clk     : out   std_logic;                                        -- clk
			pll_locked_export : out   std_logic;                                        -- export
			sdram_addr        : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba          : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n       : out   std_logic;                                        -- cas_n
			sdram_cke         : out   std_logic;                                        -- cke
			sdram_cs_n        : out   std_logic;                                        -- cs_n
			sdram_dq          : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm         : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n       : out   std_logic;                                        -- ras_n
			sdram_we_n        : out   std_logic;                                        -- we_n
			ledr_export       : out   std_logic_vector(7 downto 0);                     -- export
			hex0_export       : out   std_logic_vector(6 downto 0);                     -- export
			hex1_export       : out   std_logic_vector(6 downto 0);                     -- export
			hex2_export       : out   std_logic_vector(6 downto 0);                     -- export
			hex3_export       : out   std_logic_vector(6 downto 0);                     -- export
			hex4_export       : out   std_logic_vector(6 downto 0);                     -- export
			hex5_export       : out   std_logic_vector(6 downto 0);                     -- export
			switch_export     : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			vga_vga_blu       : out   std_logic_vector(7 downto 0);                     -- vga_blu
			vga_vga_clk       : out   std_logic;                                        -- vga_clk
			vga_vga_grn       : out   std_logic_vector(7 downto 0);                     -- vga_grn
			vga_vga_hsync     : out   std_logic;                                        -- vga_hsync
			vga_vga_red       : out   std_logic_vector(7 downto 0);                     -- vga_red
			vga_vga_vsync     : out   std_logic                                         -- vga_vsync
		);
	end component exponent_accelerator_system;

	u0 : component exponent_accelerator_system
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --        clk.clk
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     --      reset.reset_n
			sdram_clk_clk     => CONNECTED_TO_sdram_clk_clk,     --  sdram_clk.clk
			pll_locked_export => CONNECTED_TO_pll_locked_export, -- pll_locked.export
			sdram_addr        => CONNECTED_TO_sdram_addr,        --      sdram.addr
			sdram_ba          => CONNECTED_TO_sdram_ba,          --           .ba
			sdram_cas_n       => CONNECTED_TO_sdram_cas_n,       --           .cas_n
			sdram_cke         => CONNECTED_TO_sdram_cke,         --           .cke
			sdram_cs_n        => CONNECTED_TO_sdram_cs_n,        --           .cs_n
			sdram_dq          => CONNECTED_TO_sdram_dq,          --           .dq
			sdram_dqm         => CONNECTED_TO_sdram_dqm,         --           .dqm
			sdram_ras_n       => CONNECTED_TO_sdram_ras_n,       --           .ras_n
			sdram_we_n        => CONNECTED_TO_sdram_we_n,        --           .we_n
			ledr_export       => CONNECTED_TO_ledr_export,       --       ledr.export
			hex0_export       => CONNECTED_TO_hex0_export,       --       hex0.export
			hex1_export       => CONNECTED_TO_hex1_export,       --       hex1.export
			hex2_export       => CONNECTED_TO_hex2_export,       --       hex2.export
			hex3_export       => CONNECTED_TO_hex3_export,       --       hex3.export
			hex4_export       => CONNECTED_TO_hex4_export,       --       hex4.export
			hex5_export       => CONNECTED_TO_hex5_export,       --       hex5.export
			switch_export     => CONNECTED_TO_switch_export,     --     switch.export
			vga_vga_blu       => CONNECTED_TO_vga_vga_blu,       --        vga.vga_blu
			vga_vga_clk       => CONNECTED_TO_vga_vga_clk,       --           .vga_clk
			vga_vga_grn       => CONNECTED_TO_vga_vga_grn,       --           .vga_grn
			vga_vga_hsync     => CONNECTED_TO_vga_vga_hsync,     --           .vga_hsync
			vga_vga_red       => CONNECTED_TO_vga_vga_red,       --           .vga_red
			vga_vga_vsync     => CONNECTED_TO_vga_vga_vsync      --           .vga_vsync
		);

