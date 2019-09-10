----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2019 10:32:20 PM
-- Design Name: 
-- Module Name: 7seg - Behavioral
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

entity segmentDisplay is
    Port ( nrValue : in STD_LOGIC_VECTOR (3 downto 0);
           seg7 : out STD_LOGIC_VECTOR(6 downto 0));
end segmentDisplay;

architecture Behavioral of segmentDisplay is

begin
    process(nrValue)
        -- variable inValue : std_logic_vector(3 downto 0);
        -- variable outValue : std_logic_vector(6 downto 0);
        begin
            -- inValue := nrValue;
            case nrValue is
                when "0000" => seg7 <= "0111111";
                when "0001" => seg7 <= "0000110";
                when "0010" => seg7 <= "1011011";
                when "0011" => seg7 <= "1001111";
                when "0100" => seg7 <= "1100110";
                when "0101" => seg7 <= "1101101";
                when "0110" => seg7 <= "1111101";
                when "0111" => seg7 <= "0000111";
                when "1000" => seg7 <= "1111111";
                when "1001" => seg7 <= "1101111";
                when "1010" => seg7 <= "1101111";
                when "1011" => seg7 <= "1111100";
                when "1100" => seg7 <= "0111001";
                when "1101" => seg7 <= "1011110";
                when "1110" => seg7 <= "1111001";
                when "1111" => seg7 <= "1110001";
           end case; 
        --    seg7 <= outValue;

    end process;
end Behavioral;