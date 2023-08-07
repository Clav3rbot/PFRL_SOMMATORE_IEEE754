--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SUM_timesim.vhd
-- /___/   /\     Timestamp: Sun Aug  6 11:26:33 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf SUM.pcf -rpw 100 -tpw 0 -ar Structure -tm SUM -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim SUM.ncd SUM_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: SUM.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/SUM_timesim.vhd
-- # of Entities	: 1
-- Design Name	: SUM
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

entity SUM is
  port (
    XSIGN : in STD_LOGIC := 'X'; 
    YSIGN : in STD_LOGIC := 'X'; 
    EXPINCR : out STD_LOGIC; 
    XMAN : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    YMAN : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    ZMANT : out STD_LOGIC_VECTOR ( 23 downto 0 ) 
  );
end SUM;

architecture Structure of SUM is
  signal ZMANT_7_OBUF_682 : STD_LOGIC; 
  signal XMAN_11_IBUF_0 : STD_LOGIC; 
  signal ZMANT_8_OBUF_684 : STD_LOGIC; 
  signal XMAN_12_IBUF_0 : STD_LOGIC; 
  signal XMAN_20_IBUF_0 : STD_LOGIC; 
  signal ZMANT_9_OBUF_687 : STD_LOGIC; 
  signal XMAN_0_IBUF_0 : STD_LOGIC; 
  signal XSIGN_IBUF_0 : STD_LOGIC; 
  signal XMAN_13_IBUF_0 : STD_LOGIC; 
  signal XMAN_21_IBUF_0 : STD_LOGIC; 
  signal XMAN_1_IBUF_0 : STD_LOGIC; 
  signal XMAN_14_IBUF_0 : STD_LOGIC; 
  signal XMAN_22_IBUF_0 : STD_LOGIC; 
  signal XMAN_2_IBUF_0 : STD_LOGIC; 
  signal XMAN_15_IBUF_0 : STD_LOGIC; 
  signal XMAN_23_IBUF_0 : STD_LOGIC; 
  signal XMAN_8_IBUF_0 : STD_LOGIC; 
  signal C2Mant_8_0 : STD_LOGIC; 
  signal U2_GEN_8_U_Mxor_S_xo_0_1_700 : STD_LOGIC; 
  signal XMAN_9_IBUF_0 : STD_LOGIC; 
  signal U1_U1_GEN_9_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal XMAN_3_IBUF_0 : STD_LOGIC; 
  signal C2Mant_11_Q : STD_LOGIC; 
  signal U1_U1_GEN_7_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal XMAN_16_IBUF_0 : STD_LOGIC; 
  signal ZMANT_1_OBUF_712 : STD_LOGIC; 
  signal YMAN_1_IBUF_0 : STD_LOGIC; 
  signal YMAN_0_IBUF_0 : STD_LOGIC; 
  signal YSIGN_IBUF_0 : STD_LOGIC; 
  signal XMAN_4_IBUF_0 : STD_LOGIC; 
  signal XMAN_17_IBUF_0 : STD_LOGIC; 
  signal XMAN_5_IBUF_0 : STD_LOGIC; 
  signal U1_U1_GEN_2_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal YMAN_8_IBUF_0 : STD_LOGIC; 
  signal XMAN_18_IBUF_0 : STD_LOGIC; 
  signal XMAN_6_IBUF_0 : STD_LOGIC; 
  signal ZMANT_13_OBUF_729 : STD_LOGIC; 
  signal C2Mant_12_Q : STD_LOGIC; 
  signal U2_GEN_12_U_Mxor_S_xo_0_1_731 : STD_LOGIC; 
  signal U1_U1_GEN_13_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal XMAN_19_IBUF_0 : STD_LOGIC; 
  signal XMAN_7_IBUF_0 : STD_LOGIC; 
  signal ZMANT_4_OBUF_736 : STD_LOGIC; 
  signal U2_GEN_4_U_Mxor_S_xo_0_1_737 : STD_LOGIC; 
  signal U2_GEN_18_U_Mxor_S_xo_0_1_738 : STD_LOGIC; 
  signal U1_U1_GEN_17_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal C2Mant_16_Q : STD_LOGIC; 
  signal U2_GEN_16_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal ZMANT_19_OBUF_743 : STD_LOGIC; 
  signal C2Mant_18_0 : STD_LOGIC; 
  signal C2Mant_19_Q : STD_LOGIC; 
  signal U2_GEN_20_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal YMAN_10_IBUF_0 : STD_LOGIC; 
  signal YMAN_11_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_14_U_Mxor_S_xo_0_1_749 : STD_LOGIC; 
  signal ZMANT_15_OBUF_750 : STD_LOGIC; 
  signal C2Mant_15_Q : STD_LOGIC; 
  signal YMAN_12_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_2_U_Mxor_S_xo_0_2 : STD_LOGIC; 
  signal YMAN_20_IBUF_0 : STD_LOGIC; 
  signal YMAN_13_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_10_U_Mxor_S_xo_0_1_756 : STD_LOGIC; 
  signal ZMANT_11_OBUF_757 : STD_LOGIC; 
  signal XMAN_10_IBUF_0 : STD_LOGIC; 
  signal C2Mant_10_0 : STD_LOGIC; 
  signal YMAN_21_IBUF_0 : STD_LOGIC; 
  signal YMAN_14_IBUF_0 : STD_LOGIC; 
  signal U1_XXorS_19_0 : STD_LOGIC; 
  signal EXPINCR_OBUF_766 : STD_LOGIC; 
  signal C2Mant_23_0 : STD_LOGIC; 
  signal C2Mant_22_0 : STD_LOGIC; 
  signal U2_GEN_22_U_Mxor_S_xo_0_1_769 : STD_LOGIC; 
  signal OperationLogic : STD_LOGIC; 
  signal ZMANT_21_OBUF_771 : STD_LOGIC; 
  signal C2Mant_20_Q : STD_LOGIC; 
  signal YMAN_22_IBUF_0 : STD_LOGIC; 
  signal C2Mant_6_Q : STD_LOGIC; 
  signal U2_GEN_6_U_Mxor_S_xo_0_1_775 : STD_LOGIC; 
  signal YMAN_15_IBUF_0 : STD_LOGIC; 
  signal YMAN_23_IBUF_0 : STD_LOGIC; 
  signal YMAN_16_IBUF_0 : STD_LOGIC; 
  signal ZMANT_23_OBUF_779 : STD_LOGIC; 
  signal U1_U1_GEN_22_U_Mxor_S_xo_0_1_780 : STD_LOGIC; 
  signal YMAN_17_IBUF_0 : STD_LOGIC; 
  signal ZMANT_20_OBUF_783 : STD_LOGIC; 
  signal YMAN_18_IBUF_0 : STD_LOGIC; 
  signal ZMANT_6_OBUF_785 : STD_LOGIC; 
  signal YMAN_19_IBUF_0 : STD_LOGIC; 
  signal ZMANT_18_OBUF_787 : STD_LOGIC; 
  signal ZMANT_22_OBUF_788 : STD_LOGIC; 
  signal ZMANT_14_OBUF_789 : STD_LOGIC; 
  signal ZMANT_10_OBUF_791 : STD_LOGIC; 
  signal ZMANT_16_OBUF_792 : STD_LOGIC; 
  signal U1_XXorS_15_0 : STD_LOGIC; 
  signal YMAN_9_IBUF_0 : STD_LOGIC; 
  signal ZMANT_17_OBUF_796 : STD_LOGIC; 
  signal ZMANT_2_OBUF_797 : STD_LOGIC; 
  signal YMAN_2_IBUF_0 : STD_LOGIC; 
  signal C2Mant_4_Q : STD_LOGIC; 
  signal YMAN_4_IBUF_0 : STD_LOGIC; 
  signal YMAN_6_IBUF_0 : STD_LOGIC; 
  signal ZMANT_12_OBUF_802 : STD_LOGIC; 
  signal ZMANT_0_OBUF_0 : STD_LOGIC; 
  signal ZMANT_5_OBUF_804 : STD_LOGIC; 
  signal C2Mant_5_Q : STD_LOGIC; 
  signal ZMANT_3_OBUF_806 : STD_LOGIC; 
  signal YMAN_3_IBUF_0 : STD_LOGIC; 
  signal YMAN_5_IBUF_0 : STD_LOGIC; 
  signal YMAN_7_IBUF_0 : STD_LOGIC; 
  signal C2Mant_21_Q : STD_LOGIC; 
  signal C2Mant_1_Q : STD_LOGIC; 
  signal C2Mant_2_Q : STD_LOGIC; 
  signal C2Mant_14_Q : STD_LOGIC; 
  signal XMAN_11_IBUF_3 : STD_LOGIC; 
  signal XMAN_12_IBUF_8 : STD_LOGIC; 
  signal XMAN_20_IBUF_11 : STD_LOGIC; 
  signal XMAN_0_IBUF_16 : STD_LOGIC; 
  signal XSIGN_IBUF_19 : STD_LOGIC; 
  signal XMAN_13_IBUF_22 : STD_LOGIC; 
  signal XMAN_21_IBUF_25 : STD_LOGIC; 
  signal XMAN_1_IBUF_28 : STD_LOGIC; 
  signal XMAN_14_IBUF_31 : STD_LOGIC; 
  signal XMAN_22_IBUF_34 : STD_LOGIC; 
  signal XMAN_2_IBUF_37 : STD_LOGIC; 
  signal XMAN_15_IBUF_40 : STD_LOGIC; 
  signal XMAN_23_IBUF_43 : STD_LOGIC; 
  signal XMAN_3_IBUF_46 : STD_LOGIC; 
  signal XMAN_16_IBUF_49 : STD_LOGIC; 
  signal XMAN_4_IBUF_52 : STD_LOGIC; 
  signal XMAN_17_IBUF_55 : STD_LOGIC; 
  signal XMAN_5_IBUF_58 : STD_LOGIC; 
  signal XMAN_18_IBUF_61 : STD_LOGIC; 
  signal XMAN_6_IBUF_64 : STD_LOGIC; 
  signal XMAN_19_IBUF_67 : STD_LOGIC; 
  signal XMAN_7_IBUF_70 : STD_LOGIC; 
  signal XMAN_8_IBUF_73 : STD_LOGIC; 
  signal YSIGN_IBUF_76 : STD_LOGIC; 
  signal XMAN_9_IBUF_79 : STD_LOGIC; 
  signal YMAN_10_IBUF_82 : STD_LOGIC; 
  signal YMAN_11_IBUF_85 : STD_LOGIC; 
  signal YMAN_12_IBUF_88 : STD_LOGIC; 
  signal YMAN_20_IBUF_91 : STD_LOGIC; 
  signal YMAN_13_IBUF_94 : STD_LOGIC; 
  signal YMAN_21_IBUF_97 : STD_LOGIC; 
  signal YMAN_14_IBUF_100 : STD_LOGIC; 
  signal YMAN_22_IBUF_103 : STD_LOGIC; 
  signal YMAN_15_IBUF_106 : STD_LOGIC; 
  signal YMAN_23_IBUF_109 : STD_LOGIC; 
  signal YMAN_16_IBUF_112 : STD_LOGIC; 
  signal YMAN_17_IBUF_115 : STD_LOGIC; 
  signal YMAN_18_IBUF_118 : STD_LOGIC; 
  signal YMAN_19_IBUF_121 : STD_LOGIC; 
  signal YMAN_0_IBUF_132 : STD_LOGIC; 
  signal YMAN_1_IBUF_139 : STD_LOGIC; 
  signal YMAN_2_IBUF_146 : STD_LOGIC; 
  signal YMAN_3_IBUF_153 : STD_LOGIC; 
  signal YMAN_4_IBUF_160 : STD_LOGIC; 
  signal YMAN_5_IBUF_165 : STD_LOGIC; 
  signal YMAN_6_IBUF_170 : STD_LOGIC; 
  signal YMAN_7_IBUF_175 : STD_LOGIC; 
  signal YMAN_8_IBUF_178 : STD_LOGIC; 
  signal YMAN_9_IBUF_181 : STD_LOGIC; 
  signal XMAN_10_IBUF_198 : STD_LOGIC; 
  signal U2_GEN_22_U_Mxor_S_xo_0_1_pack_2 : STD_LOGIC; 
  signal C2Mant_22_Q : STD_LOGIC; 
  signal C2Mant_23_Q : STD_LOGIC; 
  signal C2Mant_10_Q : STD_LOGIC; 
  signal U1_XXorS_9_pack_3 : STD_LOGIC; 
  signal U2_GEN_6_U_Mxor_S_xo_0_1_pack_3 : STD_LOGIC; 
  signal C2Mant_1_pack_8 : STD_LOGIC; 
  signal U1_XXorS_17_pack_3 : STD_LOGIC; 
  signal U1_XXorS_11_pack_4 : STD_LOGIC; 
  signal U1_U1_GEN_13_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U1_U1_GEN_9_U_Mxor_S_xo_0_1_pack_6 : STD_LOGIC; 
  signal ZMANT_0_OBUF_456 : STD_LOGIC; 
  signal U2_GEN_12_U_Mxor_S_xo_0_1_pack_8 : STD_LOGIC; 
  signal C2Mant_8_Q : STD_LOGIC; 
  signal U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_9 : STD_LOGIC; 
  signal U1_XXorS_4_pack_6 : STD_LOGIC; 
  signal U1_XXorS_2_pack_1 : STD_LOGIC; 
  signal C2Mant_14_pack_3 : STD_LOGIC; 
  signal U2_GEN_16_U_Mxor_S_xo_0_1_536 : STD_LOGIC; 
  signal U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_1 : STD_LOGIC; 
  signal C2Mant_18_Q : STD_LOGIC; 
  signal U2_GEN_20_U_Mxor_S_xo_0_1_593 : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_EXPINCR_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_6_OBUF_I : STD_LOGIC; 
  signal U1_XXorS : STD_LOGIC_VECTOR ( 22 downto 2 ); 
