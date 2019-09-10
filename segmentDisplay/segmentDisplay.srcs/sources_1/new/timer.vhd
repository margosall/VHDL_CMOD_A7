----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 05:22:02 PM
-- Design Name: 
-- Module Name: timer - Behavioral
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

entity timer is
    Port ( clk : in STD_LOGIC;
           intOut : out STD_LOGIC_VECTOR (15 downto 0));
end timer;

architecture Behavioral of timer is
    signal cycle_counter : STD_LOGIC_VECTOR(37 downto 0);
begin
process (clk) is
    variable outi : STD_LOGIC_VECTOR(15 downto 0);
begin
    if(rising_edge(clk)) then
        cycle_counter <= cycle_counter + 1;
            outi := cycle_counter(37 downto 22);
            case outi is
                when "0010011100010000" => outi := "0000000000000000";
                when others => null;
            end case;
        intOut <= outi;

    end if;
end process;

end Behavioral;
