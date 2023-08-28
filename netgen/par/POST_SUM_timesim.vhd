--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: POST_SUM_timesim.vhd
-- /___/   /\     Timestamp: Sat Aug 26 19:22:33 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf POST_SUM.pcf -rpw 100 -tpw 0 -ar Structure -tm POST_SUM -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim POST_SUM.ncd POST_SUM_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: POST_SUM.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/POST_SUM_timesim.vhd
-- # of Entities	: 1
-- Design Name	: POST_SUM
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity POST_SUM is
  port (
    XSIGN : in STD_LOGIC := 'X'; 
    SPECIAL : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    XCASE : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    YCASE : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    XEXP : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    MAN : in STD_LOGIC_VECTOR ( 26 downto 0 ); 
    Z : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end POST_SUM;

architecture Structure of POST_SUM is
  signal YCASE_0_IBUF_0 : STD_LOGIC; 
  signal YCASE_1_IBUF_0 : STD_LOGIC; 
  signal YCASE_2_IBUF_0 : STD_LOGIC; 
  signal XEXP_0_IBUF_0 : STD_LOGIC; 
  signal XEXP_1_IBUF_0 : STD_LOGIC; 
  signal XEXP_2_IBUF_0 : STD_LOGIC; 
  signal XEXP_3_IBUF_0 : STD_LOGIC; 
  signal XEXP_4_IBUF_0 : STD_LOGIC; 
  signal XEXP_5_IBUF_0 : STD_LOGIC; 
  signal XEXP_6_IBUF_0 : STD_LOGIC; 
  signal XEXP_7_IBUF_0 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal Z_0_OBUF_1907 : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal Z_1_OBUF_1910 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal Z_2_OBUF_1913 : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal Z_3_OBUF_1915 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal Z_4_OBUF_1917 : STD_LOGIC; 
  signal Y_8_IBUF_0 : STD_LOGIC; 
  signal Z_5_OBUF_1919 : STD_LOGIC; 
  signal Y_9_IBUF_0 : STD_LOGIC; 
  signal Z_6_OBUF_1921 : STD_LOGIC; 
  signal Z_7_OBUF_1922 : STD_LOGIC; 
  signal Z_8_OBUF_1923 : STD_LOGIC; 
  signal Z_9_OBUF_1924 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal X_30_IBUF_0 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out19 : STD_LOGIC; 
  signal MAN_9_IBUF_0 : STD_LOGIC; 
  signal MAN_7_IBUF_0 : STD_LOGIC; 
  signal MAN_8_IBUF_0 : STD_LOGIC; 
  signal MAN_10_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out : STD_LOGIC; 
  signal MAN_13_IBUF_0 : STD_LOGIC; 
  signal MAN_11_IBUF_0 : STD_LOGIC; 
  signal MAN_12_IBUF_0 : STD_LOGIC; 
  signal MAN_14_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out5 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out10 : STD_LOGIC; 
  signal MantNorm_22_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out15 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_X_S_AND_4_o : STD_LOGIC; 
  signal X_24_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_23_U_X_S_AND_4_o1_0 : STD_LOGIC; 
  signal U1_ShiftPos_0_mmx_out10_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out16 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out20 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out1 : STD_LOGIC; 
  signal MantNorm_23_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out6 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out11 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_25_U_X_S_AND_4_o2 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out18 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out22 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out14 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out8 : STD_LOGIC; 
  signal MantNorm_25_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out4 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out3 : STD_LOGIC; 
  signal X_25_IBUF_0 : STD_LOGIC; 
  signal Y_10_IBUF_0 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_20_U_X_S_AND_4_o : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out13_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out2 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out12 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out7 : STD_LOGIC; 
  signal MAN_19_IBUF_0 : STD_LOGIC; 
  signal MAN_17_IBUF_0 : STD_LOGIC; 
  signal MAN_18_IBUF_0 : STD_LOGIC; 
  signal MAN_20_IBUF_0 : STD_LOGIC; 
  signal X_26_IBUF_0 : STD_LOGIC; 
  signal MAN_15_IBUF_0 : STD_LOGIC; 
  signal MAN_16_IBUF_0 : STD_LOGIC; 
  signal Y_11_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_21_U_X_S_AND_4_o : STD_LOGIC; 
  signal MAN_21_IBUF_0 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal X_27_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out21 : STD_LOGIC; 
  signal Y_12_IBUF_0 : STD_LOGIC; 
  signal Y_20_IBUF_0 : STD_LOGIC; 
  signal X_28_IBUF_0 : STD_LOGIC; 
  signal Y_13_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_19_U_X_S_AND_4_o : STD_LOGIC; 
  signal Y_21_IBUF_0 : STD_LOGIC; 
  signal X_29_IBUF_0 : STD_LOGIC; 
  signal Mmux_Z1711 : STD_LOGIC; 
  signal XCASE_1_IBUF_0 : STD_LOGIC; 
  signal XCASE_0_IBUF_0 : STD_LOGIC; 
  signal XCASE_2_IBUF_0 : STD_LOGIC; 
  signal Y_14_IBUF_0 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal U1_U3_C_9_bdd4 : STD_LOGIC; 
  signal Y_22_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_3_mmx_out8 : STD_LOGIC; 
  signal Y_30_IBUF_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT14_2019 : STD_LOGIC; 
  signal MAN_26_IBUF_0 : STD_LOGIC; 
  signal Y_15_IBUF_0 : STD_LOGIC; 
  signal U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022 : STD_LOGIC; 
  signal U2_MantCarry : STD_LOGIC; 
  signal ExpNorm_0_0 : STD_LOGIC; 
  signal U2_TempExp_6_0 : STD_LOGIC; 
  signal Y_23_IBUF_0 : STD_LOGIC; 
  signal MAN_22_IBUF_0 : STD_LOGIC; 
  signal Y_31_IBUF_0 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal Mmux_Z111_0 : STD_LOGIC; 
  signal U3_XNorm_YZero_AND_18_o1 : STD_LOGIC; 
  signal Y_16_IBUF_0 : STD_LOGIC; 
  signal Y_17_IBUF_0 : STD_LOGIC; 
  signal Y_24_IBUF_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Y_27_IBUF_0 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal Y_28_IBUF_0 : STD_LOGIC; 
  signal Y_25_IBUF_0 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal Z_10_OBUF_2046 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Y_29_IBUF_0 : STD_LOGIC; 
  signal Y_18_IBUF_0 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Y_26_IBUF_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal Z_11_OBUF_2053 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Y_19_IBUF_0 : STD_LOGIC; 
  signal Z_12_OBUF_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Z_20_OBUF_2058 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal U1_U1_GND_5_o_X_26_equal_20_o_mmx_out : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT411 : STD_LOGIC; 
  signal MAN_6_IBUF_0 : STD_LOGIC; 
  signal MAN_3_IBUF_0 : STD_LOGIC; 
  signal MAN_4_IBUF_0 : STD_LOGIC; 
  signal MAN_5_IBUF_0 : STD_LOGIC; 
  signal Z_13_OBUF_2066 : STD_LOGIC; 
  signal U1_U3_C_9_bdd8 : STD_LOGIC; 
  signal U1_U3_C_9_bdd0 : STD_LOGIC; 
  signal Z_21_OBUF_2069 : STD_LOGIC; 
  signal U1_U5_GEN_24_U_X_S_AND_4_o1_2070 : STD_LOGIC; 
  signal MAN_23_IBUF_0 : STD_LOGIC; 
  signal MAN_24_IBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out17 : STD_LOGIC; 
  signal Z_14_OBUF_2075 : STD_LOGIC; 
  signal Z_22_OBUF_0 : STD_LOGIC; 
  signal Z_30_OBUF_2077 : STD_LOGIC; 
  signal Z_15_OBUF_2078 : STD_LOGIC; 
  signal U2_isInfty_2079 : STD_LOGIC; 
  signal SPECIAL_IBUF_0 : STD_LOGIC; 
  signal U2_U2_GEN_13_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U3_XPInf_YNaN_OR_360_o : STD_LOGIC; 
  signal Z_23_OBUF_2083 : STD_LOGIC; 
  signal Z_17_OBUF_2084 : STD_LOGIC; 
  signal U2_U2_GEN_17_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal Z_31_OBUF_2087 : STD_LOGIC; 
  signal Z_16_OBUF_2088 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal Z_24_OBUF_2090 : STD_LOGIC; 
  signal Z_25_OBUF_2092 : STD_LOGIC; 
  signal Z_18_OBUF_2093 : STD_LOGIC; 
  signal Z_26_OBUF_2095 : STD_LOGIC; 
  signal Z_19_OBUF_2096 : STD_LOGIC; 
  signal U3_XPInf_XZero_OR_364_o : STD_LOGIC; 
  signal Mmux_Z161 : STD_LOGIC; 
  signal U3_XNInf_XZero_OR_368_o : STD_LOGIC; 
  signal Z_27_OBUF_2100 : STD_LOGIC; 
  signal U2_U2_GEN_20_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal Mmux_Z112_0 : STD_LOGIC; 
  signal Z_28_OBUF_2106 : STD_LOGIC; 
  signal Z_29_OBUF_2107 : STD_LOGIC; 
  signal XSIGN_IBUF_0 : STD_LOGIC; 
  signal MAN_0_IBUF_0 : STD_LOGIC; 
  signal U2_U2_GEN_9_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_U2_GEN_7_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal MAN_1_IBUF_0 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal MAN_2_IBUF_0 : STD_LOGIC; 
  signal U2_ExpCarry : STD_LOGIC; 
  signal Mmux_Z13 : STD_LOGIC; 
  signal U2_MantIncr : STD_LOGIC; 
  signal Mmux_Z21_2126 : STD_LOGIC; 
  signal Mmux_Z41_2127 : STD_LOGIC; 
  signal U2_TempExp_2_0 : STD_LOGIC; 
  signal MAN_25_IBUF_0 : STD_LOGIC; 
  signal Mmux_Z31 : STD_LOGIC; 
  signal Mmux_Z42_2132 : STD_LOGIC; 
  signal Mmux_Z61_2133 : STD_LOGIC; 
  signal Mmux_Z7 : STD_LOGIC; 
  signal Mmux_Z71_2135 : STD_LOGIC; 
  signal Mmux_Z8 : STD_LOGIC; 
  signal Mmux_Z81_2137 : STD_LOGIC; 
  signal Mmux_Z82_2138 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal U1_U1_GND_5_o_X_26_equal_25_o_26_111 : STD_LOGIC; 
  signal U1_U1_GND_5_o_X_26_equal_25_o_26_12 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT412 : STD_LOGIC; 
  signal N48_0 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal U1_U1_GND_5_o_X_26_equal_13_o_26_1 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT28_2146 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT27_2147 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal U1_U5_GEN_21_U_X_S_AND_4_o1_2153 : STD_LOGIC; 
  signal U1_U5_GEN_20_U_X_S_AND_4_o1_0 : STD_LOGIC; 
  signal Mmux_Z28 : STD_LOGIC; 
  signal Mmux_Z281_2157 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal Mmux_Z101_2161 : STD_LOGIC; 
  signal Mmux_Z11_2162 : STD_LOGIC; 
  signal Mmux_Z12_2163 : STD_LOGIC; 
  signal Mmux_Z121_2164 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Mmux_Z131_2166 : STD_LOGIC; 
  signal Mmux_Z132_2167 : STD_LOGIC; 
  signal Mmux_Z14_2168 : STD_LOGIC; 
  signal Mmux_Z23_2169 : STD_LOGIC; 
  signal Mmux_Z141_2170 : STD_LOGIC; 
  signal Mmux_Z151_2171 : STD_LOGIC; 
  signal Mmux_Z231_2172 : STD_LOGIC; 
  signal Mmux_Z312_2173 : STD_LOGIC; 
  signal U2_U2_GEN_2_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal Mmux_Z26_2175 : STD_LOGIC; 
  signal Mmux_Z27_2176 : STD_LOGIC; 
  signal Mmux_Z261_2177 : STD_LOGIC; 
  signal Mmux_Z271_2178 : STD_LOGIC; 
  signal Mmux_Z29 : STD_LOGIC; 
  signal Mmux_Z291_2180 : STD_LOGIC; 
  signal Mmux_Z292_2181 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT11_2184 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT13_2185 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT26_2186 : STD_LOGIC; 
  signal Mmux_Z152_0 : STD_LOGIC; 
  signal Mmux_Z272_0 : STD_LOGIC; 
  signal Mmux_Z3 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal Mmux_Z4 : STD_LOGIC; 
  signal Mmux_Z15 : STD_LOGIC; 
  signal Mmux_Z2 : STD_LOGIC; 
  signal Mmux_Z311_2194 : STD_LOGIC; 
  signal Mmux_Z10 : STD_LOGIC; 
  signal Mmux_Z1 : STD_LOGIC; 
  signal Mmux_Z6 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT29_2200 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT12_2201 : STD_LOGIC; 
  signal U1_U5_GEN_25_U_X_S_AND_4_o3_2202 : STD_LOGIC; 
  signal U1_U5_GEN_23_U_X_S_AND_4_o2_2203 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal U1_U5_GEN_17_U_X_S_AND_4_o : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT25 : STD_LOGIC; 
  signal U1_U5_GEN_24_U_X_S_AND_4_o : STD_LOGIC; 
  signal U1_U5_GEN_18_U_X_S_AND_4_o : STD_LOGIC; 
  signal U1_U5_GEN_16_U_X_S_AND_4_o : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal YCASE_0_IBUF_1 : STD_LOGIC; 
  signal YCASE_1_IBUF_4 : STD_LOGIC; 
  signal YCASE_2_IBUF_7 : STD_LOGIC; 
  signal XEXP_0_IBUF_10 : STD_LOGIC; 
  signal XEXP_1_IBUF_13 : STD_LOGIC; 
  signal XEXP_2_IBUF_16 : STD_LOGIC; 
  signal XEXP_3_IBUF_19 : STD_LOGIC; 
  signal XEXP_4_IBUF_22 : STD_LOGIC; 
  signal XEXP_5_IBUF_25 : STD_LOGIC; 
  signal XEXP_6_IBUF_28 : STD_LOGIC; 
  signal XEXP_7_IBUF_31 : STD_LOGIC; 
  signal X_0_IBUF_34 : STD_LOGIC; 
  signal X_1_IBUF_37 : STD_LOGIC; 
  signal X_2_IBUF_40 : STD_LOGIC; 
  signal X_3_IBUF_43 : STD_LOGIC; 
  signal Y_0_IBUF_46 : STD_LOGIC; 
  signal X_4_IBUF_49 : STD_LOGIC; 
  signal Y_1_IBUF_52 : STD_LOGIC; 
  signal X_5_IBUF_55 : STD_LOGIC; 
  signal Y_2_IBUF_58 : STD_LOGIC; 
  signal X_6_IBUF_61 : STD_LOGIC; 
  signal Y_3_IBUF_64 : STD_LOGIC; 
  signal X_7_IBUF_67 : STD_LOGIC; 
  signal Y_4_IBUF_72 : STD_LOGIC; 
  signal X_8_IBUF_75 : STD_LOGIC; 
  signal Y_5_IBUF_80 : STD_LOGIC; 
  signal X_9_IBUF_83 : STD_LOGIC; 
  signal Y_6_IBUF_88 : STD_LOGIC; 
  signal Y_7_IBUF_93 : STD_LOGIC; 
  signal Y_8_IBUF_98 : STD_LOGIC; 
  signal Y_9_IBUF_103 : STD_LOGIC; 
  signal X_10_IBUF_114 : STD_LOGIC; 
  signal X_11_IBUF_117 : STD_LOGIC; 
  signal X_12_IBUF_120 : STD_LOGIC; 
  signal X_20_IBUF_123 : STD_LOGIC; 
  signal X_13_IBUF_126 : STD_LOGIC; 
  signal X_21_IBUF_129 : STD_LOGIC; 
  signal X_14_IBUF_132 : STD_LOGIC; 
  signal X_22_IBUF_135 : STD_LOGIC; 
  signal X_30_IBUF_138 : STD_LOGIC; 
  signal X_15_IBUF_141 : STD_LOGIC; 
  signal X_23_IBUF_144 : STD_LOGIC; 
  signal X_31_IBUF_147 : STD_LOGIC; 
  signal X_16_IBUF_150 : STD_LOGIC; 
  signal X_24_IBUF_153 : STD_LOGIC; 
  signal X_17_IBUF_156 : STD_LOGIC; 
  signal X_25_IBUF_159 : STD_LOGIC; 
  signal Y_10_IBUF_162 : STD_LOGIC; 
  signal X_18_IBUF_165 : STD_LOGIC; 
  signal X_26_IBUF_168 : STD_LOGIC; 
  signal Y_11_IBUF_171 : STD_LOGIC; 
  signal X_19_IBUF_174 : STD_LOGIC; 
  signal X_27_IBUF_177 : STD_LOGIC; 
  signal Y_12_IBUF_180 : STD_LOGIC; 
  signal Y_20_IBUF_183 : STD_LOGIC; 
  signal X_28_IBUF_186 : STD_LOGIC; 
  signal Y_13_IBUF_189 : STD_LOGIC; 
  signal Y_21_IBUF_192 : STD_LOGIC; 
  signal X_29_IBUF_195 : STD_LOGIC; 
  signal Y_14_IBUF_198 : STD_LOGIC; 
  signal Y_22_IBUF_201 : STD_LOGIC; 
  signal Y_30_IBUF_204 : STD_LOGIC; 
  signal Y_15_IBUF_207 : STD_LOGIC; 
  signal Y_23_IBUF_210 : STD_LOGIC; 
  signal Y_31_IBUF_213 : STD_LOGIC; 
  signal Y_16_IBUF_216 : STD_LOGIC; 
  signal Y_24_IBUF_219 : STD_LOGIC; 
  signal Y_17_IBUF_222 : STD_LOGIC; 
  signal Y_25_IBUF_225 : STD_LOGIC; 
  signal Y_18_IBUF_230 : STD_LOGIC; 
  signal Y_26_IBUF_233 : STD_LOGIC; 
  signal Y_19_IBUF_238 : STD_LOGIC; 
  signal Y_27_IBUF_241 : STD_LOGIC; 
  signal Y_28_IBUF_248 : STD_LOGIC; 
  signal Y_29_IBUF_255 : STD_LOGIC; 
  signal XSIGN_IBUF_290 : STD_LOGIC; 
  signal MAN_0_IBUF_293 : STD_LOGIC; 
  signal MAN_1_IBUF_296 : STD_LOGIC; 
  signal MAN_2_IBUF_299 : STD_LOGIC; 
  signal MAN_3_IBUF_302 : STD_LOGIC; 
  signal MAN_4_IBUF_305 : STD_LOGIC; 
  signal MAN_5_IBUF_308 : STD_LOGIC; 
  signal MAN_6_IBUF_311 : STD_LOGIC; 
  signal MAN_7_IBUF_314 : STD_LOGIC; 
  signal MAN_8_IBUF_317 : STD_LOGIC; 
  signal MAN_9_IBUF_320 : STD_LOGIC; 
  signal MAN_10_IBUF_323 : STD_LOGIC; 
  signal MAN_11_IBUF_326 : STD_LOGIC; 
  signal MAN_12_IBUF_329 : STD_LOGIC; 
  signal MAN_20_IBUF_332 : STD_LOGIC; 
  signal MAN_13_IBUF_335 : STD_LOGIC; 
  signal MAN_21_IBUF_338 : STD_LOGIC; 
  signal MAN_14_IBUF_341 : STD_LOGIC; 
  signal MAN_22_IBUF_344 : STD_LOGIC; 
  signal MAN_15_IBUF_347 : STD_LOGIC; 
  signal MAN_23_IBUF_350 : STD_LOGIC; 
  signal MAN_16_IBUF_353 : STD_LOGIC; 
  signal MAN_24_IBUF_356 : STD_LOGIC; 
  signal MAN_17_IBUF_359 : STD_LOGIC; 
  signal MAN_25_IBUF_362 : STD_LOGIC; 
  signal MAN_18_IBUF_365 : STD_LOGIC; 
  signal MAN_26_IBUF_368 : STD_LOGIC; 
  signal MAN_19_IBUF_371 : STD_LOGIC; 
  signal XCASE_0_IBUF_374 : STD_LOGIC; 
  signal XCASE_1_IBUF_377 : STD_LOGIC; 
  signal XCASE_2_IBUF_380 : STD_LOGIC; 
  signal SPECIAL_IBUF_383 : STD_LOGIC; 
  signal Z_12_OBUF_496 : STD_LOGIC; 
  signal Z_22_OBUF_511 : STD_LOGIC; 
  signal Mmux_Z111_665 : STD_LOGIC; 
  signal Mmux_Z152_704 : STD_LOGIC; 
  signal U2_ExpCarry_pack_7 : STD_LOGIC; 
  signal U2_TempExp_0_pack_3 : STD_LOGIC; 
  signal Mmux_Z112_1022 : STD_LOGIC; 
  signal N44_pack_8 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT29_pack_1 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal Mmux_Z272_1401 : STD_LOGIC; 
  signal U1_U5_GEN_23_U_X_S_AND_4_o1 : STD_LOGIC; 
  signal U1_ShiftPos_0_mmx_out10 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT25_pack_1 : STD_LOGIC; 
  signal U1_ShiftPos_1_mmx_out13 : STD_LOGIC; 
  signal U1_U5_GEN_20_U_X_S_AND_4_o1_1580 : STD_LOGIC; 
  signal NlwBufferSignal_Z_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Z_29_OBUF_I : STD_LOGIC; 
  signal U1_ShiftPos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_n0007 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal MantNorm : STD_LOGIC_VECTOR ( 25 downto 3 ); 
  signal ExpNorm : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U2_TempExp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  YCASE_0_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_0_IBUF_1,
      I => YCASE(0)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_0_IBUF_1,
      O => YCASE_0_IBUF_0
    );
  YCASE_1_IBUF : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_1_IBUF_4,
      I => YCASE(1)
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_1_IBUF_4,
      O => YCASE_1_IBUF_0
    );
  YCASE_2_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_2_IBUF_7,
      I => YCASE(2)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_2_IBUF_7,
      O => YCASE_2_IBUF_0
    );
  XEXP_0_IBUF : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_0_IBUF_10,
      I => XEXP(0)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_0_IBUF_10,
      O => XEXP_0_IBUF_0
    );
  XEXP_1_IBUF : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_1_IBUF_13,
      I => XEXP(1)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_1_IBUF_13,
      O => XEXP_1_IBUF_0
    );
  XEXP_2_IBUF : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_2_IBUF_16,
      I => XEXP(2)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_2_IBUF_16,
      O => XEXP_2_IBUF_0
    );
  XEXP_3_IBUF : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_3_IBUF_19,
      I => XEXP(3)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_3_IBUF_19,
      O => XEXP_3_IBUF_0
    );
  XEXP_4_IBUF : X_BUF
    generic map(
      LOC => "PAD379",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_4_IBUF_22,
      I => XEXP(4)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD379",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_4_IBUF_22,
      O => XEXP_4_IBUF_0
    );
  XEXP_5_IBUF : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_5_IBUF_25,
      I => XEXP(5)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_5_IBUF_25,
      O => XEXP_5_IBUF_0
    );
  XEXP_6_IBUF : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_6_IBUF_28,
      I => XEXP(6)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_6_IBUF_28,
      O => XEXP_6_IBUF_0
    );
  XEXP_7_IBUF : X_BUF
    generic map(
      LOC => "PAD382",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_7_IBUF_31,
      I => XEXP(7)
    );
  ProtoComp0_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD382",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_7_IBUF_31,
      O => XEXP_7_IBUF_0
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_34,
      I => X(0)
    );
  ProtoComp0_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_34,
      O => X_0_IBUF_0
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_37,
      I => X(1)
    );
  ProtoComp0_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_37,
      O => X_1_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_40,
      I => X(2)
    );
  ProtoComp0_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_40,
      O => X_2_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_43,
      I => X(3)
    );
  ProtoComp0_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_43,
      O => X_3_IBUF_0
    );
  Y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_0_IBUF_46,
      I => Y(0)
    );
  ProtoComp0_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_IBUF_46,
      O => Y_0_IBUF_0
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_49,
      I => X(4)
    );
  ProtoComp0_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_49,
      O => X_4_IBUF_0
    );
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_52,
      I => Y(1)
    );
  ProtoComp0_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_52,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_55,
      I => X(5)
    );
  ProtoComp0_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_55,
      O => X_5_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_58,
      I => Y(2)
    );
  ProtoComp0_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_58,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_61,
      I => X(6)
    );
  ProtoComp0_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_61,
      O => X_6_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_64,
      I => Y(3)
    );
  ProtoComp0_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_64,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_67,
      I => X(7)
    );
  ProtoComp0_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_67,
      O => X_7_IBUF_0
    );
  Z_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD339"
    )
    port map (
      I => NlwBufferSignal_Z_0_OBUF_I,
      O => Z(0)
    );
  Y_4_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_4_IBUF_72,
      I => Y(4)
    );
  ProtoComp0_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_72,
      O => Y_4_IBUF_0
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_75,
      I => X(8)
    );
  ProtoComp0_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_75,
      O => X_8_IBUF_0
    );
  Z_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD337"
    )
    port map (
      I => NlwBufferSignal_Z_1_OBUF_I,
      O => Z(1)
    );
  Y_5_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_5_IBUF_80,
      I => Y(5)
    );
  ProtoComp0_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_80,
      O => Y_5_IBUF_0
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_83,
      I => X(9)
    );
  ProtoComp0_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_83,
      O => X_9_IBUF_0
    );
  Z_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD343"
    )
    port map (
      I => NlwBufferSignal_Z_2_OBUF_I,
      O => Z(2)
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_88,
      I => Y(6)
    );
  ProtoComp0_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_88,
      O => Y_6_IBUF_0
    );
  Z_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD341"
    )
    port map (
      I => NlwBufferSignal_Z_3_OBUF_I,
      O => Z(3)
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_93,
      I => Y(7)
    );
  ProtoComp0_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_93,
      O => Y_7_IBUF_0
    );
  Z_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD345"
    )
    port map (
      I => NlwBufferSignal_Z_4_OBUF_I,
      O => Z(4)
    );
  Y_8_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_8_IBUF_98,
      I => Y(8)
    );
  ProtoComp0_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_IBUF_98,
      O => Y_8_IBUF_0
    );
  Z_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD346"
    )
    port map (
      I => NlwBufferSignal_Z_5_OBUF_I,
      O => Z(5)
    );
  Y_9_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_9_IBUF_103,
      I => Y(9)
    );
  ProtoComp0_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_IBUF_103,
      O => Y_9_IBUF_0
    );
  Z_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD347"
    )
    port map (
      I => NlwBufferSignal_Z_6_OBUF_I,
      O => Z(6)
    );
  Z_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD344"
    )
    port map (
      I => NlwBufferSignal_Z_7_OBUF_I,
      O => Z(7)
    );
  Z_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD349"
    )
    port map (
      I => NlwBufferSignal_Z_8_OBUF_I,
      O => Z(8)
    );
  Z_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD350"
    )
    port map (
      I => NlwBufferSignal_Z_9_OBUF_I,
      O => Z(9)
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_114,
      I => X(10)
    );
  ProtoComp0_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_114,
      O => X_10_IBUF_0
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_117,
      I => X(11)
    );
  ProtoComp0_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_117,
      O => X_11_IBUF_0
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_120,
      I => X(12)
    );
  ProtoComp0_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_120,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_123,
      I => X(20)
    );
  ProtoComp0_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_123,
      O => X_20_IBUF_0
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_126,
      I => X(13)
    );
  ProtoComp0_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_126,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_129,
      I => X(21)
    );
  ProtoComp0_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_129,
      O => X_21_IBUF_0
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_132,
      I => X(14)
    );
  ProtoComp0_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_132,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_135,
      I => X(22)
    );
  ProtoComp0_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_135,
      O => X_22_IBUF_0
    );
  X_30_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_30_IBUF_138,
      I => X(30)
    );
  ProtoComp0_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_30_IBUF_138,
      O => X_30_IBUF_0
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_141,
      I => X(15)
    );
  ProtoComp0_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_141,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_144,
      I => X(23)
    );
  ProtoComp0_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_144,
      O => X_23_IBUF_0
    );
  X_31_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_31_IBUF_147,
      I => X(31)
    );
  ProtoComp0_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_31_IBUF_147,
      O => X_31_IBUF_0
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_150,
      I => X(16)
    );
  ProtoComp0_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_150,
      O => X_16_IBUF_0
    );
  X_24_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_24_IBUF_153,
      I => X(24)
    );
  ProtoComp0_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_24_IBUF_153,
      O => X_24_IBUF_0
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_156,
      I => X(17)
    );
  ProtoComp0_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_156,
      O => X_17_IBUF_0
    );
  X_25_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_25_IBUF_159,
      I => X(25)
    );
  ProtoComp0_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_25_IBUF_159,
      O => X_25_IBUF_0
    );
  Y_10_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_10_IBUF_162,
      I => Y(10)
    );
  ProtoComp0_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_IBUF_162,
      O => Y_10_IBUF_0
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_165,
      I => X(18)
    );
  ProtoComp0_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_165,
      O => X_18_IBUF_0
    );
  X_26_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_26_IBUF_168,
      I => X(26)
    );
  ProtoComp0_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_26_IBUF_168,
      O => X_26_IBUF_0
    );
  Y_11_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_11_IBUF_171,
      I => Y(11)
    );
  ProtoComp0_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_IBUF_171,
      O => Y_11_IBUF_0
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_174,
      I => X(19)
    );
  ProtoComp0_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_174,
      O => X_19_IBUF_0
    );
  X_27_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_27_IBUF_177,
      I => X(27)
    );
  ProtoComp0_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_27_IBUF_177,
      O => X_27_IBUF_0
    );
  Y_12_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_12_IBUF_180,
      I => Y(12)
    );
  ProtoComp0_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_IBUF_180,
      O => Y_12_IBUF_0
    );
  Y_20_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_20_IBUF_183,
      I => Y(20)
    );
  ProtoComp0_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_IBUF_183,
      O => Y_20_IBUF_0
    );
  X_28_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_28_IBUF_186,
      I => X(28)
    );
  ProtoComp0_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_28_IBUF_186,
      O => X_28_IBUF_0
    );
  Y_13_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_13_IBUF_189,
      I => Y(13)
    );
  ProtoComp0_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_IBUF_189,
      O => Y_13_IBUF_0
    );
  Y_21_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_21_IBUF_192,
      I => Y(21)
    );
  ProtoComp0_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_IBUF_192,
      O => Y_21_IBUF_0
    );
  X_29_IBUF : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_29_IBUF_195,
      I => X(29)
    );
  ProtoComp0_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_29_IBUF_195,
      O => X_29_IBUF_0
    );
  Y_14_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_14_IBUF_198,
      I => Y(14)
    );
  ProtoComp0_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_IBUF_198,
      O => Y_14_IBUF_0
    );
  Y_22_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_22_IBUF_201,
      I => Y(22)
    );
  ProtoComp0_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_IBUF_201,
      O => Y_22_IBUF_0
    );
  Y_30_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_30_IBUF_204,
      I => Y(30)
    );
  ProtoComp0_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_30_IBUF_204,
      O => Y_30_IBUF_0
    );
  Y_15_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_15_IBUF_207,
      I => Y(15)
    );
  ProtoComp0_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_IBUF_207,
      O => Y_15_IBUF_0
    );
  Y_23_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_23_IBUF_210,
      I => Y(23)
    );
  ProtoComp0_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_IBUF_210,
      O => Y_23_IBUF_0
    );
  Y_31_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_31_IBUF_213,
      I => Y(31)
    );
  ProtoComp0_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_31_IBUF_213,
      O => Y_31_IBUF_0
    );
  Y_16_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_16_IBUF_216,
      I => Y(16)
    );
  ProtoComp0_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_IBUF_216,
      O => Y_16_IBUF_0
    );
  Y_24_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_24_IBUF_219,
      I => Y(24)
    );
  ProtoComp0_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_24_IBUF_219,
      O => Y_24_IBUF_0
    );
  Y_17_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_17_IBUF_222,
      I => Y(17)
    );
  ProtoComp0_IMUX_67 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_IBUF_222,
      O => Y_17_IBUF_0
    );
  Y_25_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_25_IBUF_225,
      I => Y(25)
    );
  ProtoComp0_IMUX_68 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_25_IBUF_225,
      O => Y_25_IBUF_0
    );
  Z_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD351"
    )
    port map (
      I => NlwBufferSignal_Z_10_OBUF_I,
      O => Z(10)
    );
  Y_18_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_18_IBUF_230,
      I => Y(18)
    );
  ProtoComp0_IMUX_69 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_IBUF_230,
      O => Y_18_IBUF_0
    );
  Y_26_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_26_IBUF_233,
      I => Y(26)
    );
  ProtoComp0_IMUX_70 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_26_IBUF_233,
      O => Y_26_IBUF_0
    );
  Z_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD352"
    )
    port map (
      I => NlwBufferSignal_Z_11_OBUF_I,
      O => Z(11)
    );
  Y_19_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_19_IBUF_238,
      I => Y(19)
    );
  ProtoComp0_IMUX_71 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_IBUF_238,
      O => Y_19_IBUF_0
    );
  Y_27_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_27_IBUF_241,
      I => Y(27)
    );
  ProtoComp0_IMUX_72 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_27_IBUF_241,
      O => Y_27_IBUF_0
    );
  Z_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD353"
    )
    port map (
      I => NlwBufferSignal_Z_12_OBUF_I,
      O => Z(12)
    );
  Z_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD361"
    )
    port map (
      I => NlwBufferSignal_Z_20_OBUF_I,
      O => Z(20)
    );
  Y_28_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_28_IBUF_248,
      I => Y(28)
    );
  ProtoComp0_IMUX_73 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_28_IBUF_248,
      O => Y_28_IBUF_0
    );
  Z_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD354"
    )
    port map (
      I => NlwBufferSignal_Z_13_OBUF_I,
      O => Z(13)
    );
  Z_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD362"
    )
    port map (
      I => NlwBufferSignal_Z_21_OBUF_I,
      O => Z(21)
    );
  Y_29_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_29_IBUF_255,
      I => Y(29)
    );
  ProtoComp0_IMUX_74 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_29_IBUF_255,
      O => Y_29_IBUF_0
    );
  Z_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD355"
    )
    port map (
      I => NlwBufferSignal_Z_14_OBUF_I,
      O => Z(14)
    );
  Z_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD363"
    )
    port map (
      I => NlwBufferSignal_Z_22_OBUF_I,
      O => Z(22)
    );
  Z_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_Z_30_OBUF_I,
      O => Z(30)
    );
  Z_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD356"
    )
    port map (
      I => NlwBufferSignal_Z_15_OBUF_I,
      O => Z(15)
    );
  Z_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD364"
    )
    port map (
      I => NlwBufferSignal_Z_23_OBUF_I,
      O => Z(23)
    );
  Z_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD374"
    )
    port map (
      I => NlwBufferSignal_Z_31_OBUF_I,
      O => Z(31)
    );
  Z_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD357"
    )
    port map (
      I => NlwBufferSignal_Z_16_OBUF_I,
      O => Z(16)
    );
  Z_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_Z_24_OBUF_I,
      O => Z(24)
    );
  Z_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD358"
    )
    port map (
      I => NlwBufferSignal_Z_17_OBUF_I,
      O => Z(17)
    );
  Z_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD366"
    )
    port map (
      I => NlwBufferSignal_Z_25_OBUF_I,
      O => Z(25)
    );
  Z_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD359"
    )
    port map (
      I => NlwBufferSignal_Z_18_OBUF_I,
      O => Z(18)
    );
  Z_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD367"
    )
    port map (
      I => NlwBufferSignal_Z_26_OBUF_I,
      O => Z(26)
    );
  Z_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD360"
    )
    port map (
      I => NlwBufferSignal_Z_19_OBUF_I,
      O => Z(19)
    );
  Z_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD368"
    )
    port map (
      I => NlwBufferSignal_Z_27_OBUF_I,
      O => Z(27)
    );
  Z_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD369"
    )
    port map (
      I => NlwBufferSignal_Z_28_OBUF_I,
      O => Z(28)
    );
  Z_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD370"
    )
    port map (
      I => NlwBufferSignal_Z_29_OBUF_I,
      O => Z(29)
    );
  XSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 202 ps
    )
    port map (
      O => XSIGN_IBUF_290,
      I => XSIGN
    );
  ProtoComp0_IMUX_75 : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_IBUF_290,
      O => XSIGN_IBUF_0
    );
  MAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_0_IBUF_293,
      I => MAN(0)
    );
  ProtoComp0_IMUX_76 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_0_IBUF_293,
      O => MAN_0_IBUF_0
    );
  MAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_1_IBUF_296,
      I => MAN(1)
    );
  ProtoComp0_IMUX_77 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_1_IBUF_296,
      O => MAN_1_IBUF_0
    );
  MAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_2_IBUF_299,
      I => MAN(2)
    );
  ProtoComp0_IMUX_78 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_2_IBUF_299,
      O => MAN_2_IBUF_0
    );
  MAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_3_IBUF_302,
      I => MAN(3)
    );
  ProtoComp0_IMUX_79 : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_3_IBUF_302,
      O => MAN_3_IBUF_0
    );
  MAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_4_IBUF_305,
      I => MAN(4)
    );
  ProtoComp0_IMUX_80 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_4_IBUF_305,
      O => MAN_4_IBUF_0
    );
  MAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_5_IBUF_308,
      I => MAN(5)
    );
  ProtoComp0_IMUX_81 : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_5_IBUF_308,
      O => MAN_5_IBUF_0
    );
  MAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_6_IBUF_311,
      I => MAN(6)
    );
  ProtoComp0_IMUX_82 : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_6_IBUF_311,
      O => MAN_6_IBUF_0
    );
  MAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_7_IBUF_314,
      I => MAN(7)
    );
  ProtoComp0_IMUX_83 : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_7_IBUF_314,
      O => MAN_7_IBUF_0
    );
  MAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_8_IBUF_317,
      I => MAN(8)
    );
  ProtoComp0_IMUX_84 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_8_IBUF_317,
      O => MAN_8_IBUF_0
    );
  MAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_9_IBUF_320,
      I => MAN(9)
    );
  ProtoComp0_IMUX_85 : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_9_IBUF_320,
      O => MAN_9_IBUF_0
    );
  MAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_10_IBUF_323,
      I => MAN(10)
    );
  ProtoComp0_IMUX_86 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_10_IBUF_323,
      O => MAN_10_IBUF_0
    );
  MAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_11_IBUF_326,
      I => MAN(11)
    );
  ProtoComp0_IMUX_87 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_11_IBUF_326,
      O => MAN_11_IBUF_0
    );
  MAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_12_IBUF_329,
      I => MAN(12)
    );
  ProtoComp0_IMUX_88 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_12_IBUF_329,
      O => MAN_12_IBUF_0
    );
  MAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_20_IBUF_332,
      I => MAN(20)
    );
  ProtoComp0_IMUX_89 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_20_IBUF_332,
      O => MAN_20_IBUF_0
    );
  MAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_13_IBUF_335,
      I => MAN(13)
    );
  ProtoComp0_IMUX_90 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_13_IBUF_335,
      O => MAN_13_IBUF_0
    );
  MAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_21_IBUF_338,
      I => MAN(21)
    );
  ProtoComp0_IMUX_91 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_21_IBUF_338,
      O => MAN_21_IBUF_0
    );
  MAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_14_IBUF_341,
      I => MAN(14)
    );
  ProtoComp0_IMUX_92 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_14_IBUF_341,
      O => MAN_14_IBUF_0
    );
  MAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_22_IBUF_344,
      I => MAN(22)
    );
  ProtoComp0_IMUX_93 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_22_IBUF_344,
      O => MAN_22_IBUF_0
    );
  MAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_15_IBUF_347,
      I => MAN(15)
    );
  ProtoComp0_IMUX_94 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_15_IBUF_347,
      O => MAN_15_IBUF_0
    );
  MAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_23_IBUF_350,
      I => MAN(23)
    );
  ProtoComp0_IMUX_95 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_23_IBUF_350,
      O => MAN_23_IBUF_0
    );
  MAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_16_IBUF_353,
      I => MAN(16)
    );
  ProtoComp0_IMUX_96 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_16_IBUF_353,
      O => MAN_16_IBUF_0
    );
  MAN_24_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_24_IBUF_356,
      I => MAN(24)
    );
  ProtoComp0_IMUX_97 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_24_IBUF_356,
      O => MAN_24_IBUF_0
    );
  MAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_17_IBUF_359,
      I => MAN(17)
    );
  ProtoComp0_IMUX_98 : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_17_IBUF_359,
      O => MAN_17_IBUF_0
    );
  MAN_25_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_25_IBUF_362,
      I => MAN(25)
    );
  ProtoComp0_IMUX_99 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_25_IBUF_362,
      O => MAN_25_IBUF_0
    );
  MAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_18_IBUF_365,
      I => MAN(18)
    );
  ProtoComp0_IMUX_100 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_18_IBUF_365,
      O => MAN_18_IBUF_0
    );
  MAN_26_IBUF : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_26_IBUF_368,
      I => MAN(26)
    );
  ProtoComp0_IMUX_101 : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_26_IBUF_368,
      O => MAN_26_IBUF_0
    );
  MAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_19_IBUF_371,
      I => MAN(19)
    );
  ProtoComp0_IMUX_102 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_19_IBUF_371,
      O => MAN_19_IBUF_0
    );
  XCASE_0_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_0_IBUF_374,
      I => XCASE(0)
    );
  ProtoComp0_IMUX_103 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_0_IBUF_374,
      O => XCASE_0_IBUF_0
    );
  XCASE_1_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_1_IBUF_377,
      I => XCASE(1)
    );
  ProtoComp0_IMUX_104 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_1_IBUF_377,
      O => XCASE_1_IBUF_0
    );
  XCASE_2_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_2_IBUF_380,
      I => XCASE(2)
    );
  ProtoComp0_IMUX_105 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_2_IBUF_380,
      O => XCASE_2_IBUF_0
    );
  SPECIAL_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => SPECIAL_IBUF_383,
      I => SPECIAL
    );
  ProtoComp0_IMUX_106 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => SPECIAL_IBUF_383,
      O => SPECIAL_IBUF_0
    );
  Mmux_Z33 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y92",
      INIT => X"6464646420202020"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => XCASE_2_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR2 => X_11_IBUF_0,
      ADR5 => Y_11_IBUF_0,
      O => Mmux_Z3
    );
  Mmux_Z35 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y92",
      INIT => X"FF80FFFFFF80FF80"
    )
    port map (
      ADR3 => Mmux_Z161,
      ADR1 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR0 => Mmux_Z3,
      ADR5 => Mmux_Z31,
      ADR4 => U2_isInfty_2079,
      O => Z_11_OBUF_2053
    );
  Mmux_Z143 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y95",
      INIT => X"FFFFB3A0FFFF3300"
    )
    port map (
      ADR4 => Mmux_Z161,
      ADR0 => Mmux_Z111_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => Mmux_Z14_2168,
      ADR3 => Mmux_Z141_2170,
      ADR1 => U2_isInfty_2079,
      O => Z_21_OBUF_2069
    );
  Mmux_Z20 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y95",
      INIT => X"0EFE0E0EFEFEFEFE"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR4 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => N8,
      ADR5 => N30,
      ADR0 => U2_ExpCarry,
      ADR1 => U2_TempExp(4),
      O => Z_27_OBUF_2100
    );
  Mmux_Z18 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y97",
      INIT => X"77FF72FA55FF50FA"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      ADR1 => N10,
      ADR3 => N30,
      ADR4 => U2_ExpCarry,
      ADR2 => U2_TempExp_2_0,
      O => Z_25_OBUF_2092
    );
  Mmux_Z16 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y97",
      INIT => X"5544FFEEF5E4FFEE"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR5 => N4,
      ADR4 => N30,
      ADR3 => U2_ExpCarry,
      ADR1 => U2_TempExp(0),
      O => Z_23_OBUF_2083
    );
  Mmux_Z20_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y91",
      INIT => X"C3F3C3F3CFFFCFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => XCASE_2_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR3 => X_27_IBUF_0,
      ADR5 => Y_27_IBUF_0,
      O => N8
    );
  Mmux_Z73 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y92",
      INIT => X"FFFF88F8FFFF00F0"
    )
    port map (
      ADR4 => Mmux_Z161,
      ADR1 => Mmux_Z111_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      ADR0 => Mmux_Z7,
      ADR2 => Mmux_Z71_2135,
      ADR3 => U2_isInfty_2079,
      O => Z_15_OBUF_2078
    );
  Mmux_Z71 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y93",
      INIT => X"6420642064206420"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR3 => X_15_IBUF_0,
      ADR2 => Y_15_IBUF_0,
      O => Mmux_Z7
    );
  Mmux_Z141 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y94",
      INIT => X"0000F0F0FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR2 => X_21_IBUF_0,
      ADR3 => Y_21_IBUF_0,
      O => Mmux_Z14_2168
    );
  Mmux_Z17 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y95",
      INIT => X"CFCFCCCCFFAAFFAA"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => N28,
      ADR1 => Mmux_Z1711,
      ADR3 => U2_ExpCarry,
      ADR0 => U2_TempExp(1),
      O => Z_24_OBUF_2090
    );
  Mmux_Z17_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y95",
      INIT => X"CF33CF33CFFFCFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR5 => X_24_IBUF_0,
      ADR2 => Y_24_IBUF_0,
      O => N28
    );
  Mmux_Z18_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y97",
      INIT => X"FF000FFFFFFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR5 => X_25_IBUF_0,
      ADR2 => Y_25_IBUF_0,
      O => N10
    );
  Mmux_Z16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y98",
      INIT => X"CFCFCFCF33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR2 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      O => N4
    );
  Mmux_Z123 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"FF8FFF0FFF88FF00"
    )
    port map (
      ADR3 => Mmux_Z161,
      ADR4 => Mmux_Z111_0,
      ADR0 => U3_XNorm_YZero_AND_18_o1,
      ADR1 => Mmux_Z12_2163,
      ADR5 => Mmux_Z121_2164,
      ADR2 => U2_isInfty_2079,
      O => Z_1_OBUF_1910
    );
  Mmux_Z263 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"EAFFAAFFEAEAAAAA"
    )
    port map (
      ADR0 => Mmux_Z161,
      ADR4 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR1 => Mmux_Z26_2175,
      ADR5 => Mmux_Z261_2177,
      ADR3 => U2_isInfty_2079,
      O => Z_3_OBUF_1915
    );
  Mmux_Z8_Mmux_Z8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_12_OBUF_496,
      O => Z_12_OBUF_0
    );
  Mmux_Z81 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y91",
      INIT => X"00AAF00000AAF000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR2 => X_16_IBUF_0,
      ADR0 => Y_16_IBUF_0,
      O => Mmux_Z8
    );
  Mmux_Z32 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y91",
      INIT => X"FFFF0F0F4F1F4F1F"
    )
    port map (
      ADR0 => U2_isInfty_2079,
      ADR5 => SPECIAL_IBUF_0,
      ADR3 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR1 => MantNorm(12),
      ADR2 => N12,
      ADR4 => U3_XPInf_YNaN_OR_360_o,
      O => Z_9_OBUF_1924
    );
  Mmux_Z84 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y91",
      INIT => X"AAFFAAAAAAFFAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => Mmux_Z82_2138,
      ADR3 => U2_isInfty_2079,
      ADR0 => Mmux_Z81_2137,
      ADR5 => '1',
      O => Z_16_OBUF_2088
    );
  Mmux_Z44 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y91",
      INIT => X"CCFCCCFC"
    )
    port map (
      ADR2 => Mmux_Z42_2132,
      ADR1 => Mmux_Z41_2127,
      ADR0 => '1',
      ADR3 => U2_isInfty_2079,
      ADR4 => '1',
      O => Z_12_OBUF_496
    );
  Mmux_Z113 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y92",
      INIT => X"EECCFEFCCCCCFCFC"
    )
    port map (
      ADR1 => Mmux_Z161,
      ADR0 => Mmux_Z111_0,
      ADR3 => U3_XNorm_YZero_AND_18_o1,
      ADR5 => Mmux_Z11_2162,
      ADR2 => Mmux_Z112_0,
      ADR4 => U2_isInfty_2079,
      O => Z_19_OBUF_2096
    );
  Z_4_OBUF_Z_4_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_22_OBUF_511,
      O => Z_22_OBUF_0
    );
  Mmux_Z274 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y94",
      INIT => X"FF50FF50FF50FF50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => Mmux_Z272_0,
      ADR0 => U2_isInfty_2079,
      ADR3 => Mmux_Z271_2178,
      ADR5 => '1',
      O => Z_4_OBUF_1917
    );
  Mmux_Z154 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y94",
      INIT => X"FFFF4444"
    )
    port map (
      ADR1 => Mmux_Z152_0,
      ADR4 => Mmux_Z151_2171,
      ADR2 => '1',
      ADR0 => U2_isInfty_2079,
      ADR3 => '1',
      O => Z_22_OBUF_511
    );
  Mmux_Z19 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y96",
      INIT => X"DDDDCCCCFFF0FFF0"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U3_XNorm_YZero_AND_18_o1,
      ADR0 => N24,
      ADR1 => Mmux_Z1711,
      ADR3 => U2_ExpCarry,
      ADR2 => U2_TempExp(3),
      O => Z_26_OBUF_2095
    );
  Mmux_Z21 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y96",
      INIT => X"CFFFCFCFCAFACACA"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR4 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => N26,
      ADR1 => Mmux_Z1711,
      ADR0 => U2_TempExp(5),
      ADR5 => U2_ExpCarry,
      O => Z_28_OBUF_2106
    );
  Mmux_Z121 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => X"0F00F0F00F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR5 => X_1_IBUF_0,
      ADR3 => Y_1_IBUF_0,
      O => Mmux_Z12_2163
    );
  Mmux_Z261 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => X"55550000A0A0A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR4 => X_3_IBUF_0,
      ADR2 => Y_3_IBUF_0,
      O => Mmux_Z26_2175
    );
  Mmux_Z41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y89",
      INIT => X"5500A0A05500A0A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR2 => X_12_IBUF_0,
      ADR3 => Y_12_IBUF_0,
      O => Mmux_Z4
    );
  Mmux_Z42 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y89",
      INIT => X"FFFFC0C0EAC0C0C0"
    )
    port map (
      ADR4 => Mmux_Z111_0,
      ADR0 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => Mmux_Z4,
      ADR5 => Mmux_Z1711,
      ADR1 => SPECIAL_IBUF_0,
      ADR2 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z41_2127
    );
  Mmux_Z82 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y91",
      INIT => X"FFFFC888C888C888"
    )
    port map (
      ADR1 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => Mmux_Z8,
      ADR0 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z81_2137
    );
  Mmux_Z32_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y91",
      INIT => X"DFDF77FFFFFFFFFF"
    )
    port map (
      ADR1 => YCASE_2_IBUF_0,
      ADR3 => Y_9_IBUF_0,
      ADR4 => XCASE_2_IBUF_0,
      ADR2 => X_9_IBUF_0,
      ADR0 => Mmux_Z111_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      O => N12
    );
  Mmux_Z111 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y92",
      INIT => X"00FFF0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR2 => X_19_IBUF_0,
      ADR5 => Y_19_IBUF_0,
      O => Mmux_Z11_2162
    );
  Mmux_Z22_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y92",
      INIT => X"FF0F55FFFF0F55FF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR2 => X_29_IBUF_0,
      ADR0 => Y_29_IBUF_0,
      O => N6
    );
  Mmux_Z152 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y94",
      INIT => X"FFAAAAAAFF808080"
    )
    port map (
      ADR0 => Mmux_Z111_0,
      ADR1 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => Mmux_Z15,
      ADR5 => Mmux_Z1711,
      ADR4 => SPECIAL_IBUF_0,
      ADR3 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z151_2171
    );
  Mmux_Z151 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y94",
      INIT => X"33C033C000C000C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR5 => X_22_IBUF_0,
      ADR2 => Y_22_IBUF_0,
      O => Mmux_Z15
    );
  Mmux_Z22 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y95",
      INIT => X"0A0AFFFFFFCCFFCC"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR0 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => N6,
      ADR4 => N30,
      ADR3 => U2_ExpCarry,
      ADR1 => U2_TempExp_6_0,
      O => Z_29_OBUF_2107
    );
  Mmux_Z21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y96",
      INIT => X"F5F53F3FF5F53F3F"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR1 => X_28_IBUF_0,
      ADR0 => Y_28_IBUF_0,
      O => N26
    );
  Mmux_Z19_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y96",
      INIT => X"FF55FF5500FFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR0 => X_26_IBUF_0,
      ADR4 => Y_26_IBUF_0,
      O => N24
    );
  Mmux_Z292 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => X"FFCCECCCFF00A000"
    )
    port map (
      ADR3 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR0 => Mmux_Z29,
      ADR4 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR1 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z291_2180
    );
  Mmux_Z294 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"FFFFFFFF03000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => SPECIAL_IBUF_0,
      ADR3 => Mmux_Z292_2181,
      ADR2 => U2_isInfty_2079,
      ADR5 => Mmux_Z291_2180,
      O => Z_6_OBUF_1921
    );
  Mmux_Z272 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"FFFFA888A888A888"
    )
    port map (
      ADR0 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => Mmux_Z27_2176,
      ADR1 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z271_2178
    );
  U1_U5_GEN_12_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X24Y88",
      INIT => X"000F000F000F000E"
    )
    port map (
      ADR2 => U1_ShiftPos(4),
      ADR3 => N38,
      ADR1 => XEXP_7_IBUF_0,
      ADR0 => XEXP_6_IBUF_0,
      ADR4 => XEXP_5_IBUF_0,
      ADR5 => U1_U3_C_9_bdd4,
      O => MantNorm(12)
    );
  Mmux_Z63 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y88",
      INIT => X"FFFFFFFF000D0002"
    )
    port map (
      ADR3 => SPECIAL_IBUF_0,
      ADR2 => U2_isInfty_2079,
      ADR4 => MantNorm(17),
      ADR1 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(16),
      ADR5 => Mmux_Z61_2133,
      O => Z_14_OBUF_2075
    );
  U2_U2_GEN_13_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y89",
      INIT => X"F3FFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => MantNorm(14),
      ADR4 => MantNorm(12),
      ADR2 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR5 => MantNorm(13),
      ADR3 => MantNorm(15),
      O => U2_U2_GEN_13_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_9_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y89",
      INIT => X"AAFFAAFFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR5 => MantNorm(11),
      ADR3 => MantNorm(10),
      O => U2_U2_GEN_9_U_Mxor_S_xo_0_1
    );
  Mmux_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y89",
      INIT => X"FF3BFF37333B3337"
    )
    port map (
      ADR2 => U2_isInfty_2079,
      ADR3 => SPECIAL_IBUF_0,
      ADR4 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(16),
      ADR1 => N18,
      ADR5 => U3_XPInf_YNaN_OR_360_o,
      O => Z_13_OBUF_2066
    );
  Mmux_Z27 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y91",
      INIT => X"FFFFFFFF11000110"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR0 => U2_isInfty_2079,
      ADR3 => MantNorm(13),
      ADR4 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR2 => MantNorm(12),
      ADR5 => Mmux_Z21_2126,
      O => Z_10_OBUF_2046
    );
  Mmux_Z161_Mmux_Z161_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Z111_665,
      O => Mmux_Z111_0
    );
  Mmux_Z1611 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y93",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => SPECIAL_IBUF_0,
      ADR0 => U3_XPInf_YNaN_OR_360_o,
      ADR5 => '1',
      O => Mmux_Z161
    );
  Mmux_Z1111 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y93",
      INIT => X"000000F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => U3_XNInf_XZero_OR_368_o,
      ADR3 => U3_XPInf_XZero_OR_364_o,
      ADR2 => SPECIAL_IBUF_0,
      ADR1 => '1',
      O => Mmux_Z111_665
    );
  U3_XPInf_XZero_OR_364_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y93",
      INIT => X"0000010300020002"
    )
    port map (
      ADR2 => XCASE_1_IBUF_0,
      ADR1 => YCASE_1_IBUF_0,
      ADR0 => XCASE_0_IBUF_0,
      ADR3 => XCASE_2_IBUF_0,
      ADR5 => YCASE_0_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      O => U3_XPInf_XZero_OR_364_o
    );
  U3_XPInf_YNaN_OR_360_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y93",
      INIT => X"5000DCDC50005400"
    )
    port map (
      ADR0 => XCASE_2_IBUF_0,
      ADR3 => XCASE_0_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR1 => YCASE_1_IBUF_0,
      ADR2 => XCASE_1_IBUF_0,
      ADR5 => YCASE_0_IBUF_0,
      O => U3_XPInf_YNaN_OR_360_o
    );
  U2_isInfty_U2_isInfty_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Z152_704,
      O => Mmux_Z152_0
    );
  U2_isInfty : X_LUT6
    generic map(
      LOC => "SLICE_X24Y95",
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      ADR4 => U2_TempExp(7),
      ADR0 => U2_TempExp_6_0,
      ADR3 => U2_TempExp(5),
      ADR2 => U2_TempExp(3),
      ADR1 => N01,
      ADR5 => U2_ExpCarry,
      O => U2_isInfty_2079
    );
  Mmux_Z283 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y95",
      INIT => X"FFFFC000FFFFEAAA"
    )
    port map (
      ADR4 => Mmux_Z161,
      ADR2 => Mmux_Z111_0,
      ADR1 => U3_XNorm_YZero_AND_18_o1,
      ADR3 => Mmux_Z28,
      ADR0 => Mmux_Z281_2157,
      ADR5 => U2_isInfty_2079,
      O => Z_5_OBUF_1919
    );
  Mmux_Z142 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y95",
      INIT => X"00DD002200DD0022"
    )
    port map (
      ADR2 => '1',
      ADR3 => SPECIAL_IBUF_0,
      ADR4 => MantNorm(24),
      ADR0 => MantNorm_23_0,
      ADR1 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      ADR5 => '1',
      O => Mmux_Z141_2170
    );
  Mmux_Z153 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y95",
      INIT => X"00D200F0"
    )
    port map (
      ADR2 => MantNorm_25_0,
      ADR3 => SPECIAL_IBUF_0,
      ADR4 => MantNorm(24),
      ADR0 => MantNorm_23_0,
      ADR1 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      O => Mmux_Z152_704
    );
  U2_TempExp_3_U2_TempExp_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_TempExp(2),
      O => U2_TempExp_2_0
    );
  U2_U3_GEN_3_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y96",
      INIT => X"78F0F0F078F0F0F0"
    )
    port map (
      ADR2 => ExpNorm(3),
      ADR3 => ExpNorm_0_0,
      ADR0 => ExpNorm(1),
      ADR4 => ExpNorm(2),
      ADR1 => U2_MantCarry,
      ADR5 => '1',
      O => U2_TempExp(3)
    );
  U2_U3_GEN_2_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y96",
      INIT => X"77FF8800"
    )
    port map (
      ADR2 => '1',
      ADR3 => ExpNorm_0_0,
      ADR0 => ExpNorm(1),
      ADR4 => ExpNorm(2),
      ADR1 => U2_MantCarry,
      O => U2_TempExp(2)
    );
  ExpNorm_4_ExpNorm_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_ExpCarry_pack_7,
      O => U2_ExpCarry
    );
  U1_U4_GEN_4_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y97",
      INIT => X"0000788700001EE1"
    )
    port map (
      ADR2 => XEXP_4_IBUF_0,
      ADR3 => U1_ShiftPos(4),
      ADR1 => XEXP_3_IBUF_0,
      ADR5 => U1_ShiftPos(3),
      ADR0 => U1_U3_C_9_bdd8,
      ADR4 => U1_n0007(8),
      O => ExpNorm(4)
    );
  U1_U3_S_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y97",
      INIT => X"0001000100010001"
    )
    port map (
      ADR4 => '1',
      ADR2 => XEXP_7_IBUF_0,
      ADR1 => XEXP_6_IBUF_0,
      ADR0 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      ADR5 => '1',
      O => U1_n0007(8)
    );
  U2_U3_GEN_7_U_X_CIN_AND_2_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y97",
      INIT => X"00008000"
    )
    port map (
      ADR4 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022,
      ADR2 => XEXP_7_IBUF_0,
      ADR1 => XEXP_6_IBUF_0,
      ADR0 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      O => U2_ExpCarry_pack_7
    );
  U1_U3_C_9_31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y97",
      INIT => X"CF0CFFFF0000CF0C"
    )
    port map (
      ADR0 => '1',
      ADR5 => XEXP_4_IBUF_0,
      ADR3 => U1_U3_C_9_bdd8,
      ADR2 => U1_ShiftPos(3),
      ADR1 => XEXP_3_IBUF_0,
      ADR4 => U1_ShiftPos(4),
      O => U1_U3_C_9_bdd4
    );
  Mmux_Z24 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y97",
      INIT => X"FF0FFF00EEEEEEEE"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => N22,
      ADR3 => Mmux_Z1711,
      ADR1 => U2_TempExp(7),
      ADR0 => U2_ExpCarry,
      O => Z_30_OBUF_2077
    );
  Mmux_Z291 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y83",
      INIT => X"30CC30CC30003000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR2 => X_6_IBUF_0,
      ADR5 => Y_6_IBUF_0,
      O => Mmux_Z29
    );
  Mmux_Z23 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y85",
      INIT => X"0000FF00AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => XCASE_2_IBUF_0,
      ADR5 => YCASE_2_IBUF_0,
      ADR0 => X_10_IBUF_0,
      ADR3 => Y_10_IBUF_0,
      O => Mmux_Z2
    );
  Mmux_Z26 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y85",
      INIT => X"EEECECECAAA0A0A0"
    )
    port map (
      ADR0 => Mmux_Z111_0,
      ADR3 => U3_XNorm_YZero_AND_18_o1,
      ADR4 => Mmux_Z2,
      ADR2 => Mmux_Z1711,
      ADR1 => SPECIAL_IBUF_0,
      ADR5 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z21_2126
    );
  Mmux_Z271 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => X"6240624062406240"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR2 => X_4_IBUF_0,
      ADR3 => Y_4_IBUF_0,
      O => Mmux_Z27_2176
    );
  U1_U5_GEN_13_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => X"000000000000FFFE"
    )
    port map (
      ADR5 => U1_ShiftPos(4),
      ADR4 => N36,
      ADR0 => XEXP_7_IBUF_0,
      ADR1 => XEXP_6_IBUF_0,
      ADR2 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      O => MantNorm(13)
    );
  Mmux_Z72 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"00000000F03CF0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => MantNorm(18),
      ADR1 => MantNorm(16),
      ADR4 => MantNorm(17),
      ADR3 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      O => Mmux_Z71_2135
    );
  Mmux_Z5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y89",
      INIT => X"DD7FFFFFFF7FFFFF"
    )
    port map (
      ADR3 => YCASE_2_IBUF_0,
      ADR5 => Y_13_IBUF_0,
      ADR1 => XCASE_2_IBUF_0,
      ADR2 => X_13_IBUF_0,
      ADR4 => Mmux_Z111_0,
      ADR0 => U3_XNorm_YZero_AND_18_o1,
      O => N18
    );
  U1_U5_GEN_14_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X25Y89",
      INIT => X"000F000F000F000E"
    )
    port map (
      ADR3 => U1_ShiftPos(4),
      ADR2 => N34,
      ADR1 => XEXP_7_IBUF_0,
      ADR4 => XEXP_6_IBUF_0,
      ADR5 => XEXP_5_IBUF_0,
      ADR0 => U1_U3_C_9_bdd4,
      O => MantNorm(14)
    );
  Mmux_Z43 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y91",
      INIT => X"0000BF400000FF00"
    )
    port map (
      ADR4 => SPECIAL_IBUF_0,
      ADR3 => MantNorm(15),
      ADR2 => MantNorm(14),
      ADR1 => MantNorm(12),
      ADR5 => MantNorm(13),
      ADR0 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      O => Mmux_Z42_2132
    );
  Mmux_Z34 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y91",
      INIT => X"3303333300300000"
    )
    port map (
      ADR0 => '1',
      ADR1 => SPECIAL_IBUF_0,
      ADR5 => MantNorm(14),
      ADR2 => MantNorm(13),
      ADR4 => MantNorm(12),
      ADR3 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      O => Mmux_Z31
    );
  U3_XNInf_XZero_OR_368_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y93",
      INIT => X"000000000100030A"
    )
    port map (
      ADR5 => XCASE_0_IBUF_0,
      ADR2 => YCASE_0_IBUF_0,
      ADR0 => XCASE_1_IBUF_0,
      ADR4 => XCASE_2_IBUF_0,
      ADR3 => YCASE_1_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      O => U3_XNInf_XZero_OR_368_o
    );
  Mmux_Z25 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y93",
      INIT => X"05010501FFFF0000"
    )
    port map (
      ADR0 => U3_XPInf_YNaN_OR_360_o,
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => U3_XPInf_XZero_OR_364_o,
      ADR1 => N20,
      ADR3 => U3_XNInf_XZero_OR_368_o,
      ADR4 => XSIGN_IBUF_0,
      O => Z_31_OBUF_2087
    );
  Mmux_Z162_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y93",
      INIT => X"FF3F5400FF2BFD01"
    )
    port map (
      ADR4 => YCASE_2_IBUF_0,
      ADR0 => YCASE_1_IBUF_0,
      ADR2 => XCASE_1_IBUF_0,
      ADR1 => XCASE_0_IBUF_0,
      ADR5 => YCASE_0_IBUF_0,
      ADR3 => XCASE_2_IBUF_0,
      O => N30
    );
  U2_MantCarry_U2_MantCarry_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_TempExp_0_pack_3,
      O => U2_TempExp(0)
    );
  U2_U2_GEN_22_U_X_CIN_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y95",
      INIT => X"0A0000000A000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => MantNorm_25_0,
      ADR3 => MantNorm(24),
      ADR2 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      ADR4 => MantNorm_23_0,
      ADR5 => '1',
      O => U2_MantCarry
    );
  U2_U3_GEN_0_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y95",
      INIT => X"C6CCCCCC"
    )
    port map (
      ADR1 => ExpNorm_0_0,
      ADR0 => MantNorm_25_0,
      ADR3 => MantNorm(24),
      ADR2 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      ADR4 => MantNorm_23_0,
      O => U2_TempExp_0_pack_3
    );
  U2_U3_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y95",
      INIT => X"7FFF8000FFFF0000"
    )
    port map (
      ADR4 => ExpNorm(4),
      ADR1 => ExpNorm_0_0,
      ADR5 => ExpNorm(1),
      ADR2 => ExpNorm(2),
      ADR0 => ExpNorm(3),
      ADR3 => U2_MantCarry,
      O => U2_TempExp(4)
    );
  U2_isInfty_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y95",
      INIT => X"CC00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => U2_TempExp_2_0,
      ADR4 => U2_TempExp(4),
      ADR1 => U2_TempExp(1),
      ADR5 => U2_TempExp(0),
      O => N01
    );
  U2_TempExp_5_U2_TempExp_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_TempExp(6),
      O => U2_TempExp_6_0
    );
  U2_U3_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y96",
      INIT => X"CC3233CDCC3233CD"
    )
    port map (
      ADR3 => XEXP_5_IBUF_0,
      ADR4 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022,
      ADR1 => U1_U3_C_9_bdd4,
      ADR0 => XEXP_7_IBUF_0,
      ADR2 => XEXP_6_IBUF_0,
      ADR5 => '1',
      O => U2_TempExp(5)
    );
  U2_U3_GEN_6_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y96",
      INIT => X"F0C23CF0"
    )
    port map (
      ADR3 => XEXP_5_IBUF_0,
      ADR4 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022,
      ADR1 => U1_U3_C_9_bdd4,
      ADR0 => XEXP_7_IBUF_0,
      ADR2 => XEXP_6_IBUF_0,
      O => U2_TempExp(6)
    );
  U2_U3_GEN_5_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y96",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR2 => ExpNorm(2),
      ADR3 => ExpNorm(4),
      ADR1 => U2_MantCarry,
      ADR5 => ExpNorm_0_0,
      ADR4 => ExpNorm(1),
      ADR0 => ExpNorm(3),
      O => U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022
    );
  Mmux_Z281 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y96",
      INIT => X"5555A0A00000A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR2 => X_5_IBUF_0,
      ADR5 => Y_5_IBUF_0,
      O => Mmux_Z28
    );
  U2_U3_GEN_7_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y97",
      INIT => X"A0A06CA0A0A0A090"
    )
    port map (
      ADR2 => XEXP_7_IBUF_0,
      ADR0 => U1_U3_C_9_bdd0,
      ADR4 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_2022,
      ADR1 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      ADR5 => XEXP_6_IBUF_0,
      O => U2_TempExp(7)
    );
  Mmux_Z30 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y88",
      INIT => X"FFFF21FF00FF21FF"
    )
    port map (
      ADR1 => U2_isInfty_2079,
      ADR4 => SPECIAL_IBUF_0,
      ADR2 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(10),
      ADR3 => N14,
      ADR5 => U3_XPInf_YNaN_OR_360_o,
      O => Z_7_OBUF_1922
    );
  Mmux_Z17111 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y93",
      INIT => X"FFFFFFFEFFFFFEFE"
    )
    port map (
      ADR4 => YCASE_0_IBUF_0,
      ADR1 => XCASE_1_IBUF_0,
      ADR2 => XCASE_0_IBUF_0,
      ADR5 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR0 => YCASE_1_IBUF_0,
      O => Mmux_Z1711
    );
  U1_U4_GEN_3_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y97",
      INIT => X"55AA4488AA558844"
    )
    port map (
      ADR2 => '1',
      ADR5 => XEXP_3_IBUF_0,
      ADR0 => U1_ShiftPos(3),
      ADR3 => U1_U3_C_9_bdd8,
      ADR4 => XEXP_7_IBUF_0,
      ADR1 => U1_U3_C_9_bdd0,
      O => ExpNorm(3)
    );
  Mmux_Z311 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y85",
      INIT => X"55005500A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR3 => X_8_IBUF_0,
      ADR2 => Y_8_IBUF_0,
      O => Mmux_Z311_2194
    );
  Mmux_Z312 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y85",
      INIT => X"FEAAEEAAFC00CC00"
    )
    port map (
      ADR3 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR4 => Mmux_Z311_2194,
      ADR1 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR0 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z312_2173
    );
  Mmux_Z30_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y88",
      INIT => X"CF7FFF7FFFFFFFFF"
    )
    port map (
      ADR1 => YCASE_2_IBUF_0,
      ADR0 => Y_7_IBUF_0,
      ADR3 => XCASE_2_IBUF_0,
      ADR4 => X_7_IBUF_0,
      ADR2 => Mmux_Z111_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      O => N14
    );
  Mmux_Z313 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y88",
      INIT => X"F0F0F0F0F0F0FDF2"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR4 => U2_isInfty_2079,
      ADR3 => MantNorm(11),
      ADR1 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(10),
      ADR2 => Mmux_Z312_2173,
      O => Z_8_OBUF_1923
    );
  Mmux_Z24_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y91",
      INIT => X"FF55FF5500FFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR0 => X_30_IBUF_0,
      ADR4 => Y_30_IBUF_0,
      O => N22
    );
  U3_XNorm_YZero_AND_18_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y93",
      INIT => X"0000000000030003"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => XCASE_1_IBUF_0,
      ADR5 => XCASE_0_IBUF_0,
      ADR1 => YCASE_1_IBUF_0,
      ADR3 => YCASE_0_IBUF_0,
      O => U3_XNorm_YZero_AND_18_o1
    );
  Mmux_Z25_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y93",
      INIT => X"DD33DDFFFFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR0 => X_31_IBUF_0,
      ADR1 => YCASE_2_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR5 => U3_XNorm_YZero_AND_18_o1,
      O => N20
    );
  U2_U3_GEN_1_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y95",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR4 => ExpNorm(1),
      ADR1 => MantNorm_23_0,
      ADR5 => MantNorm_25_0,
      ADR0 => MantNorm(24),
      ADR2 => ExpNorm_0_0,
      ADR3 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      O => U2_TempExp(1)
    );
  Mmux_Z14 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y83",
      INIT => X"F0F0F1F1F1F1F0F0"
    )
    port map (
      ADR3 => '1',
      ADR0 => SPECIAL_IBUF_0,
      ADR1 => U2_isInfty_2079,
      ADR5 => U2_MantIncr,
      ADR4 => MantNorm(3),
      ADR2 => Mmux_Z13,
      O => Z_0_OBUF_1907
    );
  Mmux_Z83 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"00009AAA0000AAAA"
    )
    port map (
      ADR4 => SPECIAL_IBUF_0,
      ADR0 => MantNorm(19),
      ADR2 => MantNorm(17),
      ADR5 => MantNorm(18),
      ADR3 => MantNorm(16),
      ADR1 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      O => Mmux_Z82_2138
    );
  Mmux_Z103 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => X"FF10FF01FF10FF10"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR0 => U2_isInfty_2079,
      ADR2 => MantNorm(21),
      ADR4 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => MantNorm(20),
      ADR3 => Mmux_Z101_2161,
      O => Z_18_OBUF_2093
    );
  Mmux_Z102 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y90",
      INIT => X"FEFCF0F0EECC0000"
    )
    port map (
      ADR4 => Mmux_Z111_0,
      ADR3 => U3_XNorm_YZero_AND_18_o1,
      ADR0 => Mmux_Z10,
      ADR1 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z101_2161
    );
  Mmux_Z101 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y90",
      INIT => X"33CC330000CC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR3 => YCASE_2_IBUF_0,
      ADR4 => X_18_IBUF_0,
      ADR5 => Y_18_IBUF_0,
      O => Mmux_Z10
    );
  Mmux_Z131 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y91",
      INIT => X"0F0FF0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR3 => X_20_IBUF_0,
      ADR5 => Y_20_IBUF_0,
      O => Mmux_Z131_2166
    );
  Mmux_Z231 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => X"3C3C30300C0C0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR2 => YCASE_2_IBUF_0,
      ADR4 => X_2_IBUF_0,
      ADR5 => Y_2_IBUF_0,
      O => Mmux_Z23_2169
    );
  Mmux_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y83",
      INIT => X"0CF00CF00C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => XCASE_2_IBUF_0,
      ADR2 => YCASE_2_IBUF_0,
      ADR1 => X_0_IBUF_0,
      ADR5 => Y_0_IBUF_0,
      O => Mmux_Z1
    );
  Mmux_Z232 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y83",
      INIT => X"FEAAFC00EEAACC00"
    )
    port map (
      ADR3 => Mmux_Z111_0,
      ADR2 => U3_XNorm_YZero_AND_18_o1,
      ADR5 => Mmux_Z23_2169,
      ADR1 => Mmux_Z1711,
      ADR0 => SPECIAL_IBUF_0,
      ADR4 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z231_2172
    );
  Mmux_Z12 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y83",
      INIT => X"EEEEEAAACCCCC000"
    )
    port map (
      ADR1 => Mmux_Z111_0,
      ADR3 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => Mmux_Z1,
      ADR4 => Mmux_Z1711,
      ADR5 => SPECIAL_IBUF_0,
      ADR0 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z13
    );
  Mmux_Z61 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"3C303C300C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => XCASE_2_IBUF_0,
      ADR2 => YCASE_2_IBUF_0,
      ADR3 => X_14_IBUF_0,
      ADR5 => Y_14_IBUF_0,
      O => Mmux_Z6
    );
  Mmux_Z62 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"FFAAFF00EAAAC000"
    )
    port map (
      ADR3 => Mmux_Z111_0,
      ADR1 => U3_XNorm_YZero_AND_18_o1,
      ADR2 => Mmux_Z6,
      ADR5 => Mmux_Z1711,
      ADR0 => SPECIAL_IBUF_0,
      ADR4 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z61_2133
    );
  Mmux_Z233 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"FFFF0000FFFF0909"
    )
    port map (
      ADR3 => '1',
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => U2_isInfty_2079,
      ADR1 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(5),
      ADR4 => Mmux_Z231_2172,
      O => Z_2_OBUF_1913
    );
  U2_U2_GEN_20_U_Mxor_S_xo_0_1_U2_U2_GEN_20_U_Mxor_S_xo_0_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Z112_1022,
      O => Mmux_Z112_0
    );
  U2_U2_GEN_20_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"FFFF77FFFFFF77FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(21),
      ADR3 => MantNorm(20),
      ADR1 => MantNorm_22_0,
      ADR5 => '1',
      O => U2_U2_GEN_20_U_Mxor_S_xo_0_1
    );
  Mmux_Z112 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"0C0C060C"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR4 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR0 => MantNorm(21),
      ADR3 => MantNorm(20),
      ADR1 => MantNorm_22_0,
      O => Mmux_Z112_1022
    );
  U2_U2_GEN_17_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"CFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => MantNorm(18),
      ADR5 => MantNorm(16),
      ADR1 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR2 => MantNorm(17),
      ADR4 => MantNorm(19),
      O => U2_U2_GEN_17_U_Mxor_S_xo_0_1
    );
  U1_U5_GEN_15_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"00000F0F00000F0E"
    )
    port map (
      ADR4 => U1_ShiftPos(4),
      ADR2 => N32,
      ADR0 => XEXP_7_IBUF_0,
      ADR3 => XEXP_6_IBUF_0,
      ADR1 => XEXP_5_IBUF_0,
      ADR5 => U1_U3_C_9_bdd4,
      O => MantNorm(15)
    );
  Mmux_Z9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y90",
      INIT => X"F3FF7FFFFFFF7FFF"
    )
    port map (
      ADR4 => YCASE_2_IBUF_0,
      ADR5 => Y_17_IBUF_0,
      ADR2 => XCASE_2_IBUF_0,
      ADR0 => X_17_IBUF_0,
      ADR3 => Mmux_Z111_0,
      ADR1 => U3_XNorm_YZero_AND_18_o1,
      O => N16
    );
  Mmux_Z9 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y90",
      INIT => X"F7F3F3F737333337"
    )
    port map (
      ADR0 => U2_isInfty_2079,
      ADR2 => SPECIAL_IBUF_0,
      ADR3 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR4 => MantNorm(20),
      ADR1 => N16,
      ADR5 => U3_XPInf_YNaN_OR_360_o,
      O => Z_17_OBUF_2084
    );
  Mmux_Z132 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y91",
      INIT => X"FAAAF888FAAAF000"
    )
    port map (
      ADR0 => Mmux_Z111_0,
      ADR1 => U3_XNorm_YZero_AND_18_o1,
      ADR5 => Mmux_Z131_2166,
      ADR4 => Mmux_Z1711,
      ADR3 => SPECIAL_IBUF_0,
      ADR2 => U3_XPInf_YNaN_OR_360_o,
      O => Mmux_Z132_2167
    );
  Mmux_Z133 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"FF00FF30FF00FF03"
    )
    port map (
      ADR0 => '1',
      ADR4 => SPECIAL_IBUF_0,
      ADR1 => U2_isInfty_2079,
      ADR5 => U2_U2_GEN_20_U_Mxor_S_xo_0_1,
      ADR2 => MantNorm_23_0,
      ADR3 => Mmux_Z132_2167,
      O => Z_20_OBUF_2058
    );
  MantNorm_19_MantNorm_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N44_pack_8,
      O => N44
    );
  U1_U5_GEN_19_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"0300131003000300"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR2 => U1_ShiftPos(4),
      ADR3 => U1_U5_GEN_19_U_X_S_AND_4_o,
      ADR5 => U1_ShiftPos_1_mmx_out11,
      ADR0 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(3),
      O => MantNorm(19)
    );
  U2_U1_Mmux_INCR1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"FFFFFCFCFFFFFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos(4),
      ADR5 => '1',
      O => N2
    );
  U1_U5_GEN_9_U_X_S_AND_4_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"DD11DD11"
    )
    port map (
      ADR0 => U1_ShiftPos_1_mmx_out18,
      ADR3 => U1_ShiftPos_1_mmx_out3,
      ADR2 => '1',
      ADR1 => U1_ShiftPos(3),
      ADR4 => '1',
      O => N44_pack_8
    );
  U1_U5_GEN_9_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"0000000011050005"
    )
    port map (
      ADR0 => U1_n0007(8),
      ADR5 => U1_ShiftPos(4),
      ADR4 => U1_ShiftPos_1_mmx_out14,
      ADR3 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(3),
      ADR2 => N44,
      O => MantNorm(9)
    );
  U1_U5_GEN_22_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y67",
      INIT => X"EE44EE44FAFA5050"
    )
    port map (
      ADR5 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos(1),
      ADR1 => MAN_21_IBUF_0,
      ADR3 => MAN_19_IBUF_0,
      ADR4 => MAN_20_IBUF_0,
      ADR2 => MAN_22_IBUF_0,
      O => U1_U5_GEN_22_U_X_S_AND_4_o
    );
  U1_U1_GND_5_o_X_26_equal_25_o_26_12_U1_U1_GND_5_o_X_26_equal_25_o_26_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_Mmux_SHIFT29_pack_1,
      O => U1_U1_Mmux_SHIFT29_2200
    );
  U1_U1_GND_5_o_X_26_equal_25_o_26_121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0001000100010001"
    )
    port map (
      ADR4 => '1',
      ADR1 => MAN_18_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      ADR3 => MAN_16_IBUF_0,
      ADR0 => MAN_15_IBUF_0,
      ADR5 => '1',
      O => U1_U1_GND_5_o_X_26_equal_25_o_26_12
    );
  U1_U1_Mmux_SHIFT210 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"03020303"
    )
    port map (
      ADR4 => N52,
      ADR1 => MAN_18_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      ADR3 => MAN_16_IBUF_0,
      ADR0 => MAN_15_IBUF_0,
      O => U1_U1_Mmux_SHIFT29_pack_1
    );
  U1_U1_GND_5_o_X_26_equal_25_o_26_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000000000000400"
    )
    port map (
      ADR0 => MAN_11_IBUF_0,
      ADR4 => MAN_12_IBUF_0,
      ADR5 => MAN_13_IBUF_0,
      ADR2 => MAN_14_IBUF_0,
      ADR1 => U1_U1_GND_5_o_X_26_equal_13_o_26_1,
      ADR3 => U1_U1_GND_5_o_X_26_equal_25_o_26_12,
      O => U1_ShiftPos(4)
    );
  U1_U1_Mmux_SHIFT211_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"FFFF0011FFFF0011"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => MAN_22_IBUF_0,
      ADR0 => MAN_19_IBUF_0,
      ADR3 => MAN_20_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT29_2200,
      O => N54
    );
  U1_U1_Mmux_SHIFT13 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y71",
      INIT => X"F5F5F0F0F5F5F5F4"
    )
    port map (
      ADR0 => MAN_14_IBUF_0,
      ADR5 => MAN_12_IBUF_0,
      ADR1 => MAN_11_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT11_2184,
      ADR4 => MAN_13_IBUF_0,
      ADR2 => MAN_15_IBUF_0,
      O => U1_U1_Mmux_SHIFT12_2201
    );
  U1_U1_Mmux_SHIFT14 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y71",
      INIT => X"3333111133330010"
    )
    port map (
      ADR1 => MAN_20_IBUF_0,
      ADR0 => MAN_18_IBUF_0,
      ADR5 => MAN_17_IBUF_0,
      ADR2 => U1_U1_Mmux_SHIFT12_2201,
      ADR3 => MAN_16_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      O => U1_U1_Mmux_SHIFT13_2185
    );
  U1_U1_Mmux_SHIFT210_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y72",
      INIT => X"00FFF0FF0000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_U1_GND_5_o_X_26_equal_13_o_26_1,
      ADR4 => U1_U1_Mmux_SHIFT28_2146,
      ADR5 => U1_ShiftPos(4),
      ADR3 => U1_U1_Mmux_SHIFT27_2147,
      O => N52
    );
  U1_ShiftPos_1_201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y72",
      INIT => X"FAFACFC00A0ACFC0"
    )
    port map (
      ADR2 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR1 => MAN_19_IBUF_0,
      ADR5 => MAN_17_IBUF_0,
      ADR0 => MAN_18_IBUF_0,
      ADR3 => MAN_20_IBUF_0,
      O => U1_ShiftPos_1_mmx_out7
    );
  U1_U5_GEN_20_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y72",
      INIT => X"73516240FBD9EAC8"
    )
    port map (
      ADR0 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos_1_mmx_out13_0,
      ADR3 => U1_ShiftPos_1_mmx_out2,
      ADR2 => U1_ShiftPos_1_mmx_out12,
      ADR4 => U1_ShiftPos_1_mmx_out7,
      O => U1_U5_GEN_20_U_X_S_AND_4_o
    );
  U1_ShiftPos_1_mmx_out22_U1_ShiftPos_1_mmx_out22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MantNorm(25),
      O => MantNorm_25_0
    );
  U1_U5_GEN_25_U_X_S_AND_4_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y73"
    )
    port map (
      IA => N56,
      IB => N57,
      O => MantNorm(25),
      SEL => U1_ShiftPos(2)
    );
  U1_U5_GEN_25_U_X_S_AND_4_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"3030323232303230"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR0 => U1_ShiftPos(3),
      ADR5 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos_1_mmx_out4,
      ADR4 => U1_ShiftPos_1_mmx_out3,
      ADR2 => U1_U5_GEN_25_U_X_S_AND_4_o3_2202,
      O => N56
    );
  U1_U5_GEN_25_U_X_S_AND_4_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"00005E5400000E04"
    )
    port map (
      ADR4 => U1_n0007(8),
      ADR0 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos_1_mmx_out14,
      ADR1 => U1_ShiftPos_1_mmx_out8,
      ADR3 => U1_ShiftPos_1_mmx_out22,
      O => N57
    );
  U1_ShiftPos_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"F5F5DD88A0A0DD88"
    )
    port map (
      ADR0 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR1 => MAN_12_IBUF_0,
      ADR2 => MAN_10_IBUF_0,
      ADR5 => MAN_11_IBUF_0,
      ADR3 => MAN_13_IBUF_0,
      O => U1_ShiftPos_1_mmx_out22
    );
  U1_U5_GEN_25_U_X_S_AND_4_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"0000AFAC0000A0AC"
    )
    port map (
      ADR4 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos(1),
      ADR5 => U1_ShiftPos_0_mmx_out10_0,
      ADR1 => U1_U5_GEN_25_U_X_S_AND_4_o2,
      ADR0 => U1_ShiftPos_1_mmx_out18,
      O => U1_U5_GEN_25_U_X_S_AND_4_o3_2202
    );
  U1_ShiftPos_1_171 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"FF55AA00D8D8D8D8"
    )
    port map (
      ADR5 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos(1),
      ADR4 => MAN_16_IBUF_0,
      ADR3 => MAN_14_IBUF_0,
      ADR1 => MAN_15_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      O => U1_ShiftPos_1_mmx_out4
    );
  U1_U1_Mmux_SHIFT3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"FFFFAA8000000000"
    )
    port map (
      ADR5 => U1_U1_GND_5_o_X_26_equal_25_o_26_111,
      ADR0 => U1_U1_GND_5_o_X_26_equal_25_o_26_12,
      ADR3 => U1_U1_Mmux_SHIFT412,
      ADR2 => U1_U1_GND_5_o_X_26_equal_20_o_mmx_out,
      ADR1 => U1_U1_Mmux_SHIFT411,
      ADR4 => N48_0,
      O => U1_ShiftPos(2)
    );
  U1_ShiftPos_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR4 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR1 => MAN_17_IBUF_0,
      ADR5 => MAN_15_IBUF_0,
      ADR0 => MAN_16_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      O => U1_ShiftPos_1_mmx_out5
    );
  U1_ShiftPos_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"FFE4AAE455E400E4"
    )
    port map (
      ADR3 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos(1),
      ADR4 => MAN_18_IBUF_0,
      ADR5 => MAN_16_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      ADR1 => MAN_19_IBUF_0,
      O => U1_ShiftPos_1_mmx_out6
    );
  U1_U5_GEN_19_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"E4E4E4E4FF55AA00"
    )
    port map (
      ADR0 => U1_ShiftPos(2),
      ADR5 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos_1_mmx_out1,
      ADR2 => U1_ShiftPos_1_mmx_out16,
      ADR1 => U1_ShiftPos_1_mmx_out20,
      ADR4 => U1_ShiftPos_1_mmx_out6,
      O => U1_U5_GEN_19_U_X_S_AND_4_o
    );
  U1_U5_GEN_23_U_X_S_AND_4_o2_U1_U5_GEN_23_U_X_S_AND_4_o2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MantNorm(23),
      O => MantNorm_23_0
    );
  U1_U5_GEN_23_U_X_S_AND_4_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y76"
    )
    port map (
      IA => N58,
      IB => N59,
      O => MantNorm(23),
      SEL => U1_ShiftPos(3)
    );
  U1_U5_GEN_23_U_X_S_AND_4_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"00000000FAAAEAEA"
    )
    port map (
      ADR5 => U1_n0007(8),
      ADR2 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(4),
      ADR1 => U1_ShiftPos_1_mmx_out6,
      ADR3 => U1_ShiftPos_1_mmx_out11,
      ADR0 => U1_U5_GEN_23_U_X_S_AND_4_o2_2203,
      O => N58
    );
  U1_U5_GEN_23_U_X_S_AND_4_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"000000CF000000C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_n0007(8),
      ADR3 => U1_ShiftPos(4),
      ADR2 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos_1_mmx_out20,
      ADR5 => U1_ShiftPos_1_mmx_out1,
      O => N59
    );
  U1_U5_GEN_23_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"2233220322302200"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(4),
      ADR2 => U1_ShiftPos(1),
      ADR4 => U1_U5_GEN_23_U_X_S_AND_4_o1_0,
      ADR5 => U1_ShiftPos_0_mmx_out10_0,
      ADR0 => U1_ShiftPos_1_mmx_out16,
      O => U1_U5_GEN_23_U_X_S_AND_4_o2_2203
    );
  U1_ShiftPos_1_mmx_out_U1_ShiftPos_1_mmx_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MantNorm(22),
      O => MantNorm_22_0
    );
  U1_U5_GEN_22_U_X_S_AND_4_o4 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y77"
    )
    port map (
      IA => N60,
      IB => N61,
      O => MantNorm(22),
      SEL => U1_ShiftPos(2)
    );
  U1_U5_GEN_22_U_X_S_AND_4_o4_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"0022002233300030"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR5 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos(4),
      ADR4 => U1_ShiftPos_1_mmx_out15,
      ADR2 => U1_U5_GEN_22_U_X_S_AND_4_o,
      ADR0 => U1_ShiftPos_1_mmx_out,
      O => N60
    );
  U1_U5_GEN_22_U_X_S_AND_4_o4_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"0000000003BB0388"
    )
    port map (
      ADR5 => U1_n0007(8),
      ADR1 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos(4),
      ADR4 => U1_ShiftPos_1_mmx_out5,
      ADR2 => U1_ShiftPos_1_mmx_out10,
      ADR0 => U1_ShiftPos_1_mmx_out19,
      O => N61
    );
  U1_ShiftPos_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"FFE2CCE233E200E2"
    )
    port map (
      ADR1 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR2 => MAN_13_IBUF_0,
      ADR5 => MAN_11_IBUF_0,
      ADR4 => MAN_12_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      O => U1_ShiftPos_1_mmx_out
    );
  U1_ShiftPos_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"DDDDFA508888FA50"
    )
    port map (
      ADR0 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR3 => MAN_9_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR5 => MAN_8_IBUF_0,
      ADR2 => MAN_10_IBUF_0,
      O => U1_ShiftPos_1_mmx_out19
    );
  U1_U1_Mmux_SHIFT11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"F0FAF0FEF0FAF0FF"
    )
    port map (
      ADR3 => MAN_4_IBUF_0,
      ADR4 => MAN_2_IBUF_0,
      ADR1 => MAN_1_IBUF_0,
      ADR5 => MAN_0_IBUF_0,
      ADR0 => MAN_3_IBUF_0,
      ADR2 => MAN_5_IBUF_0,
      O => U1_U1_Mmux_SHIFT1
    );
  U1_U1_Mmux_SHIFT12 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"0F040F050F040F04"
    )
    port map (
      ADR2 => MAN_10_IBUF_0,
      ADR0 => MAN_8_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR5 => U1_U1_Mmux_SHIFT1,
      ADR4 => MAN_6_IBUF_0,
      ADR3 => MAN_9_IBUF_0,
      O => U1_U1_Mmux_SHIFT11_2184
    );
  U1_U3_C_9_51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"BBFF3BBF22330223"
    )
    port map (
      ADR5 => XEXP_2_IBUF_0,
      ADR0 => XEXP_1_IBUF_0,
      ADR3 => U1_ShiftPos(1),
      ADR4 => XEXP_0_IBUF_0,
      ADR2 => U1_ShiftPos(0),
      ADR1 => U1_ShiftPos(2),
      O => U1_U3_C_9_bdd8
    );
  U1_U1_Mmux_SHIFT211 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"0000000033333301"
    )
    port map (
      ADR5 => MAN_25_IBUF_0,
      ADR1 => MAN_26_IBUF_0,
      ADR4 => MAN_24_IBUF_0,
      ADR3 => MAN_23_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR0 => N54,
      O => U1_ShiftPos(1)
    );
  U1_U5_GEN_4_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"0000000001110100"
    )
    port map (
      ADR0 => U1_n0007(8),
      ADR1 => U1_ShiftPos(3),
      ADR5 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos(2),
      ADR2 => U1_ShiftPos_1_mmx_out13_0,
      ADR4 => U1_ShiftPos_1_mmx_out12,
      O => MantNorm(4)
    );
  U1_ShiftPos_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"FCBB30BBFC883088"
    )
    port map (
      ADR1 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR0 => MAN_3_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR2 => MAN_2_IBUF_0,
      ADR5 => MAN_4_IBUF_0,
      O => U1_ShiftPos_1_mmx_out12
    );
  U1_U5_GEN_11_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"0033CCFF0033CCFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => U1_ShiftPos_1_mmx_out20,
      ADR1 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out16,
      O => N40
    );
  U1_U5_GEN_11_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"0000000010001055"
    )
    port map (
      ADR0 => U1_n0007(8),
      ADR5 => U1_ShiftPos(4),
      ADR2 => U1_ShiftPos_1_mmx_out11,
      ADR3 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos(2),
      ADR4 => N40,
      O => MantNorm(11)
    );
  U1_U5_GEN_5_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"0000000000101110"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR0 => U1_ShiftPos(3),
      ADR5 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out3,
      ADR2 => U1_ShiftPos_1_mmx_out14,
      O => MantNorm(5)
    );
  U1_ShiftPos_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"EEEEF3C02222F3C0"
    )
    port map (
      ADR4 => U1_ShiftPos(0),
      ADR1 => U1_ShiftPos(1),
      ADR0 => MAN_4_IBUF_0,
      ADR5 => MAN_2_IBUF_0,
      ADR2 => MAN_3_IBUF_0,
      ADR3 => MAN_5_IBUF_0,
      O => U1_ShiftPos_1_mmx_out14
    );
  U1_U5_GEN_17_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR4 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos_1_mmx_out22,
      ADR5 => U1_ShiftPos_1_mmx_out14,
      ADR0 => U1_ShiftPos_1_mmx_out18,
      ADR2 => U1_ShiftPos_1_mmx_out4,
      O => U1_U5_GEN_17_U_X_S_AND_4_o
    );
  U1_U5_GEN_17_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"0000001100F000F0"
    )
    port map (
      ADR3 => U1_n0007(8),
      ADR5 => U1_ShiftPos(4),
      ADR1 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos_1_mmx_out3,
      ADR4 => U1_ShiftPos(3),
      ADR2 => U1_U5_GEN_17_U_X_S_AND_4_o,
      O => MantNorm(17)
    );
  U1_U5_GEN_10_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y81",
      INIT => X"F0F000FFF0F000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => U1_ShiftPos_1_mmx_out19,
      ADR4 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos_1_mmx_out10,
      O => N42
    );
  U1_U5_GEN_10_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X32Y81",
      INIT => X"0004010500000101"
    )
    port map (
      ADR0 => U1_n0007(8),
      ADR2 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos_1_mmx_out15,
      ADR1 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(3),
      ADR4 => N42,
      O => MantNorm(10)
    );
  U2_U1_Mmux_INCR1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"0000030100000303"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR2 => U1_ShiftPos_1_mmx_out10,
      ADR4 => N2,
      ADR0 => U1_ShiftPos_1_mmx_out3,
      ADR3 => MantNorm(3),
      ADR5 => U1_ShiftPos_1_mmx_out13_0,
      O => U2_MantIncr
    );
  U1_U5_GEN_20_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"22F022F022F00000"
    )
    port map (
      ADR4 => XEXP_7_IBUF_0,
      ADR5 => U1_U3_C_9_bdd0,
      ADR3 => U1_ShiftPos(3),
      ADR2 => U1_U5_GEN_20_U_X_S_AND_4_o,
      ADR0 => U1_U5_GEN_20_U_X_S_AND_4_o1_0,
      ADR1 => U1_ShiftPos(4),
      O => MantNorm(20)
    );
  Mmux_Z122 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"00000000F0F0E1F0"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => MantNorm(4),
      ADR4 => U1_n0007(8),
      ADR0 => U1_ShiftPos_1_mmx_out10,
      ADR1 => N2,
      ADR3 => MantNorm(3),
      O => Mmux_Z121_2164
    );
  Mmux_Z293 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"F7FFFFFF08000000"
    )
    port map (
      ADR5 => MantNorm(9),
      ADR1 => MantNorm(5),
      ADR4 => MantNorm(7),
      ADR0 => MantNorm(8),
      ADR3 => MantNorm(6),
      ADR2 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      O => Mmux_Z292_2181
    );
  U1_ShiftPos_3_91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FFFFFF0055335533"
    )
    port map (
      ADR2 => '1',
      ADR5 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out13_0,
      ADR1 => U1_ShiftPos_1_mmx_out17,
      ADR0 => U1_ShiftPos_1_mmx_out12,
      O => U1_ShiftPos_3_mmx_out8
    );
  U1_U5_GEN_24_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"5550FFF00000AAA0"
    )
    port map (
      ADR1 => '1',
      ADR3 => XEXP_7_IBUF_0,
      ADR2 => U1_U3_C_9_bdd0,
      ADR0 => U1_ShiftPos(4),
      ADR5 => U1_U5_GEN_24_U_X_S_AND_4_o1_2070,
      ADR4 => U1_ShiftPos_3_mmx_out8,
      O => MantNorm(24)
    );
  Mmux_Z261_Mmux_Z261_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Z272_1401,
      O => Mmux_Z272_0
    );
  Mmux_Z262 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"5104510451045104"
    )
    port map (
      ADR4 => '1',
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => MantNorm(6),
      ADR1 => MantNorm(5),
      ADR2 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      ADR5 => '1',
      O => Mmux_Z261_2177
    );
  Mmux_Z273 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"51550400"
    )
    port map (
      ADR4 => MantNorm(7),
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => MantNorm(6),
      ADR1 => MantNorm(5),
      ADR2 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      O => Mmux_Z272_1401
    );
  U1_U5_GEN_8_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"0000000055555554"
    )
    port map (
      ADR5 => U1_ShiftPos(4),
      ADR0 => U1_ShiftPos_3_mmx_out8,
      ADR4 => XEXP_7_IBUF_0,
      ADR1 => XEXP_6_IBUF_0,
      ADR3 => XEXP_5_IBUF_0,
      ADR2 => U1_U3_C_9_bdd4,
      O => MantNorm(8)
    );
  U1_U3_C_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"FFFFFFFFFFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => XEXP_6_IBUF_0,
      ADR3 => XEXP_5_IBUF_0,
      ADR2 => U1_U3_C_9_bdd4,
      O => U1_U3_C_9_bdd0
    );
  U1_U5_GEN_3_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"0000005000000040"
    )
    port map (
      ADR4 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(4),
      ADR2 => U1_ShiftPos_1_mmx_out11,
      ADR0 => U1_ShiftPos(3),
      ADR5 => U1_U3_C_9_bdd0,
      ADR1 => XEXP_7_IBUF_0,
      O => MantNorm(3)
    );
  U1_U4_GEN_1_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"0606060606090606"
    )
    port map (
      ADR3 => XEXP_0_IBUF_0,
      ADR1 => XEXP_1_IBUF_0,
      ADR0 => U1_ShiftPos(1),
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR5 => MAN_26_IBUF_0,
      ADR2 => U1_n0007(8),
      O => ExpNorm(1)
    );
  U1_ShiftPos_0_U1_ShiftPos_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U5_GEN_23_U_X_S_AND_4_o1,
      O => U1_U5_GEN_23_U_X_S_AND_4_o1_0
    );
  U1_U1_Mmux_SHIFT16 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR3 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => U1_ShiftPos(0)
    );
  U1_U5_GEN_23_U_X_S_AND_4_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"CCAACCCC"
    )
    port map (
      ADR2 => '1',
      ADR1 => MAN_21_IBUF_0,
      ADR0 => MAN_20_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR3 => MAN_26_IBUF_0,
      O => U1_U5_GEN_23_U_X_S_AND_4_o1
    );
  U1_U1_Mmux_SHIFT15 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"FFFFFFFF00AF00AE"
    )
    port map (
      ADR3 => MAN_24_IBUF_0,
      ADR2 => MAN_22_IBUF_0,
      ADR4 => MAN_21_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT13_2185,
      ADR0 => MAN_23_IBUF_0,
      ADR5 => MAN_25_IBUF_0,
      O => U1_U1_Mmux_SHIFT14_2019
    );
  U1_U5_GEN_25_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"F4F4B0B0F4F4B0B0"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => MAN_25_IBUF_0,
      ADR0 => MAN_26_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT14_2019,
      ADR4 => MAN_24_IBUF_0,
      O => U1_U5_GEN_25_U_X_S_AND_4_o2
    );
  U1_U1_GND_5_o_X_26_equal_13_o_26_1_U1_U1_GND_5_o_X_26_equal_13_o_26_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  U1_U1_GND_5_o_X_26_equal_13_o_26_1_U1_U1_GND_5_o_X_26_equal_13_o_26_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_ShiftPos_0_mmx_out10,
      O => U1_ShiftPos_0_mmx_out10_0
    );
  U1_U1_GND_5_o_X_26_equal_25_o_26_112 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"0001000000010000"
    )
    port map (
      ADR4 => U1_U1_GND_5_o_X_26_equal_25_o_26_111,
      ADR0 => MAN_19_IBUF_0,
      ADR1 => MAN_20_IBUF_0,
      ADR3 => MAN_21_IBUF_0,
      ADR2 => MAN_22_IBUF_0,
      ADR5 => '1',
      O => U1_U1_GND_5_o_X_26_equal_13_o_26_1
    );
  U1_U1_Mmux_SHIFT3_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"FFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR0 => MAN_19_IBUF_0,
      ADR1 => MAN_20_IBUF_0,
      ADR3 => MAN_21_IBUF_0,
      ADR2 => MAN_22_IBUF_0,
      O => N48
    );
  U1_U1_GND_5_o_X_26_equal_25_o_26_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"0000000500000005"
    )
    port map (
      ADR1 => '1',
      ADR2 => MAN_25_IBUF_0,
      ADR3 => MAN_24_IBUF_0,
      ADR0 => MAN_23_IBUF_0,
      ADR4 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => U1_U1_GND_5_o_X_26_equal_25_o_26_111
    );
  U1_ShiftPos_0_21 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"AAAACAC8"
    )
    port map (
      ADR1 => MAN_22_IBUF_0,
      ADR2 => MAN_25_IBUF_0,
      ADR3 => MAN_24_IBUF_0,
      ADR0 => MAN_23_IBUF_0,
      ADR4 => MAN_26_IBUF_0,
      O => U1_ShiftPos_0_mmx_out10
    );
  U1_ShiftPos_1_211 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"FA0AFCFCFA0A0C0C"
    )
    port map (
      ADR2 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR5 => MAN_20_IBUF_0,
      ADR3 => MAN_18_IBUF_0,
      ADR0 => MAN_19_IBUF_0,
      ADR1 => MAN_21_IBUF_0,
      O => U1_ShiftPos_1_mmx_out8
    );
  U1_U5_GEN_21_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"77772222F5A0F5A0"
    )
    port map (
      ADR5 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(4),
      ADR1 => U1_ShiftPos_1_mmx_out3,
      ADR4 => U1_ShiftPos_1_mmx_out4,
      ADR2 => U1_ShiftPos_1_mmx_out14,
      ADR3 => U1_ShiftPos_1_mmx_out8,
      O => U1_U5_GEN_21_U_X_S_AND_4_o
    );
  U1_U1_Mmux_SHIFT412_U1_U1_Mmux_SHIFT412_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_Mmux_SHIFT25_pack_1,
      O => U1_U1_Mmux_SHIFT25
    );
  U1_U1_Mmux_SHIFT4121 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y74",
      INIT => X"FFFEFFFEFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR1 => MAN_13_IBUF_0,
      ADR2 => MAN_14_IBUF_0,
      ADR3 => MAN_11_IBUF_0,
      ADR0 => MAN_12_IBUF_0,
      ADR5 => '1',
      O => U1_U1_Mmux_SHIFT412
    );
  U1_U1_Mmux_SHIFT26 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y74",
      INIT => X"03020302"
    )
    port map (
      ADR4 => '1',
      ADR1 => MAN_13_IBUF_0,
      ADR2 => MAN_14_IBUF_0,
      ADR3 => MAN_11_IBUF_0,
      ADR0 => MAN_12_IBUF_0,
      O => U1_U1_Mmux_SHIFT25_pack_1
    );
  U1_U1_Mmux_SHIFT28 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y74",
      INIT => X"FFFFFFFF05050504"
    )
    port map (
      ADR0 => MAN_10_IBUF_0,
      ADR2 => MAN_9_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT26_2186,
      ADR4 => MAN_7_IBUF_0,
      ADR1 => MAN_8_IBUF_0,
      ADR5 => U1_U1_Mmux_SHIFT25,
      O => U1_U1_Mmux_SHIFT27_2147
    );
  U1_U1_Mmux_SHIFT4 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y74",
      INIT => X"F0F0F0F0F0D0F0C0"
    )
    port map (
      ADR2 => U1_U1_GND_5_o_X_26_equal_13_o_26_1,
      ADR3 => MAN_18_IBUF_0,
      ADR5 => N46,
      ADR0 => U1_U1_GND_5_o_X_26_equal_20_o_mmx_out,
      ADR4 => U1_U1_Mmux_SHIFT411,
      ADR1 => U1_U1_Mmux_SHIFT412,
      O => U1_ShiftPos(3)
    );
  U1_U5_GEN_24_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y75",
      INIT => X"FFAAD8D85500D8D8"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(0),
      ADR3 => MAN_22_IBUF_0,
      ADR5 => MAN_21_IBUF_0,
      ADR1 => MAN_23_IBUF_0,
      ADR2 => MAN_24_IBUF_0,
      O => U1_U5_GEN_24_U_X_S_AND_4_o
    );
  U1_U5_GEN_24_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y75",
      INIT => X"EE22EE22F3F3C0C0"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR5 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos_1_mmx_out7,
      ADR3 => U1_ShiftPos_1_mmx_out21,
      ADR0 => U1_ShiftPos_1_mmx_out2,
      ADR4 => U1_U5_GEN_24_U_X_S_AND_4_o,
      O => U1_U5_GEN_24_U_X_S_AND_4_o1_2070
    );
  U1_ShiftPos_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"BB88F3F3BB88C0C0"
    )
    port map (
      ADR1 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR2 => MAN_10_IBUF_0,
      ADR0 => MAN_8_IBUF_0,
      ADR3 => MAN_9_IBUF_0,
      ADR5 => MAN_11_IBUF_0,
      O => U1_ShiftPos_1_mmx_out20
    );
  U1_U1_Mmux_SHIFT4111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"0000001100000011"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => MAN_10_IBUF_0,
      ADR4 => MAN_9_IBUF_0,
      ADR0 => MAN_7_IBUF_0,
      ADR3 => MAN_8_IBUF_0,
      O => U1_U1_Mmux_SHIFT411
    );
  U1_ShiftPos_1_16 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"FFF0CACA0F00CACA"
    )
    port map (
      ADR2 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR1 => MAN_14_IBUF_0,
      ADR5 => MAN_12_IBUF_0,
      ADR3 => MAN_13_IBUF_0,
      ADR0 => MAN_15_IBUF_0,
      O => U1_ShiftPos_1_mmx_out1
    );
  U1_U5_GEN_15_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"0303CFCF44774477"
    )
    port map (
      ADR1 => U1_ShiftPos(3),
      ADR0 => U1_ShiftPos_1_mmx_out16,
      ADR5 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out11,
      ADR2 => U1_ShiftPos_1_mmx_out20,
      ADR3 => U1_ShiftPos_1_mmx_out1,
      O => N32
    );
  U1_ShiftPos_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"DDF5DDA088F588A0"
    )
    port map (
      ADR3 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos(1),
      ADR5 => MAN_11_IBUF_0,
      ADR1 => MAN_9_IBUF_0,
      ADR2 => MAN_10_IBUF_0,
      ADR4 => MAN_12_IBUF_0,
      O => U1_ShiftPos_1_mmx_out21
    );
  U1_U1_GND_5_o_X_26_equal_20_o_mmx_out_U1_U1_GND_5_o_X_26_equal_20_o_mmx_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_ShiftPos_1_mmx_out13,
      O => U1_ShiftPos_1_mmx_out13_0
    );
  U1_U1_GND_5_o_X_26_equal_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"F0F00000F0E00000"
    )
    port map (
      ADR4 => U1_U1_Mmux_SHIFT411,
      ADR2 => U1_ShiftPos(4),
      ADR0 => MAN_6_IBUF_0,
      ADR5 => MAN_3_IBUF_0,
      ADR1 => MAN_4_IBUF_0,
      ADR3 => MAN_5_IBUF_0,
      O => U1_U1_GND_5_o_X_26_equal_20_o_mmx_out
    );
  U1_ShiftPos_1_161 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"F4F7F5F5F4F7F5F5"
    )
    port map (
      ADR0 => MAN_1_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR1 => MAN_26_IBUF_0,
      ADR2 => U1_ShiftPos(1),
      ADR3 => MAN_0_IBUF_0,
      ADR5 => '1',
      O => U1_ShiftPos_1_mmx_out3
    );
  U1_ShiftPos_1_51 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"F3FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR1 => MAN_26_IBUF_0,
      ADR2 => U1_ShiftPos(1),
      ADR3 => MAN_0_IBUF_0,
      O => U1_ShiftPos_1_mmx_out13
    );
  U1_U5_GEN_18_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"FAFADD885050DD88"
    )
    port map (
      ADR0 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos_1_mmx_out,
      ADR5 => U1_ShiftPos_1_mmx_out15,
      ADR2 => U1_ShiftPos_1_mmx_out19,
      ADR3 => U1_ShiftPos_1_mmx_out5,
      O => U1_U5_GEN_18_U_X_S_AND_4_o
    );
  U1_U5_GEN_18_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"0303000003130010"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR2 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos_1_mmx_out10,
      ADR3 => U1_ShiftPos(3),
      ADR4 => U1_U5_GEN_18_U_X_S_AND_4_o,
      O => MantNorm(18)
    );
  U1_U5_GEN_21_U_X_S_AND_4_o1_U1_U5_GEN_21_U_X_S_AND_4_o1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U5_GEN_20_U_X_S_AND_4_o1_1580,
      O => U1_U5_GEN_20_U_X_S_AND_4_o1_0
    );
  U1_U5_GEN_21_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y79",
      INIT => X"CCAACCAACCAACCAA"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos_1_mmx_out22,
      ADR1 => U1_ShiftPos_1_mmx_out18,
      ADR5 => '1',
      O => U1_U5_GEN_21_U_X_S_AND_4_o1_2153
    );
  U1_U5_GEN_20_U_X_S_AND_4_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y79",
      INIT => X"FFF000F0"
    )
    port map (
      ADR2 => U1_ShiftPos_1_mmx_out21,
      ADR4 => U1_ShiftPos_1_mmx_out17,
      ADR3 => U1_ShiftPos(2),
      ADR1 => '1',
      ADR0 => '1',
      O => U1_U5_GEN_20_U_X_S_AND_4_o1_1580
    );
  U1_ShiftPos_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y79",
      INIT => X"FCFCEE223030EE22"
    )
    port map (
      ADR4 => U1_ShiftPos(0),
      ADR1 => U1_ShiftPos(1),
      ADR2 => MAN_7_IBUF_0,
      ADR5 => MAN_5_IBUF_0,
      ADR3 => MAN_6_IBUF_0,
      ADR0 => MAN_8_IBUF_0,
      O => U1_ShiftPos_1_mmx_out17
    );
  U1_ShiftPos_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y79",
      INIT => X"FFAAF0CC00AAF0CC"
    )
    port map (
      ADR3 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR2 => MAN_8_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      ADR0 => MAN_7_IBUF_0,
      ADR1 => MAN_9_IBUF_0,
      O => U1_ShiftPos_1_mmx_out18
    );
  U1_ShiftPos_1_22 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y79",
      INIT => X"45006733CDCCEFFF"
    )
    port map (
      ADR1 => U1_ShiftPos(1),
      ADR5 => MAN_0_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT14_2019,
      ADR0 => MAN_26_IBUF_0,
      ADR4 => MAN_2_IBUF_0,
      ADR2 => MAN_1_IBUF_0,
      O => U1_ShiftPos_1_mmx_out10
    );
  U1_U5_GEN_7_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y80",
      INIT => X"0000000011100010"
    )
    port map (
      ADR1 => U1_n0007(8),
      ADR0 => U1_ShiftPos(3),
      ADR5 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos(2),
      ADR2 => U1_ShiftPos_1_mmx_out16,
      ADR4 => U1_ShiftPos_1_mmx_out11,
      O => MantNorm(7)
    );
  U1_ShiftPos_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y80",
      INIT => X"FA0AFA0AFCFC0C0C"
    )
    port map (
      ADR5 => U1_ShiftPos(0),
      ADR2 => U1_ShiftPos(1),
      ADR0 => MAN_2_IBUF_0,
      ADR3 => MAN_0_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR1 => MAN_3_IBUF_0,
      O => U1_ShiftPos_1_mmx_out11
    );
  U1_U5_GEN_6_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y80",
      INIT => X"0000000700000004"
    )
    port map (
      ADR3 => U1_n0007(8),
      ADR4 => U1_ShiftPos(3),
      ADR2 => U1_ShiftPos(4),
      ADR1 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos_1_mmx_out10,
      ADR5 => U1_ShiftPos_1_mmx_out15,
      O => MantNorm(6)
    );
  U1_ShiftPos_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y80",
      INIT => X"F3F3BB88C0C0BB88"
    )
    port map (
      ADR1 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(1),
      ADR0 => MAN_5_IBUF_0,
      ADR2 => MAN_3_IBUF_0,
      ADR5 => MAN_4_IBUF_0,
      ADR3 => MAN_6_IBUF_0,
      O => U1_ShiftPos_1_mmx_out15
    );
  U1_U5_GEN_14_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y81",
      INIT => X"DD0C110CDD3F113F"
    )
    port map (
      ADR3 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos_1_mmx_out19,
      ADR1 => U1_ShiftPos(3),
      ADR4 => U1_ShiftPos_1_mmx_out10,
      ADR5 => U1_ShiftPos_1_mmx_out,
      ADR2 => U1_ShiftPos_1_mmx_out15,
      O => N34
    );
  U1_U5_GEN_12_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y81",
      INIT => X"88DD88DD0505AFAF"
    )
    port map (
      ADR0 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out17,
      ADR5 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos_1_mmx_out13_0,
      ADR2 => U1_ShiftPos_1_mmx_out21,
      ADR3 => U1_ShiftPos_1_mmx_out12,
      O => N38
    );
  U1_U5_GEN_16_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y81",
      INIT => X"FF33CC00B8B8B8B8"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR5 => U1_ShiftPos(3),
      ADR0 => U1_ShiftPos_1_mmx_out21,
      ADR3 => U1_ShiftPos_1_mmx_out12,
      ADR4 => U1_ShiftPos_1_mmx_out17,
      ADR2 => U1_ShiftPos_1_mmx_out2,
      O => U1_U5_GEN_16_U_X_S_AND_4_o
    );
  U1_U5_GEN_16_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y81",
      INIT => X"0055000001550100"
    )
    port map (
      ADR0 => U1_n0007(8),
      ADR3 => U1_ShiftPos(4),
      ADR1 => U1_ShiftPos(2),
      ADR5 => U1_ShiftPos_1_mmx_out13_0,
      ADR2 => U1_ShiftPos(3),
      ADR4 => U1_U5_GEN_16_U_X_S_AND_4_o,
      O => MantNorm(16)
    );
  U1_U5_GEN_21_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y83",
      INIT => X"00CC00C0AAAAA0A0"
    )
    port map (
      ADR4 => XEXP_7_IBUF_0,
      ADR2 => U1_U3_C_9_bdd0,
      ADR5 => U1_ShiftPos(3),
      ADR0 => U1_U5_GEN_21_U_X_S_AND_4_o,
      ADR1 => U1_U5_GEN_21_U_X_S_AND_4_o1_2153,
      ADR3 => U1_ShiftPos(4),
      O => MantNorm(21)
    );
  U2_U2_GEN_7_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      ADR0 => MantNorm(8),
      ADR1 => MantNorm(9),
      ADR5 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => MantNorm(6),
      ADR3 => MantNorm(5),
      ADR4 => MantNorm(7),
      O => U2_U2_GEN_7_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_2_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"FFFFFAFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => U1_n0007(8),
      ADR2 => U1_ShiftPos_1_mmx_out10,
      ADR0 => N2,
      ADR3 => MantNorm(3),
      ADR5 => MantNorm(4),
      O => U2_U2_GEN_2_U_Mxor_S_xo_0_1
    );
  Mmux_Z282 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"5500550015405500"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => MantNorm(8),
      ADR4 => MantNorm(6),
      ADR1 => MantNorm(7),
      ADR2 => MantNorm(5),
      ADR5 => U2_U2_GEN_2_U_Mxor_S_xo_0_1,
      O => Mmux_Z281_2157
    );
  N50_N50_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpNorm(0),
      O => ExpNorm_0_0
    );
  U1_U4_GEN_2_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"0055000000550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR0 => MAN_26_IBUF_0,
      ADR3 => XEXP_0_IBUF_0,
      ADR5 => '1',
      O => N50
    );
  U1_U4_GEN_0_U_X_S_AND_4_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"A854FC00"
    )
    port map (
      ADR1 => XEXP_7_IBUF_0,
      ADR2 => U1_U3_C_9_bdd0,
      ADR4 => U1_U1_Mmux_SHIFT14_2019,
      ADR0 => MAN_26_IBUF_0,
      ADR3 => XEXP_0_IBUF_0,
      O => ExpNorm(0)
    );
  U1_U4_GEN_2_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"0906030C0C030906"
    )
    port map (
      ADR2 => U1_n0007(8),
      ADR3 => XEXP_2_IBUF_0,
      ADR5 => XEXP_1_IBUF_0,
      ADR1 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(1),
      ADR4 => N50,
      O => ExpNorm(2)
    );
  U1_U5_GEN_13_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y80",
      INIT => X"8805DD0588AFDDAF"
    )
    port map (
      ADR3 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos_1_mmx_out18,
      ADR0 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos_1_mmx_out3,
      ADR2 => U1_ShiftPos_1_mmx_out22,
      ADR5 => U1_ShiftPos_1_mmx_out14,
      O => N36
    );
  U1_ShiftPos_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => X"FEF4AEA45E540E04"
    )
    port map (
      ADR0 => U1_ShiftPos(0),
      ADR2 => U1_ShiftPos(1),
      ADR3 => MAN_6_IBUF_0,
      ADR5 => MAN_4_IBUF_0,
      ADR4 => MAN_5_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      O => U1_ShiftPos_1_mmx_out16
    );
  U1_U1_Mmux_SHIFT29 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y72",
      INIT => X"FFFFFFFFFFFFFAFB"
    )
    port map (
      ADR4 => MAN_15_IBUF_0,
      ADR0 => MAN_18_IBUF_0,
      ADR5 => MAN_16_IBUF_0,
      ADR1 => MAN_14_IBUF_0,
      ADR3 => MAN_13_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      O => U1_U1_Mmux_SHIFT28_2146
    );
  U1_U1_Mmux_SHIFT4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y74",
      INIT => X"FFFFFFFFFFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => MAN_17_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR3 => MAN_15_IBUF_0,
      O => N46
    );
  U1_ShiftPos_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y72",
      INIT => X"DDFADD5088FA8850"
    )
    port map (
      ADR0 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR4 => MAN_15_IBUF_0,
      ADR1 => MAN_13_IBUF_0,
      ADR5 => MAN_14_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      O => U1_ShiftPos_1_mmx_out2
    );
  U1_U1_Mmux_SHIFT27 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y79",
      INIT => X"000F000F000C000D"
    )
    port map (
      ADR2 => MAN_6_IBUF_0,
      ADR3 => MAN_5_IBUF_0,
      ADR5 => MAN_3_IBUF_0,
      ADR1 => MAN_4_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR0 => MAN_2_IBUF_0,
      O => U1_U1_Mmux_SHIFT26_2186
    );
  NlwBufferBlock_Z_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_0_OBUF_1907,
      O => NlwBufferSignal_Z_0_OBUF_I
    );
  NlwBufferBlock_Z_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_1_OBUF_1910,
      O => NlwBufferSignal_Z_1_OBUF_I
    );
  NlwBufferBlock_Z_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_2_OBUF_1913,
      O => NlwBufferSignal_Z_2_OBUF_I
    );
  NlwBufferBlock_Z_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_3_OBUF_1915,
      O => NlwBufferSignal_Z_3_OBUF_I
    );
  NlwBufferBlock_Z_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_4_OBUF_1917,
      O => NlwBufferSignal_Z_4_OBUF_I
    );
  NlwBufferBlock_Z_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_5_OBUF_1919,
      O => NlwBufferSignal_Z_5_OBUF_I
    );
  NlwBufferBlock_Z_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_6_OBUF_1921,
      O => NlwBufferSignal_Z_6_OBUF_I
    );
  NlwBufferBlock_Z_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_7_OBUF_1922,
      O => NlwBufferSignal_Z_7_OBUF_I
    );
  NlwBufferBlock_Z_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_8_OBUF_1923,
      O => NlwBufferSignal_Z_8_OBUF_I
    );
  NlwBufferBlock_Z_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_9_OBUF_1924,
      O => NlwBufferSignal_Z_9_OBUF_I
    );
  NlwBufferBlock_Z_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_10_OBUF_2046,
      O => NlwBufferSignal_Z_10_OBUF_I
    );
  NlwBufferBlock_Z_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_11_OBUF_2053,
      O => NlwBufferSignal_Z_11_OBUF_I
    );
  NlwBufferBlock_Z_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_12_OBUF_0,
      O => NlwBufferSignal_Z_12_OBUF_I
    );
  NlwBufferBlock_Z_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_20_OBUF_2058,
      O => NlwBufferSignal_Z_20_OBUF_I
    );
  NlwBufferBlock_Z_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_13_OBUF_2066,
      O => NlwBufferSignal_Z_13_OBUF_I
    );
  NlwBufferBlock_Z_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_21_OBUF_2069,
      O => NlwBufferSignal_Z_21_OBUF_I
    );
  NlwBufferBlock_Z_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_14_OBUF_2075,
      O => NlwBufferSignal_Z_14_OBUF_I
    );
  NlwBufferBlock_Z_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_22_OBUF_0,
      O => NlwBufferSignal_Z_22_OBUF_I
    );
  NlwBufferBlock_Z_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_30_OBUF_2077,
      O => NlwBufferSignal_Z_30_OBUF_I
    );
  NlwBufferBlock_Z_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_15_OBUF_2078,
      O => NlwBufferSignal_Z_15_OBUF_I
    );
  NlwBufferBlock_Z_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_23_OBUF_2083,
      O => NlwBufferSignal_Z_23_OBUF_I
    );
  NlwBufferBlock_Z_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_31_OBUF_2087,
      O => NlwBufferSignal_Z_31_OBUF_I
    );
  NlwBufferBlock_Z_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_16_OBUF_2088,
      O => NlwBufferSignal_Z_16_OBUF_I
    );
  NlwBufferBlock_Z_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_24_OBUF_2090,
      O => NlwBufferSignal_Z_24_OBUF_I
    );
  NlwBufferBlock_Z_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_17_OBUF_2084,
      O => NlwBufferSignal_Z_17_OBUF_I
    );
  NlwBufferBlock_Z_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_25_OBUF_2092,
      O => NlwBufferSignal_Z_25_OBUF_I
    );
  NlwBufferBlock_Z_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_18_OBUF_2093,
      O => NlwBufferSignal_Z_18_OBUF_I
    );
  NlwBufferBlock_Z_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_26_OBUF_2095,
      O => NlwBufferSignal_Z_26_OBUF_I
    );
  NlwBufferBlock_Z_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_19_OBUF_2096,
      O => NlwBufferSignal_Z_19_OBUF_I
    );
  NlwBufferBlock_Z_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_27_OBUF_2100,
      O => NlwBufferSignal_Z_27_OBUF_I
    );
  NlwBufferBlock_Z_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_28_OBUF_2106,
      O => NlwBufferSignal_Z_28_OBUF_I
    );
  NlwBufferBlock_Z_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_29_OBUF_2107,
      O => NlwBufferSignal_Z_29_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

