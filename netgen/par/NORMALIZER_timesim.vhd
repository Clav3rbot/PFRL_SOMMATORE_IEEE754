--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NORMALIZER_timesim.vhd
-- /___/   /\     Timestamp: Sat Aug 26 19:18:12 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf NORMALIZER.pcf -rpw 100 -tpw 0 -ar Structure -tm NORMALIZER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim NORMALIZER.ncd NORMALIZER_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: NORMALIZER.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/NORMALIZER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: NORMALIZER
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

entity NORMALIZER is
  port (
    EXP : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    MAN : in STD_LOGIC_VECTOR ( 26 downto 0 ); 
    NEXP : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    NMAN : out STD_LOGIC_VECTOR ( 26 downto 0 ) 
  );
end NORMALIZER;

architecture Structure of NORMALIZER is
  signal U1_GND_4_o_X_26_equal_25_o_26_111_982 : STD_LOGIC; 
  signal U1_GND_4_o_X_26_equal_25_o_26_12_983 : STD_LOGIC; 
  signal U1_Mmux_SHIFT412 : STD_LOGIC; 
  signal U1_GND_4_o_X_26_equal_20_o_mmx_out : STD_LOGIC; 
  signal U1_Mmux_SHIFT411 : STD_LOGIC; 
  signal U1_Mmux_SHIFT24_0 : STD_LOGIC; 
  signal MAN_22_IBUF_0 : STD_LOGIC; 
  signal MAN_21_IBUF_0 : STD_LOGIC; 
  signal MAN_20_IBUF_0 : STD_LOGIC; 
  signal MAN_19_IBUF_0 : STD_LOGIC; 
  signal U1_Mmux_SHIFT25_0 : STD_LOGIC; 
  signal U1_GND_4_o_X_26_equal_13_o_26_1 : STD_LOGIC; 
  signal MAN_25_IBUF_0 : STD_LOGIC; 
  signal MAN_24_IBUF_0 : STD_LOGIC; 
  signal MAN_23_IBUF_0 : STD_LOGIC; 
  signal MAN_26_IBUF_0 : STD_LOGIC; 
  signal ShiftPos_0_mmx_out10_0 : STD_LOGIC; 
  signal U1_Mmux_SHIFT22_1000 : STD_LOGIC; 
  signal MAN_10_IBUF_0 : STD_LOGIC; 
  signal MAN_9_IBUF_0 : STD_LOGIC; 
  signal U1_Mmux_SHIFT21_1003 : STD_LOGIC; 
  signal MAN_7_IBUF_0 : STD_LOGIC; 
  signal MAN_8_IBUF_0 : STD_LOGIC; 
  signal MAN_13_IBUF_0 : STD_LOGIC; 
  signal MAN_14_IBUF_0 : STD_LOGIC; 
  signal MAN_11_IBUF_0 : STD_LOGIC; 
  signal MAN_12_IBUF_0 : STD_LOGIC; 
  signal NMAN_11_OBUF_1010 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out16 : STD_LOGIC; 
  signal NMAN_9_OBUF_1015 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out14 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out20 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out11 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out18 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out3_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out13 : STD_LOGIC; 
  signal MAN_1_IBUF_0 : STD_LOGIC; 
  signal MAN_0_IBUF_0 : STD_LOGIC; 
  signal U1_Mmux_SHIFT14_1025 : STD_LOGIC; 
  signal U3_C_9_bdd8 : STD_LOGIC; 
  signal EXP_2_IBUF_0 : STD_LOGIC; 
  signal EXP_1_IBUF_0 : STD_LOGIC; 
  signal EXP_0_IBUF_0 : STD_LOGIC; 
  signal ShiftPos_0_mmx_out11_0 : STD_LOGIC; 
  signal NMAN_18_OBUF_1032 : STD_LOGIC; 
  signal NMAN_26_OBUF_1033 : STD_LOGIC; 
  signal NMAN_19_OBUF_1034 : STD_LOGIC; 
  signal MAN_15_IBUF_0 : STD_LOGIC; 
  signal MAN_16_IBUF_0 : STD_LOGIC; 
  signal MAN_17_IBUF_0 : STD_LOGIC; 
  signal EXP_3_IBUF_0 : STD_LOGIC; 
  signal MAN_18_IBUF_0 : STD_LOGIC; 
  signal EXP_4_IBUF_0 : STD_LOGIC; 
  signal EXP_5_IBUF_0 : STD_LOGIC; 
  signal EXP_6_IBUF_0 : STD_LOGIC; 
  signal EXP_7_IBUF_0 : STD_LOGIC; 
  signal NMAN_0_OBUF_1044 : STD_LOGIC; 
  signal NMAN_1_OBUF_1045 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out17 : STD_LOGIC; 
  signal MAN_5_IBUF_0 : STD_LOGIC; 
  signal MAN_6_IBUF_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out21 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out2 : STD_LOGIC; 
  signal NMAN_20_OBUF_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out7 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out12 : STD_LOGIC; 
  signal NMAN_2_OBUF_1054 : STD_LOGIC; 
  signal U5_GEN_25_U_X_S_AND_4_o2_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out22 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out8 : STD_LOGIC; 
  signal NMAN_25_OBUF_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out4 : STD_LOGIC; 
  signal NMAN_3_OBUF_1060 : STD_LOGIC; 
  signal U5_GEN_23_U_X_S_AND_4_o1_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out1 : STD_LOGIC; 
  signal NMAN_23_OBUF_0 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out6 : STD_LOGIC; 
  signal NMAN_4_OBUF_1065 : STD_LOGIC; 
  signal NMAN_5_OBUF_1066 : STD_LOGIC; 
  signal MAN_3_IBUF_0 : STD_LOGIC; 
  signal MAN_2_IBUF_0 : STD_LOGIC; 
  signal MAN_4_IBUF_0 : STD_LOGIC; 
  signal NMAN_6_OBUF_1070 : STD_LOGIC; 
  signal NEXP_3_OBUF_1071 : STD_LOGIC; 
  signal U3_C_9_bdd0 : STD_LOGIC; 
  signal U3_C_9_bdd4 : STD_LOGIC; 
  signal NMAN_7_OBUF_1074 : STD_LOGIC; 
  signal NMAN_8_OBUF_1075 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out10 : STD_LOGIC; 
  signal NEXP_0_OBUF_1077 : STD_LOGIC; 
  signal NEXP_4_OBUF_1078 : STD_LOGIC; 
  signal NEXP_6_OBUF_1079 : STD_LOGIC; 
  signal NEXP_1_OBUF_1080 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out15 : STD_LOGIC; 
  signal NEXP_2_OBUF_1082 : STD_LOGIC; 
  signal NEXP_5_OBUF_1083 : STD_LOGIC; 
  signal NEXP_7_OBUF_0 : STD_LOGIC; 
  signal NMAN_14_OBUF_1085 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal NMAN_10_OBUF_1087 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U5_GEN_26_U_X_S_AND_4_o1_0 : STD_LOGIC; 
  signal U5_GEN_26_U_X_S_AND_4_o3_1090 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out9 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out : STD_LOGIC; 
  signal NMAN_12_OBUF_1093 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out19 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out5 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal NMAN_13_OBUF_1097 : STD_LOGIC; 
  signal NMAN_24_OBUF_1098 : STD_LOGIC; 
  signal U5_GEN_24_U_X_S_AND_4_o_0 : STD_LOGIC; 
  signal U5_GEN_24_U_X_S_AND_4_o2_1100 : STD_LOGIC; 
  signal ShiftPos_3_mmx_out8 : STD_LOGIC; 
  signal NMAN_21_OBUF_1102 : STD_LOGIC; 
  signal U5_GEN_26_U_X_S_AND_4_o2_1103 : STD_LOGIC; 
  signal NMAN_22_OBUF_1104 : STD_LOGIC; 
  signal U1_Mmux_SHIFT1 : STD_LOGIC; 
  signal NMAN_15_OBUF_1106 : STD_LOGIC; 
  signal U1_Mmux_SHIFT12_1107 : STD_LOGIC; 
  signal NMAN_16_OBUF_1108 : STD_LOGIC; 
  signal NMAN_17_OBUF_1109 : STD_LOGIC; 
  signal U5_GEN_21_U_X_S_AND_4_o1_1110 : STD_LOGIC; 
  signal U5_GEN_22_U_X_S_AND_4_o1_0 : STD_LOGIC; 
  signal U5_GEN_24_U_X_S_AND_4_o1_1112 : STD_LOGIC; 
  signal U5_GEN_21_U_X_S_AND_4_o : STD_LOGIC; 
  signal U5_GEN_22_U_X_S_AND_4_o : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal U5_GEN_19_U_X_S_AND_4_o : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U1_Mmux_SHIFT23_1119 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U5_GEN_26_U_X_S_AND_4_o : STD_LOGIC; 
  signal U5_GEN_18_U_X_S_AND_4_o : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U5_GEN_25_U_X_S_AND_4_o3_1126 : STD_LOGIC; 
  signal U5_GEN_23_U_X_S_AND_4_o2_1127 : STD_LOGIC; 
  signal U1_Mmux_SHIFT2 : STD_LOGIC; 
  signal U1_Mmux_SHIFT11_1129 : STD_LOGIC; 
  signal U5_GEN_17_U_X_S_AND_4_o : STD_LOGIC; 
  signal U5_GEN_16_U_X_S_AND_4_o : STD_LOGIC; 
  signal U1_Mmux_SHIFT13_1132 : STD_LOGIC; 
  signal MAN_10_IBUF_1 : STD_LOGIC; 
  signal MAN_11_IBUF_8 : STD_LOGIC; 
  signal MAN_12_IBUF_13 : STD_LOGIC; 
  signal MAN_20_IBUF_16 : STD_LOGIC; 
  signal MAN_13_IBUF_19 : STD_LOGIC; 
  signal MAN_21_IBUF_22 : STD_LOGIC; 
  signal MAN_14_IBUF_25 : STD_LOGIC; 
  signal MAN_22_IBUF_28 : STD_LOGIC; 
  signal EXP_0_IBUF_31 : STD_LOGIC; 
  signal MAN_15_IBUF_34 : STD_LOGIC; 
  signal MAN_23_IBUF_37 : STD_LOGIC; 
  signal EXP_1_IBUF_40 : STD_LOGIC; 
  signal MAN_16_IBUF_43 : STD_LOGIC; 
  signal MAN_24_IBUF_46 : STD_LOGIC; 
  signal EXP_2_IBUF_49 : STD_LOGIC; 
  signal MAN_17_IBUF_52 : STD_LOGIC; 
  signal MAN_25_IBUF_55 : STD_LOGIC; 
  signal EXP_3_IBUF_58 : STD_LOGIC; 
  signal MAN_18_IBUF_61 : STD_LOGIC; 
  signal MAN_26_IBUF_64 : STD_LOGIC; 
  signal EXP_4_IBUF_67 : STD_LOGIC; 
  signal MAN_19_IBUF_70 : STD_LOGIC; 
  signal EXP_5_IBUF_73 : STD_LOGIC; 
  signal EXP_6_IBUF_76 : STD_LOGIC; 
  signal EXP_7_IBUF_79 : STD_LOGIC; 
  signal MAN_0_IBUF_118 : STD_LOGIC; 
  signal MAN_1_IBUF_121 : STD_LOGIC; 
  signal MAN_2_IBUF_126 : STD_LOGIC; 
  signal MAN_3_IBUF_131 : STD_LOGIC; 
  signal MAN_4_IBUF_138 : STD_LOGIC; 
  signal MAN_5_IBUF_145 : STD_LOGIC; 
  signal MAN_6_IBUF_152 : STD_LOGIC; 
  signal MAN_7_IBUF_159 : STD_LOGIC; 
  signal MAN_8_IBUF_166 : STD_LOGIC; 
  signal MAN_9_IBUF_173 : STD_LOGIC; 
  signal NEXP_7_OBUF_176 : STD_LOGIC; 
  signal n0007_8_pack_7 : STD_LOGIC; 
  signal U1_Mmux_SHIFT24_276 : STD_LOGIC; 
  signal U5_GEN_24_U_X_S_AND_4_o : STD_LOGIC; 
  signal U1_Mmux_SHIFT25_337 : STD_LOGIC; 
  signal N12_pack_8 : STD_LOGIC; 
  signal U5_GEN_26_U_X_S_AND_4_o1_429 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal NMAN_25_OBUF_461 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal NMAN_23_OBUF_491 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal NMAN_20_OBUF_524 : STD_LOGIC; 
  signal U1_Mmux_SHIFT2_pack_1 : STD_LOGIC; 
  signal ShiftPos_0_mmx_out11 : STD_LOGIC; 
  signal U5_GEN_25_U_X_S_AND_4_o2 : STD_LOGIC; 
  signal U5_GEN_22_U_X_S_AND_4_o1_781 : STD_LOGIC; 
  signal ShiftPos_0_mmx_out10 : STD_LOGIC; 
  signal ShiftPos_1_mmx_out3 : STD_LOGIC; 
  signal U5_GEN_23_U_X_S_AND_4_o1 : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NEXP_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMAN_25_OBUF_I : STD_LOGIC; 
  signal ShiftPos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal n0007 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
