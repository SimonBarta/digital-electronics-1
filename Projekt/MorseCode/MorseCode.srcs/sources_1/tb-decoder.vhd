library ieee;
  use ieee.std_logic_1164.all;

----------------------------------------------------------
-- Entity declaration for testbench
----------------------------------------------------------

entity tb_decoder is
  -- Entity of testbench is always empty
end entity tb_decoder;

----------------------------------------------------------
-- Architecture body for testbench
----------------------------------------------------------

architecture testbench of tb_decoder is

  -- Local constants
    constant dot_duration : natural := 250; -- in ms
    constant dash_duration : natural := dot_duration * 3;
    constant character_space_duration : natural := dash_duration;
    constant word_space_duration : natural := dot_duration * 7;

  -- Local signals
    signal signal_buffer : std_logic_vector(2 downto 0);        -- was (because of us): signal signal_buffer : std_logic_vector(1 downto 0);
    signal signal_duration : natural;
    signal character_buffer : std_logic_vector(3 downto 0);
    signal display_buffer : std_logic_vector(6 downto 0);
    signal enable_display : std_logic := '0';

begin

  entity morse_decoder is
    port (
        clk : in std_logic;
        reset : in std_logic;
        button : in std_logic;
        generator : in std_logic;
        signal_in : in std_logic;
        display : out std_logic_vector(6 downto 0)
    );
  
  
  
  
  
  
  
  
  
  
  
  