begin
  ZMANT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_ZMANT_7_OBUF_I,
      O => ZMANT(7)
    );
  XMAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_11_IBUF_3,
      I => XMAN(11)
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_11_IBUF_3,
      O => XMAN_11_IBUF_0
    );
  ZMANT_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_ZMANT_8_OBUF_I,
      O => ZMANT(8)
    );
  XMAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_12_IBUF_8,
      I => XMAN(12)
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_12_IBUF_8,
      O => XMAN_12_IBUF_0
    );
  XMAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_20_IBUF_11,
      I => XMAN(20)
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_20_IBUF_11,
      O => XMAN_20_IBUF_0
    );
  ZMANT_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_ZMANT_9_OBUF_I,
      O => ZMANT(9)
    );
  XMAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_0_IBUF_16,
      I => XMAN(0)
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_0_IBUF_16,
      O => XMAN_0_IBUF_0
    );
  XSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD384",
      PATHPULSE => 202 ps
    )
    port map (
      O => XSIGN_IBUF_19,
      I => XSIGN
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD384",
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_IBUF_19,
      O => XSIGN_IBUF_0
    );
  XMAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_13_IBUF_22,
      I => XMAN(13)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_13_IBUF_22,
      O => XMAN_13_IBUF_0
    );
  XMAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_21_IBUF_25,
      I => XMAN(21)
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_21_IBUF_25,
      O => XMAN_21_IBUF_0
    );
  XMAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_1_IBUF_28,
      I => XMAN(1)
    );
  ProtoComp1_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_1_IBUF_28,
      O => XMAN_1_IBUF_0
    );
  XMAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_14_IBUF_31,
      I => XMAN(14)
    );
  ProtoComp1_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_14_IBUF_31,
      O => XMAN_14_IBUF_0
    );
  XMAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_22_IBUF_34,
      I => XMAN(22)
    );
  ProtoComp1_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_22_IBUF_34,
      O => XMAN_22_IBUF_0
    );
  XMAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_2_IBUF_37,
      I => XMAN(2)
    );
  ProtoComp1_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_2_IBUF_37,
      O => XMAN_2_IBUF_0
    );
  XMAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_15_IBUF_40,
      I => XMAN(15)
    );
  ProtoComp1_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_15_IBUF_40,
      O => XMAN_15_IBUF_0
    );
  XMAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_23_IBUF_43,
      I => XMAN(23)
    );
  ProtoComp1_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_23_IBUF_43,
      O => XMAN_23_IBUF_0
    );
  XMAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_3_IBUF_46,
      I => XMAN(3)
    );
  ProtoComp1_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_3_IBUF_46,
      O => XMAN_3_IBUF_0
    );
  XMAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_16_IBUF_49,
      I => XMAN(16)
    );
  ProtoComp1_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_16_IBUF_49,
      O => XMAN_16_IBUF_0
    );
  XMAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_4_IBUF_52,
      I => XMAN(4)
    );
  ProtoComp1_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_4_IBUF_52,
      O => XMAN_4_IBUF_0
    );
  XMAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_17_IBUF_55,
      I => XMAN(17)
    );
  ProtoComp1_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_17_IBUF_55,
      O => XMAN_17_IBUF_0
    );
  XMAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_5_IBUF_58,
      I => XMAN(5)
    );
  ProtoComp1_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_5_IBUF_58,
      O => XMAN_5_IBUF_0
    );
  XMAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_18_IBUF_61,
      I => XMAN(18)
    );
  ProtoComp1_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_18_IBUF_61,
      O => XMAN_18_IBUF_0
    );
  XMAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_6_IBUF_64,
      I => XMAN(6)
    );
  ProtoComp1_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_6_IBUF_64,
      O => XMAN_6_IBUF_0
    );
  XMAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_19_IBUF_67,
      I => XMAN(19)
    );
  ProtoComp1_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_19_IBUF_67,
      O => XMAN_19_IBUF_0
    );
  XMAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_7_IBUF_70,
      I => XMAN(7)
    );
  ProtoComp1_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_7_IBUF_70,
      O => XMAN_7_IBUF_0
    );
  XMAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_8_IBUF_73,
      I => XMAN(8)
    );
  ProtoComp1_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_8_IBUF_73,
      O => XMAN_8_IBUF_0
    );
  YSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      O => YSIGN_IBUF_76,
      I => YSIGN
    );
  ProtoComp1_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      I => YSIGN_IBUF_76,
      O => YSIGN_IBUF_0
    );
  XMAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_9_IBUF_79,
      I => XMAN(9)
    );
  ProtoComp1_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_9_IBUF_79,
      O => XMAN_9_IBUF_0
    );
  YMAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_10_IBUF_82,
      I => YMAN(10)
    );
  ProtoComp1_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_10_IBUF_82,
      O => YMAN_10_IBUF_0
    );
  YMAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_11_IBUF_85,
      I => YMAN(11)
    );
  ProtoComp1_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_11_IBUF_85,
      O => YMAN_11_IBUF_0
    );
  YMAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_12_IBUF_88,
      I => YMAN(12)
    );
  ProtoComp1_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_12_IBUF_88,
      O => YMAN_12_IBUF_0
    );
  YMAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_20_IBUF_91,
      I => YMAN(20)
    );
  ProtoComp1_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_20_IBUF_91,
      O => YMAN_20_IBUF_0
    );
  YMAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_13_IBUF_94,
      I => YMAN(13)
    );
  ProtoComp1_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_13_IBUF_94,
      O => YMAN_13_IBUF_0
    );
  YMAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_21_IBUF_97,
      I => YMAN(21)
    );
  ProtoComp1_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_21_IBUF_97,
      O => YMAN_21_IBUF_0
    );
  YMAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_14_IBUF_100,
      I => YMAN(14)
    );
  ProtoComp1_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_14_IBUF_100,
      O => YMAN_14_IBUF_0
    );
  YMAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_22_IBUF_103,
      I => YMAN(22)
    );
  ProtoComp1_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_22_IBUF_103,
      O => YMAN_22_IBUF_0
    );
  YMAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_15_IBUF_106,
      I => YMAN(15)
    );
  ProtoComp1_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_15_IBUF_106,
      O => YMAN_15_IBUF_0
    );
  YMAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_23_IBUF_109,
      I => YMAN(23)
    );
  ProtoComp1_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_23_IBUF_109,
      O => YMAN_23_IBUF_0
    );
  YMAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_16_IBUF_112,
      I => YMAN(16)
    );
  ProtoComp1_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_16_IBUF_112,
      O => YMAN_16_IBUF_0
    );
  YMAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_17_IBUF_115,
      I => YMAN(17)
    );
  ProtoComp1_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_17_IBUF_115,
      O => YMAN_17_IBUF_0
    );
  YMAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_18_IBUF_118,
      I => YMAN(18)
    );
  ProtoComp1_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_18_IBUF_118,
      O => YMAN_18_IBUF_0
    );
  YMAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_19_IBUF_121,
      I => YMAN(19)
    );
  ProtoComp1_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_19_IBUF_121,
      O => YMAN_19_IBUF_0
    );
  ZMANT_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_ZMANT_10_OBUF_I,
      O => ZMANT(10)
    );
  ZMANT_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_ZMANT_11_OBUF_I,
      O => ZMANT(11)
    );
  ZMANT_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_ZMANT_12_OBUF_I,
      O => ZMANT(12)
    );
  ZMANT_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD376"
    )
    port map (
      I => NlwBufferSignal_ZMANT_20_OBUF_I,
      O => ZMANT(20)
    );
  YMAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_0_IBUF_132,
      I => YMAN(0)
    );
  ProtoComp1_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_0_IBUF_132,
      O => YMAN_0_IBUF_0
    );
  ZMANT_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_ZMANT_13_OBUF_I,
      O => ZMANT(13)
    );
  ZMANT_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD379"
    )
    port map (
      I => NlwBufferSignal_ZMANT_21_OBUF_I,
      O => ZMANT(21)
    );
  YMAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_1_IBUF_139,
      I => YMAN(1)
    );
  ProtoComp1_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_1_IBUF_139,
      O => YMAN_1_IBUF_0
    );
  ZMANT_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_ZMANT_14_OBUF_I,
      O => ZMANT(14)
    );
  ZMANT_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD378"
    )
    port map (
      I => NlwBufferSignal_ZMANT_22_OBUF_I,
      O => ZMANT(22)
    );
  YMAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_2_IBUF_146,
      I => YMAN(2)
    );
  ProtoComp1_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_2_IBUF_146,
      O => YMAN_2_IBUF_0
    );
  ZMANT_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_ZMANT_15_OBUF_I,
      O => ZMANT(15)
    );
  ZMANT_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD381"
    )
    port map (
      I => NlwBufferSignal_ZMANT_23_OBUF_I,
      O => ZMANT(23)
    );
  YMAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_3_IBUF_153,
      I => YMAN(3)
    );
  ProtoComp1_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_3_IBUF_153,
      O => YMAN_3_IBUF_0
    );
  EXPINCR_OBUF : X_OBUF
    generic map(
      LOC => "PAD380"
    )
    port map (
      I => NlwBufferSignal_EXPINCR_OBUF_I,
      O => EXPINCR
    );
  ZMANT_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD369"
    )
    port map (
      I => NlwBufferSignal_ZMANT_16_OBUF_I,
      O => ZMANT(16)
    );
  YMAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_4_IBUF_160,
      I => YMAN(4)
    );
  ProtoComp1_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_4_IBUF_160,
      O => YMAN_4_IBUF_0
    );
  ZMANT_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD375"
    )
    port map (
      I => NlwBufferSignal_ZMANT_17_OBUF_I,
      O => ZMANT(17)
    );
  YMAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_5_IBUF_165,
      I => YMAN(5)
    );
  ProtoComp1_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_5_IBUF_165,
      O => YMAN_5_IBUF_0
    );
  ZMANT_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD374"
    )
    port map (
      I => NlwBufferSignal_ZMANT_18_OBUF_I,
      O => ZMANT(18)
    );
  YMAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_6_IBUF_170,
      I => YMAN(6)
    );
  ProtoComp1_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_6_IBUF_170,
      O => YMAN_6_IBUF_0
    );
  ZMANT_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD377"
    )
    port map (
      I => NlwBufferSignal_ZMANT_19_OBUF_I,
      O => ZMANT(19)
    );
  YMAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_7_IBUF_175,
      I => YMAN(7)
    );
  ProtoComp1_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_7_IBUF_175,
      O => YMAN_7_IBUF_0
    );
  YMAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_8_IBUF_178,
      I => YMAN(8)
    );
  ProtoComp1_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_8_IBUF_178,
      O => YMAN_8_IBUF_0
    );
  YMAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_9_IBUF_181,
      I => YMAN(9)
    );
  ProtoComp1_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_9_IBUF_181,
      O => YMAN_9_IBUF_0
    );
  ZMANT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_ZMANT_0_OBUF_I,
      O => ZMANT(0)
    );
  ZMANT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_ZMANT_1_OBUF_I,
      O => ZMANT(1)
    );
  ZMANT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_ZMANT_2_OBUF_I,
      O => ZMANT(2)
    );
  ZMANT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_ZMANT_3_OBUF_I,
      O => ZMANT(3)
    );
  ZMANT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_ZMANT_4_OBUF_I,
      O => ZMANT(4)
    );
  ZMANT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_ZMANT_5_OBUF_I,
      O => ZMANT(5)
    );
  ZMANT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_ZMANT_6_OBUF_I,
      O => ZMANT(6)
    );
  XMAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_10_IBUF_198,
      I => XMAN(10)
    );
  ProtoComp1_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_10_IBUF_198,
      O => XMAN_10_IBUF_0
    );
  U2_GEN_22_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y107",
      INIT => X"9669699669969669"
    )
    port map (
      ADR0 => U2_GEN_22_U_Mxor_S_xo_0_1_769,
      ADR3 => XMAN_22_IBUF_0,
      ADR4 => U1_U1_GEN_22_U_Mxor_S_xo_0_1_780,
      ADR2 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR5 => YMAN_22_IBUF_0,
      O => ZMANT_22_OBUF_788
    );
  U2_GEN_20_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y107",
      INIT => X"FF0000FF00FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR4 => XMAN_20_IBUF_0,
      ADR3 => C2Mant_20_Q,
      O => ZMANT_20_OBUF_783
    );
  U1_U1_GEN_20_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y107",
      INIT => X"FFFF000077FF8800"
    )
    port map (
      ADR2 => '1',
      ADR4 => U1_XXorS(20),
      ADR5 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR3 => U1_XXorS(17),
      ADR1 => U1_XXorS(18),
      ADR0 => U1_XXorS_19_0,
      O => C2Mant_20_Q
    );
  ZMANT_21_OBUF_ZMANT_21_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_22_U_Mxor_S_xo_0_1_pack_2,
      O => U2_GEN_22_U_Mxor_S_xo_0_1_769
    );
  U2_GEN_21_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y107",
      INIT => X"C936936CC936936C"
    )
    port map (
      ADR0 => XMAN_20_IBUF_0,
      ADR4 => C2Mant_20_Q,
      ADR2 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR3 => XMAN_21_IBUF_0,
      ADR1 => C2Mant_21_Q,
      ADR5 => '1',
      O => ZMANT_21_OBUF_771
    );
  U2_GEN_22_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y107",
      INIT => X"FEC8EC80"
    )
    port map (
      ADR0 => XMAN_20_IBUF_0,
      ADR4 => C2Mant_20_Q,
      ADR2 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR3 => XMAN_21_IBUF_0,
      ADR1 => C2Mant_21_Q,
      O => U2_GEN_22_U_Mxor_S_xo_0_1_pack_2
    );
  EXPINCR1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y107",
      INIT => X"3322322032202200"
    )
    port map (
      ADR0 => XMAN_23_IBUF_0,
      ADR3 => C2Mant_23_0,
      ADR2 => XMAN_22_IBUF_0,
      ADR4 => C2Mant_22_0,
      ADR5 => U2_GEN_22_U_Mxor_S_xo_0_1_769,
      ADR1 => OperationLogic,
      O => EXPINCR_OBUF_766
    );
  U1_U1_GEN_21_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y107",
      INIT => X"F0F078F0F0F0F0F0"
    )
    port map (
      ADR2 => U1_XXorS(21),
      ADR4 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      ADR1 => U1_XXorS(18),
      ADR3 => U1_XXorS_19_0,
      ADR0 => U1_XXorS(20),
      O => C2Mant_21_Q
    );
  U2_GEN_23_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y107",
      INIT => X"E81717E88E71718E"
    )
    port map (
      ADR1 => XMAN_22_IBUF_0,
      ADR5 => U1_U1_GEN_22_U_Mxor_S_xo_0_1_780,
      ADR2 => U1_XXorS(22),
      ADR0 => U2_GEN_22_U_Mxor_S_xo_0_1_769,
      ADR4 => XMAN_23_IBUF_0,
      ADR3 => C2Mant_23_0,
      O => ZMANT_23_OBUF_779
    );
  U1_XXorS_22_U1_XXorS_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_22_Q,
      O => C2Mant_22_0
    );
  U1_Mxor_XXorS_22_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y106",
      INIT => X"9696969696969696"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_22_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(22)
    );
  U1_U1_GEN_22_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y106",
      INIT => X"96699669"
    )
    port map (
      ADR4 => '1',
      ADR3 => U1_U1_GEN_22_U_Mxor_S_xo_0_1_780,
      ADR1 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_22_IBUF_0,
      O => C2Mant_22_Q
    );
  OperationLogic_OperationLogic_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_23_Q,
      O => C2Mant_23_0
    );
  Mxor_OperationLogic_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y107",
      INIT => X"6666666666666666"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR5 => '1',
      O => OperationLogic
    );
  U1_U1_GEN_23_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y107",
      INIT => X"99666996"
    )
    port map (
      ADR3 => YMAN_23_IBUF_0,
      ADR4 => U1_U1_GEN_22_U_Mxor_S_xo_0_1_780,
      ADR2 => U1_XXorS(22),
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      O => C2Mant_23_Q
    );
  U2_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y88",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => U2_GEN_6_U_Mxor_S_xo_0_1_775,
      ADR0 => XMAN_6_IBUF_0,
      ADR2 => C2Mant_6_Q,
      O => ZMANT_6_OBUF_785
    );
  U2_GEN_7_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => X"C3963C69963C69C3"
    )
    port map (
      ADR5 => XMAN_6_IBUF_0,
      ADR0 => C2Mant_6_Q,
      ADR3 => U2_GEN_6_U_Mxor_S_xo_0_1_775,
      ADR4 => XMAN_7_IBUF_0,
      ADR1 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(7),
      O => ZMANT_7_OBUF_682
    );
  U1_U1_GEN_11_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR3 => U1_XXorS(11),
      ADR5 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(8),
      ADR1 => U1_XXorS(7),
      ADR4 => U1_XXorS(10),
      ADR2 => U1_XXorS(9),
      O => C2Mant_11_Q
    );
  U1_XXorS_13_U1_XXorS_13_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_9_pack_3,
      O => U1_XXorS(9)
    );
  U1_XXorS_13_U1_XXorS_13_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_10_Q,
      O => C2Mant_10_0
    );
  U1_Mxor_XXorS_13_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_13_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(13)
    );
  U1_Mxor_XXorS_9_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"99996666"
    )
    port map (
      ADR3 => '1',
      ADR1 => YMAN_9_IBUF_0,
      ADR4 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => '1',
      O => U1_XXorS_9_pack_3
    );
  U1_Mxor_XXorS_10_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR4 => YMAN_10_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(10)
    );
  U1_U1_GEN_10_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"96A5695A"
    )
    port map (
      ADR1 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR3 => U1_XXorS(9),
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR4 => YMAN_10_IBUF_0,
      O => C2Mant_10_Q
    );
  ZMANT_5_OBUF_ZMANT_5_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_6_U_Mxor_S_xo_0_1_pack_3,
      O => U2_GEN_6_U_Mxor_S_xo_0_1_775
    );
  U2_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"C396963CC396963C"
    )
    port map (
      ADR3 => XMAN_4_IBUF_0,
      ADR0 => C2Mant_4_Q,
      ADR4 => U2_GEN_4_U_Mxor_S_xo_0_1_737,
      ADR2 => XMAN_5_IBUF_0,
      ADR1 => C2Mant_5_Q,
      ADR5 => '1',
      O => ZMANT_5_OBUF_804
    );
  U2_GEN_6_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"FCE8E8C0"
    )
    port map (
      ADR3 => XMAN_4_IBUF_0,
      ADR0 => C2Mant_4_Q,
      ADR4 => U2_GEN_4_U_Mxor_S_xo_0_1_737,
      ADR2 => XMAN_5_IBUF_0,
      ADR1 => C2Mant_5_Q,
      O => U2_GEN_6_U_Mxor_S_xo_0_1_pack_3
    );
  U2_GEN_8_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"FCE8F3B2E8C0B230"
    )
    port map (
      ADR2 => XMAN_7_IBUF_0,
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(7),
      ADR0 => XMAN_6_IBUF_0,
      ADR5 => C2Mant_6_Q,
      ADR3 => U2_GEN_6_U_Mxor_S_xo_0_1_775,
      O => U2_GEN_8_U_Mxor_S_xo_0_1_700
    );
  U2_GEN_13_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"A596965A5A6969A5"
    )
    port map (
      ADR1 => XMAN_12_IBUF_0,
      ADR4 => C2Mant_12_Q,
      ADR3 => U2_GEN_12_U_Mxor_S_xo_0_1_731,
      ADR5 => XMAN_13_IBUF_0,
      ADR2 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR0 => U1_XXorS(13),
      O => ZMANT_13_OBUF_729
    );
  U2_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"9AAA655565559AAA"
    )
    port map (
      ADR0 => U2_GEN_4_U_Mxor_S_xo_0_1_737,
      ADR5 => XMAN_4_IBUF_0,
      ADR4 => U1_XXorS(4),
      ADR3 => U1_XXorS(3),
      ADR2 => U1_XXorS(2),
      ADR1 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      O => ZMANT_4_OBUF_736
    );
  C2Mant_2_C2Mant_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_1_pack_8,
      O => C2Mant_1_Q
    );
  U1_U1_GEN_2_U_Mxor_S_xo_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"AA5656AAAA5656AA"
    )
    port map (
      ADR0 => YMAN_2_IBUF_0,
      ADR1 => YMAN_0_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_1_IBUF_0,
      ADR5 => '1',
      O => C2Mant_2_Q
    );
  U1_U1_GEN_1_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"F03C3CF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => YMAN_0_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_1_IBUF_0,
      O => C2Mant_1_pack_8
    );
  U2_GEN_2_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"E11EC33C87780FF0"
    )
    port map (
      ADR1 => XMAN_1_IBUF_0,
      ADR5 => C2Mant_1_Q,
      ADR0 => XMAN_0_IBUF_0,
      ADR4 => YMAN_0_IBUF_0,
      ADR2 => XMAN_2_IBUF_0,
      ADR3 => C2Mant_2_Q,
      O => ZMANT_2_OBUF_797
    );
  U2_GEN_1_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"966969963333CCCC"
    )
    port map (
      ADR4 => XMAN_1_IBUF_0,
      ADR1 => YMAN_1_IBUF_0,
      ADR5 => YMAN_0_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR3 => XMAN_0_IBUF_0,
      O => ZMANT_1_OBUF_712
    );
  U2_GEN_4_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"EFADDCC4AD8CC440"
    )
    port map (
      ADR1 => XMAN_3_IBUF_0,
      ADR4 => U1_XXorS(3),
      ADR0 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR3 => XMAN_2_IBUF_0,
      ADR5 => U2_GEN_2_U_Mxor_S_xo_0_2,
      O => U2_GEN_4_U_Mxor_S_xo_0_1_737
    );
  U2_GEN_2_U_Mxor_S_xo_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"EADA8040DAEA4080"
    )
    port map (
      ADR2 => YMAN_0_IBUF_0,
      ADR1 => XMAN_0_IBUF_0,
      ADR0 => YMAN_1_IBUF_0,
      ADR5 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR4 => XMAN_1_IBUF_0,
      O => U2_GEN_2_U_Mxor_S_xo_0_2
    );
  U2_GEN_14_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y98",
      INIT => X"9696969669966996"
    )
    port map (
      ADR4 => '1',
      ADR1 => U2_GEN_14_U_Mxor_S_xo_0_1_749,
      ADR2 => XMAN_14_IBUF_0,
      ADR0 => U1_XXorS(14),
      ADR5 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR3 => U1_XXorS(13),
      O => ZMANT_14_OBUF_789
    );
  U1_XXorS_16_U1_XXorS_16_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS(15),
      O => U1_XXorS_15_0
    );
  U1_Mxor_XXorS_16_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y99",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_16_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(16)
    );
  U1_Mxor_XXorS_15_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y99",
      INIT => X"99996666"
    )
    port map (
      ADR2 => '1',
      ADR1 => YMAN_15_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR3 => '1',
      O => U1_XXorS(15)
    );
  U1_XXorS_20_U1_XXorS_20_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS(19),
      O => U1_XXorS_19_0
    );
  U1_Mxor_XXorS_20_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_20_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(20)
    );
  U1_Mxor_XXorS_19_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"AA5555AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => YMAN_19_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => '1',
      O => U1_XXorS(19)
    );
  U1_XXorS_21_U1_XXorS_21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_17_pack_3,
      O => U1_XXorS(17)
    );
  U1_Mxor_XXorS_21_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"C33CC33CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR2 => YMAN_21_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(21)
    );
  U1_Mxor_XXorS_17_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"CC3333CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => YMAN_17_IBUF_0,
      ADR1 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR2 => '1',
      O => U1_XXorS_17_pack_3
    );
  U1_U1_GEN_22_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"BFFFFFFFFFFFFFFF"
    )
    port map (
      ADR2 => U1_XXorS(20),
      ADR0 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(18),
      ADR5 => U1_XXorS(17),
      ADR4 => U1_XXorS_19_0,
      ADR3 => U1_XXorS(21),
      O => U1_U1_GEN_22_U_Mxor_S_xo_0_1_780
    );
  U2_GEN_17_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"C993366C366CC993"
    )
    port map (
      ADR2 => XMAN_16_IBUF_0,
      ADR0 => C2Mant_16_Q,
      ADR3 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      ADR5 => XMAN_17_IBUF_0,
      ADR4 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(17),
      O => ZMANT_17_OBUF_796
    );
  U2_GEN_18_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y107",
      INIT => X"96699669C33CC33C"
    )
    port map (
      ADR4 => '1',
      ADR2 => U2_GEN_18_U_Mxor_S_xo_0_1_738,
      ADR3 => XMAN_18_IBUF_0,
      ADR1 => U1_XXorS(18),
      ADR0 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      O => ZMANT_18_OBUF_787
    );
  U2_GEN_10_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y89",
      INIT => X"9C639C63639C639C"
    )
    port map (
      ADR4 => '1',
      ADR3 => U2_GEN_10_U_Mxor_S_xo_0_1_756,
      ADR5 => XMAN_10_IBUF_0,
      ADR1 => U1_XXorS(10),
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(9),
      O => ZMANT_10_OBUF_791
    );
  U1_XXorS_7_U1_XXorS_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_9_U_Mxor_S_xo_0_1_pack_6,
      O => U1_U1_GEN_9_U_Mxor_S_xo_0_1
    );
  U1_XXorS_7_U1_XXorS_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_13_U_Mxor_S_xo_0_1,
      O => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0
    );
  U1_XXorS_7_U1_XXorS_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_11_pack_4,
      O => U1_XXorS(11)
    );
  U1_Mxor_XXorS_7_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR3 => YMAN_7_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(7)
    );
  U1_U1_GEN_9_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"FFFF7BED"
    )
    port map (
      ADR1 => YMAN_8_IBUF_0,
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR3 => YMAN_7_IBUF_0,
      O => U1_U1_GEN_9_U_Mxor_S_xo_0_1_pack_6
    );
  U2_GEN_8_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"A5F05A0F5A0FA5F0"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_GEN_8_U_Mxor_S_xo_0_1_700,
      ADR2 => XMAN_8_IBUF_0,
      ADR4 => U1_XXorS(8),
      ADR0 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR3 => U1_XXorS(7),
      O => ZMANT_8_OBUF_684
    );
  U1_U1_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"DFFF2000DFFF2000"
    )
    port map (
      ADR4 => U1_XXorS(12),
      ADR1 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(10),
      ADR3 => U1_XXorS(11),
      ADR2 => U1_XXorS(9),
      ADR5 => '1',
      O => C2Mant_12_Q
    );
  U1_U1_GEN_13_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"DFFFFFFF"
    )
    port map (
      ADR4 => U1_XXorS(12),
      ADR1 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(10),
      ADR3 => U1_XXorS(11),
      ADR2 => U1_XXorS(9),
      O => U1_U1_GEN_13_U_Mxor_S_xo_0_1
    );
  U1_Mxor_XXorS_12_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"C3C33C3CC3C33C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_12_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(12)
    );
  U1_Mxor_XXorS_11_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y90",
      INIT => X"CC3333CC"
    )
    port map (
      ADR0 => '1',
      ADR3 => YMAN_11_IBUF_0,
      ADR1 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => '1',
      O => U1_XXorS_11_pack_4
    );
  ZMANT_11_OBUF_ZMANT_11_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_12_U_Mxor_S_xo_0_1_pack_8,
      O => U2_GEN_12_U_Mxor_S_xo_0_1_731
    );
  ZMANT_11_OBUF_ZMANT_11_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_0_OBUF_456,
      O => ZMANT_0_OBUF_0
    );
  U2_GEN_11_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"E11E8778E11E8778"
    )
    port map (
      ADR1 => XMAN_10_IBUF_0,
      ADR0 => C2Mant_10_0,
      ADR4 => U2_GEN_10_U_Mxor_S_xo_0_1_756,
      ADR3 => XMAN_11_IBUF_0,
      ADR2 => C2Mant_11_Q,
      ADR5 => '1',
      O => ZMANT_11_OBUF_757
    );
  U2_GEN_12_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"FEE0F880"
    )
    port map (
      ADR1 => XMAN_10_IBUF_0,
      ADR0 => C2Mant_10_0,
      ADR4 => U2_GEN_10_U_Mxor_S_xo_0_1_756,
      ADR3 => XMAN_11_IBUF_0,
      ADR2 => C2Mant_11_Q,
      O => U2_GEN_12_U_Mxor_S_xo_0_1_pack_8
    );
  U2_GEN_10_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"FAF5E8D4E8D4A050"
    )
    port map (
      ADR2 => XMAN_9_IBUF_0,
      ADR3 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(9),
      ADR1 => XMAN_8_IBUF_0,
      ADR5 => C2Mant_8_0,
      ADR4 => U2_GEN_8_U_Mxor_S_xo_0_1_700,
      O => U2_GEN_10_U_Mxor_S_xo_0_1_756
    );
  U2_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"9696969696969696"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => U2_GEN_12_U_Mxor_S_xo_0_1_731,
      ADR2 => XMAN_12_IBUF_0,
      ADR0 => C2Mant_12_Q,
      ADR5 => '1',
      O => ZMANT_12_OBUF_802
    );
  U2_GEN_0_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"00FFFF00"
    )
    port map (
      ADR4 => XMAN_0_IBUF_0,
      ADR3 => YMAN_0_IBUF_0,
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => '1',
      O => ZMANT_0_OBUF_456
    );
  U2_GEN_9_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"9996966666696999"
    )
    port map (
      ADR4 => XMAN_8_IBUF_0,
      ADR2 => C2Mant_8_0,
      ADR3 => U2_GEN_8_U_Mxor_S_xo_0_1_700,
      ADR5 => XMAN_9_IBUF_0,
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(9),
      O => ZMANT_9_OBUF_687
    );
  U1_XXorS_6_U1_XXorS_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_9,
      O => U1_U1_GEN_2_U_Mxor_S_xo_0_1
    );
  U1_XXorS_6_U1_XXorS_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_8_Q,
      O => C2Mant_8_0
    );
  U1_Mxor_XXorS_6_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"9999666699996666"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR4 => YMAN_6_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(6)
    );
  U1_U1_GEN_2_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"FFF9FFF9"
    )
    port map (
      ADR2 => YMAN_0_IBUF_0,
      ADR3 => YMAN_1_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR4 => '1',
      O => U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_9
    );
  U1_U1_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"C369C3C33C963C3C"
    )
    port map (
      ADR5 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR1 => YMAN_4_IBUF_0,
      ADR4 => U1_XXorS(3),
      ADR0 => U1_XXorS(2),
      ADR3 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      O => C2Mant_4_Q
    );
  U1_Mxor_XXorS_8_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_8_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(8)
    );
  U1_U1_GEN_8_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"A55A6996"
    )
    port map (
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(7),
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_8_IBUF_0,
      O => C2Mant_8_Q
    );
  U1_U1_GEN_7_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR5 => U1_XXorS(5),
      ADR4 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR3 => U1_XXorS(6),
      ADR1 => U1_XXorS(3),
      ADR2 => U1_XXorS(2),
      ADR0 => U1_XXorS(4),
      O => U1_U1_GEN_7_U_Mxor_S_xo_0_1
    );
  U1_XXorS_5_U1_XXorS_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_4_pack_6,
      O => U1_XXorS(4)
    );
  U1_Mxor_XXorS_5_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_5_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(5)
    );
  U1_Mxor_XXorS_4_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"AA5555AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => YMAN_4_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR1 => '1',
      O => U1_XXorS_4_pack_6
    );
  U1_U1_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => U1_XXorS(6),
      ADR1 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR5 => U1_XXorS(3),
      ADR3 => U1_XXorS(4),
      ADR4 => U1_XXorS(5),
      O => C2Mant_6_Q
    );
  U1_U1_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"FFFF77FF00008800"
    )
    port map (
      ADR2 => '1',
      ADR5 => U1_XXorS(5),
      ADR4 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(2),
      ADR3 => U1_XXorS(3),
      ADR1 => U1_XXorS(4),
      O => C2Mant_5_Q
    );
  U1_XXorS_3_U1_XXorS_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_2_pack_1,
      O => U1_XXorS(2)
    );
  U1_Mxor_XXorS_3_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR2 => YMAN_3_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(3)
    );
  U1_Mxor_XXorS_2_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"99669966"
    )
    port map (
      ADR2 => '1',
      ADR1 => YMAN_2_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR4 => '1',
      O => U1_XXorS_2_pack_1
    );
  U2_GEN_3_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"BD4242BDD42B2BD4"
    )
    port map (
      ADR1 => XMAN_2_IBUF_0,
      ADR0 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR5 => U2_GEN_2_U_Mxor_S_xo_0_2,
      ADR3 => XMAN_3_IBUF_0,
      ADR4 => U1_XXorS(3),
      O => ZMANT_3_OBUF_806
    );
  ZMANT_15_OBUF_ZMANT_15_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_16_U_Mxor_S_xo_0_1_536,
      O => U2_GEN_16_U_Mxor_S_xo_0_1_0
    );
  ZMANT_15_OBUF_ZMANT_15_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_14_pack_3,
      O => C2Mant_14_Q
    );
  U2_GEN_15_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"A596965AA596965A"
    )
    port map (
      ADR1 => XMAN_14_IBUF_0,
      ADR4 => C2Mant_14_Q,
      ADR3 => U2_GEN_14_U_Mxor_S_xo_0_1_749,
      ADR2 => XMAN_15_IBUF_0,
      ADR0 => C2Mant_15_Q,
      ADR5 => '1',
      O => ZMANT_15_OBUF_750
    );
  U2_GEN_16_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"FAE8E8A0"
    )
    port map (
      ADR1 => XMAN_14_IBUF_0,
      ADR4 => C2Mant_14_Q,
      ADR3 => U2_GEN_14_U_Mxor_S_xo_0_1_749,
      ADR2 => XMAN_15_IBUF_0,
      ADR0 => C2Mant_15_Q,
      O => U2_GEN_16_U_Mxor_S_xo_0_1_536
    );
  U2_GEN_14_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"FEE0F880E0FE80F8"
    )
    port map (
      ADR2 => XMAN_13_IBUF_0,
      ADR5 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR3 => U1_XXorS(13),
      ADR0 => XMAN_12_IBUF_0,
      ADR1 => C2Mant_12_Q,
      ADR4 => U2_GEN_12_U_Mxor_S_xo_0_1_731,
      O => U2_GEN_14_U_Mxor_S_xo_0_1_749
    );
  U1_Mxor_XXorS_14_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"CC3333CCCC3333CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR4 => YMAN_14_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(14)
    );
  U1_U1_GEN_14_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"C63939C6"
    )
    port map (
      ADR2 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR0 => U1_XXorS(13),
      ADR1 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR4 => YMAN_14_IBUF_0,
      O => C2Mant_14_pack_3
    );
  U1_U1_GEN_15_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"9669996699669966"
    )
    port map (
      ADR0 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR1 => YMAN_15_IBUF_0,
      ADR5 => U1_XXorS(14),
      ADR4 => U1_XXorS(13),
      ADR2 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      O => C2Mant_15_Q
    );
  C2Mant_16_C2Mant_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_1,
      O => U1_U1_GEN_17_U_Mxor_S_xo_0_1
    );
  U1_U1_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"AAAA6AAAAAAA6AAA"
    )
    port map (
      ADR0 => U1_XXorS(16),
      ADR4 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(13),
      ADR2 => U1_XXorS(14),
      ADR3 => U1_XXorS_15_0,
      ADR5 => '1',
      O => C2Mant_16_Q
    );
  U1_U1_GEN_17_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"FFFF7FFF"
    )
    port map (
      ADR0 => U1_XXorS(16),
      ADR4 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(13),
      ADR2 => U1_XXorS(14),
      ADR3 => U1_XXorS_15_0,
      O => U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_1
    );
  U2_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"AA55AA5555AA55AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      ADR0 => XMAN_16_IBUF_0,
      ADR3 => C2Mant_16_Q,
      O => ZMANT_16_OBUF_792
    );
  U1_U1_GEN_19_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"9669C33CC33CC33C"
    )
    port map (
      ADR2 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR3 => YMAN_19_IBUF_0,
      ADR4 => U1_XXorS(18),
      ADR5 => U1_XXorS(17),
      ADR0 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      O => C2Mant_19_Q
    );
  U1_XXorS_18_U1_XXorS_18_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_18_Q,
      O => C2Mant_18_0
    );
  U1_Mxor_XXorS_18_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y104",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR0 => YMAN_18_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(18)
    );
  U1_U1_GEN_18_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y104",
      INIT => X"96A5695A"
    )
    port map (
      ADR1 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR3 => U1_XXorS(17),
      ADR2 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR0 => YMAN_18_IBUF_0,
      O => C2Mant_18_Q
    );
  ZMANT_19_OBUF_ZMANT_19_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_20_U_Mxor_S_xo_0_1_593,
      O => U2_GEN_20_U_Mxor_S_xo_0_1_0
    );
  U2_GEN_19_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"9996966699969666"
    )
    port map (
      ADR4 => XMAN_18_IBUF_0,
      ADR2 => C2Mant_18_0,
      ADR3 => U2_GEN_18_U_Mxor_S_xo_0_1_738,
      ADR1 => XMAN_19_IBUF_0,
      ADR0 => C2Mant_19_Q,
      ADR5 => '1',
      O => ZMANT_19_OBUF_743
    );
  U2_GEN_20_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"EEE8E888"
    )
    port map (
      ADR4 => XMAN_18_IBUF_0,
      ADR2 => C2Mant_18_0,
      ADR3 => U2_GEN_18_U_Mxor_S_xo_0_1_738,
      ADR1 => XMAN_19_IBUF_0,
      ADR0 => C2Mant_19_Q,
      O => U2_GEN_20_U_Mxor_S_xo_0_1_593
    );
  U2_GEN_18_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"FEEAA880FDD55440"
    )
    port map (
      ADR4 => XMAN_17_IBUF_0,
      ADR0 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      ADR2 => XMAN_16_IBUF_0,
      ADR3 => C2Mant_16_Q,
      ADR1 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      O => U2_GEN_18_U_Mxor_S_xo_0_1_738
    );
  NlwBufferBlock_ZMANT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_7_OBUF_682,
      O => NlwBufferSignal_ZMANT_7_OBUF_I
    );
  NlwBufferBlock_ZMANT_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_8_OBUF_684,
      O => NlwBufferSignal_ZMANT_8_OBUF_I
    );
  NlwBufferBlock_ZMANT_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_9_OBUF_687,
      O => NlwBufferSignal_ZMANT_9_OBUF_I
    );
  NlwBufferBlock_ZMANT_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_10_OBUF_791,
      O => NlwBufferSignal_ZMANT_10_OBUF_I
    );
  NlwBufferBlock_ZMANT_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_11_OBUF_757,
      O => NlwBufferSignal_ZMANT_11_OBUF_I
    );
  NlwBufferBlock_ZMANT_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_12_OBUF_802,
      O => NlwBufferSignal_ZMANT_12_OBUF_I
    );
  NlwBufferBlock_ZMANT_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_20_OBUF_783,
      O => NlwBufferSignal_ZMANT_20_OBUF_I
    );
  NlwBufferBlock_ZMANT_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_13_OBUF_729,
      O => NlwBufferSignal_ZMANT_13_OBUF_I
    );
  NlwBufferBlock_ZMANT_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_21_OBUF_771,
      O => NlwBufferSignal_ZMANT_21_OBUF_I
    );
  NlwBufferBlock_ZMANT_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_14_OBUF_789,
      O => NlwBufferSignal_ZMANT_14_OBUF_I
    );
  NlwBufferBlock_ZMANT_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_22_OBUF_788,
      O => NlwBufferSignal_ZMANT_22_OBUF_I
    );
  NlwBufferBlock_ZMANT_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_15_OBUF_750,
      O => NlwBufferSignal_ZMANT_15_OBUF_I
    );
  NlwBufferBlock_ZMANT_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_23_OBUF_779,
      O => NlwBufferSignal_ZMANT_23_OBUF_I
    );
  NlwBufferBlock_EXPINCR_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXPINCR_OBUF_766,
      O => NlwBufferSignal_EXPINCR_OBUF_I
    );
  NlwBufferBlock_ZMANT_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_16_OBUF_792,
      O => NlwBufferSignal_ZMANT_16_OBUF_I
    );
  NlwBufferBlock_ZMANT_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_17_OBUF_796,
      O => NlwBufferSignal_ZMANT_17_OBUF_I
    );
  NlwBufferBlock_ZMANT_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_18_OBUF_787,
      O => NlwBufferSignal_ZMANT_18_OBUF_I
    );
  NlwBufferBlock_ZMANT_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_19_OBUF_743,
      O => NlwBufferSignal_ZMANT_19_OBUF_I
    );
  NlwBufferBlock_ZMANT_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_0_OBUF_0,
      O => NlwBufferSignal_ZMANT_0_OBUF_I
    );
  NlwBufferBlock_ZMANT_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_1_OBUF_712,
      O => NlwBufferSignal_ZMANT_1_OBUF_I
    );
  NlwBufferBlock_ZMANT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_2_OBUF_797,
      O => NlwBufferSignal_ZMANT_2_OBUF_I
    );
  NlwBufferBlock_ZMANT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_3_OBUF_806,
      O => NlwBufferSignal_ZMANT_3_OBUF_I
    );
  NlwBufferBlock_ZMANT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_4_OBUF_736,
      O => NlwBufferSignal_ZMANT_4_OBUF_I
    );
  NlwBufferBlock_ZMANT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_5_OBUF_804,
      O => NlwBufferSignal_ZMANT_5_OBUF_I
    );
  NlwBufferBlock_ZMANT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_6_OBUF_785,
      O => NlwBufferSignal_ZMANT_6_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

