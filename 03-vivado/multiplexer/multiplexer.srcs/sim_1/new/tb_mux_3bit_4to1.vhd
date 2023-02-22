----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 12:36:42 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
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

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is
p_label : process (a_i)
begin
    case a_i is
        when '0' =>
            q <= '0';
        when others =>
            q <= '1';
    end case;
end process p_label;
begin

p_label : process (b_i)
begin
    case b_i is
        when '0' =>
            q <= '0';
        when others =>
            q <= '1';
    end case;
end process p_label;
begin

p_label : process (c_i)
begin
    case c_i is
        when '0' =>
            q <= '0';
        when others =>
            q <= '1';
    end case;
end process p_label;
begin

p_label : process (d_i)
begin
    case d_i is
        when '0' =>
            q <= '0';
        when others =>
            q <= '1';
    end case;
end process p_label;
begin

end Behavioral;
