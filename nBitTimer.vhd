library ieee;
use  ieee.std_logic_1164.all;

ENTITY nBitTimer IS 
    GENERIC(n : INTEGER := 4);
    PORT(
        i_clk, i_reset: IN STD_LOGIC;
        i_targetCount: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        o_done: OUT STD_LOGIC);
END nBitTimer;

ARCHITECTURE rtl OF nBitTimer IS
    SIGNAL int_count: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL int_eq: STD_LOGIC;
    SIGNAL resetb: STD_LOGIC;

    COMPONENT nbitcomparator
        GENERIC(n : INTEGER := 4);
        PORT(
            i_A, i_B	: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
            o_AeqB, o_AgtB, o_AltB : OUT STD_LOGIC);
    END COMPONENT;
    
    COMPONENT nBitIncrementer
        GENERIC (n : INTEGER := 3);
        PORT ( clk, reset, increment: IN STD_LOGIC;
                y: OUT STD_LOGIC_VECTOR(n-1 downto 0) ) ;
    END COMPONENT ;

	COMPONENT enARdFF_2
		PORT(
			i_resetBar	: IN	STD_LOGIC;
			i_d		: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
	END COMPONENT;

BEGIN 

    incrementer: nBitIncrementer
        GENERIC MAP (n => n)
        PORT MAP (clk => i_clk, reset => i_reset, increment => '1', y => int_count);
    
    comparator: nbitcomparator
        GENERIC MAP (n => n)
        PORT MAP (i_A => int_count, i_B => i_targetCount, o_AeqB => int_eq, o_AgtB => open, o_AltB => open);
    
    doneFF: enardFF_2
        PORT MAP (i_resetBar => resetb, i_d => '1', i_enable => int_eq, i_clock => i_clk, o_q => o_done, o_qBar => open);

    resetb <= not i_reset;

END rtl;