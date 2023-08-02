--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SWAPPER_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug  2 15:42:28 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf SWAPPER.pcf -rpw 100 -tpw 0 -ar Structure -tm SWAPPER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim SWAPPER.ncd SWAPPER_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: SWAPPER.ncd
-- Output file	: /home/domenico/Scrivania/prog/PFRL_SOMMATORE_IEEE754/netgen/par/SWAPPER_timesim.vhd
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
  signal S_23_OBUF_0 : STD_LOGIC; 
  signal S_31_OBUF_0 : STD_LOGIC; 
  signal G_10_OBUF_861 : STD_LOGIC; 
  signal S_0_OBUF_0 : STD_LOGIC; 
  signal S_16_OBUF_0 : STD_LOGIC; 
  signal S_24_OBUF_0 : STD_LOGIC; 
  signal G_11_OBUF_865 : STD_LOGIC; 
  signal S_1_OBUF_0 : STD_LOGIC; 
  signal S_17_OBUF_0 : STD_LOGIC; 
  signal S_25_OBUF_0 : STD_LOGIC; 
  signal G_12_OBUF_869 : STD_LOGIC; 
  signal G_20_OBUF_870 : STD_LOGIC; 
  signal A_29_IBUF_0 : STD_LOGIC; 
  signal B_29_IBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd2 : STD_LOGIC; 
  signal S_2_OBUF_0 : STD_LOGIC; 
  signal DIFF_3_OBUF_876 : STD_LOGIC; 
  signal EXP_COMP_COUT : STD_LOGIC; 
  signal EXP_COMP_S_3_0 : STD_LOGIC; 
  signal B_23_IBUF_0 : STD_LOGIC; 
  signal A_23_IBUF_0 : STD_LOGIC; 
  signal EXP_COMP_S_1_0 : STD_LOGIC; 
  signal A_10_IBUF_0 : STD_LOGIC; 
  signal S_18_OBUF_0 : STD_LOGIC; 
  signal S_26_OBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o9_886 : STD_LOGIC; 
  signal B_2_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_0 : STD_LOGIC; 
  signal B_1_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal B_0_IBUF_0 : STD_LOGIC; 
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal G_0_OBUF_893 : STD_LOGIC; 
  signal DIFF_5_OBUF_894 : STD_LOGIC; 
  signal EXP_COMP_S_5_0 : STD_LOGIC; 
  signal A_27_IBUF_0 : STD_LOGIC; 
  signal B_27_IBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd6 : STD_LOGIC; 
  signal EXP_COMP_U3_GEN_4_U_Z1_899 : STD_LOGIC; 
  signal G_13_OBUF_900 : STD_LOGIC; 
  signal DIFF_2_OBUF_901 : STD_LOGIC; 
  signal A_25_IBUF_0 : STD_LOGIC; 
  signal B_25_IBUF_0 : STD_LOGIC; 
  signal EXP_COMP_U1_C_8_bdd10 : STD_LOGIC; 
  signal DIFF_0_OBUF_905 : STD_LOGIC; 
  signal G_21_OBUF_906 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o2_907 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o1_908 : STD_LOGIC; 
  signal DIFF_6_OBUF_909 : STD_LOGIC; 
  signal DIFF_7_OBUF_910 : STD_LOGIC; 
  signal EXP_COMP_S_7_0 : STD_LOGIC; 
  signal S_3_OBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o11_914 : STD_LOGIC; 
  signal B_7_IBUF_0 : STD_LOGIC; 
  signal A_7_IBUF_0 : STD_LOGIC; 
  signal B_6_IBUF_0 : STD_LOGIC; 
  signal A_6_IBUF_0 : STD_LOGIC; 
  signal B_4_IBUF_0 : STD_LOGIC; 
  signal A_4_IBUF_0 : STD_LOGIC; 
  signal B_3_IBUF_0 : STD_LOGIC; 
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal A_11_IBUF_0 : STD_LOGIC; 
  signal S_19_OBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o13_925 : STD_LOGIC; 
  signal B_12_IBUF_0 : STD_LOGIC; 
  signal A_12_IBUF_0 : STD_LOGIC; 
  signal B_11_IBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o5_929 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o6_0 : STD_LOGIC; 
  signal B_9_IBUF_0 : STD_LOGIC; 
  signal A_9_IBUF_0 : STD_LOGIC; 
  signal B_8_IBUF_0 : STD_LOGIC; 
  signal A_8_IBUF_0 : STD_LOGIC; 
  signal S_27_OBUF_0 : STD_LOGIC; 
  signal G_1_OBUF_936 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o15_937 : STD_LOGIC; 
  signal B_17_IBUF_0 : STD_LOGIC; 
  signal A_17_IBUF_0 : STD_LOGIC; 
  signal B_16_IBUF_0 : STD_LOGIC; 
  signal A_16_IBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o3_942 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o4_0 : STD_LOGIC; 
  signal B_14_IBUF_0 : STD_LOGIC; 
  signal A_14_IBUF_0 : STD_LOGIC; 
  signal B_13_IBUF_0 : STD_LOGIC; 
  signal A_13_IBUF_0 : STD_LOGIC; 
  signal G_14_OBUF_948 : STD_LOGIC; 
  signal A_24_IBUF_0 : STD_LOGIC; 
  signal B_24_IBUF_0 : STD_LOGIC; 
  signal G_22_OBUF_951 : STD_LOGIC; 
  signal G_30_OBUF_952 : STD_LOGIC; 
  signal S_4_OBUF_0 : STD_LOGIC; 
  signal B_21_IBUF_0 : STD_LOGIC; 
  signal A_20_IBUF_0 : STD_LOGIC; 
  signal B_20_IBUF_0 : STD_LOGIC; 
  signal A_21_IBUF_0 : STD_LOGIC; 
  signal B_19_IBUF_0 : STD_LOGIC; 
  signal A_18_IBUF_0 : STD_LOGIC; 
  signal B_18_IBUF_0 : STD_LOGIC; 
  signal A_19_IBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o : STD_LOGIC; 
  signal B_22_IBUF_0 : STD_LOGIC; 
  signal A_22_IBUF_0 : STD_LOGIC; 
  signal G_9_OBUF_965 : STD_LOGIC; 
  signal S_9_OBUF_0 : STD_LOGIC; 
  signal S_28_OBUF_0 : STD_LOGIC; 
  signal G_2_OBUF_969 : STD_LOGIC; 
  signal G_15_OBUF_970 : STD_LOGIC; 
  signal G_23_OBUF_971 : STD_LOGIC; 
  signal G_31_OBUF_972 : STD_LOGIC; 
  signal S_5_OBUF_0 : STD_LOGIC; 
  signal S_29_OBUF_0 : STD_LOGIC; 
  signal G_3_OBUF_975 : STD_LOGIC; 
  signal G_16_OBUF_976 : STD_LOGIC; 
  signal G_24_OBUF_977 : STD_LOGIC; 
  signal S_6_OBUF_0 : STD_LOGIC; 
  signal A_30_IBUF_0 : STD_LOGIC; 
  signal G_4_OBUF_980 : STD_LOGIC; 
  signal G_17_OBUF_981 : STD_LOGIC; 
  signal G_25_OBUF_982 : STD_LOGIC; 
  signal S_7_OBUF_0 : STD_LOGIC; 
  signal A_15_IBUF_0 : STD_LOGIC; 
  signal A_31_IBUF_0 : STD_LOGIC; 
  signal G_5_OBUF_986 : STD_LOGIC; 
  signal G_18_OBUF_987 : STD_LOGIC; 
  signal G_26_OBUF_988 : STD_LOGIC; 
  signal S_8_OBUF_0 : STD_LOGIC; 
  signal G_6_OBUF_990 : STD_LOGIC; 
  signal G_19_OBUF_991 : STD_LOGIC; 
  signal G_27_OBUF_992 : STD_LOGIC; 
  signal G_7_OBUF_993 : STD_LOGIC; 
  signal G_28_OBUF_994 : STD_LOGIC; 
  signal B_10_IBUF_0 : STD_LOGIC; 
  signal A_26_IBUF_0 : STD_LOGIC; 
  signal G_8_OBUF_997 : STD_LOGIC; 
  signal G_29_OBUF_998 : STD_LOGIC; 
  signal A_28_IBUF_0 : STD_LOGIC; 
  signal B_30_IBUF_0 : STD_LOGIC; 
  signal DIFF_1_OBUF_0 : STD_LOGIC; 
  signal B_15_IBUF_0 : STD_LOGIC; 
  signal B_31_IBUF_0 : STD_LOGIC; 
  signal DIFF_4_OBUF_1004 : STD_LOGIC; 
  signal B_26_IBUF_0 : STD_LOGIC; 
  signal B_28_IBUF_0 : STD_LOGIC; 
  signal S_20_OBUF_0 : STD_LOGIC; 
  signal S_10_OBUF_0 : STD_LOGIC; 
  signal A_5_IBUF_0 : STD_LOGIC; 
  signal B_5_IBUF_0 : STD_LOGIC; 
  signal S_15_OBUF_0 : STD_LOGIC; 
  signal S_11_OBUF_0 : STD_LOGIC; 
  signal S_21_OBUF_0 : STD_LOGIC; 
  signal S_12_OBUF_0 : STD_LOGIC; 
  signal S_13_OBUF_0 : STD_LOGIC; 
  signal S_22_OBUF_0 : STD_LOGIC; 
  signal S_30_OBUF_0 : STD_LOGIC; 
  signal S_14_OBUF_0 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o12_1019 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o14_1020 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o17_1021 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o16_1022 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o7_1023 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o8_1024 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o10_1025 : STD_LOGIC; 
  signal A_10_IBUF_27 : STD_LOGIC; 
  signal A_11_IBUF_42 : STD_LOGIC; 
  signal A_12_IBUF_59 : STD_LOGIC; 
  signal A_20_IBUF_62 : STD_LOGIC; 
  signal A_13_IBUF_77 : STD_LOGIC; 
  signal A_21_IBUF_80 : STD_LOGIC; 
  signal A_14_IBUF_93 : STD_LOGIC; 
  signal A_22_IBUF_96 : STD_LOGIC; 
  signal A_30_IBUF_99 : STD_LOGIC; 
  signal A_15_IBUF_110 : STD_LOGIC; 
  signal A_23_IBUF_113 : STD_LOGIC; 
  signal A_31_IBUF_116 : STD_LOGIC; 
  signal A_16_IBUF_127 : STD_LOGIC; 
  signal A_24_IBUF_130 : STD_LOGIC; 
  signal A_17_IBUF_141 : STD_LOGIC; 
  signal A_25_IBUF_144 : STD_LOGIC; 
  signal B_10_IBUF_151 : STD_LOGIC; 
  signal A_18_IBUF_154 : STD_LOGIC; 
  signal A_26_IBUF_157 : STD_LOGIC; 
  signal B_11_IBUF_164 : STD_LOGIC; 
  signal A_19_IBUF_167 : STD_LOGIC; 
  signal A_27_IBUF_170 : STD_LOGIC; 
  signal B_12_IBUF_175 : STD_LOGIC; 
  signal B_20_IBUF_178 : STD_LOGIC; 
  signal A_28_IBUF_181 : STD_LOGIC; 
  signal B_13_IBUF_184 : STD_LOGIC; 
  signal B_21_IBUF_187 : STD_LOGIC; 
  signal A_29_IBUF_190 : STD_LOGIC; 
  signal B_14_IBUF_195 : STD_LOGIC; 
  signal B_22_IBUF_198 : STD_LOGIC; 
  signal B_30_IBUF_201 : STD_LOGIC; 
  signal B_15_IBUF_206 : STD_LOGIC; 
  signal B_23_IBUF_209 : STD_LOGIC; 
  signal B_31_IBUF_212 : STD_LOGIC; 
  signal B_16_IBUF_217 : STD_LOGIC; 
  signal B_24_IBUF_220 : STD_LOGIC; 
  signal B_17_IBUF_225 : STD_LOGIC; 
  signal B_25_IBUF_228 : STD_LOGIC; 
  signal B_18_IBUF_233 : STD_LOGIC; 
  signal B_26_IBUF_236 : STD_LOGIC; 
  signal B_19_IBUF_241 : STD_LOGIC; 
  signal B_27_IBUF_244 : STD_LOGIC; 
  signal B_28_IBUF_249 : STD_LOGIC; 
  signal B_29_IBUF_254 : STD_LOGIC; 
  signal A_0_IBUF_257 : STD_LOGIC; 
  signal A_1_IBUF_260 : STD_LOGIC; 
  signal A_2_IBUF_263 : STD_LOGIC; 
  signal A_3_IBUF_266 : STD_LOGIC; 
  signal B_0_IBUF_269 : STD_LOGIC; 
  signal A_4_IBUF_272 : STD_LOGIC; 
  signal B_1_IBUF_275 : STD_LOGIC; 
  signal A_5_IBUF_278 : STD_LOGIC; 
  signal B_2_IBUF_281 : STD_LOGIC; 
  signal A_6_IBUF_284 : STD_LOGIC; 
  signal B_3_IBUF_287 : STD_LOGIC; 
  signal A_7_IBUF_290 : STD_LOGIC; 
  signal B_4_IBUF_293 : STD_LOGIC; 
  signal A_8_IBUF_296 : STD_LOGIC; 
  signal B_5_IBUF_299 : STD_LOGIC; 
  signal A_9_IBUF_302 : STD_LOGIC; 
  signal B_6_IBUF_305 : STD_LOGIC; 
  signal B_7_IBUF_308 : STD_LOGIC; 
  signal B_8_IBUF_311 : STD_LOGIC; 
  signal B_9_IBUF_314 : STD_LOGIC; 
  signal S_31_OBUF_337 : STD_LOGIC; 
  signal DIFF_1_OBUF_378 : STD_LOGIC; 
  signal DIFF_4_OBUF_pack_5 : STD_LOGIC; 
  signal S_30_OBUF_452 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o6_476 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o4_481 : STD_LOGIC; 
  signal S_9_OBUF_511 : STD_LOGIC; 
  signal ExpComp_ExpComp_OR_11_o8_pack_1 : STD_LOGIC; 
  signal S_0_OBUF_550 : STD_LOGIC; 
  signal S_11_OBUF_556 : STD_LOGIC; 
  signal S_21_OBUF_567 : STD_LOGIC; 
  signal S_12_OBUF_562 : STD_LOGIC; 
  signal S_28_OBUF_574 : STD_LOGIC; 
  signal S_29_OBUF_580 : STD_LOGIC; 
  signal S_7_OBUF_596 : STD_LOGIC; 
  signal S_6_OBUF_591 : STD_LOGIC; 
  signal S_5_OBUF_586 : STD_LOGIC; 
  signal S_4_OBUF_609 : STD_LOGIC; 
  signal S_3_OBUF_604 : STD_LOGIC; 
  signal S_1_OBUF_616 : STD_LOGIC; 
  signal S_8_OBUF_622 : STD_LOGIC; 
  signal S_10_OBUF_633 : STD_LOGIC; 
  signal S_14_OBUF_628 : STD_LOGIC; 
  signal S_13_OBUF_650 : STD_LOGIC; 
  signal S_17_OBUF_645 : STD_LOGIC; 
  signal S_15_OBUF_640 : STD_LOGIC; 
  signal S_19_OBUF_658 : STD_LOGIC; 
  signal S_27_OBUF_664 : STD_LOGIC; 
  signal S_23_OBUF_670 : STD_LOGIC; 
  signal S_2_OBUF_676 : STD_LOGIC; 
  signal S_26_OBUF_687 : STD_LOGIC; 
  signal S_16_OBUF_682 : STD_LOGIC; 
  signal S_22_OBUF_694 : STD_LOGIC; 
  signal S_18_OBUF_705 : STD_LOGIC; 
  signal S_20_OBUF_700 : STD_LOGIC; 
  signal S_25_OBUF_717 : STD_LOGIC; 
  signal S_24_OBUF_712 : STD_LOGIC; 
  signal NlwBufferSignal_S_23_OBUF_I : STD_LOGIC; 
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
  signal EXP_COMP_S : STD_LOGIC_VECTOR ( 7 downto 1 ); 
