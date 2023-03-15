----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2023 11:20:44 AM
-- Design Name: 
-- Module Name: hex_7seg - Behavioral
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

entity hex_7seg is
    Port (
           hex : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           blank : in STD_LOGIC);

end hex_7seg;

architecture Behavioral of hex_7seg is

begin
p_7seg_decoder : process (blank, hex) is

  begin

    if (blank = '1') then
      seg <= "1111111";     -- Blanking display
    else

      case hex is
      
--zero
        when "0000" =>

          seg <= "0000001"; -- 0
--one
        when "0001" =>

          seg <= "1001111"; -- 1
--two
        when "0010" =>

          seg <= "0010010"; -- 2
          
--three
        when "0011" =>

          seg <= "0000110"; -- 3

--four
        when "0100" =>

          seg <= "1001100"; -- 4
          
--five
        when "0101" =>

          seg <= "0100100"; -- 5
          
--six
        when "0110" =>

          seg <= "0100000"; -- 6   
          
--seven
        when "0111" =>

          seg <= "0001111"; -- 7                    
        -- WRITE YOUR CODE HERE
        -- 2, 3, 4, 5, 6, 7


--eight
        when "1000" =>

          seg <= "0000000"; -- 8
          
--nine
        when "1001" =>

          seg <= "0000100"; -- 9

--A          
        when "1010" =>

          seg <= "0001000"; -- A
          
--B          
        when "1011" =>

          seg <= "1100000"; -- B          
                   
--C          
        when "1100" =>

          seg <= "0110001"; -- C          
                    
--D          
        when "1101" =>

          seg <= "1000010"; -- D   
                                 
                                        
        -- WRITE YOUR CODE HERE
        -- 9, A, b, C, d



        when "1110" =>

          seg <= "0110000"; -- E

        when others =>

          seg <= "0111000"; -- F

      end case;

    end if;

  end process p_7seg_decoder;

end architecture behavioral;

