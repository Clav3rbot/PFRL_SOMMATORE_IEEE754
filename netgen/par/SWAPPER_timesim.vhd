--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SWAPPER_timesim.vhd
-- /___/   /\     Timestamp: Tue Aug  1 17:41:59 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf SWAPPER.pcf -rpw 100 -tpw 0 -ar Structure -tm SWAPPER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim SWAPPER.ncd SWAPPER_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: SWAPPER.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/SWAPPER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: SWAPPER
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

entity SWAPPER is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    DIFF : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    G : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    S : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end SWAPPER;

architecture Structure of SWAPPER is
  signal S_31_OBUF_0 : STD_LOGIC; 
  signal G_10_OBUF_879 : STD_LOGIC; 
  signal S_0_OBUF_0 : STD_LOGIC; 
  signal S_16_OBUF_0 : STD_LOGIC; 
  signal S_24_OBUF_0 : STD_LOGIC; 
  signal G_11_OBUF_883 : STD_LOGIC; 
  signal S_1_OBUF_0 : STD_LOGIC; 
  signal S_17_OBUF_0 : STD_LOGIC; 
  signal S_25_OBUF_0 : STD_LOGIC; 
  signal G_12_OBUF_887 : STD_LOGIC; 
  signal G_20_OBUF_888 : STD_LOGIC; 
  signal S_2_OBUF_0 : STD_LOGIC; 
  signal DIFF_3_OBUF_890 : STD_LOGIC; 
  signal EXP_COMP_COUT : STD_LOGIC; 
  signal EXP_COMP_S_3_0 : STD_LOGIC; 
  signal B_23_IBUF_0 : STD_LOGIC; 
  signal A_23_IBUF_0 : STD_LOGIC; 
  signal A_10_IBUF_0 : STD_LOGIC; 
  signal S_18_OBUF_0 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT11_899 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT5_0 : STD_LOGIC; 
  signal A_9_IBUF_0 : STD_LOGIC; 
  signal B_9_IBUF_0 : STD_LOGIC; 
  signal A_8_IBUF_0 : STD_LOGIC; 
  signal B_8_IBUF_0 : STD_LOGIC; 
  signal A_7_IBUF_0 : STD_LOGIC; 
  signal B_7_IBUF_0 : STD_LOGIC; 
  signal A_6_IBUF_0 : STD_LOGIC; 
  signal B_6_IBUF_0 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT6_909 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT9_910 : STD_LOGIC; 
  signal S_26_OBUF_0 : STD_LOGIC; 
  signal G_0_OBUF_912 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT13_913 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT3_0 : STD_LOGIC; 
  signal A_14_IBUF_0 : STD_LOGIC; 
  signal B_14_IBUF_0 : STD_LOGIC; 
  signal A_13_IBUF_0 : STD_LOGIC; 
  signal B_13_IBUF_0 : STD_LOGIC; 
  signal A_12_IBUF_0 : STD_LOGIC; 
  signal B_12_IBUF_0 : STD_LOGIC; 
  signal A_11_IBUF_0 : STD_LOGIC; 
  signal B_11_IBUF_0 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT4_923 : STD_LOGIC; 
  signal G_13_OBUF_924 : STD_LOGIC; 
  signal G_21_OBUF_925 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT15_926 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT1_0 : STD_LOGIC; 
  signal A_19_IBUF_0 : STD_LOGIC; 
  signal B_19_IBUF_0 : STD_LOGIC; 
  signal A_18_IBUF_0 : STD_LOGIC; 
  signal B_18_IBUF_0 : STD_LOGIC; 
  signal A_17_IBUF_0 : STD_LOGIC; 
  signal B_17_IBUF_0 : STD_LOGIC; 
  signal A_16_IBUF_0 : STD_LOGIC; 
  signal B_16_IBUF_0 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT2_936 : STD_LOGIC; 
  signal S_3_OBUF_0 : STD_LOGIC; 
  signal MAN_COMP_COUT : STD_LOGIC; 
  signal A_22_IBUF_0 : STD_LOGIC; 
  signal B_22_IBUF_0 : STD_LOGIC; 
  signal A_21_IBUF_0 : STD_LOGIC; 
  signal B_21_IBUF_0 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT : STD_LOGIC; 
  signal G_9_OBUF_944 : STD_LOGIC; 
  signal S_9_OBUF_0 : STD_LOGIC; 
  signal S_19_OBUF_0 : STD_LOGIC; 
  signal DIFF_5_OBUF_948 : STD_LOGIC; 
  signal EXP_COMP_S_5_0 : STD_LOGIC; 
  signal A_27_IBUF_0 : STD_LOGIC; 
  signal B_27_IBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd6 : STD_LOGIC; 
  signal EXP_COMP_U3_GEN_4_U_Z1_953 : STD_LOGIC; 
  signal S_27_OBUF_0 : STD_LOGIC; 
  signal DIFF_2_OBUF_955 : STD_LOGIC; 
  signal A_25_IBUF_0 : STD_LOGIC; 
  signal B_25_IBUF_0 : STD_LOGIC; 
  signal DIFF_0_OBUF_958 : STD_LOGIC; 
  signal G_1_OBUF_959 : STD_LOGIC; 
  signal G_14_OBUF_960 : STD_LOGIC; 
  signal A_24_IBUF_0 : STD_LOGIC; 
  signal B_24_IBUF_0 : STD_LOGIC; 
  signal G_22_OBUF_963 : STD_LOGIC; 
  signal DIFF_7_OBUF_964 : STD_LOGIC; 
  signal EXP_COMP_S_7_0 : STD_LOGIC; 
  signal G_30_OBUF_968 : STD_LOGIC; 
  signal A_4_IBUF_0 : STD_LOGIC; 
  signal B_4_IBUF_0 : STD_LOGIC; 
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal B_3_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_0 : STD_LOGIC; 
  signal B_2_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal B_1_IBUF_0 : STD_LOGIC; 
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal B_0_IBUF_0 : STD_LOGIC; 
  signal S_4_OBUF_0 : STD_LOGIC; 
  signal DIFF_6_OBUF_980 : STD_LOGIC; 
  signal A_20_IBUF_0 : STD_LOGIC; 
  signal S_28_OBUF_0 : STD_LOGIC; 
  signal G_2_OBUF_983 : STD_LOGIC; 
  signal G_15_OBUF_984 : STD_LOGIC; 
  signal G_23_OBUF_985 : STD_LOGIC; 
  signal G_31_OBUF_986 : STD_LOGIC; 
  signal S_5_OBUF_0 : STD_LOGIC; 
  signal S_29_OBUF_0 : STD_LOGIC; 
  signal G_3_OBUF_989 : STD_LOGIC; 
  signal G_16_OBUF_990 : STD_LOGIC; 
  signal G_24_OBUF_991 : STD_LOGIC; 
  signal S_6_OBUF_0 : STD_LOGIC; 
  signal A_30_IBUF_0 : STD_LOGIC; 
  signal G_4_OBUF_994 : STD_LOGIC; 
  signal G_17_OBUF_995 : STD_LOGIC; 
  signal G_25_OBUF_996 : STD_LOGIC; 
  signal S_7_OBUF_0 : STD_LOGIC; 
  signal A_15_IBUF_0 : STD_LOGIC; 
  signal A_31_IBUF_0 : STD_LOGIC; 
  signal G_5_OBUF_1000 : STD_LOGIC; 
  signal G_18_OBUF_1001 : STD_LOGIC; 
  signal G_26_OBUF_1002 : STD_LOGIC; 
  signal S_8_OBUF_0 : STD_LOGIC; 
  signal G_6_OBUF_1004 : STD_LOGIC; 
  signal G_19_OBUF_1005 : STD_LOGIC; 
  signal G_27_OBUF_1006 : STD_LOGIC; 
  signal G_7_OBUF_1007 : STD_LOGIC; 
  signal G_28_OBUF_1008 : STD_LOGIC; 
  signal B_10_IBUF_0 : STD_LOGIC; 
  signal A_26_IBUF_0 : STD_LOGIC; 
  signal G_8_OBUF_1011 : STD_LOGIC; 
  signal G_29_OBUF_1012 : STD_LOGIC; 
  signal B_20_IBUF_0 : STD_LOGIC; 
  signal A_28_IBUF_0 : STD_LOGIC; 
  signal A_29_IBUF_0 : STD_LOGIC; 
  signal B_30_IBUF_0 : STD_LOGIC; 
  signal DIFF_1_OBUF_0 : STD_LOGIC; 
  signal B_15_IBUF_0 : STD_LOGIC; 
  signal B_31_IBUF_0 : STD_LOGIC; 
  signal DIFF_4_OBUF_0 : STD_LOGIC; 
  signal B_26_IBUF_0 : STD_LOGIC; 
  signal B_28_IBUF_0 : STD_LOGIC; 
  signal B_29_IBUF_0 : STD_LOGIC; 
  signal S_23_OBUF_0 : STD_LOGIC; 
  signal S_20_OBUF_0 : STD_LOGIC; 
  signal S_10_OBUF_0 : STD_LOGIC; 
  signal S_22_OBUF_0 : STD_LOGIC; 
  signal S_11_OBUF_0 : STD_LOGIC; 
  signal S_15_OBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd2 : STD_LOGIC; 
  signal S_12_OBUF_0 : STD_LOGIC; 
  signal B_5_IBUF_0 : STD_LOGIC; 
  signal A_5_IBUF_0 : STD_LOGIC; 
  signal S_30_OBUF_0 : STD_LOGIC; 
  signal S_13_OBUF_0 : STD_LOGIC; 
  signal S_14_OBUF_0 : STD_LOGIC; 
  signal S_21_OBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd10 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT7_1039 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT8_1040 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT10_1041 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT12_1042 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT14_1043 : STD_LOGIC; 
  signal A_10_IBUF_25 : STD_LOGIC; 
  signal A_11_IBUF_40 : STD_LOGIC; 
  signal A_12_IBUF_57 : STD_LOGIC; 
  signal A_20_IBUF_60 : STD_LOGIC; 
  signal A_13_IBUF_75 : STD_LOGIC; 
  signal A_21_IBUF_78 : STD_LOGIC; 
  signal A_14_IBUF_91 : STD_LOGIC; 
  signal A_22_IBUF_94 : STD_LOGIC; 
  signal A_30_IBUF_97 : STD_LOGIC; 
  signal A_15_IBUF_108 : STD_LOGIC; 
  signal A_23_IBUF_111 : STD_LOGIC; 
  signal A_31_IBUF_114 : STD_LOGIC; 
  signal A_16_IBUF_125 : STD_LOGIC; 
  signal A_24_IBUF_128 : STD_LOGIC; 
  signal A_17_IBUF_139 : STD_LOGIC; 
  signal A_25_IBUF_142 : STD_LOGIC; 
  signal B_10_IBUF_149 : STD_LOGIC; 
  signal A_18_IBUF_152 : STD_LOGIC; 
  signal A_26_IBUF_155 : STD_LOGIC; 
  signal B_11_IBUF_162 : STD_LOGIC; 
  signal A_19_IBUF_165 : STD_LOGIC; 
  signal A_27_IBUF_168 : STD_LOGIC; 
  signal B_12_IBUF_173 : STD_LOGIC; 
  signal B_20_IBUF_176 : STD_LOGIC; 
  signal A_28_IBUF_179 : STD_LOGIC; 
  signal B_13_IBUF_182 : STD_LOGIC; 
  signal B_21_IBUF_185 : STD_LOGIC; 
  signal A_29_IBUF_188 : STD_LOGIC; 
  signal B_14_IBUF_193 : STD_LOGIC; 
  signal B_22_IBUF_196 : STD_LOGIC; 
  signal B_30_IBUF_199 : STD_LOGIC; 
  signal B_15_IBUF_204 : STD_LOGIC; 
  signal B_23_IBUF_207 : STD_LOGIC; 
  signal B_31_IBUF_210 : STD_LOGIC; 
  signal B_16_IBUF_215 : STD_LOGIC; 
  signal B_24_IBUF_218 : STD_LOGIC; 
  signal B_17_IBUF_223 : STD_LOGIC; 
  signal B_25_IBUF_226 : STD_LOGIC; 
  signal B_18_IBUF_231 : STD_LOGIC; 
  signal B_26_IBUF_234 : STD_LOGIC; 
  signal B_19_IBUF_239 : STD_LOGIC; 
  signal B_27_IBUF_242 : STD_LOGIC; 
  signal B_28_IBUF_247 : STD_LOGIC; 
  signal B_29_IBUF_252 : STD_LOGIC; 
  signal A_0_IBUF_255 : STD_LOGIC; 
  signal A_1_IBUF_258 : STD_LOGIC; 
  signal A_2_IBUF_261 : STD_LOGIC; 
  signal A_3_IBUF_264 : STD_LOGIC; 
  signal B_0_IBUF_267 : STD_LOGIC; 
  signal A_4_IBUF_270 : STD_LOGIC; 
  signal B_1_IBUF_273 : STD_LOGIC; 
  signal A_5_IBUF_276 : STD_LOGIC; 
  signal B_2_IBUF_279 : STD_LOGIC; 
  signal A_6_IBUF_282 : STD_LOGIC; 
  signal B_3_IBUF_285 : STD_LOGIC; 
  signal A_7_IBUF_288 : STD_LOGIC; 
  signal B_4_IBUF_291 : STD_LOGIC; 
  signal A_8_IBUF_294 : STD_LOGIC; 
  signal B_5_IBUF_297 : STD_LOGIC; 
  signal A_9_IBUF_300 : STD_LOGIC; 
  signal B_6_IBUF_303 : STD_LOGIC; 
  signal B_7_IBUF_306 : STD_LOGIC; 
  signal B_8_IBUF_309 : STD_LOGIC; 
  signal B_9_IBUF_312 : STD_LOGIC; 
  signal S_31_OBUF_337 : STD_LOGIC; 
  signal EXP_COMP_S_1_pack_4 : STD_LOGIC; 
  signal S_30_OBUF_398 : STD_LOGIC; 
  signal DIFF_1_OBUF_408 : STD_LOGIC; 
  signal DIFF_4_OBUF_435 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT7_pack_1 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT3_469 : STD_LOGIC; 
  signal S_24_OBUF_480 : STD_LOGIC; 
  signal S_25_OBUF_474 : STD_LOGIC; 
  signal S_14_OBUF_488 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT5_509 : STD_LOGIC; 
  signal MAN_COMP_U1_GEN_22_U_COUT1_542 : STD_LOGIC; 
  signal S_9_OBUF_547 : STD_LOGIC; 
  signal S_0_OBUF_574 : STD_LOGIC; 
  signal S_3_OBUF_568 : STD_LOGIC; 
  signal S_1_OBUF_562 : STD_LOGIC; 
  signal S_8_OBUF_594 : STD_LOGIC; 
  signal S_7_OBUF_588 : STD_LOGIC; 
  signal S_2_OBUF_582 : STD_LOGIC; 
  signal S_6_OBUF_603 : STD_LOGIC; 
  signal S_10_OBUF_610 : STD_LOGIC; 
  signal S_12_OBUF_622 : STD_LOGIC; 
  signal S_11_OBUF_616 : STD_LOGIC; 
  signal S_15_OBUF_631 : STD_LOGIC; 
  signal S_29_OBUF_638 : STD_LOGIC; 
  signal S_27_OBUF_645 : STD_LOGIC; 
  signal S_5_OBUF_657 : STD_LOGIC; 
  signal S_4_OBUF_651 : STD_LOGIC; 
  signal S_21_OBUF_671 : STD_LOGIC; 
  signal S_22_OBUF_665 : STD_LOGIC; 
  signal S_13_OBUF_680 : STD_LOGIC; 
  signal S_19_OBUF_687 : STD_LOGIC; 
  signal S_17_OBUF_706 : STD_LOGIC; 
  signal S_18_OBUF_700 : STD_LOGIC; 
  signal S_16_OBUF_694 : STD_LOGIC; 
  signal S_20_OBUF_715 : STD_LOGIC; 
  signal S_28_OBUF_722 : STD_LOGIC; 
  signal S_26_OBUF_729 : STD_LOGIC; 
  signal S_23_OBUF_736 : STD_LOGIC; 
  signal NlwBufferSignal_S_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_G_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_S_23_OBUF_I : STD_LOGIC; 
  signal EXP_COMP_S : STD_LOGIC_VECTOR ( 7 downto 1 ); 
