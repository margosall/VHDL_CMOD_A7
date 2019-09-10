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
    Port ( intIn : in STD_LOGIC_VECTOR (15 downto 0);
           muxOut : out STD_LOGIC_VECTOR (1 downto 0);
           nibbleOut : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end uint16_seg_coder;

architecture Behavioral of uint16_seg_coder is
begin
process(intIn,clk)
    variable valueDigiti : std_logic_vector(3 downto 0);
    variable counteri : std_logic_vector(2 downto 0); 
    variable counterOut : std_logic_vector(1 downto 0); 
    variable counterDown : std_logic_vector(10 downto 0);

begin
    if(rising_edge(clk)) then
        counterDown := counterDown + 1;
        if(counterDown = "1111111111") then
            case counteri is
                when "000" => null;
                when "001" => null;
                when "010" => null;
                when "011" => null;
                when others => counteri := "000";
            end case;

            case counteri is
                when "000" => nibbleOut <= std_logic_vector(to_unsigned(to_integer(unsigned(intIn)) MOD 10,4));
                when "001" => nibbleOut <= std_logic_vector(to_unsigned((to_integer(unsigned(intIn)) / 10) MOD 10,4));
                when "010" => nibbleOut <= std_logic_vector(to_unsigned((to_integer(unsigned(intIn)) / 100) MOD 10,4));
                when "011" => nibbleOut <= std_logic_vector(to_unsigned((to_integer(unsigned(intIn)) / 1000) MOD 10,4));
                when others => null;
            end case;
            muxOut <= counteri(1 downto 0);
            counteri := counteri + 1;
        end if;
    end if;
end process;
end Behavioral;
