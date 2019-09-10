--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.2 (lin64) Build 2615518 Fri Aug  9 15:53:29 MDT 2019
--Date        : Wed Sep 11 00:32:17 2019
--Host        : DESOLATION running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target design_main_wrapper.bd
--Design      : design_main_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_main_wrapper is
  port (
    digitSelect : out STD_LOGIC_VECTOR ( 3 downto 0 );
    segmentPins : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sysclk : in STD_LOGIC
  );
end design_main_wrapper;

architecture STRUCTURE of design_main_wrapper is
  component design_main is
  port (
    digitSelect : out STD_LOGIC_VECTOR ( 3 downto 0 );
    segmentPins : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sysclk : in STD_LOGIC
  );
  end component design_main;
begin
design_main_i: component design_main
     port map (
      digitSelect(3 downto 0) => digitSelect(3 downto 0),
      segmentPins(6 downto 0) => segmentPins(6 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
