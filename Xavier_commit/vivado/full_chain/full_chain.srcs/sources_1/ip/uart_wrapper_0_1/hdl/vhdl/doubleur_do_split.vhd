-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity doubleur_do_split is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    doubleur_to_split : OUT STD_LOGIC_VECTOR (31 downto 0);
    doubleur_to_split_ap_vld : OUT STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    s1_full_n : IN STD_LOGIC;
    s1_write : OUT STD_LOGIC;
    s2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    s2_full_n : IN STD_LOGIC;
    s2_write : OUT STD_LOGIC );
end;


architecture behav of doubleur_do_split is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "10";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal s1_blk_n : STD_LOGIC;
    signal s2_blk_n : STD_LOGIC;
    signal ap_block_state2 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state2;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (e_empty_n, s1_full_n, s2_full_n, ap_CS_fsm, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state2_assign_proc : process(e_empty_n, s1_full_n, s2_full_n)
    begin
                ap_block_state2 <= ((ap_const_logic_0 = s2_full_n) or (ap_const_logic_0 = s1_full_n) or (ap_const_logic_0 = e_empty_n));
    end process;

    doubleur_to_split <= e_dout;

    doubleur_to_split_ap_vld_assign_proc : process(e_empty_n, s1_full_n, s2_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = s2_full_n) or (ap_const_logic_0 = s1_full_n) or (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            doubleur_to_split_ap_vld <= ap_const_logic_1;
        else 
            doubleur_to_split_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(e_empty_n, s1_full_n, s2_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = s2_full_n) or (ap_const_logic_0 = s1_full_n) or (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;


    s1_blk_n_assign_proc : process(s1_full_n, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            s1_blk_n <= s1_full_n;
        else 
            s1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s1_din <= e_dout;

    s1_write_assign_proc : process(e_empty_n, s1_full_n, s2_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = s2_full_n) or (ap_const_logic_0 = s1_full_n) or (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            s1_write <= ap_const_logic_1;
        else 
            s1_write <= ap_const_logic_0;
        end if; 
    end process;


    s2_blk_n_assign_proc : process(s2_full_n, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            s2_blk_n <= s2_full_n;
        else 
            s2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s2_din <= e_dout;

    s2_write_assign_proc : process(e_empty_n, s1_full_n, s2_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = s2_full_n) or (ap_const_logic_0 = s1_full_n) or (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            s2_write <= ap_const_logic_1;
        else 
            s2_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
