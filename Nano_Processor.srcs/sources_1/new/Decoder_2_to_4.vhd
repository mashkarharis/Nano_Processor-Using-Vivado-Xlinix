----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2020 05:54:41 PM
-- Design Name: 
-- Module Name: Decoder_2_to_4 - Behavioral
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

entity Decoder_2_to_4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC);
end Decoder_2_to_4;

architecture Behavioral of Decoder_2_to_4 is
signal I0_n , I1_n : std_logic;
begin

I0_n <= not(I(0));
I1_n <= not(I(1));

Y(0) <= (I0_n and I1_n and EN);
Y(1) <= (I(0) and I1_n and EN);
Y(2) <= (I0_n and I(1) and EN);
Y(3) <= (I(0) and I(1) and EN);

end Behavioral;