begin
  S_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_S_23_OBUF_I,
      O => S(23)
    );
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
      LOC => "PAD144"
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
      LOC => "PAD150"
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
      O => A_10_IBUF_27,
      I => A(10)
    );
  ProtoComp3_IMUX : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_10_IBUF_27,
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
      LOC => "PAD151"
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
      O => A_11_IBUF_42,
      I => A(11)
    );
  ProtoComp3_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_11_IBUF_42,
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
      LOC => "PAD133"
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
      LOC => "PAD152"
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
      O => A_12_IBUF_59,
      I => A(12)
    );
  ProtoComp3_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_12_IBUF_59,
      O => A_12_IBUF_0
    );
  A_20_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_20_IBUF_62,
      I => A(20)
    );
  ProtoComp3_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_20_IBUF_62,
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
      LOC => "PAD134"
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
      O => A_13_IBUF_77,
      I => A(13)
    );
  ProtoComp3_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_13_IBUF_77,
      O => A_13_IBUF_0
    );
  A_21_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_21_IBUF_80,
      I => A(21)
    );
  ProtoComp3_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_21_IBUF_80,
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
      LOC => "PAD154"
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
      O => A_14_IBUF_93,
      I => A(14)
    );
  ProtoComp3_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_14_IBUF_93,
      O => A_14_IBUF_0
    );
  A_22_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_22_IBUF_96,
      I => A(22)
    );
  ProtoComp3_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_22_IBUF_96,
      O => A_22_IBUF_0
    );
  A_30_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_30_IBUF_99,
      I => A(30)
    );
  ProtoComp3_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_30_IBUF_99,
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
      O => A_15_IBUF_110,
      I => A(15)
    );
  ProtoComp3_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_15_IBUF_110,
      O => A_15_IBUF_0
    );
  A_23_IBUF : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_23_IBUF_113,
      I => A(23)
    );
  ProtoComp3_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_23_IBUF_113,
      O => A_23_IBUF_0
    );
  A_31_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_31_IBUF_116,
      I => A(31)
    );
  ProtoComp3_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_31_IBUF_116,
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
      LOC => "PAD147"
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
      O => A_16_IBUF_127,
      I => A(16)
    );
  ProtoComp3_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_16_IBUF_127,
      O => A_16_IBUF_0
    );
  A_24_IBUF : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_24_IBUF_130,
      I => A(24)
    );
  ProtoComp3_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_24_IBUF_130,
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
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_G_27_OBUF_I,
      O => G(27)
    );
  S_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
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
      O => A_17_IBUF_141,
      I => A(17)
    );
  ProtoComp3_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_17_IBUF_141,
      O => A_17_IBUF_0
    );
  A_25_IBUF : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_25_IBUF_144,
      I => A(25)
    );
  ProtoComp3_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_25_IBUF_144,
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
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_10_IBUF_151,
      I => B(10)
    );
  ProtoComp3_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_10_IBUF_151,
      O => B_10_IBUF_0
    );
  A_18_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_18_IBUF_154,
      I => A(18)
    );
  ProtoComp3_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_18_IBUF_154,
      O => A_18_IBUF_0
    );
  A_26_IBUF : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_26_IBUF_157,
      I => A(26)
    );
  ProtoComp3_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_26_IBUF_157,
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
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_G_29_OBUF_I,
      O => G(29)
    );
  B_11_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_11_IBUF_164,
      I => B(11)
    );
  ProtoComp3_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_11_IBUF_164,
      O => B_11_IBUF_0
    );
  A_19_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_19_IBUF_167,
      I => A(19)
    );
  ProtoComp3_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_19_IBUF_167,
      O => A_19_IBUF_0
    );
  A_27_IBUF : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_27_IBUF_170,
      I => A(27)
    );
  ProtoComp3_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_27_IBUF_170,
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
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_12_IBUF_175,
      I => B(12)
    );
  ProtoComp3_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_12_IBUF_175,
      O => B_12_IBUF_0
    );
  B_20_IBUF : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_20_IBUF_178,
      I => B(20)
    );
  ProtoComp3_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_20_IBUF_178,
      O => B_20_IBUF_0
    );
  A_28_IBUF : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_28_IBUF_181,
      I => A(28)
    );
  ProtoComp3_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_28_IBUF_181,
      O => A_28_IBUF_0
    );
  B_13_IBUF : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_13_IBUF_184,
      I => B(13)
    );
  ProtoComp3_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_13_IBUF_184,
      O => B_13_IBUF_0
    );
  B_21_IBUF : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_21_IBUF_187,
      I => B(21)
    );
  ProtoComp3_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_21_IBUF_187,
      O => B_21_IBUF_0
    );
  A_29_IBUF : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_29_IBUF_190,
      I => A(29)
    );
  ProtoComp3_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_29_IBUF_190,
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
      O => B_14_IBUF_195,
      I => B(14)
    );
  ProtoComp3_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD353",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_14_IBUF_195,
      O => B_14_IBUF_0
    );
  B_22_IBUF : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_22_IBUF_198,
      I => B(22)
    );
  ProtoComp3_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_22_IBUF_198,
      O => B_22_IBUF_0
    );
  B_30_IBUF : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_30_IBUF_201,
      I => B(30)
    );
  ProtoComp3_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_30_IBUF_201,
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
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_15_IBUF_206,
      I => B(15)
    );
  ProtoComp3_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_15_IBUF_206,
      O => B_15_IBUF_0
    );
  B_23_IBUF : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_23_IBUF_209,
      I => B(23)
    );
  ProtoComp3_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_23_IBUF_209,
      O => B_23_IBUF_0
    );
  B_31_IBUF : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_31_IBUF_212,
      I => B(31)
    );
  ProtoComp3_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_31_IBUF_212,
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
      O => B_16_IBUF_217,
      I => B(16)
    );
  ProtoComp3_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD355",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_16_IBUF_217,
      O => B_16_IBUF_0
    );
  B_24_IBUF : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_24_IBUF_220,
      I => B(24)
    );
  ProtoComp3_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_24_IBUF_220,
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
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_17_IBUF_225,
      I => B(17)
    );
  ProtoComp3_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_17_IBUF_225,
      O => B_17_IBUF_0
    );
  B_25_IBUF : X_BUF
    generic map(
      LOC => "PAD364",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_25_IBUF_228,
      I => B(25)
    );
  ProtoComp3_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD364",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_25_IBUF_228,
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
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_18_IBUF_233,
      I => B(18)
    );
  ProtoComp3_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_18_IBUF_233,
      O => B_18_IBUF_0
    );
  B_26_IBUF : X_BUF
    generic map(
      LOC => "PAD365",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_26_IBUF_236,
      I => B(26)
    );
  ProtoComp3_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD365",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_26_IBUF_236,
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
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_19_IBUF_241,
      I => B(19)
    );
  ProtoComp3_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_19_IBUF_241,
      O => B_19_IBUF_0
    );
  B_27_IBUF : X_BUF
    generic map(
      LOC => "PAD366",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_27_IBUF_244,
      I => B(27)
    );
  ProtoComp3_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD366",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_27_IBUF_244,
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
      O => B_28_IBUF_249,
      I => B(28)
    );
  ProtoComp3_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD367",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_28_IBUF_249,
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
      O => B_29_IBUF_254,
      I => B(29)
    );
  ProtoComp3_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD368",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_29_IBUF_254,
      O => B_29_IBUF_0
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_0_IBUF_257,
      I => A(0)
    );
  ProtoComp3_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_0_IBUF_257,
      O => A_0_IBUF_0
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_1_IBUF_260,
      I => A(1)
    );
  ProtoComp3_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_1_IBUF_260,
      O => A_1_IBUF_0
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_2_IBUF_263,
      I => A(2)
    );
  ProtoComp3_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_2_IBUF_263,
      O => A_2_IBUF_0
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_3_IBUF_266,
      I => A(3)
    );
  ProtoComp3_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_3_IBUF_266,
      O => A_3_IBUF_0
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_0_IBUF_269,
      I => B(0)
    );
  ProtoComp3_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_0_IBUF_269,
      O => B_0_IBUF_0
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_4_IBUF_272,
      I => A(4)
    );
  ProtoComp3_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_4_IBUF_272,
      O => A_4_IBUF_0
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_1_IBUF_275,
      I => B(1)
    );
  ProtoComp3_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_1_IBUF_275,
      O => B_1_IBUF_0
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_5_IBUF_278,
      I => A(5)
    );
  ProtoComp3_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_5_IBUF_278,
      O => A_5_IBUF_0
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_2_IBUF_281,
      I => B(2)
    );
  ProtoComp3_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_2_IBUF_281,
      O => B_2_IBUF_0
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_6_IBUF_284,
      I => A(6)
    );
  ProtoComp3_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_6_IBUF_284,
      O => A_6_IBUF_0
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_3_IBUF_287,
      I => B(3)
    );
  ProtoComp3_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_3_IBUF_287,
      O => B_3_IBUF_0
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_7_IBUF_290,
      I => A(7)
    );
  ProtoComp3_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_7_IBUF_290,
      O => A_7_IBUF_0
    );
  B_4_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_4_IBUF_293,
      I => B(4)
    );
  ProtoComp3_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_4_IBUF_293,
      O => B_4_IBUF_0
    );
  A_8_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_8_IBUF_296,
      I => A(8)
    );
  ProtoComp3_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_8_IBUF_296,
      O => A_8_IBUF_0
    );
  B_5_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_5_IBUF_299,
      I => B(5)
    );
  ProtoComp3_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_5_IBUF_299,
      O => B_5_IBUF_0
    );
  A_9_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_9_IBUF_302,
      I => A(9)
    );
  ProtoComp3_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_9_IBUF_302,
      O => A_9_IBUF_0
    );
  B_6_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_6_IBUF_305,
      I => B(6)
    );
  ProtoComp3_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_6_IBUF_305,
      O => B_6_IBUF_0
    );
  B_7_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_7_IBUF_308,
      I => B(7)
    );
  ProtoComp3_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_7_IBUF_308,
      O => B_7_IBUF_0
    );
  B_8_IBUF : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_8_IBUF_311,
      I => B(8)
    );
  ProtoComp3_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_8_IBUF_311,
      O => B_8_IBUF_0
    );
  B_9_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => B_9_IBUF_314,
      I => B(9)
    );
  ProtoComp3_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => B_9_IBUF_314,
      O => B_9_IBUF_0
    );
  S_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_S_10_OBUF_I,
      O => S(10)
    );
  S_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_S_11_OBUF_I,
      O => S(11)
    );
  S_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
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
      LOC => "PAD157"
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
      LOC => "SLICE_X1Y79",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_31_IBUF_0,
      ADR2 => B_31_IBUF_0,
      ADR5 => '1',
      O => G_31_OBUF_972
    );
  Mmux_S251 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_31_IBUF_0,
      ADR2 => B_31_IBUF_0,
      O => S_31_OBUF_337
    );
  EXP_COMP_U1_C_8_bdd10_EXP_COMP_U1_C_8_bdd10_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S(1),
      O => EXP_COMP_S_1_0
    );
  EXP_COMP_U1_C_8_bdd10_EXP_COMP_U1_C_8_bdd10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_COMP_S(3),
      O => EXP_COMP_S_3_0
    );
  EXP_COMP_U1_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y96",
      INIT => X"AF0AAFAFAF0AAFAF"
    )
    port map (
      ADR1 => '1',
      ADR0 => A_24_IBUF_0,
      ADR3 => A_23_IBUF_0,
      ADR4 => B_23_IBUF_0,
      ADR2 => B_24_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd10
    );
  EXP_COMP_U1_S_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y96",
      INIT => X"5AA55A5A"
    )
    port map (
      ADR1 => '1',
      ADR0 => A_24_IBUF_0,
      ADR3 => A_23_IBUF_0,
      ADR4 => B_23_IBUF_0,
      ADR2 => B_24_IBUF_0,
      O => EXP_COMP_S(1)
    );
  EXP_COMP_U1_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y96",
      INIT => X"DF455D04DF455D04"
    )
    port map (
      ADR3 => A_26_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => B_25_IBUF_0,
      ADR1 => A_25_IBUF_0,
      ADR0 => B_26_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd6
    );
  EXP_COMP_U1_S_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y96",
      INIT => X"659AA659"
    )
    port map (
      ADR3 => A_26_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => B_25_IBUF_0,
      ADR1 => A_25_IBUF_0,
      ADR0 => B_26_IBUF_0,
      O => EXP_COMP_S(3)
    );
  EXP_COMP_U3_GEN_6_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y104",
      INIT => X"A5A5A5A5A5A5B4B4"
    )
    port map (
      ADR3 => '1',
      ADR0 => EXP_COMP_COUT,
      ADR2 => EXP_COMP_S(6),
      ADR5 => EXP_COMP_S(4),
      ADR1 => EXP_COMP_S_5_0,
      ADR4 => EXP_COMP_U3_GEN_4_U_Z1_899,
      O => DIFF_6_OBUF_909
    );
  EXP_COMP_U3_GEN_4_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y104",
      INIT => X"FFFFBFFBFFFFEFFE"
    )
    port map (
      ADR2 => B_24_IBUF_0,
      ADR3 => A_24_IBUF_0,
      ADR4 => EXP_COMP_S(2),
      ADR1 => B_23_IBUF_0,
      ADR5 => A_23_IBUF_0,
      ADR0 => EXP_COMP_S_3_0,
      O => EXP_COMP_U3_GEN_4_U_Z1_899
    );
  DIFF_2_OBUF_DIFF_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_1_OBUF_378,
      O => DIFF_1_OBUF_0
    );
  EXP_COMP_U3_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y105",
      INIT => X"6663999C999C6663"
    )
    port map (
      ADR0 => EXP_COMP_COUT,
      ADR4 => A_25_IBUF_0,
      ADR1 => B_25_IBUF_0,
      ADR5 => EXP_COMP_U1_C_8_bdd10,
      ADR2 => DIFF_0_OBUF_905,
      ADR3 => EXP_COMP_S_1_0,
      O => DIFF_2_OBUF_901
    );
  EXP_COMP_U1_GEN_0_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y105",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => A_23_IBUF_0,
      ADR3 => B_23_IBUF_0,
      ADR5 => '1',
      O => DIFF_0_OBUF_905
    );
  EXP_COMP_U3_GEN_1_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y105",
      INIT => X"693C3C96"
    )
    port map (
      ADR1 => A_24_IBUF_0,
      ADR2 => B_24_IBUF_0,
      ADR4 => EXP_COMP_COUT,
      ADR0 => A_23_IBUF_0,
      ADR3 => B_23_IBUF_0,
      O => DIFF_1_OBUF_378
    );
  EXP_COMP_U3_GEN_5_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y103",
      INIT => X"AA55AA55EB14BE41"
    )
    port map (
      ADR0 => EXP_COMP_COUT,
      ADR3 => EXP_COMP_S_5_0,
      ADR1 => A_27_IBUF_0,
      ADR2 => B_27_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd6,
      ADR5 => EXP_COMP_U3_GEN_4_U_Z1_899,
      O => DIFF_5_OBUF_894
    );
  EXP_COMP_S_4_EXP_COMP_S_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_4_OBUF_pack_5,
      O => DIFF_4_OBUF_1004
    );
  EXP_COMP_U1_S_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y104",
      INIT => X"0FF0F00F0FF0F00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => A_27_IBUF_0,
      ADR3 => B_27_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd6,
      ADR5 => '1',
      O => EXP_COMP_S(4)
    );
  EXP_COMP_U3_GEN_4_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y104",
      INIT => X"2DD2D22D"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR0 => EXP_COMP_U3_GEN_4_U_Z1_899,
      ADR2 => A_27_IBUF_0,
      ADR3 => B_27_IBUF_0,
      ADR4 => EXP_COMP_U1_C_8_bdd6,
      O => DIFF_4_OBUF_pack_5
    );
  ExpComp_ExpComp_OR_11_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y104",
      INIT => X"0021000000210021"
    )
    port map (
      ADR0 => A_23_IBUF_0,
      ADR2 => B_23_IBUF_0,
      ADR1 => EXP_COMP_S_1_0,
      ADR3 => DIFF_4_OBUF_1004,
      ADR5 => A_22_IBUF_0,
      ADR4 => B_22_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o1_908
    );
  EXP_COMP_U3_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y104",
      INIT => X"CC33CC33CC33ED12"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR3 => EXP_COMP_S_3_0,
      ADR5 => EXP_COMP_S(2),
      ADR2 => B_23_IBUF_0,
      ADR0 => A_23_IBUF_0,
      ADR4 => EXP_COMP_S_1_0,
      O => DIFF_3_OBUF_876
    );
  EXP_COMP_U1_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y105",
      INIT => X"55AA956AA55AA956"
    )
    port map (
      ADR3 => A_25_IBUF_0,
      ADR0 => B_25_IBUF_0,
      ADR5 => A_24_IBUF_0,
      ADR4 => A_23_IBUF_0,
      ADR1 => B_23_IBUF_0,
      ADR2 => B_24_IBUF_0,
      O => EXP_COMP_S(2)
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
      I => EXP_COMP_S(5),
      O => EXP_COMP_S_5_0
    );
  EXP_COMP_U1_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y93",
      INIT => X"8C08EFCE8C08EFCE"
    )
    port map (
      ADR1 => A_30_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd2,
      ADR2 => B_29_IBUF_0,
      ADR0 => A_29_IBUF_0,
      ADR4 => B_30_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_COUT
    );
  EXP_COMP_U1_S_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y93",
      INIT => X"63C69C39"
    )
    port map (
      ADR1 => A_30_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd2,
      ADR2 => B_29_IBUF_0,
      ADR0 => A_29_IBUF_0,
      ADR4 => B_30_IBUF_0,
      O => EXP_COMP_S(7)
    );
  EXP_COMP_U1_C_8_21 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y93",
      INIT => X"DF5D4504DF5D4504"
    )
    port map (
      ADR4 => A_28_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd6,
      ADR2 => B_27_IBUF_0,
      ADR1 => A_27_IBUF_0,
      ADR0 => B_28_IBUF_0,
      ADR5 => '1',
      O => EXP_COMP_U1_C_8_bdd2
    );
  EXP_COMP_U1_S_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y93",
      INIT => X"65A69A59"
    )
    port map (
      ADR4 => A_28_IBUF_0,
      ADR3 => EXP_COMP_U1_C_8_bdd6,
      ADR2 => B_27_IBUF_0,
      ADR1 => A_27_IBUF_0,
      ADR0 => B_28_IBUF_0,
      O => EXP_COMP_S(5)
    );
  EXP_COMP_U3_GEN_7_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y104",
      INIT => X"CCCCCCCD33333332"
    )
    port map (
      ADR1 => EXP_COMP_COUT,
      ADR5 => EXP_COMP_S_7_0,
      ADR3 => EXP_COMP_S(4),
      ADR0 => EXP_COMP_S_5_0,
      ADR2 => EXP_COMP_S(6),
      ADR4 => EXP_COMP_U3_GEN_4_U_Z1_899,
      O => DIFF_7_OBUF_910
    );
  ExpComp_ExpComp_OR_11_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y104",
      INIT => X"0000000000000004"
    )
    port map (
      ADR1 => ExpComp_ExpComp_OR_11_o1_908,
      ADR0 => DIFF_2_OBUF_901,
      ADR4 => DIFF_3_OBUF_876,
      ADR5 => DIFF_5_OBUF_894,
      ADR2 => DIFF_6_OBUF_909,
      ADR3 => DIFF_7_OBUF_910,
      O => ExpComp_ExpComp_OR_11_o2_907
    );
  G_30_OBUF_G_30_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_30_OBUF_452,
      O => S_30_OBUF_0
    );
  Mmux_G241 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y92",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_30_IBUF_0,
      ADR4 => B_30_IBUF_0,
      ADR5 => '1',
      O => G_30_OBUF_952
    );
  Mmux_S241 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y92",
      INIT => X"CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_30_IBUF_0,
      ADR4 => B_30_IBUF_0,
      O => S_30_OBUF_452
    );
  EXP_COMP_U1_S_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y97",
      INIT => X"3C3C3C3CC3C3C3C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => A_29_IBUF_0,
      ADR2 => B_29_IBUF_0,
      ADR5 => EXP_COMP_U1_C_8_bdd2,
      O => EXP_COMP_S(6)
    );
  ExpComp_ExpComp_OR_11_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"FFFF8CEFFFFF08CE"
    )
    port map (
      ADR4 => ExpComp_ExpComp_OR_11_o6_0,
      ADR1 => B_9_IBUF_0,
      ADR3 => A_9_IBUF_0,
      ADR0 => B_8_IBUF_0,
      ADR2 => A_8_IBUF_0,
      ADR5 => ExpComp_ExpComp_OR_11_o11_914,
      O => ExpComp_ExpComp_OR_11_o12_1019
    );
  ExpComp_ExpComp_OR_11_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"A220FBBA2020BABA"
    )
    port map (
      ADR0 => B_12_IBUF_0,
      ADR4 => A_12_IBUF_0,
      ADR2 => B_11_IBUF_0,
      ADR1 => A_11_IBUF_0,
      ADR5 => ExpComp_ExpComp_OR_11_o5_929,
      ADR3 => ExpComp_ExpComp_OR_11_o12_1019,
      O => ExpComp_ExpComp_OR_11_o13_925
    );
  ExpComp_ExpComp_OR_11_o5_ExpComp_ExpComp_OR_11_o5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpComp_ExpComp_OR_11_o6_476,
      O => ExpComp_ExpComp_OR_11_o6_0
    );
  ExpComp_ExpComp_OR_11_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"FF55FF55FF55FF55"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => A_10_IBUF_0,
      ADR3 => B_10_IBUF_0,
      ADR5 => '1',
      O => ExpComp_ExpComp_OR_11_o5_929
    );
  ExpComp_ExpComp_OR_11_o6 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"55005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => A_10_IBUF_0,
      ADR3 => B_10_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o6_476
    );
  ExpComp_ExpComp_OR_11_o3_ExpComp_ExpComp_OR_11_o3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpComp_ExpComp_OR_11_o4_481,
      O => ExpComp_ExpComp_OR_11_o4_0
    );
  ExpComp_ExpComp_OR_11_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"FFFF0F0FFFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => A_15_IBUF_0,
      ADR4 => B_15_IBUF_0,
      ADR5 => '1',
      O => ExpComp_ExpComp_OR_11_o3_942
    );
  ExpComp_ExpComp_OR_11_o4 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => A_15_IBUF_0,
      ADR4 => B_15_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o4_481
    );
  ExpComp_ExpComp_OR_11_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"FFB2FF22FFBBFFB2"
    )
    port map (
      ADR3 => ExpComp_ExpComp_OR_11_o4_0,
      ADR0 => B_14_IBUF_0,
      ADR1 => A_14_IBUF_0,
      ADR2 => B_13_IBUF_0,
      ADR5 => A_13_IBUF_0,
      ADR4 => ExpComp_ExpComp_OR_11_o13_925,
      O => ExpComp_ExpComp_OR_11_o14_1020
    );
  ExpComp_ExpComp_OR_11_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"B2FF00B230FF0030"
    )
    port map (
      ADR4 => B_17_IBUF_0,
      ADR3 => A_17_IBUF_0,
      ADR2 => B_16_IBUF_0,
      ADR1 => A_16_IBUF_0,
      ADR0 => ExpComp_ExpComp_OR_11_o3_942,
      ADR5 => ExpComp_ExpComp_OR_11_o14_1020,
      O => ExpComp_ExpComp_OR_11_o15_937
    );
  ExpComp_ExpComp_OR_11_o16_ExpComp_ExpComp_OR_11_o16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_9_OBUF_511,
      O => S_9_OBUF_0
    );
  ExpComp_ExpComp_OR_11_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"CFFF0FCF0C0F000C"
    )
    port map (
      ADR0 => '1',
      ADR5 => B_19_IBUF_0,
      ADR4 => ExpComp_ExpComp_OR_11_o15_937,
      ADR3 => A_18_IBUF_0,
      ADR1 => B_18_IBUF_0,
      ADR2 => A_19_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o16_1022
    );
  ExpComp_ExpComp_OR_11_o17 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"AAFF0AAF0AAF00AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => B_21_IBUF_0,
      ADR5 => ExpComp_ExpComp_OR_11_o16_1022,
      ADR2 => A_20_IBUF_0,
      ADR4 => B_20_IBUF_0,
      ADR3 => A_21_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o17_1021
    );
  Mmux_G321 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_9_IBUF_0,
      ADR0 => B_9_IBUF_0,
      ADR5 => '1',
      O => G_9_OBUF_965
    );
  Mmux_S321 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"FF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_9_IBUF_0,
      ADR0 => B_9_IBUF_0,
      O => S_9_OBUF_511
    );
  ExpComp_ExpComp_OR_11_o18 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"CF0FCF0FFF0FCF0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o2_907,
      ADR1 => ExpComp_ExpComp_OR_11_o17_1021,
      ADR4 => B_22_IBUF_0,
      ADR5 => A_22_IBUF_0,
      ADR2 => EXP_COMP_COUT,
      O => ExpComp_ExpComp_OR_11_o
    );
  ExpComp_ExpComp_OR_11_o10_ExpComp_ExpComp_OR_11_o10_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpComp_ExpComp_OR_11_o8_pack_1,
      O => ExpComp_ExpComp_OR_11_o8_1024
    );
  ExpComp_ExpComp_OR_11_o10 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"FFFFB2BBFFFF22B2"
    )
    port map (
      ADR4 => ExpComp_ExpComp_OR_11_o8_1024,
      ADR0 => B_4_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => B_3_IBUF_0,
      ADR3 => A_3_IBUF_0,
      ADR5 => ExpComp_ExpComp_OR_11_o9_886,
      O => ExpComp_ExpComp_OR_11_o10_1025
    );
  ExpComp_ExpComp_OR_11_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"8F0F0800EFCF0E0C"
    )
    port map (
      ADR4 => B_7_IBUF_0,
      ADR2 => A_7_IBUF_0,
      ADR1 => B_6_IBUF_0,
      ADR5 => A_6_IBUF_0,
      ADR0 => ExpComp_ExpComp_OR_11_o7_1023,
      ADR3 => ExpComp_ExpComp_OR_11_o10_1025,
      O => ExpComp_ExpComp_OR_11_o11_914
    );
  ExpComp_ExpComp_OR_11_o7 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"F0FFF0FFF0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      ADR5 => '1',
      O => ExpComp_ExpComp_OR_11_o7_1023
    );
  ExpComp_ExpComp_OR_11_o8 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"00F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o8_pack_1
    );
  ExpComp_ExpComp_OR_11_o9 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => X"71713030F3717130"
    )
    port map (
      ADR2 => B_2_IBUF_0,
      ADR1 => A_2_IBUF_0,
      ADR4 => B_1_IBUF_0,
      ADR0 => A_1_IBUF_0,
      ADR3 => B_0_IBUF_0,
      ADR5 => A_0_IBUF_0,
      O => ExpComp_ExpComp_OR_11_o9_886
    );
  G_0_OBUF_G_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_OBUF_550,
      O => S_0_OBUF_0
    );
  Mmux_G11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_0_IBUF_0,
      ADR0 => B_0_IBUF_0,
      ADR5 => '1',
      O => G_0_OBUF_893
    );
  Mmux_S11 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => X"F0F0AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_0_IBUF_0,
      ADR0 => B_0_IBUF_0,
      O => S_0_OBUF_550
    );
  G_11_OBUF_G_11_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_11_OBUF_556,
      O => S_11_OBUF_0
    );
  Mmux_G31 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y82",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_11_IBUF_0,
      ADR3 => B_11_IBUF_0,
      ADR5 => '1',
      O => G_11_OBUF_865
    );
  Mmux_S31 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y82",
      INIT => X"FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_11_IBUF_0,
      ADR3 => B_11_IBUF_0,
      O => S_11_OBUF_556
    );
  G_12_OBUF_G_12_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_12_OBUF_562,
      O => S_12_OBUF_0
    );
  G_12_OBUF_G_12_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_21_OBUF_567,
      O => S_21_OBUF_0
    );
  Mmux_G41 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"FF00AAAAFF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_12_IBUF_0,
      ADR3 => B_12_IBUF_0,
      ADR5 => '1',
      O => G_12_OBUF_869
    );
  Mmux_S41 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_12_IBUF_0,
      ADR3 => B_12_IBUF_0,
      O => S_12_OBUF_562
    );
  Mmux_G141 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_21_IBUF_0,
      ADR0 => B_21_IBUF_0,
      ADR5 => '1',
      O => G_21_OBUF_906
    );
  Mmux_S141 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"FF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_21_IBUF_0,
      ADR0 => B_21_IBUF_0,
      O => S_21_OBUF_567
    );
  G_28_OBUF_G_28_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_28_OBUF_574,
      O => S_28_OBUF_0
    );
  Mmux_G211 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y92",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_28_IBUF_0,
      ADR4 => B_28_IBUF_0,
      ADR5 => '1',
      O => G_28_OBUF_994
    );
  Mmux_S211 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y92",
      INIT => X"FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_28_IBUF_0,
      ADR4 => B_28_IBUF_0,
      O => S_28_OBUF_574
    );
  G_29_OBUF_G_29_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_29_OBUF_580,
      O => S_29_OBUF_0
    );
  Mmux_G221 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"CFCFC0C0CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_29_IBUF_0,
      ADR1 => B_29_IBUF_0,
      ADR5 => '1',
      O => G_29_OBUF_998
    );
  Mmux_S221 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"FCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_29_IBUF_0,
      ADR1 => B_29_IBUF_0,
      O => S_29_OBUF_580
    );
  G_5_OBUF_G_5_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_5_OBUF_586,
      O => S_5_OBUF_0
    );
  G_5_OBUF_G_5_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_6_OBUF_591,
      O => S_6_OBUF_0
    );
  G_5_OBUF_G_5_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_7_OBUF_596,
      O => S_7_OBUF_0
    );
  Mmux_G281 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"F5F5A0A0F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      ADR5 => '1',
      O => G_5_OBUF_986
    );
  Mmux_S281 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_5_IBUF_0,
      ADR2 => B_5_IBUF_0,
      O => S_5_OBUF_586
    );
  Mmux_G291 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"FF33CC00FF33CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_6_IBUF_0,
      ADR3 => B_6_IBUF_0,
      ADR5 => '1',
      O => G_6_OBUF_990
    );
  Mmux_S291 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_6_IBUF_0,
      ADR3 => B_6_IBUF_0,
      O => S_6_OBUF_591
    );
  Mmux_G301 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_7_IBUF_0,
      ADR3 => B_7_IBUF_0,
      ADR5 => '1',
      O => G_7_OBUF_993
    );
  Mmux_S301 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"BB88BB88"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_7_IBUF_0,
      ADR3 => B_7_IBUF_0,
      O => S_7_OBUF_596
    );
  G_3_OBUF_G_3_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_3_OBUF_604,
      O => S_3_OBUF_0
    );
  G_3_OBUF_G_3_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_4_OBUF_609,
      O => S_4_OBUF_0
    );
  Mmux_G261 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_3_IBUF_0,
      ADR0 => B_3_IBUF_0,
      ADR5 => '1',
      O => G_3_OBUF_975
    );
  Mmux_S261 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"F0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_3_IBUF_0,
      ADR0 => B_3_IBUF_0,
      O => S_3_OBUF_604
    );
  Mmux_G271 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_4_IBUF_0,
      ADR1 => B_4_IBUF_0,
      ADR5 => '1',
      O => G_4_OBUF_980
    );
  Mmux_S271 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_4_IBUF_0,
      ADR1 => B_4_IBUF_0,
      O => S_4_OBUF_609
    );
  G_1_OBUF_G_1_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_OBUF_616,
      O => S_1_OBUF_0
    );
  Mmux_G121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y81",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_1_IBUF_0,
      ADR4 => B_1_IBUF_0,
      ADR5 => '1',
      O => G_1_OBUF_936
    );
  Mmux_S121 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y81",
      INIT => X"CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_1_IBUF_0,
      ADR4 => B_1_IBUF_0,
      O => S_1_OBUF_616
    );
  G_8_OBUF_G_8_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_8_OBUF_622,
      O => S_8_OBUF_0
    );
  Mmux_G311 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_8_IBUF_0,
      ADR4 => B_8_IBUF_0,
      ADR5 => '1',
      O => G_8_OBUF_997
    );
  Mmux_S311 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_8_IBUF_0,
      ADR4 => B_8_IBUF_0,
      O => S_8_OBUF_622
    );
  G_14_OBUF_G_14_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_14_OBUF_628,
      O => S_14_OBUF_0
    );
  G_14_OBUF_G_14_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_10_OBUF_633,
      O => S_10_OBUF_0
    );
  Mmux_G61 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_14_IBUF_0,
      ADR3 => B_14_IBUF_0,
      ADR5 => '1',
      O => G_14_OBUF_948
    );
  Mmux_S61 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_14_IBUF_0,
      ADR3 => B_14_IBUF_0,
      O => S_14_OBUF_628
    );
  Mmux_G21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_10_IBUF_0,
      ADR1 => B_10_IBUF_0,
      ADR5 => '1',
      O => G_10_OBUF_861
    );
  Mmux_S21 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y83",
      INIT => X"E4E4E4E4"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_10_IBUF_0,
      ADR1 => B_10_IBUF_0,
      O => S_10_OBUF_633
    );
  G_15_OBUF_G_15_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_15_OBUF_640,
      O => S_15_OBUF_0
    );
  G_15_OBUF_G_15_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_17_OBUF_645,
      O => S_17_OBUF_0
    );
  G_15_OBUF_G_15_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_13_OBUF_650,
      O => S_13_OBUF_0
    );
  Mmux_G71 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_15_IBUF_0,
      ADR3 => B_15_IBUF_0,
      ADR5 => '1',
      O => G_15_OBUF_970
    );
  Mmux_S71 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"F5A0F5A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR2 => A_15_IBUF_0,
      ADR3 => B_15_IBUF_0,
      O => S_15_OBUF_640
    );
  Mmux_G91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"F3F3C0C0F3F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_17_IBUF_0,
      ADR2 => B_17_IBUF_0,
      ADR5 => '1',
      O => G_17_OBUF_981
    );
  Mmux_S91 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_17_IBUF_0,
      ADR2 => B_17_IBUF_0,
      O => S_17_OBUF_645
    );
  Mmux_G51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_13_IBUF_0,
      ADR1 => B_13_IBUF_0,
      ADR5 => '1',
      O => G_13_OBUF_900
    );
  Mmux_S51 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_13_IBUF_0,
      ADR1 => B_13_IBUF_0,
      O => S_13_OBUF_650
    );
  G_19_OBUF_G_19_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_19_OBUF_658,
      O => S_19_OBUF_0
    );
  Mmux_G111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_19_IBUF_0,
      ADR2 => B_19_IBUF_0,
      ADR5 => '1',
      O => G_19_OBUF_991
    );
  Mmux_S111 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_19_IBUF_0,
      ADR2 => B_19_IBUF_0,
      O => S_19_OBUF_658
    );
  G_27_OBUF_G_27_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_27_OBUF_664,
      O => S_27_OBUF_0
    );
  Mmux_G201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_27_IBUF_0,
      ADR1 => B_27_IBUF_0,
      ADR5 => '1',
      O => G_27_OBUF_992
    );
  Mmux_S201 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"FF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_27_IBUF_0,
      ADR1 => B_27_IBUF_0,
      O => S_27_OBUF_664
    );
  G_23_OBUF_G_23_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_23_OBUF_670,
      O => S_23_OBUF_0
    );
  Mmux_G161 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"BB88BB88BB88BB88"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_23_IBUF_0,
      ADR0 => B_23_IBUF_0,
      ADR5 => '1',
      O => G_23_OBUF_971
    );
  Mmux_S161 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"EE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_23_IBUF_0,
      ADR0 => B_23_IBUF_0,
      O => S_23_OBUF_670
    );
  G_2_OBUF_G_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_2_OBUF_676,
      O => S_2_OBUF_0
    );
  Mmux_G231 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y82",
      INIT => X"FC0CFC0CFC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_2_IBUF_0,
      ADR3 => B_2_IBUF_0,
      ADR5 => '1',
      O => G_2_OBUF_969
    );
  Mmux_S231 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y82",
      INIT => X"CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_2_IBUF_0,
      ADR3 => B_2_IBUF_0,
      O => S_2_OBUF_676
    );
  G_16_OBUF_G_16_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_16_OBUF_682,
      O => S_16_OBUF_0
    );
  G_16_OBUF_G_16_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_26_OBUF_687,
      O => S_26_OBUF_0
    );
  Mmux_G81 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"FF00AAAAFF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_16_IBUF_0,
      ADR3 => B_16_IBUF_0,
      ADR5 => '1',
      O => G_16_OBUF_976
    );
  Mmux_S81 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ExpComp_ExpComp_OR_11_o,
      ADR0 => A_16_IBUF_0,
      ADR3 => B_16_IBUF_0,
      O => S_16_OBUF_682
    );
  Mmux_G191 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_26_IBUF_0,
      ADR3 => B_26_IBUF_0,
      ADR5 => '1',
      O => G_26_OBUF_988
    );
  Mmux_S191 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR1 => A_26_IBUF_0,
      ADR3 => B_26_IBUF_0,
      O => S_26_OBUF_687
    );
  G_22_OBUF_G_22_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_22_OBUF_694,
      O => S_22_OBUF_0
    );
  Mmux_G151 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"AAFFAA00AAFFAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_22_IBUF_0,
      ADR0 => B_22_IBUF_0,
      ADR5 => '1',
      O => G_22_OBUF_951
    );
  Mmux_S151 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_22_IBUF_0,
      ADR0 => B_22_IBUF_0,
      O => S_22_OBUF_694
    );
  G_20_OBUF_G_20_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_20_OBUF_700,
      O => S_20_OBUF_0
    );
  G_20_OBUF_G_20_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_18_OBUF_705,
      O => S_18_OBUF_0
    );
  Mmux_G131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_20_IBUF_0,
      ADR1 => B_20_IBUF_0,
      ADR5 => '1',
      O => G_20_OBUF_870
    );
  Mmux_S131 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"EE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_20_IBUF_0,
      ADR1 => B_20_IBUF_0,
      O => S_20_OBUF_700
    );
  Mmux_G101 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_18_IBUF_0,
      ADR1 => B_18_IBUF_0,
      ADR5 => '1',
      O => G_18_OBUF_987
    );
  Mmux_S101 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"FFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_18_IBUF_0,
      ADR1 => B_18_IBUF_0,
      O => S_18_OBUF_705
    );
  G_24_OBUF_G_24_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_24_OBUF_712,
      O => S_24_OBUF_0
    );
  G_24_OBUF_G_24_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_25_OBUF_717,
      O => S_25_OBUF_0
    );
  Mmux_G171 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"AAFFAA00AAFFAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_24_IBUF_0,
      ADR0 => B_24_IBUF_0,
      ADR5 => '1',
      O => G_24_OBUF_977
    );
  Mmux_S171 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => ExpComp_ExpComp_OR_11_o,
      ADR4 => A_24_IBUF_0,
      ADR0 => B_24_IBUF_0,
      O => S_24_OBUF_712
    );
  Mmux_G181 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_25_IBUF_0,
      ADR4 => B_25_IBUF_0,
      ADR5 => '1',
      O => G_25_OBUF_982
    );
  Mmux_S181 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"FF33CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => ExpComp_ExpComp_OR_11_o,
      ADR3 => A_25_IBUF_0,
      ADR4 => B_25_IBUF_0,
      O => S_25_OBUF_717
    );
  NlwBufferBlock_S_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_23_OBUF_0,
      O => NlwBufferSignal_S_23_OBUF_I
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
      I => G_10_OBUF_861,
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
      I => G_11_OBUF_865,
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
      I => G_12_OBUF_869,
      O => NlwBufferSignal_G_12_OBUF_I
    );
  NlwBufferBlock_G_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_20_OBUF_870,
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
      I => G_0_OBUF_893,
      O => NlwBufferSignal_G_0_OBUF_I
    );
  NlwBufferBlock_G_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_13_OBUF_900,
      O => NlwBufferSignal_G_13_OBUF_I
    );
  NlwBufferBlock_G_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_21_OBUF_906,
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
      I => G_1_OBUF_936,
      O => NlwBufferSignal_G_1_OBUF_I
    );
  NlwBufferBlock_G_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_14_OBUF_948,
      O => NlwBufferSignal_G_14_OBUF_I
    );
  NlwBufferBlock_G_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_22_OBUF_951,
      O => NlwBufferSignal_G_22_OBUF_I
    );
  NlwBufferBlock_G_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_30_OBUF_952,
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
      I => G_2_OBUF_969,
      O => NlwBufferSignal_G_2_OBUF_I
    );
  NlwBufferBlock_G_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_15_OBUF_970,
      O => NlwBufferSignal_G_15_OBUF_I
    );
  NlwBufferBlock_G_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_23_OBUF_971,
      O => NlwBufferSignal_G_23_OBUF_I
    );
  NlwBufferBlock_G_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_31_OBUF_972,
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
      I => G_3_OBUF_975,
      O => NlwBufferSignal_G_3_OBUF_I
    );
  NlwBufferBlock_G_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_16_OBUF_976,
      O => NlwBufferSignal_G_16_OBUF_I
    );
  NlwBufferBlock_G_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_24_OBUF_977,
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
      I => G_4_OBUF_980,
      O => NlwBufferSignal_G_4_OBUF_I
    );
  NlwBufferBlock_G_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_17_OBUF_981,
      O => NlwBufferSignal_G_17_OBUF_I
    );
  NlwBufferBlock_G_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_25_OBUF_982,
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
      I => G_5_OBUF_986,
      O => NlwBufferSignal_G_5_OBUF_I
    );
  NlwBufferBlock_G_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_18_OBUF_987,
      O => NlwBufferSignal_G_18_OBUF_I
    );
  NlwBufferBlock_G_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_26_OBUF_988,
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
      I => G_6_OBUF_990,
      O => NlwBufferSignal_G_6_OBUF_I
    );
  NlwBufferBlock_G_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_19_OBUF_991,
      O => NlwBufferSignal_G_19_OBUF_I
    );
  NlwBufferBlock_G_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_27_OBUF_992,
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
      I => G_7_OBUF_993,
      O => NlwBufferSignal_G_7_OBUF_I
    );
  NlwBufferBlock_G_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_28_OBUF_994,
      O => NlwBufferSignal_G_28_OBUF_I
    );
  NlwBufferBlock_G_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_8_OBUF_997,
      O => NlwBufferSignal_G_8_OBUF_I
    );
  NlwBufferBlock_G_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_29_OBUF_998,
      O => NlwBufferSignal_G_29_OBUF_I
    );
  NlwBufferBlock_G_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => G_9_OBUF_965,
      O => NlwBufferSignal_G_9_OBUF_I
    );
  NlwBufferBlock_DIFF_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_0_OBUF_905,
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
      I => DIFF_2_OBUF_901,
      O => NlwBufferSignal_DIFF_2_OBUF_I
    );
  NlwBufferBlock_DIFF_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_3_OBUF_876,
      O => NlwBufferSignal_DIFF_3_OBUF_I
    );
  NlwBufferBlock_DIFF_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_4_OBUF_1004,
      O => NlwBufferSignal_DIFF_4_OBUF_I
    );
  NlwBufferBlock_DIFF_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_5_OBUF_894,
      O => NlwBufferSignal_DIFF_5_OBUF_I
    );
  NlwBufferBlock_DIFF_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_6_OBUF_909,
      O => NlwBufferSignal_DIFF_6_OBUF_I
    );
  NlwBufferBlock_DIFF_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_7_OBUF_910,
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
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