begin
  S_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD262"
    )
    port map (
      I => NlwBufferSignal_S_31_OBUF_I,
      O => S(31)
    );
  G_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => NlwBufferSignal_G_10_OBUF_I,
      O => G(10)
    );
  S_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => NlwBufferSignal_S_0_OBUF_I,
      O => S(0)
    );
  S_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_S_16_OBUF_I,
      O => S(16)
    );
  S_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_S_24_OBUF_I,
      O => S(24)
    );
  G_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_G_11_OBUF_I,
      O => G(11)
    );
  S_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_S_1_OBUF_I,
      O => S(1)
    );
  S_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_S_17_OBUF_I,
      O => S(17)
    );
  S_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_S_25_OBUF_I,
      O => S(25)
    );
  G_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => NlwBufferSignal_G_12_OBUF_I,
      O => G(12)
    );
  G_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD131"
    )
    port map (
      I => NlwBufferSignal_G_20_OBUF_I,
      O => G(20)
    );
  S_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_S_2_OBUF_I,
      O => S(2)
    );
  A_10_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_10_IBUF_25,
      I => A(10)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_10_IBUF_25,
      O => A_10_IBUF_0
    );
  S_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_S_18_OBUF_I,
      O => S(18)
    );
  S_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_S_26_OBUF_I,
      O => S(26)
    );
  G_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_G_0_OBUF_I,
      O => G(0)
    );
  G_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_G_13_OBUF_I,
      O => G(13)
    );
  G_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => NlwBufferSignal_G_21_OBUF_I,
      O => G(21)
    );
  S_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_S_3_OBUF_I,
      O => S(3)
    );
  A_11_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_11_IBUF_40,
      I => A(11)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_11_IBUF_40,
      O => A_11_IBUF_0
    );
  S_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_S_19_OBUF_I,
      O => S(19)
    );
  S_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_S_27_OBUF_I,
      O => S(27)
    );
  G_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_G_1_OBUF_I,
      O => G(1)
    );
  G_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_G_14_OBUF_I,
      O => G(14)
    );
  G_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_G_22_OBUF_I,
      O => G(22)
    );
  G_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_G_30_OBUF_I,
      O => G(30)
    );
  S_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_S_4_OBUF_I,
      O => S(4)
    );
  A_12_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_12_IBUF_57,
      I => A(12)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_12_IBUF_57,
      O => A_12_IBUF_0
    );
  A_20_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_20_IBUF_60,
      I => A(20)
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_20_IBUF_60,
      O => A_20_IBUF_0
    );
  S_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_S_28_OBUF_I,
      O => S(28)
    );
  G_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => NlwBufferSignal_G_2_OBUF_I,
      O => G(2)
    );
  G_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_G_15_OBUF_I,
      O => G(15)
    );
  G_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_G_23_OBUF_I,
      O => G(23)
    );
  G_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_G_31_OBUF_I,
      O => G(31)
    );
  S_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_S_5_OBUF_I,
      O => S(5)
    );
  A_13_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_13_IBUF_75,
      I => A(13)
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_13_IBUF_75,
      O => A_13_IBUF_0
    );
  A_21_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_21_IBUF_78,
      I => A(21)
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_21_IBUF_78,
      O => A_21_IBUF_0
    );
  S_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_S_29_OBUF_I,
      O => S(29)
    );
  G_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => NlwBufferSignal_G_3_OBUF_I,
      O => G(3)
    );
  G_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => NlwBufferSignal_G_16_OBUF_I,
      O => G(16)
    );
  G_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_G_24_OBUF_I,
      O => G(24)
    );
  S_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_S_6_OBUF_I,
      O => S(6)
    );
  A_14_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_14_IBUF_91,
      I => A(14)
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_14_IBUF_91,
      O => A_14_IBUF_0
    );
  A_22_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_22_IBUF_94,
      I => A(22)
    );
  ProtoComp2_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_22_IBUF_94,
      O => A_22_IBUF_0
    );
  A_30_IBUF : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_30_IBUF_97,
      I => A(30)
    );
  ProtoComp2_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_30_IBUF_97,
      O => A_30_IBUF_0
    );
  G_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => NlwBufferSignal_G_4_OBUF_I,
      O => G(4)
    );
  G_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => NlwBufferSignal_G_17_OBUF_I,
      O => G(17)
    );
  G_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_G_25_OBUF_I,
      O => G(25)
    );
  S_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_S_7_OBUF_I,
      O => S(7)
    );
  A_15_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_15_IBUF_108,
      I => A(15)
    );
  ProtoComp2_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_15_IBUF_108,
      O => A_15_IBUF_0
    );
  A_23_IBUF : X_BUF
    generic map(
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_23_IBUF_111,
      I => A(23)
    );
  ProtoComp2_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_23_IBUF_111,
      O => A_23_IBUF_0
    );
  A_31_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_31_IBUF_114,
      I => A(31)
    );
  ProtoComp2_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_31_IBUF_114,
      O => A_31_IBUF_0
    );
  G_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => NlwBufferSignal_G_5_OBUF_I,
      O => G(5)
    );
  G_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => NlwBufferSignal_G_18_OBUF_I,
      O => G(18)
    );
  G_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_G_26_OBUF_I,
      O => G(26)
    );
  S_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_S_8_OBUF_I,
      O => S(8)
    );
  A_16_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_16_IBUF_125,
      I => A(16)
    );
  ProtoComp2_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_16_IBUF_125,
      O => A_16_IBUF_0
    );
  A_24_IBUF : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_24_IBUF_128,
      I => A(24)
    );
  ProtoComp2_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_24_IBUF_128,
      O => A_24_IBUF_0
    );
  G_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => NlwBufferSignal_G_6_OBUF_I,
      O => G(6)
    );
  G_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => NlwBufferSignal_G_19_OBUF_I,
      O => G(19)
    );
  G_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_G_27_OBUF_I,
      O => G(27)
    );
  S_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_S_9_OBUF_I,
      O => S(9)
    );
  A_17_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_17_IBUF_139,
      I => A(17)
    );
  ProtoComp2_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_17_IBUF_139,
      O => A_17_IBUF_0
    );
  A_25_IBUF : X_BUF
    generic map(
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_25_IBUF_142,
      I => A(25)
    );
  ProtoComp2_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_25_IBUF_142,
      O => A_25_IBUF_0
    );
  G_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => NlwBufferSignal_G_7_OBUF_I,
      O => G(7)
    );
  G_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => NlwBufferSignal_G_28_OBUF_I,
      O => G(28)
    );
  B_10_IBUF : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_10_IBUF_149,
      I => B(10)
    );
  ProtoComp2_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_10_IBUF_149,
      O => B_10_IBUF_0
    );
  A_18_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_18_IBUF_152,
      I => A(18)
    );
  ProtoComp2_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_18_IBUF_152,
      O => A_18_IBUF_0
    );
  A_26_IBUF : X_BUF
    generic map(
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_26_IBUF_155,
      I => A(26)
    );
  ProtoComp2_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_26_IBUF_155,
      O => A_26_IBUF_0
    );
  G_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => NlwBufferSignal_G_8_OBUF_I,
      O => G(8)
    );
  G_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_G_29_OBUF_I,
      O => G(29)
    );
  B_11_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_11_IBUF_162,
      I => B(11)
    );
  ProtoComp2_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_11_IBUF_162,
      O => B_11_IBUF_0
    );
  A_19_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_19_IBUF_165,
      I => A(19)
    );
  ProtoComp2_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_19_IBUF_165,
      O => A_19_IBUF_0
    );
  A_27_IBUF : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_27_IBUF_168,
      I => A(27)
    );
  ProtoComp2_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_27_IBUF_168,
      O => A_27_IBUF_0
    );
  G_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => NlwBufferSignal_G_9_OBUF_I,
      O => G(9)
    );
  B_12_IBUF : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_12_IBUF_173,
      I => B(12)
    );
  ProtoComp2_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_12_IBUF_173,
      O => B_12_IBUF_0
    );
  B_20_IBUF : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_20_IBUF_176,
      I => B(20)
    );
  ProtoComp2_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_20_IBUF_176,
      O => B_20_IBUF_0
    );
  A_28_IBUF : X_BUF
    generic map(
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_28_IBUF_179,
      I => A(28)
    );
  ProtoComp2_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_28_IBUF_179,
      O => A_28_IBUF_0
    );
  B_13_IBUF : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_13_IBUF_182,
      I => B(13)
    );
  ProtoComp2_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_13_IBUF_182,
      O => B_13_IBUF_0
    );
  B_21_IBUF : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_21_IBUF_185,
      I => B(21)
    );
  ProtoComp2_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_21_IBUF_185,
      O => B_21_IBUF_0
    );
  A_29_IBUF : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_29_IBUF_188,
      I => A(29)
    );
  ProtoComp2_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_29_IBUF_188,
      O => A_29_IBUF_0
    );
  DIFF_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_DIFF_0_OBUF_I,
      O => DIFF(0)
    );
  B_14_IBUF : X_BUF
    generic map(
      LOC => "PAD353",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_14_IBUF_193,
      I => B(14)
    );
  ProtoComp2_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD353",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_14_IBUF_193,
      O => B_14_IBUF_0
    );
  B_22_IBUF : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_22_IBUF_196,
      I => B(22)
    );
  ProtoComp2_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_22_IBUF_196,
      O => B_22_IBUF_0
    );
  B_30_IBUF : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_30_IBUF_199,
      I => B(30)
    );
  ProtoComp2_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_30_IBUF_199,
      O => B_30_IBUF_0
    );
  DIFF_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD374"
    )
    port map (
      I => NlwBufferSignal_DIFF_1_OBUF_I,
      O => DIFF(1)
    );
  B_15_IBUF : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_15_IBUF_204,
      I => B(15)
    );
  ProtoComp2_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_15_IBUF_204,
      O => B_15_IBUF_0
    );
  B_23_IBUF : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_23_IBUF_207,
      I => B(23)
    );
  ProtoComp2_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_23_IBUF_207,
      O => B_23_IBUF_0
    );
  B_31_IBUF : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_31_IBUF_210,
      I => B(31)
    );
  ProtoComp2_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_31_IBUF_210,
      O => B_31_IBUF_0
    );
  DIFF_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD375"
    )
    port map (
      I => NlwBufferSignal_DIFF_2_OBUF_I,
      O => DIFF(2)
    );
  B_16_IBUF : X_BUF
    generic map(
      LOC => "PAD355",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_16_IBUF_215,
      I => B(16)
    );
  ProtoComp2_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD355",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_16_IBUF_215,
      O => B_16_IBUF_0
    );
  B_24_IBUF : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_24_IBUF_218,
      I => B(24)
    );
  ProtoComp2_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_24_IBUF_218,
      O => B_24_IBUF_0
    );
  DIFF_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD376"
    )
    port map (
      I => NlwBufferSignal_DIFF_3_OBUF_I,
      O => DIFF(3)
    );
  B_17_IBUF : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_17_IBUF_223,
      I => B(17)
    );
  ProtoComp2_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_17_IBUF_223,
      O => B_17_IBUF_0
    );
  B_25_IBUF : X_BUF
    generic map(
      LOC => "PAD364",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_25_IBUF_226,
      I => B(25)
    );
  ProtoComp2_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD364",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_25_IBUF_226,
      O => B_25_IBUF_0
    );
  DIFF_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD377"
    )
    port map (
      I => NlwBufferSignal_DIFF_4_OBUF_I,
      O => DIFF(4)
    );
  B_18_IBUF : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_18_IBUF_231,
      I => B(18)
    );
  ProtoComp2_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_18_IBUF_231,
      O => B_18_IBUF_0
    );
  B_26_IBUF : X_BUF
    generic map(
      LOC => "PAD365",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_26_IBUF_234,
      I => B(26)
    );
  ProtoComp2_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD365",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_26_IBUF_234,
      O => B_26_IBUF_0
    );
  DIFF_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD378"
    )
    port map (
      I => NlwBufferSignal_DIFF_5_OBUF_I,
      O => DIFF(5)
    );
  B_19_IBUF : X_BUF
    generic map(
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_19_IBUF_239,
      I => B(19)
    );
  ProtoComp2_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_19_IBUF_239,
      O => B_19_IBUF_0
    );
  B_27_IBUF : X_BUF
    generic map(
      LOC => "PAD366",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_27_IBUF_242,
      I => B(27)
    );
  ProtoComp2_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD366",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_27_IBUF_242,
      O => B_27_IBUF_0
    );
  DIFF_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD379"
    )
    port map (
      I => NlwBufferSignal_DIFF_6_OBUF_I,
      O => DIFF(6)
    );
  B_28_IBUF : X_BUF
    generic map(
      LOC => "PAD367",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_28_IBUF_247,
      I => B(28)
    );
  ProtoComp2_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD367",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_28_IBUF_247,
      O => B_28_IBUF_0
    );
  DIFF_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD380"
    )
    port map (
      I => NlwBufferSignal_DIFF_7_OBUF_I,
      O => DIFF(7)
    );
  B_29_IBUF : X_BUF
    generic map(
      LOC => "PAD368",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_29_IBUF_252,
      I => B(29)
    );
  ProtoComp2_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD368",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_29_IBUF_252,
      O => B_29_IBUF_0
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_0_IBUF_255,
      I => A(0)
    );
  ProtoComp2_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_0_IBUF_255,
      O => A_0_IBUF_0
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_1_IBUF_258,
      I => A(1)
    );
  ProtoComp2_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_1_IBUF_258,
      O => A_1_IBUF_0
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_2_IBUF_261,
      I => A(2)
    );
  ProtoComp2_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_2_IBUF_261,
      O => A_2_IBUF_0
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_3_IBUF_264,
      I => A(3)
    );
  ProtoComp2_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_3_IBUF_264,
      O => A_3_IBUF_0
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_0_IBUF_267,
      I => B(0)
    );
  ProtoComp2_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_0_IBUF_267,
      O => B_0_IBUF_0
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_4_IBUF_270,
      I => A(4)
    );
  ProtoComp2_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_4_IBUF_270,
      O => A_4_IBUF_0
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_1_IBUF_273,
      I => B(1)
    );
  ProtoComp2_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_1_IBUF_273,
      O => B_1_IBUF_0
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_5_IBUF_276,
      I => A(5)
    );
  ProtoComp2_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_5_IBUF_276,
      O => A_5_IBUF_0
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_2_IBUF_279,
      I => B(2)
    );
  ProtoComp2_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_2_IBUF_279,
      O => B_2_IBUF_0
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_6_IBUF_282,
      I => A(6)
    );
  ProtoComp2_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_6_IBUF_282,
      O => A_6_IBUF_0
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_3_IBUF_285,
      I => B(3)
    );
  ProtoComp2_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_3_IBUF_285,
      O => B_3_IBUF_0
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_7_IBUF_288,
      I => A(7)
    );
  ProtoComp2_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_7_IBUF_288,
      O => A_7_IBUF_0
    );
  B_4_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_4_IBUF_291,
      I => B(4)
    );
  ProtoComp2_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_4_IBUF_291,
      O => B_4_IBUF_0
    );
  A_8_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_8_IBUF_294,
      I => A(8)
    );
  ProtoComp2_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_8_IBUF_294,
      O => A_8_IBUF_0
    );
  B_5_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_5_IBUF_297,
      I => B(5)
    );
  ProtoComp2_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_5_IBUF_297,
      O => B_5_IBUF_0
    );
  A_9_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_9_IBUF_300,
      I => A(9)
    );
  ProtoComp2_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_9_IBUF_300,
      O => A_9_IBUF_0
    );
  B_6_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_6_IBUF_303,
      I => B(6)
    );
  ProtoComp2_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_6_IBUF_303,
      O => B_6_IBUF_0
    );
  B_7_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_7_IBUF_306,
      I => B(7)
    );
  ProtoComp2_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_7_IBUF_306,
      O => B_7_IBUF_0
    );
  B_8_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_8_IBUF_309,
      I => B(8)
    );
  ProtoComp2_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_8_IBUF_309,
      O => B_8_IBUF_0
    );
  B_9_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_9_IBUF_312,
      I => B(9)
    );
  ProtoComp2_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_9_IBUF_312,
      O => B_9_IBUF_0
    );
  S_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => NlwBufferSignal_S_10_OBUF_I,
      O => S(10)
    );
  S_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => NlwBufferSignal_S_11_OBUF_I,
      O => S(11)
    );
  S_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_S_12_OBUF_I,
      O => S(12)
    );
  S_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_S_20_OBUF_I,
      O => S(20)
    );
  S_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_S_13_OBUF_I,
      O => S(13)
    );
  S_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_S_21_OBUF_I,
      O => S(21)
    );
  S_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_S_14_OBUF_I,
      O => S(14)
    );
  S_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_S_22_OBUF_I,
      O => S(22)
    );
  S_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD261"
    )
    port map (
      I => NlwBufferSignal_S_30_OBUF_I,
      O => S(30)
    );
  S_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_S_15_OBUF_I,
      O => S(15)
    );
  S_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_S_23_OBUF_I,
      O => S(23)
    );
  G_31_OBUF_G_31_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_31_OBUF_337,
      O => S_31_OBUF_0
    );
  Mmux_G251 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y79",
      INIT => X"FF3FC000FF3FC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_31_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR3 => A_31_IBUF_0,
      ADR5 => '1',
      O => G_31_OBUF_986
    );
  Mmux_S251 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y79",
      INIT => X"FFC03F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_31_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR3 => A_31_IBUF_0,
      O => S_31_OBUF_337
    );
  EXP_COMP_U1_C_8_bdd2_EXP_COMP_U1_C_8_bdd2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S(5),
      O => EXP_COMP_S_5_0
    );
  EXP_COMP_U1_C_8_21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y97",
      INIT => X"D450F5D4D450F5D4"
    )
    port map (
      ADR2 => A_28_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd6,
      ADR4 => B_27_IBUF_0,
      ADR1 => A_27_IBUF_0,
      ADR0 => B_28_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd2
    );
  EXP_COMP_U1_S_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y97",
      INIT => X"69A55A69"
    )
    port map (
      ADR2 => A_28_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd6,
      ADR4 => B_27_IBUF_0,
      ADR1 => A_27_IBUF_0,
      ADR0 => B_28_IBUF_0,
      O => EXP_COMP_S(5)
    );
  EXP_COMP_U1_S_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y97",
      INIT => X"5A5A5A5AA5A5A5A5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => A_29_IBUF_0,
      ADR2 => B_29_IBUF_0,
      ADR5 => EXP_COMP_U1_C_8_bdd2,
      O => EXP_COMP_S(6)
    );
  EXP_COMP_U1_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y97",
      INIT => X"0F87F078A5E15A1E"
    )
    port map (
      ADR2 => A_25_IBUF_0,
      ADR4 => B_25_IBUF_0,
      ADR5 => A_24_IBUF_0,
      ADR3 => A_23_IBUF_0,
      ADR1 => B_23_IBUF_0,
      ADR0 => B_24_IBUF_0,
      O => EXP_COMP_S(2)
    );
  DIFF_2_OBUF_DIFF_2_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S_1_pack_4,
      O => EXP_COMP_S(1)
    );
  DIFF_2_OBUF_DIFF_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S(3),
      O => EXP_COMP_S_3_0
    );
  EXP_COMP_U3_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y99",
      INIT => X"66999966659A9A65"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR4 => A_25_IBUF_0,
      ADR0 => B_25_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => DIFF_0_OBUF_958,
      ADR5 => EXP_COMP_S(1),
      O => DIFF_2_OBUF_955
    );
  EXP_COMP_U1_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y99",
      INIT => X"DDDD4D4DDDDD4D4D"
    )
    port map (
      ADR3 => '1',
      ADR1 => A_24_IBUF_0,
      ADR4 => A_23_IBUF_0,
      ADR2 => B_23_IBUF_0,
      ADR0 => B_24_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd10
    );
  EXP_COMP_U1_S_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y99",
      INIT => X"66669696"
    )
    port map (
      ADR3 => '1',
      ADR1 => A_24_IBUF_0,
      ADR4 => A_23_IBUF_0,
      ADR2 => B_23_IBUF_0,
      ADR0 => B_24_IBUF_0,
      O => EXP_COMP_S_1_pack_4
    );
  EXP_COMP_U1_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y99",
      INIT => X"BB2B2B22BB2B2B22"
    )
    port map (
      ADR0 => A_26_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => B_25_IBUF_0,
      ADR3 => A_25_IBUF_0,
      ADR1 => B_26_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd6
    );
  EXP_COMP_U1_S_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y99",
      INIT => X"66969699"
    )
    port map (
      ADR0 => A_26_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => B_25_IBUF_0,
      ADR3 => A_25_IBUF_0,
      ADR1 => B_26_IBUF_0,
      O => EXP_COMP_S(3)
    );
  EXP_COMP_U3_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y102",
      INIT => X"CCCC3333CCED3312"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR4 => EXP_COMP_S_3_0,
      ADR5 => EXP_COMP_S(2),
      ADR0 => B_23_IBUF_0,
      ADR2 => A_23_IBUF_0,
      ADR3 => EXP_COMP_S(1),
      O => DIFF_3_OBUF_890
    );
  EXP_COMP_U3_GEN_6_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y104",
      INIT => X"CC33CC33CC33CC66"
    )
    port map (
      ADR2 => '1',
      ADR3 => EXP_COMP_COUT,
      ADR1 => EXP_COMP_S(6),
      ADR5 => EXP_COMP_S(4),
      ADR0 => EXP_COMP_S_5_0,
      ADR4 => EXP_COMP_U3_GEN_4_U_Z1_953,
      O => DIFF_6_OBUF_980
    );
  G_30_OBUF_G_30_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_30_OBUF_398,
      O => S_30_OBUF_0
    );
  Mmux_G241 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y96",
      INIT => X"F3FFC000F3FFC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_30_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR2 => A_30_IBUF_0,
      ADR5 => '1',
      O => G_30_OBUF_968
    );
  Mmux_S241 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y96",
      INIT => X"FCF030F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_30_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR2 => A_30_IBUF_0,
      O => S_30_OBUF_398
    );
  EXP_COMP_COUT_EXP_COMP_COUT_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S(7),
      O => EXP_COMP_S_7_0
    );
  EXP_COMP_COUT_EXP_COMP_COUT_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_1_OBUF_408,
      O => DIFF_1_OBUF_0
    );
  EXP_COMP_U1_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y97",
      INIT => X"80C8ECFE80C8ECFE"
    )
    port map (
      ADR1 => A_30_IBUF_0,
      ADR2 => EXP_COMP_U1_C_8_bdd2,
      ADR3 => B_29_IBUF_0,
      ADR0 => A_29_IBUF_0,
      ADR4 => B_30_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_COUT
    );
  EXP_COMP_U1_S_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y97",
      INIT => X"6C3693C9"
    )
    port map (
      ADR1 => A_30_IBUF_0,
      ADR2 => EXP_COMP_U1_C_8_bdd2,
      ADR3 => B_29_IBUF_0,
      ADR0 => A_29_IBUF_0,
      ADR4 => B_30_IBUF_0,
      O => EXP_COMP_S(7)
    );
  EXP_COMP_U1_GEN_0_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y97",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => A_23_IBUF_0,
      ADR1 => B_23_IBUF_0,
      ADR5 => '1',
      O => DIFF_0_OBUF_958
    );
  EXP_COMP_U3_GEN_1_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y97",
      INIT => X"59A6659A"
    )
    port map (
      ADR3 => A_24_IBUF_0,
      ADR0 => B_24_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => A_23_IBUF_0,
      ADR1 => B_23_IBUF_0,
      O => DIFF_1_OBUF_408
    );
  EXP_COMP_U3_GEN_7_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y102",
      INIT => X"F00FF00FF00FF10E"
    )
    port map (
      ADR2 => EXP_COMP_COUT,
      ADR3 => EXP_COMP_S_7_0,
      ADR5 => EXP_COMP_S(4),
      ADR1 => EXP_COMP_S_5_0,
      ADR0 => EXP_COMP_S(6),
      ADR4 => EXP_COMP_U3_GEN_4_U_Z1_953,
      O => DIFF_7_OBUF_964
    );
  EXP_COMP_U3_GEN_4_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y102",
      INIT => X"FDFFFFFDFEFFFFFE"
    )
    port map (
      ADR3 => B_24_IBUF_0,
      ADR4 => A_24_IBUF_0,
      ADR1 => EXP_COMP_S(2),
      ADR5 => B_23_IBUF_0,
      ADR0 => A_23_IBUF_0,
      ADR2 => EXP_COMP_S_3_0,
      O => EXP_COMP_U3_GEN_4_U_Z1_953
    );
  EXP_COMP_S_4_EXP_COMP_S_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_4_OBUF_435,
      O => DIFF_4_OBUF_0
    );
  EXP_COMP_U1_S_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y104",
      INIT => X"0FF0F00F0FF0F00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => A_27_IBUF_0,
      ADR2 => B_27_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd6,
      ADR5 => '1',
      O => EXP_COMP_S(4)
    );
  EXP_COMP_U3_GEN_4_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y104",
      INIT => X"2DD2D22D"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR0 => EXP_COMP_U3_GEN_4_U_Z1_953,
      ADR3 => A_27_IBUF_0,
      ADR2 => B_27_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd6,
      O => DIFF_4_OBUF_435
    );
  EXP_COMP_U3_GEN_5_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y104",
      INIT => X"AAEB5514AABE5541"
    )
    port map (
      ADR0 => EXP_COMP_COUT,
      ADR4 => EXP_COMP_S_5_0,
      ADR2 => A_27_IBUF_0,
      ADR5 => B_27_IBUF_0,
      ADR1 => EXP_COMP_U1_C_8_bdd6,
      ADR3 => EXP_COMP_U3_GEN_4_U_Z1_953,
      O => DIFF_5_OBUF_948
    );
  MAN_COMP_U1_GEN_22_U_COUT8_MAN_COMP_U1_GEN_22_U_COUT8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_COMP_U1_GEN_22_U_COUT7_pack_1,
      O => MAN_COMP_U1_GEN_22_U_COUT7_1039
    );
  MAN_COMP_U1_GEN_22_U_COUT9 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y78",
      INIT => X"A0FA20F2F0FFB0FB"
    )
    port map (
      ADR2 => A_2_IBUF_0,
      ADR3 => B_2_IBUF_0,
      ADR0 => A_1_IBUF_0,
      ADR5 => B_1_IBUF_0,
      ADR4 => A_0_IBUF_0,
      ADR1 => B_0_IBUF_0,
      O => MAN_COMP_U1_GEN_22_U_COUT8_1040
    );
  MAN_COMP_U1_GEN_22_U_COUT10 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y78",
      INIT => X"88AA088A088A0088"
    )
    port map (
      ADR0 => MAN_COMP_U1_GEN_22_U_COUT7_1039,
      ADR1 => A_4_IBUF_0,
      ADR3 => B_4_IBUF_0,
      ADR4 => A_3_IBUF_0,
      ADR2 => B_3_IBUF_0,
      ADR5 => MAN_COMP_U1_GEN_22_U_COUT8_1040,
      O => MAN_COMP_U1_GEN_22_U_COUT9_910
    );
  MAN_COMP_U1_GEN_22_U_COUT7 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y78",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      ADR5 => '1',
      O => MAN_COMP_U1_GEN_22_U_COUT6_909
    );
  MAN_COMP_U1_GEN_22_U_COUT8 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y78",
      INIT => X"FF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      O => MAN_COMP_U1_GEN_22_U_COUT7_pack_1
    );
  MAN_COMP_U1_GEN_22_U_COUT2_MAN_COMP_U1_GEN_22_U_COUT2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_COMP_U1_GEN_22_U_COUT3_469,
      O => MAN_COMP_U1_GEN_22_U_COUT3_0
    );
  MAN_COMP_U1_GEN_22_U_COUT3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y85",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => A_15_IBUF_0,
      ADR1 => B_15_IBUF_0,
      ADR5 => '1',
      O => MAN_COMP_U1_GEN_22_U_COUT2_936
    );
  MAN_COMP_U1_GEN_22_U_COUT4 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y85",
      INIT => X"FFFF3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => A_15_IBUF_0,
      ADR1 => B_15_IBUF_0,
      O => MAN_COMP_U1_GEN_22_U_COUT3_469
    );
  G_25_OBUF_G_25_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_25_OBUF_474,
      O => S_25_OBUF_0
    );
  G_25_OBUF_G_25_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_24_OBUF_480,
      O => S_24_OBUF_0
    );
  Mmux_G181 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => X"F3FFC000F3FFC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_25_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_25_IBUF_0,
      ADR5 => '1',
      O => G_25_OBUF_996
    );
  Mmux_S181 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => X"FCF030F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_25_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_25_IBUF_0,
      O => S_25_OBUF_474
    );
  Mmux_G171 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => X"CFFFC000CFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_24_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_24_IBUF_0,
      ADR5 => '1',
      O => G_24_OBUF_991
    );
  Mmux_S171 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y97",
      INIT => X"FCCC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_24_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_24_IBUF_0,
      O => S_24_OBUF_480
    );
  G_14_OBUF_G_14_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_14_OBUF_488,
      O => S_14_OBUF_0
    );
  Mmux_G61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => X"EA2AEA2AEA2AEA2A"
    )
    port map (
      ADR4 => '1',
      ADR0 => B_14_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_14_IBUF_0,
      ADR5 => '1',
      O => G_14_OBUF_960
    );
  Mmux_S61 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y98",
      INIT => X"BF80BF80"
    )
    port map (
      ADR4 => '1',
      ADR0 => B_14_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_14_IBUF_0,
      O => S_14_OBUF_488
    );
  MAN_COMP_U1_GEN_22_U_COUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y79",
      INIT => X"8E8ECFCF8E0CCF8E"
    )
    port map (
      ADR1 => A_7_IBUF_0,
      ADR2 => B_7_IBUF_0,
      ADR0 => A_6_IBUF_0,
      ADR4 => B_6_IBUF_0,
      ADR3 => MAN_COMP_U1_GEN_22_U_COUT6_909,
      ADR5 => MAN_COMP_U1_GEN_22_U_COUT9_910,
      O => MAN_COMP_U1_GEN_22_U_COUT10_1041
    );
  MAN_COMP_U1_GEN_22_U_COUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y79",
      INIT => X"C0CC40C440C400C0"
    )
    port map (
      ADR1 => MAN_COMP_U1_GEN_22_U_COUT5_0,
      ADR2 => A_9_IBUF_0,
      ADR3 => B_9_IBUF_0,
      ADR5 => A_8_IBUF_0,
      ADR0 => B_8_IBUF_0,
      ADR4 => MAN_COMP_U1_GEN_22_U_COUT10_1041,
      O => MAN_COMP_U1_GEN_22_U_COUT11_899
    );
  MAN_COMP_U1_GEN_22_U_COUT4_MAN_COMP_U1_GEN_22_U_COUT4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_COMP_U1_GEN_22_U_COUT5_509,
      O => MAN_COMP_U1_GEN_22_U_COUT5_0
    );
  MAN_COMP_U1_GEN_22_U_COUT5 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y82",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => A_10_IBUF_0,
      ADR3 => B_10_IBUF_0,
      ADR5 => '1',
      O => MAN_COMP_U1_GEN_22_U_COUT4_923
    );
  MAN_COMP_U1_GEN_22_U_COUT6 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y82",
      INIT => X"F0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => A_10_IBUF_0,
      ADR3 => B_10_IBUF_0,
      O => MAN_COMP_U1_GEN_22_U_COUT5_509
    );
  MAN_COMP_U1_GEN_22_U_COUT13 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y83",
      INIT => X"AA22A220FFBBFBBA"
    )
    port map (
      ADR0 => A_12_IBUF_0,
      ADR5 => B_12_IBUF_0,
      ADR3 => A_11_IBUF_0,
      ADR1 => B_11_IBUF_0,
      ADR4 => MAN_COMP_U1_GEN_22_U_COUT4_923,
      ADR2 => MAN_COMP_U1_GEN_22_U_COUT11_899,
      O => MAN_COMP_U1_GEN_22_U_COUT12_1042
    );
  MAN_COMP_U1_GEN_22_U_COUT14 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y83",
      INIT => X"80C0C8CC0080C0C8"
    )
    port map (
      ADR1 => MAN_COMP_U1_GEN_22_U_COUT3_0,
      ADR2 => A_14_IBUF_0,
      ADR4 => B_14_IBUF_0,
      ADR0 => A_13_IBUF_0,
      ADR3 => B_13_IBUF_0,
      ADR5 => MAN_COMP_U1_GEN_22_U_COUT12_1042,
      O => MAN_COMP_U1_GEN_22_U_COUT13_913
    );
  MAN_COMP_U1_GEN_22_U_COUT15 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y85",
      INIT => X"B2BBB2BBB2BB22B2"
    )
    port map (
      ADR0 => A_17_IBUF_0,
      ADR1 => B_17_IBUF_0,
      ADR2 => A_16_IBUF_0,
      ADR3 => B_16_IBUF_0,
      ADR4 => MAN_COMP_U1_GEN_22_U_COUT2_936,
      ADR5 => MAN_COMP_U1_GEN_22_U_COUT13_913,
      O => MAN_COMP_U1_GEN_22_U_COUT14_1043
    );
  MAN_COMP_U1_GEN_22_U_COUT16 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y85",
      INIT => X"8CEF000008CE0000"
    )
    port map (
      ADR4 => MAN_COMP_U1_GEN_22_U_COUT1_0,
      ADR1 => A_19_IBUF_0,
      ADR3 => B_19_IBUF_0,
      ADR0 => A_18_IBUF_0,
      ADR2 => B_18_IBUF_0,
      ADR5 => MAN_COMP_U1_GEN_22_U_COUT14_1043,
      O => MAN_COMP_U1_GEN_22_U_COUT15_926
    );
  MAN_COMP_U1_GEN_22_U_COUT_MAN_COMP_U1_GEN_22_U_COUT_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_COMP_U1_GEN_22_U_COUT1_542,
      O => MAN_COMP_U1_GEN_22_U_COUT1_0
    );
  MAN_COMP_U1_GEN_22_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y86",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => A_20_IBUF_0,
      ADR1 => B_20_IBUF_0,
      ADR5 => '1',
      O => MAN_COMP_U1_GEN_22_U_COUT
    );
  MAN_COMP_U1_GEN_22_U_COUT2 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y86",
      INIT => X"F3F3F3F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => A_20_IBUF_0,
      ADR1 => B_20_IBUF_0,
      O => MAN_COMP_U1_GEN_22_U_COUT1_542
    );
  G_9_OBUF_G_9_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_9_OBUF_547,
      O => S_9_OBUF_0
    );
  Mmux_G321 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y80",
      INIT => X"F0CCCCCCF0CCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_9_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR2 => A_9_IBUF_0,
      ADR5 => '1',
      O => G_9_OBUF_944
    );
  Mmux_S321 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y80",
      INIT => X"CCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_9_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR2 => A_9_IBUF_0,
      O => S_9_OBUF_547
    );
  MAN_COMP_U1_GEN_22_U_COUT17 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y80",
      INIT => X"AF8EAFAF0A0AAF8E"
    )
    port map (
      ADR0 => A_22_IBUF_0,
      ADR2 => B_22_IBUF_0,
      ADR5 => A_21_IBUF_0,
      ADR4 => B_21_IBUF_0,
      ADR3 => MAN_COMP_U1_GEN_22_U_COUT,
      ADR1 => MAN_COMP_U1_GEN_22_U_COUT15_926,
      O => MAN_COMP_COUT
    );
  G_1_OBUF_G_1_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_OBUF_562,
      O => S_1_OBUF_0
    );
  G_1_OBUF_G_1_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_3_OBUF_568,
      O => S_3_OBUF_0
    );
  G_1_OBUF_G_1_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_OBUF_574,
      O => S_0_OBUF_0
    );
  Mmux_G121 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"EAEA2A2AEAEA2A2A"
    )
    port map (
      ADR3 => '1',
      ADR0 => B_1_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR4 => A_1_IBUF_0,
      ADR5 => '1',
      O => G_1_OBUF_959
    );
  Mmux_S121 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"BFBF8080"
    )
    port map (
      ADR3 => '1',
      ADR0 => B_1_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR4 => A_1_IBUF_0,
      O => S_1_OBUF_562
    );
  Mmux_G261 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"EECC44CCEECC44CC"
    )
    port map (
      ADR2 => '1',
      ADR1 => B_3_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_3_IBUF_0,
      ADR5 => '1',
      O => G_3_OBUF_989
    );
  Mmux_S261 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"DDFF8800"
    )
    port map (
      ADR2 => '1',
      ADR1 => B_3_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_3_IBUF_0,
      O => S_3_OBUF_568
    );
  Mmux_G11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"ECEC4C4CECEC4C4C"
    )
    port map (
      ADR3 => '1',
      ADR1 => B_0_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR4 => A_0_IBUF_0,
      ADR5 => '1',
      O => G_0_OBUF_912
    );
  Mmux_S11 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y78",
      INIT => X"DFDF8080"
    )
    port map (
      ADR3 => '1',
      ADR1 => B_0_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR4 => A_0_IBUF_0,
      O => S_0_OBUF_574
    );
  G_2_OBUF_G_2_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_2_OBUF_582,
      O => S_2_OBUF_0
    );
  G_2_OBUF_G_2_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_7_OBUF_588,
      O => S_7_OBUF_0
    );
  G_2_OBUF_G_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_8_OBUF_594,
      O => S_8_OBUF_0
    );
  Mmux_G231 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"F3C0FF00F3C0FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => B_2_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR2 => A_2_IBUF_0,
      ADR5 => '1',
      O => G_2_OBUF_983
    );
  Mmux_S231 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"FC30F0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => B_2_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR2 => A_2_IBUF_0,
      O => S_2_OBUF_582
    );
  Mmux_G301 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"DFDF8080DFDF8080"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_7_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_7_IBUF_0,
      ADR5 => '1',
      O => G_7_OBUF_1007
    );
  Mmux_S301 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"ECEC4C4C"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_7_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_7_IBUF_0,
      O => S_7_OBUF_588
    );
  Mmux_G311 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"ACACCCCCACACCCCC"
    )
    port map (
      ADR3 => '1',
      ADR1 => B_8_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR0 => A_8_IBUF_0,
      ADR5 => '1',
      O => G_8_OBUF_1011
    );
  Mmux_S311 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y79",
      INIT => X"CACAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => B_8_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR0 => A_8_IBUF_0,
      O => S_8_OBUF_594
    );
  G_6_OBUF_G_6_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_6_OBUF_603,
      O => S_6_OBUF_0
    );
  Mmux_G291 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y80",
      INIT => X"F3FFC000F3FFC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_6_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_6_IBUF_0,
      ADR5 => '1',
      O => G_6_OBUF_1004
    );
  Mmux_S291 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y80",
      INIT => X"FCF030F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => B_6_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_6_IBUF_0,
      O => S_6_OBUF_603
    );
  G_10_OBUF_G_10_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_10_OBUF_610,
      O => S_10_OBUF_0
    );
  Mmux_G21 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y82",
      INIT => X"E2AAE2AAE2AAE2AA"
    )
    port map (
      ADR4 => '1',
      ADR0 => B_10_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR2 => A_10_IBUF_0,
      ADR5 => '1',
      O => G_10_OBUF_879
    );
  Mmux_S21 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y82",
      INIT => X"B8F0B8F0"
    )
    port map (
      ADR4 => '1',
      ADR0 => B_10_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR2 => A_10_IBUF_0,
      O => S_10_OBUF_610
    );
  G_11_OBUF_G_11_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_11_OBUF_616,
      O => S_11_OBUF_0
    );
  G_11_OBUF_G_11_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_12_OBUF_622,
      O => S_12_OBUF_0
    );
  Mmux_G31 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"FCCC0CCCFCCC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_11_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR4 => A_11_IBUF_0,
      ADR5 => '1',
      O => G_11_OBUF_883
    );
  Mmux_S31 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"CFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_11_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR4 => A_11_IBUF_0,
      O => S_11_OBUF_616
    );
  Mmux_G41 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"EC4CEC4CEC4CEC4C"
    )
    port map (
      ADR4 => '1',
      ADR1 => B_12_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_12_IBUF_0,
      ADR5 => '1',
      O => G_12_OBUF_887
    );
  Mmux_S41 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"DF80DF80"
    )
    port map (
      ADR4 => '1',
      ADR1 => B_12_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_12_IBUF_0,
      O => S_12_OBUF_622
    );
  G_15_OBUF_G_15_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_15_OBUF_631,
      O => S_15_OBUF_0
    );
  Mmux_G71 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"EC4CEC4CEC4CEC4C"
    )
    port map (
      ADR4 => '1',
      ADR1 => B_15_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_15_IBUF_0,
      ADR5 => '1',
      O => G_15_OBUF_984
    );
  Mmux_S71 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"DF80DF80"
    )
    port map (
      ADR4 => '1',
      ADR1 => B_15_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_15_IBUF_0,
      O => S_15_OBUF_631
    );
  G_29_OBUF_G_29_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_29_OBUF_638,
      O => S_29_OBUF_0
    );
  Mmux_G221 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y91",
      INIT => X"FC0CCCCCFC0CCCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_29_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_29_IBUF_0,
      ADR5 => '1',
      O => G_29_OBUF_1012
    );
  Mmux_S221 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y91",
      INIT => X"CFC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => B_29_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR3 => A_29_IBUF_0,
      O => S_29_OBUF_638
    );
  G_27_OBUF_G_27_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_27_OBUF_645,
      O => S_27_OBUF_0
    );
  Mmux_G201 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y93",
      INIT => X"EECC44CCEECC44CC"
    )
    port map (
      ADR2 => '1',
      ADR1 => B_27_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_27_IBUF_0,
      ADR5 => '1',
      O => G_27_OBUF_1006
    );
  Mmux_S201 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y93",
      INIT => X"DDFF8800"
    )
    port map (
      ADR2 => '1',
      ADR1 => B_27_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_27_IBUF_0,
      O => S_27_OBUF_645
    );
  G_4_OBUF_G_4_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_4_OBUF_651,
      O => S_4_OBUF_0
    );
  G_4_OBUF_G_4_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_5_OBUF_657,
      O => S_5_OBUF_0
    );
  Mmux_G271 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y78",
      INIT => X"F7F78080F7F78080"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_4_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_4_IBUF_0,
      ADR5 => '1',
      O => G_4_OBUF_994
    );
  Mmux_S271 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y78",
      INIT => X"F8F87070"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_4_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR1 => MAN_COMP_COUT,
      ADR2 => A_4_IBUF_0,
      O => S_4_OBUF_651
    );
  Mmux_G281 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y78",
      INIT => X"AAF0F0F0AAF0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => B_5_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR0 => A_5_IBUF_0,
      ADR5 => '1',
      O => G_5_OBUF_1000
    );
  Mmux_S281 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y78",
      INIT => X"F0AAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR2 => B_5_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR0 => A_5_IBUF_0,
      O => S_5_OBUF_657
    );
  G_22_OBUF_G_22_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_22_OBUF_665,
      O => S_22_OBUF_0
    );
  G_22_OBUF_G_22_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_21_OBUF_671,
      O => S_21_OBUF_0
    );
  Mmux_G151 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"FF887700FF887700"
    )
    port map (
      ADR2 => '1',
      ADR3 => B_22_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_22_IBUF_0,
      ADR5 => '1',
      O => G_22_OBUF_963
    );
  Mmux_S151 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"FF778800"
    )
    port map (
      ADR2 => '1',
      ADR3 => B_22_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR4 => A_22_IBUF_0,
      O => S_22_OBUF_665
    );
  Mmux_G141 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"FC30F0F0FC30F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => B_21_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR3 => A_21_IBUF_0,
      ADR5 => '1',
      O => G_21_OBUF_925
    );
  Mmux_S141 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y80",
      INIT => X"F3C0FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => B_21_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR3 => A_21_IBUF_0,
      O => S_21_OBUF_671
    );
  G_13_OBUF_G_13_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_13_OBUF_680,
      O => S_13_OBUF_0
    );
  Mmux_G51 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y83",
      INIT => X"BFBF8080BFBF8080"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_13_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR0 => A_13_IBUF_0,
      ADR5 => '1',
      O => G_13_OBUF_924
    );
  Mmux_S51 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y83",
      INIT => X"EAEA2A2A"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_13_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR0 => A_13_IBUF_0,
      O => S_13_OBUF_680
    );
  G_19_OBUF_G_19_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_19_OBUF_687,
      O => S_19_OBUF_0
    );
  Mmux_G111 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"CACAAAAACACAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR0 => B_19_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_19_IBUF_0,
      ADR5 => '1',
      O => G_19_OBUF_1005
    );
  Mmux_S111 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"ACACCCCC"
    )
    port map (
      ADR3 => '1',
      ADR0 => B_19_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_19_IBUF_0,
      O => S_19_OBUF_687
    );
  G_16_OBUF_G_16_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_16_OBUF_694,
      O => S_16_OBUF_0
    );
  G_16_OBUF_G_16_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_18_OBUF_700,
      O => S_18_OBUF_0
    );
  G_16_OBUF_G_16_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_17_OBUF_706,
      O => S_17_OBUF_0
    );
  Mmux_G81 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"DD88FF00DD88FF00"
    )
    port map (
      ADR2 => '1',
      ADR3 => B_16_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR1 => A_16_IBUF_0,
      ADR5 => '1',
      O => G_16_OBUF_990
    );
  Mmux_S81 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"EE44CCCC"
    )
    port map (
      ADR2 => '1',
      ADR3 => B_16_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR1 => A_16_IBUF_0,
      O => S_16_OBUF_694
    );
  Mmux_G101 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"AFA0FF00AFA0FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => B_18_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR0 => A_18_IBUF_0,
      ADR5 => '1',
      O => G_18_OBUF_1001
    );
  Mmux_S101 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"FA0AAAAA"
    )
    port map (
      ADR1 => '1',
      ADR3 => B_18_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR0 => A_18_IBUF_0,
      O => S_18_OBUF_700
    );
  Mmux_G91 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"FAF050F0FAF050F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => B_17_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR4 => A_17_IBUF_0,
      ADR5 => '1',
      O => G_17_OBUF_995
    );
  Mmux_S91 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y85",
      INIT => X"F5FFA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => B_17_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR3 => MAN_COMP_COUT,
      ADR4 => A_17_IBUF_0,
      O => S_17_OBUF_706
    );
  G_20_OBUF_G_20_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_20_OBUF_715,
      O => S_20_OBUF_0
    );
  Mmux_G131 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y86",
      INIT => X"F870F870F870F870"
    )
    port map (
      ADR4 => '1',
      ADR2 => B_20_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR3 => A_20_IBUF_0,
      ADR5 => '1',
      O => G_20_OBUF_888
    );
  Mmux_S131 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y86",
      INIT => X"F780F780"
    )
    port map (
      ADR4 => '1',
      ADR2 => B_20_IBUF_0,
      ADR1 => EXP_COMP_COUT,
      ADR0 => MAN_COMP_COUT,
      ADR3 => A_20_IBUF_0,
      O => S_20_OBUF_715
    );
  G_28_OBUF_G_28_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_28_OBUF_722,
      O => S_28_OBUF_0
    );
  Mmux_G211 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"CCF0F0F0CCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => B_28_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR1 => A_28_IBUF_0,
      ADR5 => '1',
      O => G_28_OBUF_1008
    );
  Mmux_S211 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"F0CCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => B_28_IBUF_0,
      ADR3 => EXP_COMP_COUT,
      ADR4 => MAN_COMP_COUT,
      ADR1 => A_28_IBUF_0,
      O => S_28_OBUF_722
    );
  G_26_OBUF_G_26_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_26_OBUF_729,
      O => S_26_OBUF_0
    );
  Mmux_G191 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y96",
      INIT => X"DFDF8080DFDF8080"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_26_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_26_IBUF_0,
      ADR5 => '1',
      O => G_26_OBUF_1002
    );
  Mmux_S191 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y96",
      INIT => X"ECEC4C4C"
    )
    port map (
      ADR3 => '1',
      ADR4 => B_26_IBUF_0,
      ADR0 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_26_IBUF_0,
      O => S_26_OBUF_729
    );
  G_23_OBUF_G_23_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_23_OBUF_736,
      O => S_23_OBUF_0
    );
  Mmux_G161 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y97",
      INIT => X"CFC0FF00CFC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => B_23_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_23_IBUF_0,
      ADR5 => '1',
      O => G_23_OBUF_985
    );
  Mmux_S161 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y97",
      INIT => X"FC0CCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => B_23_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR2 => MAN_COMP_COUT,
      ADR1 => A_23_IBUF_0,
      O => S_23_OBUF_736
    );
  NlwBufferBlock_S_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_31_OBUF_0,
      O => NlwBufferSignal_S_31_OBUF_I
    );
  NlwBufferBlock_G_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_10_OBUF_879,
      O => NlwBufferSignal_G_10_OBUF_I
    );
  NlwBufferBlock_S_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_OBUF_0,
      O => NlwBufferSignal_S_0_OBUF_I
    );
  NlwBufferBlock_S_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_16_OBUF_0,
      O => NlwBufferSignal_S_16_OBUF_I
    );
  NlwBufferBlock_S_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_24_OBUF_0,
      O => NlwBufferSignal_S_24_OBUF_I
    );
  NlwBufferBlock_G_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_11_OBUF_883,
      O => NlwBufferSignal_G_11_OBUF_I
    );
  NlwBufferBlock_S_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_OBUF_0,
      O => NlwBufferSignal_S_1_OBUF_I
    );
  NlwBufferBlock_S_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_17_OBUF_0,
      O => NlwBufferSignal_S_17_OBUF_I
    );
  NlwBufferBlock_S_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_25_OBUF_0,
      O => NlwBufferSignal_S_25_OBUF_I
    );
  NlwBufferBlock_G_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_12_OBUF_887,
      O => NlwBufferSignal_G_12_OBUF_I
    );
  NlwBufferBlock_G_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_20_OBUF_888,
      O => NlwBufferSignal_G_20_OBUF_I
    );
  NlwBufferBlock_S_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_2_OBUF_0,
      O => NlwBufferSignal_S_2_OBUF_I
    );
  NlwBufferBlock_S_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_18_OBUF_0,
      O => NlwBufferSignal_S_18_OBUF_I
    );
  NlwBufferBlock_S_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_26_OBUF_0,
      O => NlwBufferSignal_S_26_OBUF_I
    );
  NlwBufferBlock_G_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_0_OBUF_912,
      O => NlwBufferSignal_G_0_OBUF_I
    );
  NlwBufferBlock_G_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_13_OBUF_924,
      O => NlwBufferSignal_G_13_OBUF_I
    );
  NlwBufferBlock_G_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_21_OBUF_925,
      O => NlwBufferSignal_G_21_OBUF_I
    );
  NlwBufferBlock_S_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_3_OBUF_0,
      O => NlwBufferSignal_S_3_OBUF_I
    );
  NlwBufferBlock_S_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_19_OBUF_0,
      O => NlwBufferSignal_S_19_OBUF_I
    );
  NlwBufferBlock_S_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_27_OBUF_0,
      O => NlwBufferSignal_S_27_OBUF_I
    );
  NlwBufferBlock_G_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_1_OBUF_959,
      O => NlwBufferSignal_G_1_OBUF_I
    );
  NlwBufferBlock_G_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_14_OBUF_960,
      O => NlwBufferSignal_G_14_OBUF_I
    );
  NlwBufferBlock_G_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_22_OBUF_963,
      O => NlwBufferSignal_G_22_OBUF_I
    );
  NlwBufferBlock_G_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_30_OBUF_968,
      O => NlwBufferSignal_G_30_OBUF_I
    );
  NlwBufferBlock_S_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_4_OBUF_0,
      O => NlwBufferSignal_S_4_OBUF_I
    );
  NlwBufferBlock_S_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_28_OBUF_0,
      O => NlwBufferSignal_S_28_OBUF_I
    );
  NlwBufferBlock_G_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_2_OBUF_983,
      O => NlwBufferSignal_G_2_OBUF_I
    );
  NlwBufferBlock_G_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_15_OBUF_984,
      O => NlwBufferSignal_G_15_OBUF_I
    );
  NlwBufferBlock_G_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_23_OBUF_985,
      O => NlwBufferSignal_G_23_OBUF_I
    );
  NlwBufferBlock_G_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_31_OBUF_986,
      O => NlwBufferSignal_G_31_OBUF_I
    );
  NlwBufferBlock_S_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_5_OBUF_0,
      O => NlwBufferSignal_S_5_OBUF_I
    );
  NlwBufferBlock_S_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_29_OBUF_0,
      O => NlwBufferSignal_S_29_OBUF_I
    );
  NlwBufferBlock_G_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_3_OBUF_989,
      O => NlwBufferSignal_G_3_OBUF_I
    );
  NlwBufferBlock_G_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_16_OBUF_990,
      O => NlwBufferSignal_G_16_OBUF_I
    );
  NlwBufferBlock_G_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_24_OBUF_991,
      O => NlwBufferSignal_G_24_OBUF_I
    );
  NlwBufferBlock_S_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_6_OBUF_0,
      O => NlwBufferSignal_S_6_OBUF_I
    );
  NlwBufferBlock_G_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_4_OBUF_994,
      O => NlwBufferSignal_G_4_OBUF_I
    );
  NlwBufferBlock_G_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_17_OBUF_995,
      O => NlwBufferSignal_G_17_OBUF_I
    );
  NlwBufferBlock_G_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_25_OBUF_996,
      O => NlwBufferSignal_G_25_OBUF_I
    );
  NlwBufferBlock_S_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_7_OBUF_0,
      O => NlwBufferSignal_S_7_OBUF_I
    );
  NlwBufferBlock_G_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_5_OBUF_1000,
      O => NlwBufferSignal_G_5_OBUF_I
    );
  NlwBufferBlock_G_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_18_OBUF_1001,
      O => NlwBufferSignal_G_18_OBUF_I
    );
  NlwBufferBlock_G_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_26_OBUF_1002,
      O => NlwBufferSignal_G_26_OBUF_I
    );
  NlwBufferBlock_S_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_8_OBUF_0,
      O => NlwBufferSignal_S_8_OBUF_I
    );
  NlwBufferBlock_G_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_6_OBUF_1004,
      O => NlwBufferSignal_G_6_OBUF_I
    );
  NlwBufferBlock_G_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_19_OBUF_1005,
      O => NlwBufferSignal_G_19_OBUF_I
    );
  NlwBufferBlock_G_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_27_OBUF_1006,
      O => NlwBufferSignal_G_27_OBUF_I
    );
  NlwBufferBlock_S_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_9_OBUF_0,
      O => NlwBufferSignal_S_9_OBUF_I
    );
  NlwBufferBlock_G_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_7_OBUF_1007,
      O => NlwBufferSignal_G_7_OBUF_I
    );
  NlwBufferBlock_G_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_28_OBUF_1008,
      O => NlwBufferSignal_G_28_OBUF_I
    );
  NlwBufferBlock_G_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_8_OBUF_1011,
      O => NlwBufferSignal_G_8_OBUF_I
    );
  NlwBufferBlock_G_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_29_OBUF_1012,
      O => NlwBufferSignal_G_29_OBUF_I
    );
  NlwBufferBlock_G_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_9_OBUF_944,
      O => NlwBufferSignal_G_9_OBUF_I
    );
  NlwBufferBlock_DIFF_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_0_OBUF_958,
      O => NlwBufferSignal_DIFF_0_OBUF_I
    );
  NlwBufferBlock_DIFF_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_1_OBUF_0,
      O => NlwBufferSignal_DIFF_1_OBUF_I
    );
  NlwBufferBlock_DIFF_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_2_OBUF_955,
      O => NlwBufferSignal_DIFF_2_OBUF_I
    );
  NlwBufferBlock_DIFF_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_3_OBUF_890,
      O => NlwBufferSignal_DIFF_3_OBUF_I
    );
  NlwBufferBlock_DIFF_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_4_OBUF_0,
      O => NlwBufferSignal_DIFF_4_OBUF_I
    );
  NlwBufferBlock_DIFF_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_5_OBUF_948,
      O => NlwBufferSignal_DIFF_5_OBUF_I
    );
  NlwBufferBlock_DIFF_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_6_OBUF_980,
      O => NlwBufferSignal_DIFF_6_OBUF_I
    );
  NlwBufferBlock_DIFF_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_7_OBUF_964,
      O => NlwBufferSignal_DIFF_7_OBUF_I
    );
  NlwBufferBlock_S_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_10_OBUF_0,
      O => NlwBufferSignal_S_10_OBUF_I
    );
  NlwBufferBlock_S_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_11_OBUF_0,
      O => NlwBufferSignal_S_11_OBUF_I
    );
  NlwBufferBlock_S_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_12_OBUF_0,
      O => NlwBufferSignal_S_12_OBUF_I
    );
  NlwBufferBlock_S_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_20_OBUF_0,
      O => NlwBufferSignal_S_20_OBUF_I
    );
  NlwBufferBlock_S_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_13_OBUF_0,
      O => NlwBufferSignal_S_13_OBUF_I
    );
  NlwBufferBlock_S_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_21_OBUF_0,
      O => NlwBufferSignal_S_21_OBUF_I
    );
  NlwBufferBlock_S_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_14_OBUF_0,
      O => NlwBufferSignal_S_14_OBUF_I
    );
  NlwBufferBlock_S_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_22_OBUF_0,
      O => NlwBufferSignal_S_22_OBUF_I
    );
  NlwBufferBlock_S_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_30_OBUF_0,
      O => NlwBufferSignal_S_30_OBUF_I
    );
  NlwBufferBlock_S_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_15_OBUF_0,
      O => NlwBufferSignal_S_15_OBUF_I
    );
  NlwBufferBlock_S_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_23_OBUF_0,
      O => NlwBufferSignal_S_23_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

