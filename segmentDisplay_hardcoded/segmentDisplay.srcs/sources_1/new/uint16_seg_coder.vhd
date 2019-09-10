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
    variable valuei : integer := 0;
    variable valueDigiti : integer := 0;
    variable counteri : std_logic_vector(2 downto 0); 
    variable counterOut : std_logic_vector(1 downto 0); 
    variable counterDown : std_logic_vector(10 downto 0);

begin
    valuei := to_integer(unsigned(intIn));
    if(rising_edge(clk)) then
        counterDown := counterDown + 1;
        if(counterDown = "1111111111") then
            case counteri is
                when "000" => null;
                when "001" => null;
                when "010" => null;
                when "011" => null;
                when "100" => counteri := "000";
                when others => counteri := "000";
            end case;

            case counteri is
                when "000" => valueDigiti := valuei MOD 10;
                when "001" => valueDigiti := (valuei / 10) MOD 10;
                when "010" => valueDigiti := (valuei / 100) MOD 10;
                when "011" => valueDigiti := (valuei / 1000) MOD 10;
                when others => null;
            end case;
            counterOut := counteri(1 downto 0);
            counteri := counteri + 1;
        end if;
    end if;
    muxOut <= counterOut; 
    nibbleOut <= std_logic_vector(to_unsigned(valueDigiti,4));

end process;
end Behavioral;
