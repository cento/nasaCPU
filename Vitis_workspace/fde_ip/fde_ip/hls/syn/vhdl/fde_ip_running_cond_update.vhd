-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fde_ip_running_cond_update is
port (
    ap_ready : OUT STD_LOGIC;
    instruction : IN STD_LOGIC_VECTOR (31 downto 0);
    pc_val : IN STD_LOGIC_VECTOR (15 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of fde_ip_running_cond_update is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_8067 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000000001100111";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal icmp_ln21_fu_24_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln21_1_fu_30_p2 : STD_LOGIC_VECTOR (0 downto 0);


begin



    ap_ready <= ap_const_logic_1;
    ap_return <= (icmp_ln21_fu_24_p2 or icmp_ln21_1_fu_30_p2);
    icmp_ln21_1_fu_30_p2 <= "0" when (instruction = ap_const_lv32_8067) else "1";
    icmp_ln21_fu_24_p2 <= "0" when (pc_val = ap_const_lv16_0) else "1";
end behav;