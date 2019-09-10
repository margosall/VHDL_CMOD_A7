----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 03:46:04 PM
-- Design Name: 
-- Module Name: main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
Port (sysclk : in STD_LOGIC;
      segmentPins : out STD_LOGIC_VECTOR(7 downto 0);
      digitSelect : out STD_LOGIC_VECTOR(3 downto 0)
      );
end main;

architecture Behavioral of main is
    signal data4 : STD_LOGIC_VECTOR(3 downto 0);
    signal data7i : STD_LOGIC_VECTOR(6 downto 0);
    signal mux2i : STD_LOGIC_VECTOR(1 downto 0);
    signal datau16i : STD_LOGIC_VECTOR(15 downto 0);

component counter is
    Port ( clk : in STD_LOGIC;
           nibbleOut : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component segmentDisplay is
    Port ( nrValue : in STD_LOGIC_VECTOR (3 downto 0);
           seg7 : out STD_LOGIC_VECTOR(6 downto 0));
end component;

component mux is
    Port ( mux2 : in STD_LOGIC_VECTOR (1 downto 0);
           digitSelect : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component timer is
    Port ( clk : in STD_LOGIC;
           intOut : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component uint16_seg_coder is
    Port ( intIn : in STD_LOGIC_VECTOR (15 downto 0);
           muxOut : out STD_LOGIC_VECTOR (1 downto 0);
           nibbleOut : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end component;

begin
    --datau16i <= std_logic_vector(to_unsigned(1673,16));
    c1: segmentDisplay port map(data4, segmentPins(6 downto 0));
    --c2: counter port map(sysclk, data4);
    c3: mux port map(mux2i, digitSelect);
    c4: timer port map(sysclk, datau16i);
    c5: uint16_seg_coder port map(datau16i, mux2i, data4, sysclk);

end Behavioral;
