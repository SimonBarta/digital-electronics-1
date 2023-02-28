----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 12:35:51 PM
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for mux
------------------------------------------------------------
entity mux_3bit_4to1 is
    port(
        a_i           : in  std_logic_vector(2 downto 0);
        b_i           : in  std_logic_vector(2 downto 0);
        c_i           : in  std_logic_vector(2 downto 0);
        d_i           : in  std_logic_vector(2 downto 0);
        f_i           : out  std_logic_vector(2 downto 0);
        sel_i         : in  std_logic_vector(1 downto 0)
    );
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for MUX
------------------------------------------------------------
architecture Behavioral of mux_3bit_4to1 is
begin
    with sel_i select
    f_i <= a_i when "00",
    	 b_i when "01",
    	 c_i when "10",
    	 d_i when others;
end architecture Behavioral;
