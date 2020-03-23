----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2020 03:22:27 PM
-- Design Name: 
-- Module Name: TB_3bitmux - Behavioral
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

entity TB_3bitmux is
--  Port ( );
end TB_3bitmux;

architecture Behavioral of TB_3bitmux is
 component way2bit3mux 
   Port ( jumpflag : in STD_LOGIC;
            addresstojump : in STD_LOGIC_VECTOR (2 downto 0);
            default1 : in STD_LOGIC_VECTOR (2 downto 0);
            out1 : out STD_LOGIC_VECTOR (2 downto 0));
end component;


signal addresstojump : std_logic_vector (2 downto 0 ) := (others => '0');
signal default1 : std_logic_vector (2 downto 0 );
signal out1 : std_logic_vector (2 downto 0 );
signal jumpflag : std_logic;


begin
uut : way2bit3mux port map
( jumpflag => jumpflag,
  addresstojump => addresstojump,
  default1 =>default1,
  out1 => out1);
stiM_PROC: PROCESS
BEGIN

jumpflag<='0';
addresstojump<="010";
default1<="101";
wait for 100 ns;

jumpflag<='1';
addresstojump<="010";
default1<="101";
wait for 100 ns;

jumpflag<='0';
addresstojump<="000";
default1<="111";
wait for 100 ns;

jumpflag<='1';
addresstojump<="000";
default1<="111";
wait;

end process;
end;