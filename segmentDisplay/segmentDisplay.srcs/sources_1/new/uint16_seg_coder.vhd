----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 05:22:02 PM
-- Design Name: 
-- Module Name: uint16_seg_coder - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uint16_seg_coder is
    Port ( muxOut : out STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC);
end uint16_seg_coder;

architecture Behavioral of uint16_seg_coder is
begin
process(clk)
    variable counteri : std_logic_vector(1 downto 0); 
    variable counterDowni : std_logic_vector(10 downto 0);

begin
    if(rising_edge(clk)) then
        counterDowni := counterDowni + 1;
        if(counterDowni = "1111111111") then
            muxOut <= counteri;
            counteri := counteri + 1;
        end if;
    end if;
end process;
end Behavioral;
