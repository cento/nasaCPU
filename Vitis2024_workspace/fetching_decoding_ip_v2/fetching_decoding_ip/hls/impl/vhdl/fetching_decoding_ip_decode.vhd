-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fetching_decoding_ip_decode is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    instruction : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (19 downto 0) );
end;


architecture behav of fetching_decoding_ip_decode is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal d_imm_inst_7_reg_347 : STD_LOGIC_VECTOR (0 downto 0);
    signal d_imm_inst_19_12_reg_352 : STD_LOGIC_VECTOR (7 downto 0);
    signal d_imm_inst_20_reg_357 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 : STD_LOGIC_VECTOR (2 downto 0);
    signal d_i_type_write_assign_reg_92 : STD_LOGIC_VECTOR (2 downto 0);
    signal opch_fu_187_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal opcl_fu_197_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln_fu_312_p5 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sext_ln39_fu_243_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal sext_ln38_fu_274_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal sext_ln37_fu_288_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal d_imm_inst_31_fu_207_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_223_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal d_imm_inst_11_8_fu_214_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln3_fu_232_p5 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1_fu_248_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_2_fu_257_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln2_fu_266_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln6_fu_279_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_fu_303_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_condition_134 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv3_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_return_0_preg <= d_i_type_write_assign_reg_92;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv20_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_return_1_preg <= ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12;
                end if; 
            end if;
        end if;
    end process;


    d_i_type_write_assign_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_0) and (opch_fu_187_p4 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_3;
            elsif (((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_4) and (opch_fu_187_p4 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_1;
            elsif ((((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_5) and (opch_fu_187_p4 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_5) and (opch_fu_187_p4 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_5;
            elsif (((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_0) and (opch_fu_187_p4 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_4;
            elsif ((((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_1) and (opch_fu_187_p4 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_4) and (opch_fu_187_p4 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_0) and (opch_fu_187_p4 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_2;
            elsif (((ap_start = ap_const_logic_1) and (opcl_fu_197_p4 = ap_const_lv3_3) and (opch_fu_187_p4 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_6;
            elsif (((not((opcl_fu_197_p4 = ap_const_lv3_3)) and not((opcl_fu_197_p4 = ap_const_lv3_1)) and not((opcl_fu_197_p4 = ap_const_lv3_0)) and (ap_start = ap_const_logic_1) and (opch_fu_187_p4 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not((opcl_fu_197_p4 = ap_const_lv3_4)) and not((opcl_fu_197_p4 = ap_const_lv3_5)) and not((opcl_fu_197_p4 = ap_const_lv3_0)) and (ap_start = ap_const_logic_1) and (opch_fu_187_p4 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not((opcl_fu_197_p4 = ap_const_lv3_4)) and not((opcl_fu_197_p4 = ap_const_lv3_5)) and not((opcl_fu_197_p4 = ap_const_lv3_0)) and (ap_start = ap_const_logic_1) and (opch_fu_187_p4 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (opch_fu_187_p4 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                d_i_type_write_assign_reg_92 <= ap_const_lv3_7;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                d_imm_inst_19_12_reg_352 <= instruction(19 downto 12);
                d_imm_inst_20_reg_357 <= instruction(20 downto 20);
                d_imm_inst_7_reg_347 <= instruction(7 downto 7);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_condition_134_assign_proc : process(ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26)
    begin
                ap_condition_134 <= (not((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_2)) and not((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_3)) and not((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_4)) and not((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_5)) and not((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_6)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12_assign_proc : process(instruction, ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26, or_ln_fu_312_p5, ap_CS_fsm_state2, sext_ln39_fu_243_p1, sext_ln38_fu_274_p1, sext_ln37_fu_288_p1, ap_condition_134)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
            if ((ap_const_boolean_1 = ap_condition_134)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= ap_const_lv20_0;
            elsif ((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_2)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= sext_ln37_fu_288_p1;
            elsif ((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_3)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= sext_ln38_fu_274_p1;
            elsif ((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_4)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= sext_ln39_fu_243_p1;
            elsif ((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_5)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= instruction(31 downto 12);
            elsif ((ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 = ap_const_lv3_6)) then 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= or_ln_fu_312_p5;
            else 
                ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= "XXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12 <= "XXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    ap_phi_mux_d_i_type_write_assign_phi_fu_102_p26 <= d_i_type_write_assign_reg_92;

    ap_ready_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(d_i_type_write_assign_reg_92, ap_CS_fsm_state2, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_return_0 <= d_i_type_write_assign_reg_92;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12, ap_CS_fsm_state2, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_return_1 <= ap_phi_mux_d_i_imm_write_assign_phi_fu_146_p12;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;

    d_imm_inst_11_8_fu_214_p4 <= instruction(11 downto 8);
    d_imm_inst_31_fu_207_p3 <= instruction(31 downto 31);
    opch_fu_187_p4 <= instruction(6 downto 5);
    opcl_fu_197_p4 <= instruction(4 downto 2);
    or_ln2_fu_266_p3 <= (tmp_1_fu_248_p4 & tmp_2_fu_257_p4);
    or_ln3_fu_232_p5 <= (((d_imm_inst_31_fu_207_p3 & d_imm_inst_7_reg_347) & tmp_3_fu_223_p4) & d_imm_inst_11_8_fu_214_p4);
    or_ln6_fu_279_p4 <= instruction(31 downto 20);
    or_ln_fu_312_p5 <= (((d_imm_inst_31_fu_207_p3 & d_imm_inst_19_12_reg_352) & d_imm_inst_20_reg_357) & tmp_fu_303_p4);
        sext_ln37_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln6_fu_279_p4),20));

        sext_ln38_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln2_fu_266_p3),20));

        sext_ln39_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln3_fu_232_p5),20));

    tmp_1_fu_248_p4 <= instruction(31 downto 25);
    tmp_2_fu_257_p4 <= instruction(11 downto 7);
    tmp_3_fu_223_p4 <= instruction(30 downto 25);
    tmp_fu_303_p4 <= instruction(30 downto 21);
end behav;