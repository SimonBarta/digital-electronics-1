library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_mux_3bit_4to1 is

    -- Local signals
    signal s_a_i           : std_logic_vector(2 downto 0);
    signal s_b_i           : std_logic_vector(2 downto 0);
    signal s_c_i          : std_logic_vector(2 downto 0);
    signal s_d_i           : std_logic_vector(2 downto 0);
    signal s_f_i           : std_logic_vector(2 downto 0);
    signal s_sel_i         : std_logic_vector(1 downto 0);

begin
  
    uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(
            a_i           => s_a_i,
            b_i           => s_b_i,
            c_i => s_c_i,
            d_i => s_d_i,
            sel_i => s_sel_i,
            f_i => s_f_i
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
        p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;
        
        --First test case
        s_a_i <= "000"; 
        s_b_i <= "001";
        s_c_i <= "010";  
        s_d_i <= "011";  
        s_sel_i <= "00";  
                  
        wait for 100 ns;
       
       -- Expected output
        assert s_f_i = "000"
        -- Error report
        report "Input combination s_sel_i = 00 FAILED" severity error;

        --Second test case
        s_a_i <= "000"; 
        s_b_i <= "001";
        s_c_i <= "010";  
        s_d_i <= "011";  
        s_sel_i <= "01";  
                  
        wait for 100 ns;
       
       -- Expected output
        assert s_f_i = "001"
        -- Error report
        report "Input combination s_sel_i = 01 FAILED" severity error;
        
        --Third test case
        s_a_i <= "000"; 
        s_b_i <= "001";
        s_c_i <= "010";  
        s_d_i <= "011";  
        s_sel_i <= "10";  
                  
        wait for 100 ns;
       
       -- Expected output
        assert s_f_i = "010"
        -- Error report
        report "Input combination s_sel_i 10 FAILED" severity error;
	
        --Fourth test case
        s_a_i <= "000"; 
        s_b_i <= "001";
        s_c_i <= "010";  
        s_d_i <= "011";  
        s_sel_i <= "11";  
                  
        wait for 100 ns;
        
        -- Expected output
        assert s_f_i = "011"
        -- Error report
        report "Input combination s_sel_i = 11 FAILED" severity error;
	
	-- Report of finising process
        report "Process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
