--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.2 (lin64) Build 2615518 Fri Aug  9 15:53:29 MDT 2019
--Date        : Tue Sep 10 23:12:41 2019
--Host        : DESOLATION running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target design_main.bd
--Design      : design_main
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_main is
  port (
    digitSelect : out STD_LOGIC_VECTOR ( 3 downto 0 );
    segmentPins : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_main : entity is "design_main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_main,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_main : entity is "design_main.hwdef";
end design_main;

architecture STRUCTURE of design_main is
  component design_main_timer_0_0 is
  port (
    clk : in STD_LOGIC;
    intOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_main_timer_0_0;
  component design_main_uint16_seg_coder_0_0 is
  port (
    intIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    muxOut : out STD_LOGIC_VECTOR ( 1 downto 0 );
    nibbleOut : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  end component design_main_uint16_seg_coder_0_0;
  component design_main_segmentDisplay_0_0 is
  port (
    nrValue : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg7 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_main_segmentDisplay_0_0;
  component design_main_mux_0_0 is
  port (
    mux2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    digitSelect : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_main_mux_0_0;
  signal mux_0_digitSelect : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal segmentDisplay_0_seg7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sysclk_1 : STD_LOGIC;
  signal timer_0_intOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uint16_seg_coder_0_muxOut : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal uint16_seg_coder_0_nibbleOut : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sysclk : signal is "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sysclk : signal is "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN design_main_sysclk, FREQ_HZ 12000000, INSERT_VIP 0, PHASE 0.000";
begin
  digitSelect(3 downto 0) <= mux_0_digitSelect(3 downto 0);
  segmentPins(6 downto 0) <= segmentDisplay_0_seg7(6 downto 0);
  sysclk_1 <= sysclk;
mux_0: component design_main_mux_0_0
     port map (
      digitSelect(3 downto 0) => mux_0_digitSelect(3 downto 0),
      mux2(1 downto 0) => uint16_seg_coder_0_muxOut(1 downto 0)
    );
segmentDisplay_0: component design_main_segmentDisplay_0_0
     port map (
      nrValue(3 downto 0) => uint16_seg_coder_0_nibbleOut(3 downto 0),
      seg7(6 downto 0) => segmentDisplay_0_seg7(6 downto 0)
    );
timer_0: component design_main_timer_0_0
     port map (
      clk => sysclk_1,
      intOut(15 downto 0) => timer_0_intOut(15 downto 0)
    );
uint16_seg_coder_0: component design_main_uint16_seg_coder_0_0
     port map (
      clk => sysclk_1,
      intIn(15 downto 0) => timer_0_intOut(15 downto 0),
      muxOut(1 downto 0) => uint16_seg_coder_0_muxOut(1 downto 0),
      nibbleOut(3 downto 0) => uint16_seg_coder_0_nibbleOut(3 downto 0)
    );
end STRUCTURE;
