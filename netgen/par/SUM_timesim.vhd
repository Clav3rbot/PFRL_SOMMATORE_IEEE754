--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SUM_timesim.vhd
-- /___/   /\     Timestamp: Sat Aug  5 15:51:50 2023
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
  signal ZMANT_9_OBUF_687 : STD_LOGIC; 
  signal XMAN_8_IBUF_0 : STD_LOGIC; 
  signal C2Mant_8_0 : STD_LOGIC; 
  signal U2_GEN_8_U_Mxor_S_xo_0_1_690 : STD_LOGIC; 
  signal XMAN_9_IBUF_0 : STD_LOGIC; 
  signal U1_U1_GEN_9_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal XMAN_3_IBUF_0 : STD_LOGIC; 
  signal C2Mant_11_Q : STD_LOGIC; 
  signal U1_U1_GEN_7_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal XMAN_16_IBUF_0 : STD_LOGIC; 
  signal ZMANT_1_OBUF_702 : STD_LOGIC; 
  signal YMAN_1_IBUF_0 : STD_LOGIC; 
  signal YMAN_0_IBUF_0 : STD_LOGIC; 
  signal YSIGN_IBUF_0 : STD_LOGIC; 
  signal XMAN_4_IBUF_0 : STD_LOGIC; 
  signal XMAN_17_IBUF_0 : STD_LOGIC; 
  signal U1_U1_GEN_2_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal YMAN_8_IBUF_0 : STD_LOGIC; 
  signal XMAN_5_IBUF_0 : STD_LOGIC; 
  signal XMAN_18_IBUF_0 : STD_LOGIC; 
  signal ZMANT_13_OBUF_718 : STD_LOGIC; 
  signal XMAN_12_IBUF_0 : STD_LOGIC; 
  signal C2Mant_12_Q : STD_LOGIC; 
  signal U2_GEN_12_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal U1_U1_GEN_13_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal XMAN_6_IBUF_0 : STD_LOGIC; 
  signal EXPINCR_OBUF_725 : STD_LOGIC; 
  signal C2Mant_23_Q : STD_LOGIC; 
  signal U1_U1_GEN_22_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_GEN_22_U_Mxor_S_xo_0_1_729 : STD_LOGIC; 
  signal XMAN_19_IBUF_0 : STD_LOGIC; 
  signal XMAN_7_IBUF_0 : STD_LOGIC; 
  signal ZMANT_4_OBUF_732 : STD_LOGIC; 
  signal U2_GEN_4_U_Mxor_S_xo_0_1_733 : STD_LOGIC; 
  signal U2_GEN_18_U_Mxor_S_xo_0_1_734 : STD_LOGIC; 
  signal U1_U1_GEN_17_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal C2Mant_16_Q : STD_LOGIC; 
  signal U2_GEN_16_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal ZMANT_19_OBUF_739 : STD_LOGIC; 
  signal C2Mant_18_0 : STD_LOGIC; 
  signal C2Mant_19_Q : STD_LOGIC; 
  signal U2_GEN_20_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal YMAN_10_IBUF_0 : STD_LOGIC; 
  signal YMAN_11_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_14_U_Mxor_S_xo_0_1_745 : STD_LOGIC; 
  signal ZMANT_15_OBUF_746 : STD_LOGIC; 
  signal C2Mant_14_0 : STD_LOGIC; 
  signal C2Mant_15_Q : STD_LOGIC; 
  signal YMAN_12_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_2_U_Mxor_S_xo_0_2 : STD_LOGIC; 
  signal YMAN_20_IBUF_0 : STD_LOGIC; 
  signal YMAN_13_IBUF_0 : STD_LOGIC; 
  signal U2_GEN_10_U_Mxor_S_xo_0_1_753 : STD_LOGIC; 
  signal ZMANT_11_OBUF_754 : STD_LOGIC; 
  signal XMAN_10_IBUF_0 : STD_LOGIC; 
  signal XMAN_11_IBUF_0 : STD_LOGIC; 
  signal YMAN_21_IBUF_0 : STD_LOGIC; 
  signal YMAN_14_IBUF_0 : STD_LOGIC; 
  signal ZMANT_23_OBUF_759 : STD_LOGIC; 
  signal U1_XXorS_19_0 : STD_LOGIC; 
  signal ZMANT_21_OBUF_764 : STD_LOGIC; 
  signal XMAN_20_IBUF_0 : STD_LOGIC; 
  signal C2Mant_20_Q : STD_LOGIC; 
  signal YMAN_22_IBUF_0 : STD_LOGIC; 
  signal ZMANT_7_OBUF_768 : STD_LOGIC; 
  signal C2Mant_6_Q : STD_LOGIC; 
  signal U2_GEN_6_U_Mxor_S_xo_0_1_770 : STD_LOGIC; 
  signal YMAN_15_IBUF_0 : STD_LOGIC; 
  signal YMAN_23_IBUF_0 : STD_LOGIC; 
  signal YMAN_16_IBUF_0 : STD_LOGIC; 
  signal YMAN_17_IBUF_0 : STD_LOGIC; 
  signal YMAN_18_IBUF_0 : STD_LOGIC; 
  signal ZMANT_20_OBUF_776 : STD_LOGIC; 
  signal YMAN_19_IBUF_0 : STD_LOGIC; 
  signal ZMANT_6_OBUF_778 : STD_LOGIC; 
  signal ZMANT_18_OBUF_779 : STD_LOGIC; 
  signal ZMANT_22_OBUF_780 : STD_LOGIC; 
  signal ZMANT_14_OBUF_781 : STD_LOGIC; 
  signal ZMANT_10_OBUF_783 : STD_LOGIC; 
  signal ZMANT_16_OBUF_784 : STD_LOGIC; 
  signal U1_XXorS_15_0 : STD_LOGIC; 
  signal ZMANT_17_OBUF_787 : STD_LOGIC; 
  signal YMAN_9_IBUF_0 : STD_LOGIC; 
  signal C2Mant_4_Q : STD_LOGIC; 
  signal YMAN_4_IBUF_0 : STD_LOGIC; 
  signal YMAN_6_IBUF_0 : STD_LOGIC; 
  signal ZMANT_2_OBUF_792 : STD_LOGIC; 
  signal YMAN_2_IBUF_0 : STD_LOGIC; 
  signal ZMANT_12_OBUF_794 : STD_LOGIC; 
  signal ZMANT_0_OBUF_0 : STD_LOGIC; 
  signal ZMANT_5_OBUF_796 : STD_LOGIC; 
  signal C2Mant_5_Q : STD_LOGIC; 
  signal ZMANT_3_OBUF_798 : STD_LOGIC; 
  signal YMAN_3_IBUF_0 : STD_LOGIC; 
  signal YMAN_5_IBUF_0 : STD_LOGIC; 
  signal ZMANT_8_OBUF_801 : STD_LOGIC; 
  signal YMAN_7_IBUF_0 : STD_LOGIC; 
  signal C2Mant_21_Q : STD_LOGIC; 
  signal C2Mant_1_Q : STD_LOGIC; 
  signal C2Mant_2_Q : STD_LOGIC; 
  signal C2Mant_10_Q : STD_LOGIC; 
  signal XMAN_0_IBUF_1 : STD_LOGIC; 
  signal XSIGN_IBUF_4 : STD_LOGIC; 
  signal XMAN_13_IBUF_7 : STD_LOGIC; 
  signal XMAN_21_IBUF_10 : STD_LOGIC; 
  signal XMAN_1_IBUF_13 : STD_LOGIC; 
  signal XMAN_14_IBUF_16 : STD_LOGIC; 
  signal XMAN_22_IBUF_19 : STD_LOGIC; 
  signal XMAN_2_IBUF_22 : STD_LOGIC; 
  signal XMAN_15_IBUF_25 : STD_LOGIC; 
  signal XMAN_23_IBUF_28 : STD_LOGIC; 
  signal XMAN_3_IBUF_31 : STD_LOGIC; 
  signal XMAN_16_IBUF_34 : STD_LOGIC; 
  signal XMAN_4_IBUF_37 : STD_LOGIC; 
  signal XMAN_17_IBUF_40 : STD_LOGIC; 
  signal XMAN_5_IBUF_43 : STD_LOGIC; 
  signal XMAN_18_IBUF_46 : STD_LOGIC; 
  signal XMAN_6_IBUF_49 : STD_LOGIC; 
  signal XMAN_19_IBUF_52 : STD_LOGIC; 
  signal XMAN_7_IBUF_55 : STD_LOGIC; 
  signal XMAN_8_IBUF_58 : STD_LOGIC; 
  signal YSIGN_IBUF_61 : STD_LOGIC; 
  signal XMAN_9_IBUF_64 : STD_LOGIC; 
  signal YMAN_10_IBUF_67 : STD_LOGIC; 
  signal YMAN_11_IBUF_70 : STD_LOGIC; 
  signal YMAN_12_IBUF_73 : STD_LOGIC; 
  signal YMAN_20_IBUF_76 : STD_LOGIC; 
  signal YMAN_13_IBUF_79 : STD_LOGIC; 
  signal YMAN_21_IBUF_82 : STD_LOGIC; 
  signal YMAN_14_IBUF_85 : STD_LOGIC; 
  signal YMAN_22_IBUF_88 : STD_LOGIC; 
  signal YMAN_15_IBUF_91 : STD_LOGIC; 
  signal YMAN_23_IBUF_94 : STD_LOGIC; 
  signal YMAN_16_IBUF_97 : STD_LOGIC; 
  signal YMAN_17_IBUF_100 : STD_LOGIC; 
  signal YMAN_18_IBUF_103 : STD_LOGIC; 
  signal YMAN_19_IBUF_106 : STD_LOGIC; 
  signal YMAN_0_IBUF_117 : STD_LOGIC; 
  signal YMAN_1_IBUF_124 : STD_LOGIC; 
  signal YMAN_2_IBUF_131 : STD_LOGIC; 
  signal YMAN_3_IBUF_138 : STD_LOGIC; 
  signal YMAN_4_IBUF_145 : STD_LOGIC; 
  signal YMAN_5_IBUF_150 : STD_LOGIC; 
  signal YMAN_6_IBUF_155 : STD_LOGIC; 
  signal YMAN_7_IBUF_160 : STD_LOGIC; 
  signal YMAN_8_IBUF_163 : STD_LOGIC; 
  signal YMAN_9_IBUF_166 : STD_LOGIC; 
  signal XMAN_10_IBUF_183 : STD_LOGIC; 
  signal XMAN_11_IBUF_188 : STD_LOGIC; 
  signal XMAN_12_IBUF_193 : STD_LOGIC; 
  signal XMAN_20_IBUF_196 : STD_LOGIC; 
  signal U2_GEN_22_U_Mxor_S_xo_0_1_pack_2 : STD_LOGIC; 
  signal U1_U1_GEN_9_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U1_XXorS_11_pack_1 : STD_LOGIC; 
  signal U1_U1_GEN_13_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal ZMANT_0_OBUF_320 : STD_LOGIC; 
  signal C2Mant_1_pack_2 : STD_LOGIC; 
  signal C2Mant_18_Q : STD_LOGIC; 
  signal U2_GEN_16_U_Mxor_S_xo_0_1_368 : STD_LOGIC; 
  signal C2Mant_10_pack_5 : STD_LOGIC; 
  signal U1_XXorS_9_pack_6 : STD_LOGIC; 
  signal U2_GEN_12_U_Mxor_S_xo_0_1_397 : STD_LOGIC; 
  signal U2_GEN_6_U_Mxor_S_xo_0_1_pack_3 : STD_LOGIC; 
  signal C2Mant_8_Q : STD_LOGIC; 
  signal U1_XXorS_4_pack_6 : STD_LOGIC; 
  signal U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_7 : STD_LOGIC; 
  signal U1_XXorS_2_pack_1 : STD_LOGIC; 
  signal U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_4 : STD_LOGIC; 
  signal C2Mant_14_Q : STD_LOGIC; 
  signal U1_XXorS_17_pack_3 : STD_LOGIC; 
  signal U2_GEN_20_U_Mxor_S_xo_0_1_588 : STD_LOGIC; 
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
  signal NlwBufferSignal_ZMANT_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ZMANT_9_OBUF_I : STD_LOGIC; 
  signal U1_XXorS : STD_LOGIC_VECTOR ( 22 downto 2 ); 
