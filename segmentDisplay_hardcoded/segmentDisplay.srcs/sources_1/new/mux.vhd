----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 05:23:02 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( mux2 : in STD_LOGIC_VECTOR (1 downto 0);
           digitSelect : out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

begin    
    process(mux2)
        begin
            case mux2 is
                when "00" => digitSelect <= "1110";
                when "01" => digitSelect <= "1101";
                when "10" => digitSelect <= "1011";
                when "11" => digitSelect <= "0111";
            end case;
    end process;
end Behavioral;