begin
  MAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_10_IBUF_1,
      I => MAN(10)
    );
  ProtoComp6_IMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_10_IBUF_1,
      O => MAN_10_IBUF_0
    );
  NMAN_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_NMAN_18_OBUF_I,
      O => NMAN(18)
    );
  NMAN_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_NMAN_26_OBUF_I,
      O => NMAN(26)
    );
  MAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_11_IBUF_8,
      I => MAN(11)
    );
  ProtoComp6_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_11_IBUF_8,
      O => MAN_11_IBUF_0
    );
  NMAN_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_NMAN_19_OBUF_I,
      O => NMAN(19)
    );
  MAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_12_IBUF_13,
      I => MAN(12)
    );
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_12_IBUF_13,
      O => MAN_12_IBUF_0
    );
  MAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_20_IBUF_16,
      I => MAN(20)
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_20_IBUF_16,
      O => MAN_20_IBUF_0
    );
  MAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_13_IBUF_19,
      I => MAN(13)
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_13_IBUF_19,
      O => MAN_13_IBUF_0
    );
  MAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_21_IBUF_22,
      I => MAN(21)
    );
  ProtoComp6_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_21_IBUF_22,
      O => MAN_21_IBUF_0
    );
  MAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_14_IBUF_25,
      I => MAN(14)
    );
  ProtoComp6_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_14_IBUF_25,
      O => MAN_14_IBUF_0
    );
  MAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_22_IBUF_28,
      I => MAN(22)
    );
  ProtoComp6_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_22_IBUF_28,
      O => MAN_22_IBUF_0
    );
  EXP_0_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_0_IBUF_31,
      I => EXP(0)
    );
  ProtoComp6_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_0_IBUF_31,
      O => EXP_0_IBUF_0
    );
  MAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_15_IBUF_34,
      I => MAN(15)
    );
  ProtoComp6_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_15_IBUF_34,
      O => MAN_15_IBUF_0
    );
  MAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_23_IBUF_37,
      I => MAN(23)
    );
  ProtoComp6_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_23_IBUF_37,
      O => MAN_23_IBUF_0
    );
  EXP_1_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_1_IBUF_40,
      I => EXP(1)
    );
  ProtoComp6_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_1_IBUF_40,
      O => EXP_1_IBUF_0
    );
  MAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_16_IBUF_43,
      I => MAN(16)
    );
  ProtoComp6_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_16_IBUF_43,
      O => MAN_16_IBUF_0
    );
  MAN_24_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_24_IBUF_46,
      I => MAN(24)
    );
  ProtoComp6_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_24_IBUF_46,
      O => MAN_24_IBUF_0
    );
  EXP_2_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_2_IBUF_49,
      I => EXP(2)
    );
  ProtoComp6_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_2_IBUF_49,
      O => EXP_2_IBUF_0
    );
  MAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_17_IBUF_52,
      I => MAN(17)
    );
  ProtoComp6_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_17_IBUF_52,
      O => MAN_17_IBUF_0
    );
  MAN_25_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_25_IBUF_55,
      I => MAN(25)
    );
  ProtoComp6_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_25_IBUF_55,
      O => MAN_25_IBUF_0
    );
  EXP_3_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_3_IBUF_58,
      I => EXP(3)
    );
  ProtoComp6_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_3_IBUF_58,
      O => EXP_3_IBUF_0
    );
  MAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_18_IBUF_61,
      I => MAN(18)
    );
  ProtoComp6_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_18_IBUF_61,
      O => MAN_18_IBUF_0
    );
  MAN_26_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_26_IBUF_64,
      I => MAN(26)
    );
  ProtoComp6_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_26_IBUF_64,
      O => MAN_26_IBUF_0
    );
  EXP_4_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_4_IBUF_67,
      I => EXP(4)
    );
  ProtoComp6_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_4_IBUF_67,
      O => EXP_4_IBUF_0
    );
  MAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_19_IBUF_70,
      I => MAN(19)
    );
  ProtoComp6_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_19_IBUF_70,
      O => MAN_19_IBUF_0
    );
  EXP_5_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_5_IBUF_73,
      I => EXP(5)
    );
  ProtoComp6_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_5_IBUF_73,
      O => EXP_5_IBUF_0
    );
  EXP_6_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_6_IBUF_76,
      I => EXP(6)
    );
  ProtoComp6_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_6_IBUF_76,
      O => EXP_6_IBUF_0
    );
  EXP_7_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      O => EXP_7_IBUF_79,
      I => EXP(7)
    );
  ProtoComp6_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      I => EXP_7_IBUF_79,
      O => EXP_7_IBUF_0
    );
  NMAN_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_NMAN_0_OBUF_I,
      O => NMAN(0)
    );
  NMAN_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_NMAN_1_OBUF_I,
      O => NMAN(1)
    );
  NMAN_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_NMAN_2_OBUF_I,
      O => NMAN(2)
    );
  NMAN_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_NMAN_3_OBUF_I,
      O => NMAN(3)
    );
  NMAN_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_NMAN_4_OBUF_I,
      O => NMAN(4)
    );
  NMAN_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_NMAN_5_OBUF_I,
      O => NMAN(5)
    );
  NMAN_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_NMAN_6_OBUF_I,
      O => NMAN(6)
    );
  NMAN_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_NMAN_7_OBUF_I,
      O => NMAN(7)
    );
  NMAN_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_NMAN_8_OBUF_I,
      O => NMAN(8)
    );
  NMAN_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_NMAN_9_OBUF_I,
      O => NMAN(9)
    );
  NEXP_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_NEXP_0_OBUF_I,
      O => NEXP(0)
    );
  NEXP_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_NEXP_1_OBUF_I,
      O => NEXP(1)
    );
  NEXP_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD369"
    )
    port map (
      I => NlwBufferSignal_NEXP_2_OBUF_I,
      O => NEXP(2)
    );
  NEXP_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD375"
    )
    port map (
      I => NlwBufferSignal_NEXP_3_OBUF_I,
      O => NEXP(3)
    );
  NEXP_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD374"
    )
    port map (
      I => NlwBufferSignal_NEXP_4_OBUF_I,
      O => NEXP(4)
    );
  NEXP_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD377"
    )
    port map (
      I => NlwBufferSignal_NEXP_5_OBUF_I,
      O => NEXP(5)
    );
  NEXP_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD376"
    )
    port map (
      I => NlwBufferSignal_NEXP_6_OBUF_I,
      O => NEXP(6)
    );
  NEXP_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD378"
    )
    port map (
      I => NlwBufferSignal_NEXP_7_OBUF_I,
      O => NEXP(7)
    );
  MAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_0_IBUF_118,
      I => MAN(0)
    );
  ProtoComp6_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_0_IBUF_118,
      O => MAN_0_IBUF_0
    );
  MAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_1_IBUF_121,
      I => MAN(1)
    );
  ProtoComp6_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_1_IBUF_121,
      O => MAN_1_IBUF_0
    );
  NMAN_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_NMAN_10_OBUF_I,
      O => NMAN(10)
    );
  MAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_2_IBUF_126,
      I => MAN(2)
    );
  ProtoComp6_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_2_IBUF_126,
      O => MAN_2_IBUF_0
    );
  NMAN_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_NMAN_11_OBUF_I,
      O => NMAN(11)
    );
  MAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_3_IBUF_131,
      I => MAN(3)
    );
  ProtoComp6_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_3_IBUF_131,
      O => MAN_3_IBUF_0
    );
  NMAN_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_NMAN_12_OBUF_I,
      O => NMAN(12)
    );
  NMAN_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_NMAN_20_OBUF_I,
      O => NMAN(20)
    );
  MAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_4_IBUF_138,
      I => MAN(4)
    );
  ProtoComp6_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_4_IBUF_138,
      O => MAN_4_IBUF_0
    );
  NMAN_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_NMAN_13_OBUF_I,
      O => NMAN(13)
    );
  NMAN_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_NMAN_21_OBUF_I,
      O => NMAN(21)
    );
  MAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_5_IBUF_145,
      I => MAN(5)
    );
  ProtoComp6_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_5_IBUF_145,
      O => MAN_5_IBUF_0
    );
  NMAN_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_NMAN_14_OBUF_I,
      O => NMAN(14)
    );
  NMAN_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_NMAN_22_OBUF_I,
      O => NMAN(22)
    );
  MAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_6_IBUF_152,
      I => MAN(6)
    );
  ProtoComp6_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_6_IBUF_152,
      O => MAN_6_IBUF_0
    );
  NMAN_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_NMAN_15_OBUF_I,
      O => NMAN(15)
    );
  NMAN_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_NMAN_23_OBUF_I,
      O => NMAN(23)
    );
  MAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_7_IBUF_159,
      I => MAN(7)
    );
  ProtoComp6_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_7_IBUF_159,
      O => MAN_7_IBUF_0
    );
  NMAN_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_NMAN_16_OBUF_I,
      O => NMAN(16)
    );
  NMAN_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_NMAN_24_OBUF_I,
      O => NMAN(24)
    );
  MAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_8_IBUF_166,
      I => MAN(8)
    );
  ProtoComp6_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_8_IBUF_166,
      O => MAN_8_IBUF_0
    );
  NMAN_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_NMAN_17_OBUF_I,
      O => NMAN(17)
    );
  NMAN_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_NMAN_25_OBUF_I,
      O => NMAN(25)
    );
  MAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_9_IBUF_173,
      I => MAN(9)
    );
  ProtoComp6_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_9_IBUF_173,
      O => MAN_9_IBUF_0
    );
  NEXP_5_OBUF_NEXP_5_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_7_OBUF_176,
      O => NEXP_7_OBUF_0
    );
  U4_GEN_5_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y131",
      INIT => X"CCCC3330CCCC3330"
    )
    port map (
      ADR0 => '1',
      ADR1 => EXP_5_IBUF_0,
      ADR4 => U3_C_9_bdd4,
      ADR2 => EXP_7_IBUF_0,
      ADR3 => EXP_6_IBUF_0,
      ADR5 => '1',
      O => NEXP_5_OBUF_1083
    );
  U4_GEN_7_U_X_S_AND_4_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y131",
      INIT => X"F0F0F0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => EXP_5_IBUF_0,
      ADR4 => U3_C_9_bdd4,
      ADR2 => EXP_7_IBUF_0,
      ADR3 => EXP_6_IBUF_0,
      O => NEXP_7_OBUF_176
    );
  NEXP_6_OBUF_NEXP_6_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => n0007_8_pack_7,
      O => n0007(8)
    );
  U4_GEN_6_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y96",
      INIT => X"C9C9C8C8C9C9C8C8"
    )
    port map (
      ADR3 => '1',
      ADR1 => EXP_6_IBUF_0,
      ADR2 => EXP_5_IBUF_0,
      ADR0 => U3_C_9_bdd4,
      ADR4 => EXP_7_IBUF_0,
      ADR5 => '1',
      O => NEXP_6_OBUF_1079
    );
  U3_S_8_1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y96",
      INIT => X"00000101"
    )
    port map (
      ADR3 => '1',
      ADR1 => EXP_6_IBUF_0,
      ADR2 => EXP_5_IBUF_0,
      ADR0 => U3_C_9_bdd4,
      ADR4 => EXP_7_IBUF_0,
      O => n0007_8_pack_7
    );
  U4_GEN_4_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y96",
      INIT => X"000000004DB2B24D"
    )
    port map (
      ADR4 => EXP_4_IBUF_0,
      ADR3 => ShiftPos(4),
      ADR0 => EXP_3_IBUF_0,
      ADR1 => ShiftPos(3),
      ADR2 => U3_C_9_bdd8,
      ADR5 => n0007(8),
      O => NEXP_4_OBUF_1078
    );
  U3_C_9_31 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y96",
      INIT => X"F775F77551105110"
    )
    port map (
      ADR4 => '1',
      ADR5 => EXP_4_IBUF_0,
      ADR3 => U3_C_9_bdd8,
      ADR1 => ShiftPos(3),
      ADR2 => EXP_3_IBUF_0,
      ADR0 => ShiftPos(4),
      O => U3_C_9_bdd4
    );
  U3_C_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y96",
      INIT => X"FEFEFEFEFEFEFEFE"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EXP_6_IBUF_0,
      ADR2 => EXP_5_IBUF_0,
      ADR0 => U3_C_9_bdd4,
      O => U3_C_9_bdd0
    );
  U4_GEN_3_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y96",
      INIT => X"55AAAA5544888844"
    )
    port map (
      ADR2 => '1',
      ADR0 => EXP_3_IBUF_0,
      ADR3 => ShiftPos(3),
      ADR4 => U3_C_9_bdd8,
      ADR1 => EXP_7_IBUF_0,
      ADR5 => U3_C_9_bdd0,
      O => NEXP_3_OBUF_1071
    );
  U5_GEN_12_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"0000000000FF00FE"
    )
    port map (
      ADR3 => ShiftPos(4),
      ADR5 => N14,
      ADR2 => EXP_7_IBUF_0,
      ADR1 => EXP_6_IBUF_0,
      ADR0 => EXP_5_IBUF_0,
      ADR4 => U3_C_9_bdd4,
      O => NMAN_12_OBUF_1093
    );
  U5_GEN_14_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X30Y91",
      INIT => X"0000000033333332"
    )
    port map (
      ADR1 => ShiftPos(4),
      ADR5 => N18,
      ADR0 => EXP_7_IBUF_0,
      ADR3 => EXP_6_IBUF_0,
      ADR2 => EXP_5_IBUF_0,
      ADR4 => U3_C_9_bdd4,
      O => NMAN_14_OBUF_1085
    );
  U5_GEN_15_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X30Y92",
      INIT => X"00000F0F00000F0E"
    )
    port map (
      ADR2 => ShiftPos(4),
      ADR4 => N20,
      ADR3 => EXP_7_IBUF_0,
      ADR0 => EXP_6_IBUF_0,
      ADR1 => EXP_5_IBUF_0,
      ADR5 => U3_C_9_bdd4,
      O => NMAN_15_OBUF_1106
    );
  U5_GEN_15_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y93",
      INIT => X"0C3F0C3F44447777"
    )
    port map (
      ADR5 => ShiftPos(2),
      ADR3 => ShiftPos_1_mmx_out20,
      ADR1 => ShiftPos(3),
      ADR2 => ShiftPos_1_mmx_out11,
      ADR0 => ShiftPos_1_mmx_out16,
      ADR4 => ShiftPos_1_mmx_out1,
      O => N20
    );
  U5_GEN_26_U_X_S_AND_4_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y94",
      INIT => X"00EE004400FA0050"
    )
    port map (
      ADR3 => ShiftPos(3),
      ADR0 => ShiftPos(4),
      ADR5 => ShiftPos(1),
      ADR1 => ShiftPos_0_mmx_out11_0,
      ADR2 => U5_GEN_26_U_X_S_AND_4_o2_1103,
      ADR4 => ShiftPos_1_mmx_out19,
      O => U5_GEN_26_U_X_S_AND_4_o3_1090
    );
  ShiftPos_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y95",
      INIT => X"EFECE3E02F2C2320"
    )
    port map (
      ADR1 => ShiftPos(0),
      ADR2 => ShiftPos(1),
      ADR4 => MAN_15_IBUF_0,
      ADR5 => MAN_13_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      ADR3 => MAN_16_IBUF_0,
      O => ShiftPos_1_mmx_out2
    );
  U5_GEN_24_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y95",
      INIT => X"00000000FECE3202"
    )
    port map (
      ADR5 => ShiftPos(2),
      ADR1 => ShiftPos(3),
      ADR2 => ShiftPos(1),
      ADR3 => U5_GEN_24_U_X_S_AND_4_o1_1112,
      ADR0 => ShiftPos_0_mmx_out11_0,
      ADR4 => ShiftPos_1_mmx_out2,
      O => U5_GEN_24_U_X_S_AND_4_o2_1100
    );
  U1_GND_4_o_X_26_equal_25_o_26_12_U1_GND_4_o_X_26_equal_25_o_26_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_Mmux_SHIFT24_276,
      O => U1_Mmux_SHIFT24_0
    );
  U1_GND_4_o_X_26_equal_25_o_26_121 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y96",
      INIT => X"0000000300000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => MAN_18_IBUF_0,
      ADR4 => MAN_17_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR3 => MAN_15_IBUF_0,
      ADR5 => '1',
      O => U1_GND_4_o_X_26_equal_25_o_26_12_983
    );
  U1_Mmux_SHIFT25 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y96",
      INIT => X"00003332"
    )
    port map (
      ADR0 => U1_Mmux_SHIFT23_1119,
      ADR1 => MAN_18_IBUF_0,
      ADR4 => MAN_17_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR3 => MAN_15_IBUF_0,
      O => U1_Mmux_SHIFT24_276
    );
  U1_GND_4_o_X_26_equal_25_o_26_12 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y96",
      INIT => X"0000000000000200"
    )
    port map (
      ADR4 => MAN_11_IBUF_0,
      ADR5 => MAN_12_IBUF_0,
      ADR2 => MAN_13_IBUF_0,
      ADR1 => MAN_14_IBUF_0,
      ADR0 => U1_GND_4_o_X_26_equal_13_o_26_1,
      ADR3 => U1_GND_4_o_X_26_equal_25_o_26_12_983,
      O => ShiftPos(4)
    );
  U1_Mmux_SHIFT24 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y96",
      INIT => X"4C4C5F5F4CCC5FFF"
    )
    port map (
      ADR1 => U1_Mmux_SHIFT22_1000,
      ADR4 => ShiftPos(4),
      ADR3 => MAN_13_IBUF_0,
      ADR5 => MAN_14_IBUF_0,
      ADR0 => U1_GND_4_o_X_26_equal_25_o_26_12_983,
      ADR2 => U1_GND_4_o_X_26_equal_13_o_26_1,
      O => U1_Mmux_SHIFT23_1119
    );
  U4_GEN_0_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y100",
      INIT => X"6666666666666660"
    )
    port map (
      ADR3 => EXP_7_IBUF_0,
      ADR4 => EXP_6_IBUF_0,
      ADR2 => EXP_5_IBUF_0,
      ADR5 => U3_C_9_bdd4,
      ADR1 => ShiftPos(0),
      ADR0 => EXP_0_IBUF_0,
      O => NEXP_0_OBUF_1077
    );
  U5_GEN_8_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y92",
      INIT => X"0000333300003332"
    )
    port map (
      ADR1 => ShiftPos(4),
      ADR4 => ShiftPos_3_mmx_out8,
      ADR2 => EXP_7_IBUF_0,
      ADR0 => EXP_6_IBUF_0,
      ADR3 => EXP_5_IBUF_0,
      ADR5 => U3_C_9_bdd4,
      O => NMAN_8_OBUF_1075
    );
  ShiftPos_3_91 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"FC00FCF0FC0FFCFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => ShiftPos(3),
      ADR2 => ShiftPos(2),
      ADR1 => ShiftPos_1_mmx_out13,
      ADR5 => ShiftPos_1_mmx_out17,
      ADR4 => ShiftPos_1_mmx_out12,
      O => ShiftPos_3_mmx_out8
    );
  U5_GEN_24_U_X_S_AND_4_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"00FA00C8FAFAFAC8"
    )
    port map (
      ADR2 => EXP_7_IBUF_0,
      ADR0 => U3_C_9_bdd0,
      ADR3 => ShiftPos(4),
      ADR4 => U5_GEN_24_U_X_S_AND_4_o_0,
      ADR1 => U5_GEN_24_U_X_S_AND_4_o2_1100,
      ADR5 => ShiftPos_3_mmx_out8,
      O => NMAN_24_OBUF_1098
    );
  U5_GEN_12_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y93",
      INIT => X"CFCF030311DD11DD"
    )
    port map (
      ADR1 => ShiftPos(3),
      ADR3 => ShiftPos_1_mmx_out12,
      ADR5 => ShiftPos(2),
      ADR4 => ShiftPos_1_mmx_out13,
      ADR2 => ShiftPos_1_mmx_out17,
      ADR0 => ShiftPos_1_mmx_out21,
      O => N14
    );
  ShiftPos_1_171 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y94",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR0 => ShiftPos(0),
      ADR1 => ShiftPos(1),
      ADR5 => MAN_16_IBUF_0,
      ADR2 => MAN_14_IBUF_0,
      ADR4 => MAN_15_IBUF_0,
      ADR3 => MAN_17_IBUF_0,
      O => ShiftPos_1_mmx_out4
    );
  N2_N2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U5_GEN_24_U_X_S_AND_4_o,
      O => U5_GEN_24_U_X_S_AND_4_o_0
    );
  U4_GEN_2_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y95",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ShiftPos(2),
      ADR4 => EXP_2_IBUF_0,
      ADR5 => '1',
      O => N2
    );
  U5_GEN_24_U_X_S_AND_4_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y95",
      INIT => X"C840C840"
    )
    port map (
      ADR0 => ShiftPos(3),
      ADR2 => ShiftPos_1_mmx_out7,
      ADR3 => ShiftPos_1_mmx_out21,
      ADR1 => ShiftPos(2),
      ADR4 => '1',
      O => U5_GEN_24_U_X_S_AND_4_o
    );
  N4_N4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_Mmux_SHIFT25_337,
      O => U1_Mmux_SHIFT25_0
    );
  U1_Mmux_SHIFT3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y96",
      INIT => X"FFFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => MAN_22_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR3 => MAN_20_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      ADR5 => '1',
      O => N4
    );
  U1_Mmux_SHIFT26 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y96",
      INIT => X"03030302"
    )
    port map (
      ADR0 => U1_Mmux_SHIFT24_0,
      ADR1 => MAN_22_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR3 => MAN_20_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      O => U1_Mmux_SHIFT25_337
    );
  U1_Mmux_SHIFT3 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y96",
      INIT => X"FFFFEC0000000000"
    )
    port map (
      ADR5 => U1_GND_4_o_X_26_equal_25_o_26_111_982,
      ADR3 => U1_GND_4_o_X_26_equal_25_o_26_12_983,
      ADR1 => U1_Mmux_SHIFT412,
      ADR2 => U1_GND_4_o_X_26_equal_20_o_mmx_out,
      ADR0 => U1_Mmux_SHIFT411,
      ADR4 => N4,
      O => ShiftPos(2)
    );
  N8_N8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N12_pack_8,
      O => N12
    );
  U5_GEN_9_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"FF550055FF550055"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => ShiftPos_1_mmx_out18,
      ADR3 => ShiftPos(3),
      ADR4 => ShiftPos_1_mmx_out3_0,
      ADR5 => '1',
      O => N8
    );
  U5_GEN_11_U_X_S_AND_4_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"0F330F33"
    )
    port map (
      ADR1 => ShiftPos_1_mmx_out20,
      ADR2 => ShiftPos_1_mmx_out11,
      ADR0 => '1',
      ADR3 => ShiftPos(3),
      ADR4 => '1',
      O => N12_pack_8
    );
  U5_GEN_9_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"0010011100000101"
    )
    port map (
      ADR0 => n0007(8),
      ADR1 => ShiftPos(4),
      ADR5 => ShiftPos_1_mmx_out14,
      ADR2 => ShiftPos(2),
      ADR3 => ShiftPos(3),
      ADR4 => N8,
      O => NMAN_9_OBUF_1015
    );
  U5_GEN_11_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"00000000001100D1"
    )
    port map (
      ADR5 => n0007(8),
      ADR3 => ShiftPos(4),
      ADR2 => ShiftPos_1_mmx_out16,
      ADR1 => ShiftPos(2),
      ADR4 => ShiftPos(3),
      ADR0 => N12,
      O => NMAN_11_OBUF_1010
    );
  U5_GEN_21_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"2222EE222020E020"
    )
    port map (
      ADR5 => EXP_7_IBUF_0,
      ADR2 => U3_C_9_bdd0,
      ADR1 => ShiftPos(3),
      ADR0 => U5_GEN_21_U_X_S_AND_4_o,
      ADR3 => U5_GEN_21_U_X_S_AND_4_o1_1110,
      ADR4 => ShiftPos(4),
      O => NMAN_21_OBUF_1102
    );
  U5_GEN_1_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"0000000500000004"
    )
    port map (
      ADR0 => ShiftPos(4),
      ADR2 => ShiftPos_1_mmx_out3_0,
      ADR4 => ShiftPos(3),
      ADR3 => ShiftPos(2),
      ADR1 => EXP_7_IBUF_0,
      ADR5 => U3_C_9_bdd0,
      O => NMAN_1_OBUF_1045
    );
  U5_GEN_26_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"00A000A0AA880088"
    )
    port map (
      ADR0 => ShiftPos(2),
      ADR3 => ShiftPos(3),
      ADR5 => ShiftPos(4),
      ADR2 => ShiftPos_1_mmx_out15,
      ADR1 => ShiftPos_1_mmx_out9,
      ADR4 => ShiftPos_1_mmx_out,
      O => U5_GEN_26_U_X_S_AND_4_o
    );
  U5_GEN_26_U_X_S_AND_4_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"FFF03330FFF02220"
    )
    port map (
      ADR3 => EXP_7_IBUF_0,
      ADR2 => U3_C_9_bdd0,
      ADR1 => ShiftPos(2),
      ADR5 => U5_GEN_26_U_X_S_AND_4_o1_0,
      ADR0 => U5_GEN_26_U_X_S_AND_4_o3_1090,
      ADR4 => U5_GEN_26_U_X_S_AND_4_o,
      O => NMAN_26_OBUF_1033
    );
  U5_GEN_18_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => X"EE22EE22FCFC3030"
    )
    port map (
      ADR1 => ShiftPos(2),
      ADR5 => ShiftPos(3),
      ADR4 => ShiftPos_1_mmx_out,
      ADR3 => ShiftPos_1_mmx_out15,
      ADR0 => ShiftPos_1_mmx_out19,
      ADR2 => ShiftPos_1_mmx_out5,
      O => U5_GEN_18_U_X_S_AND_4_o
    );
  U5_GEN_18_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => X"1010101010101032"
    )
    port map (
      ADR1 => n0007(8),
      ADR0 => ShiftPos(4),
      ADR3 => ShiftPos(2),
      ADR5 => ShiftPos_1_mmx_out10,
      ADR4 => ShiftPos(3),
      ADR2 => U5_GEN_18_U_X_S_AND_4_o,
      O => NMAN_18_OBUF_1032
    );
  N16_N16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U5_GEN_26_U_X_S_AND_4_o1_429,
      O => U5_GEN_26_U_X_S_AND_4_o1_0
    );
  U5_GEN_13_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"AF051111AF05BBBB"
    )
    port map (
      ADR0 => ShiftPos(3),
      ADR5 => ShiftPos_1_mmx_out14,
      ADR4 => ShiftPos(2),
      ADR3 => ShiftPos_1_mmx_out3_0,
      ADR2 => ShiftPos_1_mmx_out18,
      ADR1 => ShiftPos_1_mmx_out22,
      O => N16
    );
  U5_GEN_10_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"C0C0F3F3C0C0F3F3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ShiftPos_1_mmx_out19,
      ADR1 => ShiftPos(3),
      ADR2 => ShiftPos_1_mmx_out10,
      ADR5 => '1',
      O => N10
    );
  U5_GEN_26_U_X_S_AND_4_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"4C084C08"
    )
    port map (
      ADR0 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out5,
      ADR4 => '1',
      ADR1 => ShiftPos(3),
      ADR2 => ShiftPos_1_mmx_out10,
      O => U5_GEN_26_U_X_S_AND_4_o1_429
    );
  ShiftPos_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"FFAA5500D8D8D8D8"
    )
    port map (
      ADR5 => ShiftPos(0),
      ADR0 => ShiftPos(1),
      ADR3 => MAN_17_IBUF_0,
      ADR4 => MAN_15_IBUF_0,
      ADR1 => MAN_16_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      O => ShiftPos_1_mmx_out5
    );
  U5_GEN_10_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"0000000000003505"
    )
    port map (
      ADR4 => n0007(8),
      ADR5 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out15,
      ADR2 => ShiftPos(2),
      ADR1 => ShiftPos(3),
      ADR0 => N10,
      O => NMAN_10_OBUF_1087
    );
  U5_GEN_2_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"0000000500000004"
    )
    port map (
      ADR4 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out10,
      ADR0 => ShiftPos(3),
      ADR2 => ShiftPos(2),
      ADR1 => EXP_7_IBUF_0,
      ADR5 => U3_C_9_bdd0,
      O => NMAN_2_OBUF_1054
    );
  U1_Mmux_SHIFT4 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"F0F0F0F0F0F0A0E0"
    )
    port map (
      ADR2 => U1_GND_4_o_X_26_equal_13_o_26_1,
      ADR5 => MAN_18_IBUF_0,
      ADR0 => N6,
      ADR3 => U1_GND_4_o_X_26_equal_20_o_mmx_out,
      ADR1 => U1_Mmux_SHIFT411,
      ADR4 => U1_Mmux_SHIFT412,
      O => ShiftPos(3)
    );
  U5_GEN_19_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"1111113100000020"
    )
    port map (
      ADR1 => n0007(8),
      ADR0 => ShiftPos(4),
      ADR5 => U5_GEN_19_U_X_S_AND_4_o,
      ADR2 => ShiftPos_1_mmx_out11,
      ADR3 => ShiftPos(2),
      ADR4 => ShiftPos(3),
      O => NMAN_19_OBUF_1034
    );
  ShiftPos_1_mmx_out22_ShiftPos_1_mmx_out22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_25_OBUF_461,
      O => NMAN_25_OBUF_0
    );
  U5_GEN_25_U_X_S_AND_4_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y92"
    )
    port map (
      IA => N22,
      IB => N23,
      O => NMAN_25_OBUF_461,
      SEL => ShiftPos(2)
    );
  U5_GEN_25_U_X_S_AND_4_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"00000000F0F8FAF8"
    )
    port map (
      ADR5 => n0007(8),
      ADR0 => ShiftPos(3),
      ADR3 => ShiftPos(4),
      ADR1 => ShiftPos_1_mmx_out4,
      ADR4 => ShiftPos_1_mmx_out3_0,
      ADR2 => U5_GEN_25_U_X_S_AND_4_o3_1126,
      O => N22
    );
  U5_GEN_25_U_X_S_AND_4_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"000055E4000000E4"
    )
    port map (
      ADR4 => n0007(8),
      ADR3 => ShiftPos(3),
      ADR0 => ShiftPos(4),
      ADR1 => ShiftPos_1_mmx_out8,
      ADR2 => ShiftPos_1_mmx_out14,
      ADR5 => ShiftPos_1_mmx_out22,
      O => N23
    );
  ShiftPos_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"AFA0FCFCAFA00C0C"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR2 => ShiftPos(1),
      ADR3 => MAN_12_IBUF_0,
      ADR0 => MAN_10_IBUF_0,
      ADR5 => MAN_11_IBUF_0,
      ADR1 => MAN_13_IBUF_0,
      O => ShiftPos_1_mmx_out22
    );
  U5_GEN_25_U_X_S_AND_4_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"0000FCEE00003022"
    )
    port map (
      ADR4 => ShiftPos(3),
      ADR1 => ShiftPos(4),
      ADR3 => ShiftPos(1),
      ADR2 => ShiftPos_0_mmx_out10_0,
      ADR0 => U5_GEN_25_U_X_S_AND_4_o2_0,
      ADR5 => ShiftPos_1_mmx_out18,
      O => U5_GEN_25_U_X_S_AND_4_o3_1126
    );
  ShiftPos_1_mmx_out1_ShiftPos_1_mmx_out1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_23_OBUF_491,
      O => NMAN_23_OBUF_0
    );
  U5_GEN_23_U_X_S_AND_4_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y93"
    )
    port map (
      IA => N26,
      IB => N27,
      O => NMAN_23_OBUF_491,
      SEL => ShiftPos(3)
    );
  U5_GEN_23_U_X_S_AND_4_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"3333202033332200"
    )
    port map (
      ADR1 => n0007(8),
      ADR0 => ShiftPos(2),
      ADR5 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out6,
      ADR2 => ShiftPos_1_mmx_out11,
      ADR4 => U5_GEN_23_U_X_S_AND_4_o2_1127,
      O => N26
    );
  U5_GEN_23_U_X_S_AND_4_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"0302030201000100"
    )
    port map (
      ADR4 => '1',
      ADR2 => n0007(8),
      ADR1 => ShiftPos(4),
      ADR0 => ShiftPos(2),
      ADR5 => ShiftPos_1_mmx_out20,
      ADR3 => ShiftPos_1_mmx_out1,
      O => N27
    );
  ShiftPos_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"F7B3E6A2D591C480"
    )
    port map (
      ADR0 => ShiftPos(0),
      ADR1 => ShiftPos(1),
      ADR5 => MAN_14_IBUF_0,
      ADR2 => MAN_12_IBUF_0,
      ADR3 => MAN_13_IBUF_0,
      ADR4 => MAN_15_IBUF_0,
      O => ShiftPos_1_mmx_out1
    );
  U5_GEN_23_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"5555000051405140"
    )
    port map (
      ADR0 => ShiftPos(2),
      ADR5 => ShiftPos(4),
      ADR1 => ShiftPos(1),
      ADR2 => U5_GEN_23_U_X_S_AND_4_o1_0,
      ADR3 => ShiftPos_0_mmx_out10_0,
      ADR4 => ShiftPos_1_mmx_out16,
      O => U5_GEN_23_U_X_S_AND_4_o2_1127
    );
  ShiftPos_1_mmx_out21_ShiftPos_1_mmx_out21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_20_OBUF_524,
      O => NMAN_20_OBUF_0
    );
  U5_GEN_20_U_X_S_AND_4_o3 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y95"
    )
    port map (
      IA => N24,
      IB => N25,
      O => NMAN_20_OBUF_524,
      SEL => ShiftPos(2)
    );
  U5_GEN_20_U_X_S_AND_4_o3_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"020202020F0C0300"
    )
    port map (
      ADR2 => n0007(8),
      ADR5 => ShiftPos(3),
      ADR1 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out7,
      ADR4 => ShiftPos_1_mmx_out12,
      ADR0 => ShiftPos_1_mmx_out21,
      O => N24
    );
  U5_GEN_20_U_X_S_AND_4_o3_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"000B0008030B0308"
    )
    port map (
      ADR2 => n0007(8),
      ADR1 => ShiftPos(3),
      ADR3 => ShiftPos(4),
      ADR5 => ShiftPos_1_mmx_out13,
      ADR4 => ShiftPos_1_mmx_out2,
      ADR0 => ShiftPos_1_mmx_out17,
      O => N25
    );
  ShiftPos_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"ACACFF0FACACF000"
    )
    port map (
      ADR2 => ShiftPos(0),
      ADR4 => ShiftPos(1),
      ADR3 => MAN_11_IBUF_0,
      ADR0 => MAN_9_IBUF_0,
      ADR1 => MAN_10_IBUF_0,
      ADR5 => MAN_12_IBUF_0,
      O => ShiftPos_1_mmx_out21
    );
  ShiftPos_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"BBFC88FCBB308830"
    )
    port map (
      ADR3 => ShiftPos(0),
      ADR1 => ShiftPos(1),
      ADR4 => MAN_7_IBUF_0,
      ADR0 => MAN_5_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      O => ShiftPos_1_mmx_out17
    );
  ShiftPos_1_ShiftPos_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ShiftPos_0_mmx_out11,
      O => ShiftPos_0_mmx_out11_0
    );
  ShiftPos_1_ShiftPos_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_Mmux_SHIFT2_pack_1,
      O => U1_Mmux_SHIFT2
    );
  U1_Mmux_SHIFT27 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"0505050405050504"
    )
    port map (
      ADR2 => MAN_25_IBUF_0,
      ADR0 => MAN_26_IBUF_0,
      ADR4 => U1_Mmux_SHIFT25_0,
      ADR3 => MAN_23_IBUF_0,
      ADR1 => MAN_24_IBUF_0,
      ADR5 => '1',
      O => ShiftPos(1)
    );
  ShiftPos_0_31 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"DD8CDD8C"
    )
    port map (
      ADR2 => MAN_25_IBUF_0,
      ADR0 => MAN_26_IBUF_0,
      ADR4 => '1',
      ADR3 => MAN_23_IBUF_0,
      ADR1 => MAN_24_IBUF_0,
      O => ShiftPos_0_mmx_out11
    );
  U3_C_9_51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"C0FC40DCCCFFC4FD"
    )
    port map (
      ADR1 => EXP_2_IBUF_0,
      ADR2 => EXP_1_IBUF_0,
      ADR5 => ShiftPos(1),
      ADR4 => EXP_0_IBUF_0,
      ADR0 => ShiftPos(0),
      ADR3 => ShiftPos(2),
      O => U3_C_9_bdd8
    );
  U1_Mmux_SHIFT4121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"FFFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR2 => MAN_13_IBUF_0,
      ADR1 => MAN_14_IBUF_0,
      ADR3 => MAN_11_IBUF_0,
      ADR4 => MAN_12_IBUF_0,
      ADR5 => '1',
      O => U1_Mmux_SHIFT412
    );
  U1_Mmux_SHIFT21 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"03030300"
    )
    port map (
      ADR0 => '1',
      ADR2 => MAN_13_IBUF_0,
      ADR1 => MAN_14_IBUF_0,
      ADR3 => MAN_11_IBUF_0,
      ADR4 => MAN_12_IBUF_0,
      O => U1_Mmux_SHIFT2_pack_1
    );
  U1_Mmux_SHIFT23 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"F1F1F1F1F1F1F1F0"
    )
    port map (
      ADR0 => MAN_10_IBUF_0,
      ADR1 => MAN_9_IBUF_0,
      ADR5 => U1_Mmux_SHIFT21_1003,
      ADR4 => MAN_7_IBUF_0,
      ADR3 => MAN_8_IBUF_0,
      ADR2 => U1_Mmux_SHIFT2,
      O => U1_Mmux_SHIFT22_1000
    );
  ShiftPos_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y97",
      INIT => X"EEEE4444F5A0F5A0"
    )
    port map (
      ADR5 => ShiftPos(0),
      ADR0 => ShiftPos(1),
      ADR1 => MAN_3_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR2 => MAN_2_IBUF_0,
      ADR3 => MAN_4_IBUF_0,
      O => ShiftPos_1_mmx_out12
    );
  U5_GEN_4_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y97",
      INIT => X"0000010000000302"
    )
    port map (
      ADR2 => n0007(8),
      ADR1 => ShiftPos(3),
      ADR4 => ShiftPos(4),
      ADR0 => ShiftPos(2),
      ADR5 => ShiftPos_1_mmx_out13,
      ADR3 => ShiftPos_1_mmx_out12,
      O => NMAN_4_OBUF_1065
    );
  ShiftPos_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y97",
      INIT => X"F0FFF000AACCAACC"
    )
    port map (
      ADR5 => ShiftPos(0),
      ADR3 => ShiftPos(1),
      ADR4 => MAN_5_IBUF_0,
      ADR2 => MAN_3_IBUF_0,
      ADR0 => MAN_4_IBUF_0,
      ADR1 => MAN_6_IBUF_0,
      O => ShiftPos_1_mmx_out15
    );
  U5_GEN_6_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y97",
      INIT => X"0000000000130010"
    )
    port map (
      ADR5 => n0007(8),
      ADR3 => ShiftPos(3),
      ADR1 => ShiftPos(4),
      ADR2 => ShiftPos(2),
      ADR0 => ShiftPos_1_mmx_out10,
      ADR4 => ShiftPos_1_mmx_out15,
      O => NMAN_6_OBUF_1070
    );
  ShiftPos_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y98",
      INIT => X"CFAFCFA0C0AFC0A0"
    )
    port map (
      ADR3 => ShiftPos(0),
      ADR2 => ShiftPos(1),
      ADR5 => MAN_10_IBUF_0,
      ADR1 => MAN_8_IBUF_0,
      ADR0 => MAN_9_IBUF_0,
      ADR4 => MAN_11_IBUF_0,
      O => ShiftPos_1_mmx_out20
    );
  ShiftPos_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y98",
      INIT => X"FAFAEE445050EE44"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR0 => ShiftPos(1),
      ADR2 => MAN_2_IBUF_0,
      ADR5 => MAN_0_IBUF_0,
      ADR3 => MAN_1_IBUF_0,
      ADR1 => MAN_3_IBUF_0,
      O => ShiftPos_1_mmx_out11
    );
  U5_GEN_7_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y98",
      INIT => X"0000000000320010"
    )
    port map (
      ADR3 => n0007(8),
      ADR5 => ShiftPos(3),
      ADR1 => ShiftPos(4),
      ADR0 => ShiftPos(2),
      ADR2 => ShiftPos_1_mmx_out16,
      ADR4 => ShiftPos_1_mmx_out11,
      O => NMAN_7_OBUF_1074
    );
  ShiftPos_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y99",
      INIT => X"F7E6D5C4B3A29180"
    )
    port map (
      ADR1 => ShiftPos(0),
      ADR0 => ShiftPos(1),
      ADR5 => MAN_6_IBUF_0,
      ADR2 => MAN_4_IBUF_0,
      ADR4 => MAN_5_IBUF_0,
      ADR3 => MAN_7_IBUF_0,
      O => ShiftPos_1_mmx_out16
    );
  U4_GEN_1_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"00040F0B0F0B0004"
    )
    port map (
      ADR0 => EXP_0_IBUF_0,
      ADR5 => EXP_1_IBUF_0,
      ADR4 => ShiftPos(1),
      ADR1 => U1_Mmux_SHIFT14_1025,
      ADR3 => MAN_26_IBUF_0,
      ADR2 => n0007(8),
      O => NEXP_1_OBUF_1080
    );
  U1_Mmux_SHIFT22 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"0000555500005051"
    )
    port map (
      ADR0 => MAN_6_IBUF_0,
      ADR4 => MAN_5_IBUF_0,
      ADR5 => MAN_3_IBUF_0,
      ADR2 => MAN_4_IBUF_0,
      ADR1 => MAN_1_IBUF_0,
      ADR3 => MAN_2_IBUF_0,
      O => U1_Mmux_SHIFT21_1003
    );
  U1_Mmux_SHIFT12 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y103",
      INIT => X"00AF00AF00AA00AE"
    )
    port map (
      ADR3 => MAN_10_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      ADR5 => MAN_7_IBUF_0,
      ADR1 => U1_Mmux_SHIFT1,
      ADR4 => MAN_6_IBUF_0,
      ADR0 => MAN_9_IBUF_0,
      O => U1_Mmux_SHIFT11_1129
    );
  U1_Mmux_SHIFT13 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y103",
      INIT => X"F0F0F0F0FDFDFDFC"
    )
    port map (
      ADR5 => MAN_14_IBUF_0,
      ADR0 => MAN_12_IBUF_0,
      ADR3 => MAN_11_IBUF_0,
      ADR4 => U1_Mmux_SHIFT11_1129,
      ADR1 => MAN_13_IBUF_0,
      ADR2 => MAN_15_IBUF_0,
      O => U1_Mmux_SHIFT12_1107
    );
  U5_GEN_3_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"0011000000100000"
    )
    port map (
      ADR1 => ShiftPos(2),
      ADR3 => ShiftPos(4),
      ADR0 => ShiftPos(3),
      ADR4 => ShiftPos_1_mmx_out11,
      ADR2 => U3_C_9_bdd0,
      ADR5 => EXP_7_IBUF_0,
      O => NMAN_3_OBUF_1060
    );
  U5_GEN_22_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y89",
      INIT => X"7744704033003000"
    )
    port map (
      ADR2 => EXP_7_IBUF_0,
      ADR4 => U3_C_9_bdd0,
      ADR1 => ShiftPos(3),
      ADR3 => U5_GEN_22_U_X_S_AND_4_o,
      ADR5 => U5_GEN_22_U_X_S_AND_4_o1_0,
      ADR0 => ShiftPos(4),
      O => NMAN_22_OBUF_1104
    );
  U5_GEN_13_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"0000000055555554"
    )
    port map (
      ADR0 => ShiftPos(4),
      ADR5 => N16,
      ADR1 => EXP_7_IBUF_0,
      ADR2 => EXP_6_IBUF_0,
      ADR4 => EXP_5_IBUF_0,
      ADR3 => U3_C_9_bdd4,
      O => NMAN_13_OBUF_1097
    );
  U5_GEN_0_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"0000000300000002"
    )
    port map (
      ADR2 => ShiftPos(4),
      ADR1 => ShiftPos_1_mmx_out13,
      ADR3 => ShiftPos(3),
      ADR4 => ShiftPos(2),
      ADR0 => EXP_7_IBUF_0,
      ADR5 => U3_C_9_bdd0,
      O => NMAN_0_OBUF_1044
    );
  U5_GEN_17_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"FEDCBA9876543210"
    )
    port map (
      ADR0 => ShiftPos(2),
      ADR1 => ShiftPos(3),
      ADR3 => ShiftPos_1_mmx_out22,
      ADR5 => ShiftPos_1_mmx_out14,
      ADR4 => ShiftPos_1_mmx_out18,
      ADR2 => ShiftPos_1_mmx_out4,
      O => U5_GEN_17_U_X_S_AND_4_o
    );
  U5_GEN_17_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"0001000133330000"
    )
    port map (
      ADR1 => n0007(8),
      ADR5 => ShiftPos(4),
      ADR3 => ShiftPos(2),
      ADR0 => ShiftPos_1_mmx_out3_0,
      ADR2 => ShiftPos(3),
      ADR4 => U5_GEN_17_U_X_S_AND_4_o,
      O => NMAN_17_OBUF_1109
    );
  ShiftPos_1_221 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR5 => ShiftPos(1),
      ADR2 => MAN_21_IBUF_0,
      ADR3 => MAN_19_IBUF_0,
      ADR1 => MAN_20_IBUF_0,
      ADR0 => MAN_22_IBUF_0,
      O => ShiftPos_1_mmx_out9
    );
  U5_GEN_22_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"73FB51D962EA40C8"
    )
    port map (
      ADR1 => ShiftPos(2),
      ADR0 => ShiftPos(4),
      ADR3 => ShiftPos_1_mmx_out10,
      ADR2 => ShiftPos_1_mmx_out5,
      ADR4 => ShiftPos_1_mmx_out15,
      ADR5 => ShiftPos_1_mmx_out9,
      O => U5_GEN_22_U_X_S_AND_4_o
    );
  ShiftPos_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"FBCBF8C83B0B3808"
    )
    port map (
      ADR1 => ShiftPos(0),
      ADR2 => ShiftPos(1),
      ADR0 => MAN_18_IBUF_0,
      ADR5 => MAN_16_IBUF_0,
      ADR3 => MAN_17_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      O => ShiftPos_1_mmx_out6
    );
  U5_GEN_19_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"E4E4E4E4FF55AA00"
    )
    port map (
      ADR5 => ShiftPos(2),
      ADR0 => ShiftPos(3),
      ADR1 => ShiftPos_1_mmx_out1,
      ADR2 => ShiftPos_1_mmx_out16,
      ADR3 => ShiftPos_1_mmx_out20,
      ADR4 => ShiftPos_1_mmx_out6,
      O => U5_GEN_19_U_X_S_AND_4_o
    );
  ShiftPos_1_211 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"EFECE3E02F2C2320"
    )
    port map (
      ADR1 => ShiftPos(0),
      ADR2 => ShiftPos(1),
      ADR4 => MAN_20_IBUF_0,
      ADR5 => MAN_18_IBUF_0,
      ADR0 => MAN_19_IBUF_0,
      ADR3 => MAN_21_IBUF_0,
      O => ShiftPos_1_mmx_out8
    );
  U5_GEN_21_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"7F734F437C704C40"
    )
    port map (
      ADR2 => ShiftPos(2),
      ADR1 => ShiftPos(4),
      ADR0 => ShiftPos_1_mmx_out3_0,
      ADR4 => ShiftPos_1_mmx_out4,
      ADR3 => ShiftPos_1_mmx_out14,
      ADR5 => ShiftPos_1_mmx_out8,
      O => U5_GEN_21_U_X_S_AND_4_o
    );
  ShiftPos_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"AAAAFF00F0F0CCCC"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR5 => ShiftPos(1),
      ADR2 => MAN_13_IBUF_0,
      ADR0 => MAN_11_IBUF_0,
      ADR3 => MAN_12_IBUF_0,
      ADR1 => MAN_14_IBUF_0,
      O => ShiftPos_1_mmx_out
    );
  U5_GEN_14_U_X_S_AND_4_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"DD0CDD3F110C113F"
    )
    port map (
      ADR3 => ShiftPos(3),
      ADR0 => ShiftPos_1_mmx_out15,
      ADR1 => ShiftPos(2),
      ADR5 => ShiftPos_1_mmx_out10,
      ADR2 => ShiftPos_1_mmx_out19,
      ADR4 => ShiftPos_1_mmx_out,
      O => N18
    );
  U1_Mmux_SHIFT4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"FFFFFFFFFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => MAN_17_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR1 => MAN_15_IBUF_0,
      O => N6
    );
  U5_GEN_16_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"FE76DC54BA329810"
    )
    port map (
      ADR0 => ShiftPos(2),
      ADR1 => ShiftPos(3),
      ADR4 => ShiftPos_1_mmx_out21,
      ADR3 => ShiftPos_1_mmx_out12,
      ADR5 => ShiftPos_1_mmx_out17,
      ADR2 => ShiftPos_1_mmx_out2,
      O => U5_GEN_16_U_X_S_AND_4_o
    );
  U5_GEN_16_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"0033000000370004"
    )
    port map (
      ADR3 => n0007(8),
      ADR1 => ShiftPos(4),
      ADR0 => ShiftPos(2),
      ADR5 => ShiftPos_1_mmx_out13,
      ADR2 => ShiftPos(3),
      ADR4 => U5_GEN_16_U_X_S_AND_4_o,
      O => NMAN_16_OBUF_1108
    );
  U5_GEN_26_U_X_S_AND_4_o2_U5_GEN_26_U_X_S_AND_4_o2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U5_GEN_25_U_X_S_AND_4_o2,
      O => U5_GEN_25_U_X_S_AND_4_o2_0
    );
  U5_GEN_26_U_X_S_AND_4_o2_U5_GEN_26_U_X_S_AND_4_o2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U5_GEN_22_U_X_S_AND_4_o1_781,
      O => U5_GEN_22_U_X_S_AND_4_o1_0
    );
  U5_GEN_26_U_X_S_AND_4_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"FAFAFAFAFAFAFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => MAN_25_IBUF_0,
      ADR2 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => U5_GEN_26_U_X_S_AND_4_o2_1103
    );
  U5_GEN_25_U_X_S_AND_4_o3 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"AAAAA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => MAN_24_IBUF_0,
      ADR0 => MAN_25_IBUF_0,
      ADR2 => MAN_26_IBUF_0,
      O => U5_GEN_25_U_X_S_AND_4_o2
    );
  U5_GEN_21_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"CCCCAAAACCCCAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ShiftPos(2),
      ADR0 => ShiftPos_1_mmx_out22,
      ADR1 => ShiftPos_1_mmx_out18,
      ADR5 => '1',
      O => U5_GEN_21_U_X_S_AND_4_o1_1110
    );
  U5_GEN_22_U_X_S_AND_4_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"FF00F0F0"
    )
    port map (
      ADR2 => ShiftPos_1_mmx_out,
      ADR3 => ShiftPos_1_mmx_out19,
      ADR4 => ShiftPos(2),
      ADR0 => '1',
      ADR1 => '1',
      O => U5_GEN_22_U_X_S_AND_4_o1_781
    );
  ShiftPos_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"EEEE2222F3C0F3C0"
    )
    port map (
      ADR1 => ShiftPos(0),
      ADR5 => ShiftPos(1),
      ADR2 => MAN_9_IBUF_0,
      ADR4 => MAN_7_IBUF_0,
      ADR0 => MAN_8_IBUF_0,
      ADR3 => MAN_10_IBUF_0,
      O => ShiftPos_1_mmx_out19
    );
  ShiftPos_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"CCAAFFF0CCAA00F0"
    )
    port map (
      ADR3 => ShiftPos(0),
      ADR4 => ShiftPos(1),
      ADR5 => MAN_8_IBUF_0,
      ADR1 => MAN_6_IBUF_0,
      ADR0 => MAN_7_IBUF_0,
      ADR2 => MAN_9_IBUF_0,
      O => ShiftPos_1_mmx_out18
    );
  ShiftPos_1_mmx_out7_ShiftPos_1_mmx_out7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ShiftPos_0_mmx_out10,
      O => ShiftPos_0_mmx_out10_0
    );
  ShiftPos_1_201 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"FF00CCCCAAAAF0F0"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR5 => ShiftPos(1),
      ADR0 => MAN_19_IBUF_0,
      ADR3 => MAN_17_IBUF_0,
      ADR1 => MAN_18_IBUF_0,
      ADR2 => MAN_20_IBUF_0,
      O => ShiftPos_1_mmx_out7
    );
  U5_GEN_24_U_X_S_AND_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"FF00AEA2FF00AFA2"
    )
    port map (
      ADR3 => MAN_22_IBUF_0,
      ADR2 => MAN_25_IBUF_0,
      ADR1 => MAN_24_IBUF_0,
      ADR5 => MAN_23_IBUF_0,
      ADR4 => MAN_26_IBUF_0,
      ADR0 => MAN_21_IBUF_0,
      O => U5_GEN_24_U_X_S_AND_4_o1_1112
    );
  U1_GND_4_o_X_26_equal_25_o_26_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"0000010100000101"
    )
    port map (
      ADR3 => '1',
      ADR0 => MAN_25_IBUF_0,
      ADR2 => MAN_24_IBUF_0,
      ADR1 => MAN_23_IBUF_0,
      ADR4 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => U1_GND_4_o_X_26_equal_25_o_26_111_982
    );
  ShiftPos_0_21 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"CCCCEE40"
    )
    port map (
      ADR3 => MAN_22_IBUF_0,
      ADR0 => MAN_25_IBUF_0,
      ADR2 => MAN_24_IBUF_0,
      ADR1 => MAN_23_IBUF_0,
      ADR4 => MAN_26_IBUF_0,
      O => ShiftPos_0_mmx_out10
    );
  U1_GND_4_o_X_26_equal_25_o_26_111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"0000000000030000"
    )
    port map (
      ADR0 => '1',
      ADR3 => MAN_19_IBUF_0,
      ADR5 => MAN_20_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR1 => MAN_22_IBUF_0,
      ADR4 => U1_GND_4_o_X_26_equal_25_o_26_111_982,
      O => U1_GND_4_o_X_26_equal_13_o_26_1
    );
  ShiftPos_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y97",
      INIT => X"F5F5EE44A0A0EE44"
    )
    port map (
      ADR4 => ShiftPos(0),
      ADR0 => ShiftPos(1),
      ADR5 => MAN_4_IBUF_0,
      ADR2 => MAN_2_IBUF_0,
      ADR3 => MAN_3_IBUF_0,
      ADR1 => MAN_5_IBUF_0,
      O => ShiftPos_1_mmx_out14
    );
  U5_GEN_5_U_X_S_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y97",
      INIT => X"0000010300000002"
    )
    port map (
      ADR2 => n0007(8),
      ADR4 => ShiftPos(3),
      ADR1 => ShiftPos(4),
      ADR0 => ShiftPos(2),
      ADR3 => ShiftPos_1_mmx_out3_0,
      ADR5 => ShiftPos_1_mmx_out14,
      O => NMAN_5_OBUF_1066
    );
  U1_Mmux_SHIFT14 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y97",
      INIT => X"00FF000C00FF000E"
    )
    port map (
      ADR3 => MAN_20_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      ADR1 => MAN_17_IBUF_0,
      ADR0 => U1_Mmux_SHIFT12_1107,
      ADR5 => MAN_16_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      O => U1_Mmux_SHIFT13_1132
    );
  U1_Mmux_SHIFT15 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y97",
      INIT => X"F0FFF0FFF0F3F0F2"
    )
    port map (
      ADR3 => MAN_24_IBUF_0,
      ADR1 => MAN_22_IBUF_0,
      ADR0 => MAN_21_IBUF_0,
      ADR4 => U1_Mmux_SHIFT13_1132,
      ADR5 => MAN_23_IBUF_0,
      ADR2 => MAN_25_IBUF_0,
      O => U1_Mmux_SHIFT14_1025
    );
  ShiftPos_1_mmx_out13_ShiftPos_1_mmx_out13_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ShiftPos_1_mmx_out3,
      O => ShiftPos_1_mmx_out3_0
    );
  ShiftPos_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"FFFF33F3FFFF33F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => ShiftPos(1),
      ADR1 => MAN_0_IBUF_0,
      ADR2 => U1_Mmux_SHIFT14_1025,
      ADR3 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => ShiftPos_1_mmx_out13
    );
  ShiftPos_1_161 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"FFFF5535"
    )
    port map (
      ADR0 => MAN_1_IBUF_0,
      ADR4 => ShiftPos(1),
      ADR1 => MAN_0_IBUF_0,
      ADR2 => U1_Mmux_SHIFT14_1025,
      ADR3 => MAN_26_IBUF_0,
      O => ShiftPos_1_mmx_out3
    );
  U1_GND_4_o_X_26_equal_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"CCCCCCC800000000"
    )
    port map (
      ADR5 => U1_Mmux_SHIFT411,
      ADR1 => ShiftPos(4),
      ADR4 => MAN_6_IBUF_0,
      ADR0 => MAN_3_IBUF_0,
      ADR2 => MAN_4_IBUF_0,
      ADR3 => MAN_5_IBUF_0,
      O => U1_GND_4_o_X_26_equal_20_o_mmx_out
    );
  U1_Mmux_SHIFT4111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"0000000001010101"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => MAN_10_IBUF_0,
      ADR5 => MAN_9_IBUF_0,
      ADR0 => MAN_7_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      O => U1_Mmux_SHIFT411
    );
  ShiftPos_0_ShiftPos_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U5_GEN_23_U_X_S_AND_4_o1,
      O => U5_GEN_23_U_X_S_AND_4_o1_0
    );
  U1_Mmux_SHIFT16 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U1_Mmux_SHIFT14_1025,
      ADR4 => MAN_26_IBUF_0,
      ADR5 => '1',
      O => ShiftPos(0)
    );
  U5_GEN_23_U_X_S_AND_4_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"AAAACACA"
    )
    port map (
      ADR3 => '1',
      ADR0 => MAN_21_IBUF_0,
      ADR1 => MAN_20_IBUF_0,
      ADR2 => U1_Mmux_SHIFT14_1025,
      ADR4 => MAN_26_IBUF_0,
      O => U5_GEN_23_U_X_S_AND_4_o1
    );
  U4_GEN_2_U_X_S_AND_4_o : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"004D004400B200BB"
    )
    port map (
      ADR3 => n0007(8),
      ADR5 => N2,
      ADR1 => ShiftPos(1),
      ADR0 => EXP_1_IBUF_0,
      ADR2 => EXP_0_IBUF_0,
      ADR4 => ShiftPos(0),
      O => NEXP_2_OBUF_1082
    );
  ShiftPos_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"33FF0F5533330F0F"
    )
    port map (
      ADR4 => ShiftPos(1),
      ADR1 => MAN_0_IBUF_0,
      ADR5 => U1_Mmux_SHIFT14_1025,
      ADR3 => MAN_26_IBUF_0,
      ADR2 => MAN_2_IBUF_0,
      ADR0 => MAN_1_IBUF_0,
      O => ShiftPos_1_mmx_out10
    );
  U1_Mmux_SHIFT11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y103",
      INIT => X"CFCCCFCCCFCFCFCD"
    )
    port map (
      ADR2 => MAN_4_IBUF_0,
      ADR5 => MAN_2_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR0 => MAN_0_IBUF_0,
      ADR3 => MAN_3_IBUF_0,
      ADR1 => MAN_5_IBUF_0,
      O => U1_Mmux_SHIFT1
    );
  NlwBufferBlock_NMAN_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_18_OBUF_1032,
      O => NlwBufferSignal_NMAN_18_OBUF_I
    );
  NlwBufferBlock_NMAN_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_26_OBUF_1033,
      O => NlwBufferSignal_NMAN_26_OBUF_I
    );
  NlwBufferBlock_NMAN_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_19_OBUF_1034,
      O => NlwBufferSignal_NMAN_19_OBUF_I
    );
  NlwBufferBlock_NMAN_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_0_OBUF_1044,
      O => NlwBufferSignal_NMAN_0_OBUF_I
    );
  NlwBufferBlock_NMAN_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_1_OBUF_1045,
      O => NlwBufferSignal_NMAN_1_OBUF_I
    );
  NlwBufferBlock_NMAN_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_2_OBUF_1054,
      O => NlwBufferSignal_NMAN_2_OBUF_I
    );
  NlwBufferBlock_NMAN_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_3_OBUF_1060,
      O => NlwBufferSignal_NMAN_3_OBUF_I
    );
  NlwBufferBlock_NMAN_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_4_OBUF_1065,
      O => NlwBufferSignal_NMAN_4_OBUF_I
    );
  NlwBufferBlock_NMAN_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_5_OBUF_1066,
      O => NlwBufferSignal_NMAN_5_OBUF_I
    );
  NlwBufferBlock_NMAN_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_6_OBUF_1070,
      O => NlwBufferSignal_NMAN_6_OBUF_I
    );
  NlwBufferBlock_NMAN_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_7_OBUF_1074,
      O => NlwBufferSignal_NMAN_7_OBUF_I
    );
  NlwBufferBlock_NMAN_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_8_OBUF_1075,
      O => NlwBufferSignal_NMAN_8_OBUF_I
    );
  NlwBufferBlock_NMAN_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_9_OBUF_1015,
      O => NlwBufferSignal_NMAN_9_OBUF_I
    );
  NlwBufferBlock_NEXP_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_0_OBUF_1077,
      O => NlwBufferSignal_NEXP_0_OBUF_I
    );
  NlwBufferBlock_NEXP_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_1_OBUF_1080,
      O => NlwBufferSignal_NEXP_1_OBUF_I
    );
  NlwBufferBlock_NEXP_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_2_OBUF_1082,
      O => NlwBufferSignal_NEXP_2_OBUF_I
    );
  NlwBufferBlock_NEXP_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_3_OBUF_1071,
      O => NlwBufferSignal_NEXP_3_OBUF_I
    );
  NlwBufferBlock_NEXP_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_4_OBUF_1078,
      O => NlwBufferSignal_NEXP_4_OBUF_I
    );
  NlwBufferBlock_NEXP_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_5_OBUF_1083,
      O => NlwBufferSignal_NEXP_5_OBUF_I
    );
  NlwBufferBlock_NEXP_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_6_OBUF_1079,
      O => NlwBufferSignal_NEXP_6_OBUF_I
    );
  NlwBufferBlock_NEXP_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEXP_7_OBUF_0,
      O => NlwBufferSignal_NEXP_7_OBUF_I
    );
  NlwBufferBlock_NMAN_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_10_OBUF_1087,
      O => NlwBufferSignal_NMAN_10_OBUF_I
    );
  NlwBufferBlock_NMAN_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_11_OBUF_1010,
      O => NlwBufferSignal_NMAN_11_OBUF_I
    );
  NlwBufferBlock_NMAN_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_12_OBUF_1093,
      O => NlwBufferSignal_NMAN_12_OBUF_I
    );
  NlwBufferBlock_NMAN_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_20_OBUF_0,
      O => NlwBufferSignal_NMAN_20_OBUF_I
    );
  NlwBufferBlock_NMAN_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_13_OBUF_1097,
      O => NlwBufferSignal_NMAN_13_OBUF_I
    );
  NlwBufferBlock_NMAN_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_21_OBUF_1102,
      O => NlwBufferSignal_NMAN_21_OBUF_I
    );
  NlwBufferBlock_NMAN_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_14_OBUF_1085,
      O => NlwBufferSignal_NMAN_14_OBUF_I
    );
  NlwBufferBlock_NMAN_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_22_OBUF_1104,
      O => NlwBufferSignal_NMAN_22_OBUF_I
    );
  NlwBufferBlock_NMAN_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_15_OBUF_1106,
      O => NlwBufferSignal_NMAN_15_OBUF_I
    );
  NlwBufferBlock_NMAN_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_23_OBUF_0,
      O => NlwBufferSignal_NMAN_23_OBUF_I
    );
  NlwBufferBlock_NMAN_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_16_OBUF_1108,
      O => NlwBufferSignal_NMAN_16_OBUF_I
    );
  NlwBufferBlock_NMAN_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_24_OBUF_1098,
      O => NlwBufferSignal_NMAN_24_OBUF_I
    );
  NlwBufferBlock_NMAN_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_17_OBUF_1109,
      O => NlwBufferSignal_NMAN_17_OBUF_I
    );
  NlwBufferBlock_NMAN_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMAN_25_OBUF_0,
      O => NlwBufferSignal_NMAN_25_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

