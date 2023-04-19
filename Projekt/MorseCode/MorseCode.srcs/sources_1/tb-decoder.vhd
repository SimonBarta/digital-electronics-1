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

-- define signal timing constants
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;
    constant dot_duration : natural := 250; -- in ms
    constant dash_duration : natural := dot_duration * 3;
    constant character_space_duration : natural := dash_duration;
    constant word_space_duration : natural := dot_duration * 7;
  
-- Local signals
    signal sig_clk : std_logic;
    signal sig_reset : std_logic;
    signal sig_button : std_logic;
    signal sig_generator : std_logic;
    signal sig_signal_in : std_logic;
   
-- define internal signals
    signal sig_signal_buffer : std_logic_vector(2 downto 0);        -- was (because of us): signal signal_buffer : std_logic_vector(1 downto 0);
    signal sig_signal_duration : natural;
    signal sig_character_buffer : std_logic_vector(3 downto 0);
    signal sig_display_buffer : std_logic_vector(6 downto 0);
    signal sig_enable_display : std_logic := '0';

begin

 -- Connecting testbench signals with decoder entity  
  uut_decoder : entity work.decoder
    port map(
        clk               => sig_clk,
        reset             => sig_reset,
        button            => sig_button,
        generator         => sig_generator,
        signal_in         => sig_signal_in,
        signal_buffer     => sig_signal_buffer,
        signal_duration   => sig_signal_duration,
        character_buffer  => sig_character_buffer,
        display_buffer    => sig_display_buffer,
        enable_display    => sig_enable_display        
    );
  
  --------------------------------------------------------
  -- Clock generation process
  --------------------------------------------------------
  p_clk_gen : process is
  begin
  
  
    while now < 10 s loop -- 10 sec of simulation

      sig_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      sig_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;

    end loop;

    wait;

  end process p_clk_gen;

  --------------------------------------------------------
  -- Reset generation process
  --------------------------------------------------------
  p_reset_gen : process is
  begin

    sig_reset <= '0';
    wait for 200 ns;

    -- Reset activated
    sig_reset <= '1';
    wait for 500 ns;

    -- Reset deactivated
    sig_reset <= '0';
    wait;

  end process p_reset_gen;

 end architecture testbench; 