begin
  XMAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_0_IBUF_1,
      I => XMAN(0)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_0_IBUF_1,
      O => XMAN_0_IBUF_0
    );
  XSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD384",
      PATHPULSE => 202 ps
    )
    port map (
      O => XSIGN_IBUF_4,
      I => XSIGN
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD384",
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_IBUF_4,
      O => XSIGN_IBUF_0
    );
  XMAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_13_IBUF_7,
      I => XMAN(13)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_13_IBUF_7,
      O => XMAN_13_IBUF_0
    );
  XMAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_21_IBUF_10,
      I => XMAN(21)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_21_IBUF_10,
      O => XMAN_21_IBUF_0
    );
  XMAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_1_IBUF_13,
      I => XMAN(1)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_1_IBUF_13,
      O => XMAN_1_IBUF_0
    );
  XMAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_14_IBUF_16,
      I => XMAN(14)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_14_IBUF_16,
      O => XMAN_14_IBUF_0
    );
  XMAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_22_IBUF_19,
      I => XMAN(22)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_22_IBUF_19,
      O => XMAN_22_IBUF_0
    );
  XMAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_2_IBUF_22,
      I => XMAN(2)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_2_IBUF_22,
      O => XMAN_2_IBUF_0
    );
  XMAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_15_IBUF_25,
      I => XMAN(15)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_15_IBUF_25,
      O => XMAN_15_IBUF_0
    );
  XMAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_23_IBUF_28,
      I => XMAN(23)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_23_IBUF_28,
      O => XMAN_23_IBUF_0
    );
  XMAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_3_IBUF_31,
      I => XMAN(3)
    );
  ProtoComp0_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_3_IBUF_31,
      O => XMAN_3_IBUF_0
    );
  XMAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_16_IBUF_34,
      I => XMAN(16)
    );
  ProtoComp0_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_16_IBUF_34,
      O => XMAN_16_IBUF_0
    );
  XMAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_4_IBUF_37,
      I => XMAN(4)
    );
  ProtoComp0_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_4_IBUF_37,
      O => XMAN_4_IBUF_0
    );
  XMAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_17_IBUF_40,
      I => XMAN(17)
    );
  ProtoComp0_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_17_IBUF_40,
      O => XMAN_17_IBUF_0
    );
  XMAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_5_IBUF_43,
      I => XMAN(5)
    );
  ProtoComp0_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_5_IBUF_43,
      O => XMAN_5_IBUF_0
    );
  XMAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_18_IBUF_46,
      I => XMAN(18)
    );
  ProtoComp0_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_18_IBUF_46,
      O => XMAN_18_IBUF_0
    );
  XMAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_6_IBUF_49,
      I => XMAN(6)
    );
  ProtoComp0_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_6_IBUF_49,
      O => XMAN_6_IBUF_0
    );
  XMAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_19_IBUF_52,
      I => XMAN(19)
    );
  ProtoComp0_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_19_IBUF_52,
      O => XMAN_19_IBUF_0
    );
  XMAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_7_IBUF_55,
      I => XMAN(7)
    );
  ProtoComp0_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_7_IBUF_55,
      O => XMAN_7_IBUF_0
    );
  XMAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_8_IBUF_58,
      I => XMAN(8)
    );
  ProtoComp0_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_8_IBUF_58,
      O => XMAN_8_IBUF_0
    );
  YSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      O => YSIGN_IBUF_61,
      I => YSIGN
    );
  ProtoComp0_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD383",
      PATHPULSE => 202 ps
    )
    port map (
      I => YSIGN_IBUF_61,
      O => YSIGN_IBUF_0
    );
  XMAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_9_IBUF_64,
      I => XMAN(9)
    );
  ProtoComp0_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_9_IBUF_64,
      O => XMAN_9_IBUF_0
    );
  YMAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_10_IBUF_67,
      I => YMAN(10)
    );
  ProtoComp0_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_10_IBUF_67,
      O => YMAN_10_IBUF_0
    );
  YMAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_11_IBUF_70,
      I => YMAN(11)
    );
  ProtoComp0_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_11_IBUF_70,
      O => YMAN_11_IBUF_0
    );
  YMAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_12_IBUF_73,
      I => YMAN(12)
    );
  ProtoComp0_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_12_IBUF_73,
      O => YMAN_12_IBUF_0
    );
  YMAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_20_IBUF_76,
      I => YMAN(20)
    );
  ProtoComp0_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_20_IBUF_76,
      O => YMAN_20_IBUF_0
    );
  YMAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_13_IBUF_79,
      I => YMAN(13)
    );
  ProtoComp0_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_13_IBUF_79,
      O => YMAN_13_IBUF_0
    );
  YMAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_21_IBUF_82,
      I => YMAN(21)
    );
  ProtoComp0_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_21_IBUF_82,
      O => YMAN_21_IBUF_0
    );
  YMAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_14_IBUF_85,
      I => YMAN(14)
    );
  ProtoComp0_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_14_IBUF_85,
      O => YMAN_14_IBUF_0
    );
  YMAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_22_IBUF_88,
      I => YMAN(22)
    );
  ProtoComp0_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_22_IBUF_88,
      O => YMAN_22_IBUF_0
    );
  YMAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_15_IBUF_91,
      I => YMAN(15)
    );
  ProtoComp0_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_15_IBUF_91,
      O => YMAN_15_IBUF_0
    );
  YMAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_23_IBUF_94,
      I => YMAN(23)
    );
  ProtoComp0_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_23_IBUF_94,
      O => YMAN_23_IBUF_0
    );
  YMAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_16_IBUF_97,
      I => YMAN(16)
    );
  ProtoComp0_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_16_IBUF_97,
      O => YMAN_16_IBUF_0
    );
  YMAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_17_IBUF_100,
      I => YMAN(17)
    );
  ProtoComp0_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_17_IBUF_100,
      O => YMAN_17_IBUF_0
    );
  YMAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_18_IBUF_103,
      I => YMAN(18)
    );
  ProtoComp0_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_18_IBUF_103,
      O => YMAN_18_IBUF_0
    );
  YMAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_19_IBUF_106,
      I => YMAN(19)
    );
  ProtoComp0_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_19_IBUF_106,
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
      O => YMAN_0_IBUF_117,
      I => YMAN(0)
    );
  ProtoComp0_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_0_IBUF_117,
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
      O => YMAN_1_IBUF_124,
      I => YMAN(1)
    );
  ProtoComp0_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_1_IBUF_124,
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
      O => YMAN_2_IBUF_131,
      I => YMAN(2)
    );
  ProtoComp0_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_2_IBUF_131,
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
      O => YMAN_3_IBUF_138,
      I => YMAN(3)
    );
  ProtoComp0_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_3_IBUF_138,
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
      O => YMAN_4_IBUF_145,
      I => YMAN(4)
    );
  ProtoComp0_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_4_IBUF_145,
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
      O => YMAN_5_IBUF_150,
      I => YMAN(5)
    );
  ProtoComp0_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_5_IBUF_150,
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
      O => YMAN_6_IBUF_155,
      I => YMAN(6)
    );
  ProtoComp0_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_6_IBUF_155,
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
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_7_IBUF_160,
      I => YMAN(7)
    );
  ProtoComp0_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_7_IBUF_160,
      O => YMAN_7_IBUF_0
    );
  YMAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_8_IBUF_163,
      I => YMAN(8)
    );
  ProtoComp0_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_8_IBUF_163,
      O => YMAN_8_IBUF_0
    );
  YMAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => YMAN_9_IBUF_166,
      I => YMAN(9)
    );
  ProtoComp0_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_9_IBUF_166,
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
      O => XMAN_10_IBUF_183,
      I => XMAN(10)
    );
  ProtoComp0_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_10_IBUF_183,
      O => XMAN_10_IBUF_0
    );
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
      O => XMAN_11_IBUF_188,
      I => XMAN(11)
    );
  ProtoComp0_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_11_IBUF_188,
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
      O => XMAN_12_IBUF_193,
      I => XMAN(12)
    );
  ProtoComp0_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_12_IBUF_193,
      O => XMAN_12_IBUF_0
    );
  XMAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => XMAN_20_IBUF_196,
      I => XMAN(20)
    );
  ProtoComp0_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_20_IBUF_196,
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
  U2_GEN_22_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y106",
      INIT => X"9669699669969669"
    )
    port map (
      ADR2 => U2_GEN_22_U_Mxor_S_xo_0_1_729,
      ADR4 => XMAN_22_IBUF_0,
      ADR0 => U1_U1_GEN_22_U_Mxor_S_xo_0_1,
      ADR3 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR5 => YMAN_22_IBUF_0,
      O => ZMANT_22_OBUF_780
    );
  U1_U1_GEN_23_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y105",
      INIT => X"9966699699666996"
    )
    port map (
      ADR5 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR3 => YMAN_23_IBUF_0,
      ADR4 => U1_U1_GEN_22_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(22),
      O => C2Mant_23_Q
    );
  ZMANT_21_OBUF_ZMANT_21_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_22_U_Mxor_S_xo_0_1_pack_2,
      O => U2_GEN_22_U_Mxor_S_xo_0_1_729
    );
  U2_GEN_21_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y106",
      INIT => X"E81717E8E81717E8"
    )
    port map (
      ADR1 => XMAN_20_IBUF_0,
      ADR2 => C2Mant_20_Q,
      ADR0 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR4 => XMAN_21_IBUF_0,
      ADR3 => C2Mant_21_Q,
      ADR5 => '1',
      O => ZMANT_21_OBUF_764
    );
  U2_GEN_22_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y106",
      INIT => X"FFE8E800"
    )
    port map (
      ADR1 => XMAN_20_IBUF_0,
      ADR2 => C2Mant_20_Q,
      ADR0 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR4 => XMAN_21_IBUF_0,
      ADR3 => C2Mant_21_Q,
      O => U2_GEN_22_U_Mxor_S_xo_0_1_pack_2
    );
  U1_U1_GEN_21_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y106",
      INIT => X"DF20FF00FF00FF00"
    )
    port map (
      ADR3 => U1_XXorS(21),
      ADR1 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      ADR0 => U1_XXorS(18),
      ADR4 => U1_XXorS_19_0,
      ADR2 => U1_XXorS(20),
      O => C2Mant_21_Q
    );
  U2_GEN_23_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y106",
      INIT => X"E1871E78B42D4BD2"
    )
    port map (
      ADR3 => XMAN_22_IBUF_0,
      ADR5 => U1_U1_GEN_22_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(22),
      ADR0 => U2_GEN_22_U_Mxor_S_xo_0_1_729,
      ADR2 => XMAN_23_IBUF_0,
      ADR4 => C2Mant_23_Q,
      O => ZMANT_23_OBUF_759
    );
  U2_GEN_23_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y105",
      INIT => X"EEE8E8EEE88888E8"
    )
    port map (
      ADR1 => XMAN_23_IBUF_0,
      ADR0 => C2Mant_23_Q,
      ADR2 => XMAN_22_IBUF_0,
      ADR3 => U1_U1_GEN_22_U_Mxor_S_xo_0_1,
      ADR4 => U1_XXorS(22),
      ADR5 => U2_GEN_22_U_Mxor_S_xo_0_1_729,
      O => EXPINCR_OBUF_725
    );
  U1_Mxor_XXorS_22_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y106",
      INIT => X"C33CC33CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR2 => YMAN_22_IBUF_0,
      O => U1_XXorS(22)
    );
  U2_GEN_20_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y106",
      INIT => X"A5A5A5A55A5A5A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => U2_GEN_20_U_Mxor_S_xo_0_1_0,
      ADR2 => XMAN_20_IBUF_0,
      ADR5 => C2Mant_20_Q,
      O => ZMANT_20_OBUF_776
    );
  U1_U1_GEN_20_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y106",
      INIT => X"F03CF0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => U1_XXorS(20),
      ADR3 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      ADR1 => U1_XXorS(18),
      ADR4 => U1_XXorS_19_0,
      O => C2Mant_20_Q
    );
  U2_GEN_10_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => X"C33C3CC3CC3333CC"
    )
    port map (
      ADR0 => '1',
      ADR3 => U2_GEN_10_U_Mxor_S_xo_0_1_753,
      ADR4 => XMAN_10_IBUF_0,
      ADR1 => U1_XXorS(10),
      ADR2 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR5 => U1_XXorS(9),
      O => ZMANT_10_OBUF_783
    );
  U2_GEN_9_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y90",
      INIT => X"C33C966996693CC3"
    )
    port map (
      ADR0 => XMAN_8_IBUF_0,
      ADR4 => C2Mant_8_0,
      ADR5 => U2_GEN_8_U_Mxor_S_xo_0_1_690,
      ADR2 => XMAN_9_IBUF_0,
      ADR3 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(9),
      O => ZMANT_9_OBUF_687
    );
  U1_XXorS_7_U1_XXorS_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      O => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0
    );
  U1_Mxor_XXorS_7_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"AA5555AAAA5555AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR0 => YMAN_7_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(7)
    );
  U1_U1_GEN_9_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"DFFEFEDF"
    )
    port map (
      ADR2 => YMAN_8_IBUF_0,
      ADR1 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR4 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR0 => YMAN_7_IBUF_0,
      O => U1_U1_GEN_9_U_Mxor_S_xo_0_1
    );
  U2_GEN_8_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"A55A5AA5A55AA55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_GEN_8_U_Mxor_S_xo_0_1_690,
      ADR3 => XMAN_8_IBUF_0,
      ADR2 => U1_XXorS(8),
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(7),
      O => ZMANT_8_OBUF_801
    );
  U2_GEN_7_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"9996966666696999"
    )
    port map (
      ADR4 => XMAN_6_IBUF_0,
      ADR3 => C2Mant_6_Q,
      ADR2 => U2_GEN_6_U_Mxor_S_xo_0_1_770,
      ADR1 => XMAN_7_IBUF_0,
      ADR5 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(7),
      O => ZMANT_7_OBUF_768
    );
  U1_U1_GEN_11_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y91",
      INIT => X"FF007F80FF00FF00"
    )
    port map (
      ADR3 => U1_XXorS(11),
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR1 => U1_XXorS(8),
      ADR2 => U1_XXorS(7),
      ADR5 => U1_XXorS(10),
      ADR0 => U1_XXorS(9),
      O => C2Mant_11_Q
    );
  ZMANT_4_OBUF_ZMANT_4_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_13_U_Mxor_S_xo_0_1,
      O => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0
    );
  ZMANT_4_OBUF_ZMANT_4_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_11_pack_1,
      O => U1_XXorS(11)
    );
  U2_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"9969999966966666"
    )
    port map (
      ADR0 => U2_GEN_4_U_Mxor_S_xo_0_1_733,
      ADR5 => XMAN_4_IBUF_0,
      ADR1 => U1_XXorS(4),
      ADR4 => U1_XXorS(3),
      ADR2 => U1_XXorS(2),
      ADR3 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      O => ZMANT_4_OBUF_732
    );
  U1_U1_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"BFFF4000BFFF4000"
    )
    port map (
      ADR4 => U1_XXorS(12),
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(10),
      ADR3 => U1_XXorS(11),
      ADR2 => U1_XXorS(9),
      ADR5 => '1',
      O => C2Mant_12_Q
    );
  U1_U1_GEN_13_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"BFFFFFFF"
    )
    port map (
      ADR4 => U1_XXorS(12),
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(10),
      ADR3 => U1_XXorS(11),
      ADR2 => U1_XXorS(9),
      O => U1_U1_GEN_13_U_Mxor_S_xo_0_1
    );
  U1_Mxor_XXorS_12_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR3 => YMAN_12_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(12)
    );
  U1_Mxor_XXorS_11_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"A5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR4 => YMAN_11_IBUF_0,
      ADR2 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR1 => '1',
      O => U1_XXorS_11_pack_1
    );
  ZMANT_12_OBUF_ZMANT_12_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_0_OBUF_320,
      O => ZMANT_0_OBUF_0
    );
  U2_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"9999666699996666"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_GEN_12_U_Mxor_S_xo_0_1_0,
      ADR0 => XMAN_12_IBUF_0,
      ADR1 => C2Mant_12_Q,
      ADR5 => '1',
      O => ZMANT_12_OBUF_794
    );
  U2_GEN_0_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"0FF00FF0"
    )
    port map (
      ADR3 => XMAN_0_IBUF_0,
      ADR2 => YMAN_0_IBUF_0,
      ADR1 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => ZMANT_0_OBUF_320
    );
  U2_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y93",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U2_GEN_6_U_Mxor_S_xo_0_1_770,
      ADR0 => XMAN_6_IBUF_0,
      ADR3 => C2Mant_6_Q,
      O => ZMANT_6_OBUF_778
    );
  C2Mant_2_C2Mant_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_1_pack_2,
      O => C2Mant_1_Q
    );
  U1_U1_GEN_2_U_Mxor_S_xo_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"AA5656AAAA5656AA"
    )
    port map (
      ADR0 => YMAN_2_IBUF_0,
      ADR2 => YMAN_0_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR1 => YMAN_1_IBUF_0,
      ADR5 => '1',
      O => C2Mant_2_Q
    );
  U1_U1_GEN_1_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"CC3C3CCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => YMAN_0_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR1 => YMAN_1_IBUF_0,
      O => C2Mant_1_pack_2
    );
  U2_GEN_2_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"A9A5565A95556AAA"
    )
    port map (
      ADR5 => XMAN_1_IBUF_0,
      ADR2 => C2Mant_1_Q,
      ADR3 => XMAN_0_IBUF_0,
      ADR1 => YMAN_0_IBUF_0,
      ADR0 => XMAN_2_IBUF_0,
      ADR4 => C2Mant_2_Q,
      O => ZMANT_2_OBUF_792
    );
  U2_GEN_4_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"FEECC8808F0EECC8"
    )
    port map (
      ADR1 => XMAN_3_IBUF_0,
      ADR4 => U1_XXorS(3),
      ADR5 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR0 => XMAN_2_IBUF_0,
      ADR3 => U2_GEN_2_U_Mxor_S_xo_0_2,
      O => U2_GEN_4_U_Mxor_S_xo_0_1_733
    );
  U2_GEN_2_U_Mxor_S_xo_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y96",
      INIT => X"EDDE888884488888"
    )
    port map (
      ADR4 => YMAN_0_IBUF_0,
      ADR5 => XMAN_0_IBUF_0,
      ADR0 => YMAN_1_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR1 => XMAN_1_IBUF_0,
      O => U2_GEN_2_U_Mxor_S_xo_0_2
    );
  U2_GEN_13_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y98",
      INIT => X"A956956A56A96A95"
    )
    port map (
      ADR2 => XMAN_12_IBUF_0,
      ADR4 => C2Mant_12_Q,
      ADR1 => U2_GEN_12_U_Mxor_S_xo_0_1_0,
      ADR3 => XMAN_13_IBUF_0,
      ADR5 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR0 => U1_XXorS(13),
      O => ZMANT_13_OBUF_718
    );
  ZMANT_15_OBUF_ZMANT_15_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_16_U_Mxor_S_xo_0_1_368,
      O => U2_GEN_16_U_Mxor_S_xo_0_1_0
    );
  ZMANT_15_OBUF_ZMANT_15_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_18_Q,
      O => C2Mant_18_0
    );
  U2_GEN_15_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"9996966699969666"
    )
    port map (
      ADR2 => XMAN_14_IBUF_0,
      ADR3 => C2Mant_14_0,
      ADR4 => U2_GEN_14_U_Mxor_S_xo_0_1_745,
      ADR0 => XMAN_15_IBUF_0,
      ADR1 => C2Mant_15_Q,
      ADR5 => '1',
      O => ZMANT_15_OBUF_746
    );
  U2_GEN_16_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"EEE8E888"
    )
    port map (
      ADR2 => XMAN_14_IBUF_0,
      ADR3 => C2Mant_14_0,
      ADR4 => U2_GEN_14_U_Mxor_S_xo_0_1_745,
      ADR0 => XMAN_15_IBUF_0,
      ADR1 => C2Mant_15_Q,
      O => U2_GEN_16_U_Mxor_S_xo_0_1_368
    );
  U2_GEN_14_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"FEFBECB3C8328020"
    )
    port map (
      ADR5 => XMAN_13_IBUF_0,
      ADR1 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR3 => U1_XXorS(13),
      ADR0 => XMAN_12_IBUF_0,
      ADR4 => C2Mant_12_Q,
      ADR2 => U2_GEN_12_U_Mxor_S_xo_0_1_0,
      O => U2_GEN_14_U_Mxor_S_xo_0_1_745
    );
  U1_Mxor_XXorS_18_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"9696969696969696"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR2 => YMAN_18_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(18)
    );
  U1_U1_GEN_18_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"96699696"
    )
    port map (
      ADR3 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR4 => U1_XXorS(17),
      ADR0 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR2 => YMAN_18_IBUF_0,
      O => C2Mant_18_Q
    );
  U2_GEN_18_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"A55A5AA5A5A55A5A"
    )
    port map (
      ADR1 => '1',
      ADR4 => U2_GEN_18_U_Mxor_S_xo_0_1_734,
      ADR2 => XMAN_18_IBUF_0,
      ADR0 => U1_XXorS(18),
      ADR3 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      O => ZMANT_18_OBUF_779
    );
  ZMANT_11_OBUF_ZMANT_11_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_12_U_Mxor_S_xo_0_1_397,
      O => U2_GEN_12_U_Mxor_S_xo_0_1_0
    );
  ZMANT_11_OBUF_ZMANT_11_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS_9_pack_6,
      O => U1_XXorS(9)
    );
  ZMANT_11_OBUF_ZMANT_11_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_10_pack_5,
      O => C2Mant_10_Q
    );
  U2_GEN_11_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"A956956AA956956A"
    )
    port map (
      ADR2 => XMAN_10_IBUF_0,
      ADR4 => C2Mant_10_Q,
      ADR1 => U2_GEN_10_U_Mxor_S_xo_0_1_753,
      ADR3 => XMAN_11_IBUF_0,
      ADR0 => C2Mant_11_Q,
      ADR5 => '1',
      O => ZMANT_11_OBUF_754
    );
  U2_GEN_12_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"FEA8EA80"
    )
    port map (
      ADR2 => XMAN_10_IBUF_0,
      ADR4 => C2Mant_10_Q,
      ADR1 => U2_GEN_10_U_Mxor_S_xo_0_1_753,
      ADR3 => XMAN_11_IBUF_0,
      ADR0 => C2Mant_11_Q,
      O => U2_GEN_12_U_Mxor_S_xo_0_1_397
    );
  U2_GEN_10_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"EEE8DDD4E888D444"
    )
    port map (
      ADR1 => XMAN_9_IBUF_0,
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR4 => U1_XXorS(9),
      ADR3 => XMAN_8_IBUF_0,
      ADR5 => C2Mant_8_0,
      ADR2 => U2_GEN_8_U_Mxor_S_xo_0_1_690,
      O => U2_GEN_10_U_Mxor_S_xo_0_1_753
    );
  U1_Mxor_XXorS_13_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"9966996699669966"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR1 => YMAN_13_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(13)
    );
  U1_Mxor_XXorS_9_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"A55AA55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => YMAN_9_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR4 => '1',
      O => U1_XXorS_9_pack_6
    );
  U1_Mxor_XXorS_10_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"C3C33C3CC3C33C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_10_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(10)
    );
  U1_U1_GEN_10_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y91",
      INIT => X"96C3693C"
    )
    port map (
      ADR0 => U1_U1_GEN_9_U_Mxor_S_xo_0_1_0,
      ADR3 => U1_XXorS(9),
      ADR1 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_10_IBUF_0,
      O => C2Mant_10_pack_5
    );
  U1_XXorS_8_U1_XXorS_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_8_Q,
      O => C2Mant_8_0
    );
  U1_XXorS_8_U1_XXorS_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_6_U_Mxor_S_xo_0_1_pack_3,
      O => U2_GEN_6_U_Mxor_S_xo_0_1_770
    );
  U1_Mxor_XXorS_8_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"C33CC33CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR1 => YMAN_8_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(8)
    );
  U1_U1_GEN_8_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"C33C6996"
    )
    port map (
      ADR4 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(7),
      ADR2 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR1 => YMAN_8_IBUF_0,
      O => C2Mant_8_Q
    );
  U1_U1_GEN_7_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"FF7FFFFFFFFFFFFF"
    )
    port map (
      ADR1 => U1_XXorS(5),
      ADR3 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(6),
      ADR4 => U1_XXorS(3),
      ADR2 => U1_XXorS(2),
      ADR5 => U1_XXorS(4),
      O => U1_U1_GEN_7_U_Mxor_S_xo_0_1
    );
  U2_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"A956956AA956956A"
    )
    port map (
      ADR1 => XMAN_4_IBUF_0,
      ADR2 => C2Mant_4_Q,
      ADR4 => U2_GEN_4_U_Mxor_S_xo_0_1_733,
      ADR0 => XMAN_5_IBUF_0,
      ADR3 => C2Mant_5_Q,
      ADR5 => '1',
      O => ZMANT_5_OBUF_796
    );
  U2_GEN_6_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"FEA8EA80"
    )
    port map (
      ADR1 => XMAN_4_IBUF_0,
      ADR2 => C2Mant_4_Q,
      ADR4 => U2_GEN_4_U_Mxor_S_xo_0_1_733,
      ADR0 => XMAN_5_IBUF_0,
      ADR3 => C2Mant_5_Q,
      O => U2_GEN_6_U_Mxor_S_xo_0_1_pack_3
    );
  U2_GEN_8_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y92",
      INIT => X"FFF99990F9999000"
    )
    port map (
      ADR4 => XMAN_7_IBUF_0,
      ADR1 => U1_U1_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(7),
      ADR5 => XMAN_6_IBUF_0,
      ADR3 => C2Mant_6_Q,
      ADR2 => U2_GEN_6_U_Mxor_S_xo_0_1_770,
      O => U2_GEN_8_U_Mxor_S_xo_0_1_690
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
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR4 => YMAN_5_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(5)
    );
  U1_Mxor_XXorS_4_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"96969696"
    )
    port map (
      ADR3 => '1',
      ADR1 => YMAN_4_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR4 => '1',
      O => U1_XXorS_4_pack_6
    );
  U1_U1_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"AAAA6AAAAAAAAAAA"
    )
    port map (
      ADR0 => U1_XXorS(6),
      ADR4 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR1 => U1_XXorS(3),
      ADR3 => U1_XXorS(4),
      ADR5 => U1_XXorS(5),
      O => C2Mant_6_Q
    );
  U1_U1_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y93",
      INIT => X"CCCC6C6CCCCCCCCC"
    )
    port map (
      ADR3 => '1',
      ADR1 => U1_XXorS(5),
      ADR4 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(2),
      ADR5 => U1_XXorS(3),
      ADR2 => U1_XXorS(4),
      O => C2Mant_5_Q
    );
  U1_XXorS_6_U1_XXorS_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_7,
      O => U1_U1_GEN_2_U_Mxor_S_xo_0_1
    );
  U1_Mxor_XXorS_6_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"CC3333CCCC3333CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR3 => YMAN_6_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(6)
    );
  U1_U1_GEN_2_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"FEFEFBFB"
    )
    port map (
      ADR0 => YMAN_0_IBUF_0,
      ADR2 => YMAN_1_IBUF_0,
      ADR4 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR3 => '1',
      O => U1_U1_GEN_2_U_Mxor_S_xo_0_1_pack_7
    );
  U1_U1_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"9C63639CCC3333CC"
    )
    port map (
      ADR4 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR1 => YMAN_4_IBUF_0,
      ADR5 => U1_XXorS(3),
      ADR2 => U1_XXorS(2),
      ADR0 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      O => C2Mant_4_Q
    );
  U2_GEN_1_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y95",
      INIT => X"956565956A9A9A6A"
    )
    port map (
      ADR0 => XMAN_1_IBUF_0,
      ADR5 => YMAN_1_IBUF_0,
      ADR2 => YMAN_0_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR1 => XMAN_0_IBUF_0,
      O => ZMANT_1_OBUF_702
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
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => YMAN_3_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(3)
    );
  U1_Mxor_XXorS_2_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"AA5555AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => YMAN_2_IBUF_0,
      ADR3 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR2 => '1',
      O => U1_XXorS_2_pack_1
    );
  U2_GEN_3_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y96",
      INIT => X"C993366C6CC99336"
    )
    port map (
      ADR0 => XMAN_2_IBUF_0,
      ADR5 => U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U1_XXorS(2),
      ADR3 => U2_GEN_2_U_Mxor_S_xo_0_2,
      ADR1 => XMAN_3_IBUF_0,
      ADR4 => U1_XXorS(3),
      O => ZMANT_3_OBUF_798
    );
  U1_XXorS_16_U1_XXorS_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_XXorS(15),
      O => U1_XXorS_15_0
    );
  U1_Mxor_XXorS_16_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => XSIGN_IBUF_0,
      ADR4 => YSIGN_IBUF_0,
      ADR3 => YMAN_16_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(16)
    );
  U1_Mxor_XXorS_15_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y98",
      INIT => X"A5A55A5A"
    )
    port map (
      ADR1 => '1',
      ADR0 => YMAN_15_IBUF_0,
      ADR2 => XSIGN_IBUF_0,
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
  U1_XXorS_20_U1_XXorS_20_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_4,
      O => U1_U1_GEN_17_U_Mxor_S_xo_0_1
    );
  U1_Mxor_XXorS_20_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"A5A55A5AA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR2 => YMAN_20_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(20)
    );
  U1_Mxor_XXorS_19_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"AA5555AA"
    )
    port map (
      ADR2 => '1',
      ADR3 => YMAN_19_IBUF_0,
      ADR4 => XSIGN_IBUF_0,
      ADR0 => YSIGN_IBUF_0,
      ADR1 => '1',
      O => U1_XXorS(19)
    );
  U1_U1_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"BFFF4000BFFF4000"
    )
    port map (
      ADR4 => U1_XXorS(16),
      ADR0 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(13),
      ADR3 => U1_XXorS(14),
      ADR2 => U1_XXorS_15_0,
      ADR5 => '1',
      O => C2Mant_16_Q
    );
  U1_U1_GEN_17_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"BFFFFFFF"
    )
    port map (
      ADR4 => U1_XXorS(16),
      ADR0 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR1 => U1_XXorS(13),
      ADR3 => U1_XXorS(14),
      ADR2 => U1_XXorS_15_0,
      O => U1_U1_GEN_17_U_Mxor_S_xo_0_1_pack_4
    );
  U2_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"9966996699669966"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      ADR0 => XMAN_16_IBUF_0,
      ADR3 => C2Mant_16_Q,
      O => ZMANT_16_OBUF_784
    );
  U1_U1_GEN_19_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"96C3693CC3C33C3C"
    )
    port map (
      ADR2 => XSIGN_IBUF_0,
      ADR1 => YSIGN_IBUF_0,
      ADR4 => YMAN_19_IBUF_0,
      ADR3 => U1_XXorS(18),
      ADR5 => U1_XXorS(17),
      ADR0 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      O => C2Mant_19_Q
    );
  ZMANT_14_OBUF_ZMANT_14_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C2Mant_14_Q,
      O => C2Mant_14_0
    );
  U2_GEN_14_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"9999666666999966"
    )
    port map (
      ADR2 => '1',
      ADR0 => U2_GEN_14_U_Mxor_S_xo_0_1_745,
      ADR4 => XMAN_14_IBUF_0,
      ADR1 => U1_XXorS(14),
      ADR5 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR3 => U1_XXorS(13),
      O => ZMANT_14_OBUF_781
    );
  U1_Mxor_XXorS_14_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR0 => YMAN_14_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(14)
    );
  U1_U1_GEN_14_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"9669A55A"
    )
    port map (
      ADR1 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR4 => U1_XXorS(13),
      ADR3 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR0 => YMAN_14_IBUF_0,
      O => C2Mant_14_Q
    );
  U1_U1_GEN_15_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"C369C3C33C963C3C"
    )
    port map (
      ADR1 => XSIGN_IBUF_0,
      ADR2 => YSIGN_IBUF_0,
      ADR5 => YMAN_15_IBUF_0,
      ADR4 => U1_XXorS(14),
      ADR0 => U1_XXorS(13),
      ADR3 => U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      O => C2Mant_15_Q
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
      LOC => "SLICE_X33Y105",
      INIT => X"9966996699669966"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR1 => YMAN_21_IBUF_0,
      ADR5 => '1',
      O => U1_XXorS(21)
    );
  U1_Mxor_XXorS_17_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y105",
      INIT => X"A55AA55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => YMAN_17_IBUF_0,
      ADR0 => XSIGN_IBUF_0,
      ADR3 => YSIGN_IBUF_0,
      ADR4 => '1',
      O => U1_XXorS_17_pack_3
    );
  U1_U1_GEN_22_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y105",
      INIT => X"F7FFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => U1_XXorS(20),
      ADR2 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(18),
      ADR4 => U1_XXorS(17),
      ADR5 => U1_XXorS_19_0,
      ADR3 => U1_XXorS(21),
      O => U1_U1_GEN_22_U_Mxor_S_xo_0_1
    );
  U2_GEN_17_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y105",
      INIT => X"A55A966996695AA5"
    )
    port map (
      ADR5 => XMAN_16_IBUF_0,
      ADR1 => C2Mant_16_Q,
      ADR4 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      ADR3 => XMAN_17_IBUF_0,
      ADR2 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR0 => U1_XXorS(17),
      O => ZMANT_17_OBUF_787
    );
  ZMANT_19_OBUF_ZMANT_19_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_GEN_20_U_Mxor_S_xo_0_1_588,
      O => U2_GEN_20_U_Mxor_S_xo_0_1_0
    );
  U2_GEN_19_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"9996966699969666"
    )
    port map (
      ADR2 => XMAN_18_IBUF_0,
      ADR4 => C2Mant_18_0,
      ADR3 => U2_GEN_18_U_Mxor_S_xo_0_1_734,
      ADR0 => XMAN_19_IBUF_0,
      ADR1 => C2Mant_19_Q,
      ADR5 => '1',
      O => ZMANT_19_OBUF_739
    );
  U2_GEN_20_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"EEE8E888"
    )
    port map (
      ADR2 => XMAN_18_IBUF_0,
      ADR4 => C2Mant_18_0,
      ADR3 => U2_GEN_18_U_Mxor_S_xo_0_1_734,
      ADR0 => XMAN_19_IBUF_0,
      ADR1 => C2Mant_19_Q,
      O => U2_GEN_20_U_Mxor_S_xo_0_1_588
    );
  U2_GEN_18_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"FEF8E080EF8F0E08"
    )
    port map (
      ADR4 => XMAN_17_IBUF_0,
      ADR2 => U1_U1_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => U1_XXorS(17),
      ADR1 => XMAN_16_IBUF_0,
      ADR3 => C2Mant_16_Q,
      ADR0 => U2_GEN_16_U_Mxor_S_xo_0_1_0,
      O => U2_GEN_18_U_Mxor_S_xo_0_1_734
    );
  NlwBufferBlock_ZMANT_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_10_OBUF_783,
      O => NlwBufferSignal_ZMANT_10_OBUF_I
    );
  NlwBufferBlock_ZMANT_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_11_OBUF_754,
      O => NlwBufferSignal_ZMANT_11_OBUF_I
    );
  NlwBufferBlock_ZMANT_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_12_OBUF_794,
      O => NlwBufferSignal_ZMANT_12_OBUF_I
    );
  NlwBufferBlock_ZMANT_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_20_OBUF_776,
      O => NlwBufferSignal_ZMANT_20_OBUF_I
    );
  NlwBufferBlock_ZMANT_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_13_OBUF_718,
      O => NlwBufferSignal_ZMANT_13_OBUF_I
    );
  NlwBufferBlock_ZMANT_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_21_OBUF_764,
      O => NlwBufferSignal_ZMANT_21_OBUF_I
    );
  NlwBufferBlock_ZMANT_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_14_OBUF_781,
      O => NlwBufferSignal_ZMANT_14_OBUF_I
    );
  NlwBufferBlock_ZMANT_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_22_OBUF_780,
      O => NlwBufferSignal_ZMANT_22_OBUF_I
    );
  NlwBufferBlock_ZMANT_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_15_OBUF_746,
      O => NlwBufferSignal_ZMANT_15_OBUF_I
    );
  NlwBufferBlock_ZMANT_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_23_OBUF_759,
      O => NlwBufferSignal_ZMANT_23_OBUF_I
    );
  NlwBufferBlock_EXPINCR_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EXPINCR_OBUF_725,
      O => NlwBufferSignal_EXPINCR_OBUF_I
    );
  NlwBufferBlock_ZMANT_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_16_OBUF_784,
      O => NlwBufferSignal_ZMANT_16_OBUF_I
    );
  NlwBufferBlock_ZMANT_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_17_OBUF_787,
      O => NlwBufferSignal_ZMANT_17_OBUF_I
    );
  NlwBufferBlock_ZMANT_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_18_OBUF_779,
      O => NlwBufferSignal_ZMANT_18_OBUF_I
    );
  NlwBufferBlock_ZMANT_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_19_OBUF_739,
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
      I => ZMANT_1_OBUF_702,
      O => NlwBufferSignal_ZMANT_1_OBUF_I
    );
  NlwBufferBlock_ZMANT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_2_OBUF_792,
      O => NlwBufferSignal_ZMANT_2_OBUF_I
    );
  NlwBufferBlock_ZMANT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_3_OBUF_798,
      O => NlwBufferSignal_ZMANT_3_OBUF_I
    );
  NlwBufferBlock_ZMANT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_4_OBUF_732,
      O => NlwBufferSignal_ZMANT_4_OBUF_I
    );
  NlwBufferBlock_ZMANT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_5_OBUF_796,
      O => NlwBufferSignal_ZMANT_5_OBUF_I
    );
  NlwBufferBlock_ZMANT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_6_OBUF_778,
      O => NlwBufferSignal_ZMANT_6_OBUF_I
    );
  NlwBufferBlock_ZMANT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_7_OBUF_768,
      O => NlwBufferSignal_ZMANT_7_OBUF_I
    );
  NlwBufferBlock_ZMANT_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ZMANT_8_OBUF_801,
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
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

