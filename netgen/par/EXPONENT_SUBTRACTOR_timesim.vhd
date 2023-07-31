--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: EXPONENT_SUBTRACTOR_timesim.vhd
-- /___/   /\     Timestamp: Mon Jul 31 15:24:45 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf EXPONENT_SUBTRACTOR.pcf -rpw 100 -tpw 0 -ar Structure -tm EXPONENT_SUBTRACTOR -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim EXPONENT_SUBTRACTOR.ncd EXPONENT_SUBTRACTOR_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: EXPONENT_SUBTRACTOR.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/EXPONENT_SUBTRACTOR_timesim.vhd
-- # of Entities	: 1
-- Design Name	: EXPONENT_SUBTRACTOR
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

entity EXPONENT_SUBTRACTOR is
  port (
    C : out STD_LOGIC; 
    X : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DIFF : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end EXPONENT_SUBTRACTOR;

architecture Structure of EXPONENT_SUBTRACTOR is
  signal DIFF_2_OBUF_194 : STD_LOGIC; 
  signal COUT : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal DIFF_0_OBUF_198 : STD_LOGIC; 
  signal DIFF_7_OBUF_199 : STD_LOGIC; 
  signal S_7_0 : STD_LOGIC; 
  signal S_5_0 : STD_LOGIC; 
  signal U3_GEN_4_U_Z1 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal U1_C_8_bdd6 : STD_LOGIC; 
  signal DIFF_4_OBUF_0 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal DIFF_1_OBUF_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal U1_C_8_bdd2 : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal C_OBUF_0 : STD_LOGIC; 
  signal DIFF_3_OBUF_226 : STD_LOGIC; 
  signal DIFF_5_OBUF_227 : STD_LOGIC; 
  signal DIFF_6_OBUF_228 : STD_LOGIC; 
  signal U1_C_8_bdd10 : STD_LOGIC; 
  signal Y_1_IBUF_1 : STD_LOGIC; 
  signal X_5_IBUF_4 : STD_LOGIC; 
  signal Y_2_IBUF_7 : STD_LOGIC; 
  signal X_6_IBUF_10 : STD_LOGIC; 
  signal Y_3_IBUF_13 : STD_LOGIC; 
  signal X_7_IBUF_16 : STD_LOGIC; 
  signal Y_4_IBUF_19 : STD_LOGIC; 
  signal Y_5_IBUF_22 : STD_LOGIC; 
  signal Y_6_IBUF_25 : STD_LOGIC; 
  signal Y_7_IBUF_28 : STD_LOGIC; 
  signal X_0_IBUF_47 : STD_LOGIC; 
  signal X_1_IBUF_52 : STD_LOGIC; 
  signal X_2_IBUF_55 : STD_LOGIC; 
  signal X_3_IBUF_58 : STD_LOGIC; 
  signal Y_0_IBUF_61 : STD_LOGIC; 
  signal X_4_IBUF_64 : STD_LOGIC; 
  signal C_OBUF_67 : STD_LOGIC; 
  signal DIFF_1_OBUF_84 : STD_LOGIC; 
  signal DIFF_4_OBUF_112 : STD_LOGIC; 
  signal S_3_pack_8 : STD_LOGIC; 
  signal S_1_pack_9 : STD_LOGIC; 
  signal NlwBufferSignal_C_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DIFF_7_OBUF_I : STD_LOGIC; 
  signal S : STD_LOGIC_VECTOR ( 7 downto 1 ); 
begin
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_1,
      I => Y(1)
    );
  ProtoComp6_IMUX : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_1,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_4,
      I => X(5)
    );
  ProtoComp6_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_4,
      O => X_5_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_7,
      I => Y(2)
    );
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_7,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_10,
      I => X(6)
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_10,
      O => X_6_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_13,
      I => Y(3)
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_13,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_16,
      I => X(7)
    );
  ProtoComp6_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_16,
      O => X_7_IBUF_0
    );
  Y_4_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_4_IBUF_19,
      I => Y(4)
    );
  ProtoComp6_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_19,
      O => Y_4_IBUF_0
    );
  Y_5_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_5_IBUF_22,
      I => Y(5)
    );
  ProtoComp6_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_22,
      O => Y_5_IBUF_0
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_25,
      I => Y(6)
    );
  ProtoComp6_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_25,
      O => Y_6_IBUF_0
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_28,
      I => Y(7)
    );
  ProtoComp6_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_28,
      O => Y_7_IBUF_0
    );
  C_OBUF : X_OBUF
    generic map(
      LOC => "PAD321"
    )
    port map (
      I => NlwBufferSignal_C_OBUF_I,
      O => C
    );
  DIFF_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD338"
    )
    port map (
      I => NlwBufferSignal_DIFF_0_OBUF_I,
      O => DIFF(0)
    );
  DIFF_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD339"
    )
    port map (
      I => NlwBufferSignal_DIFF_1_OBUF_I,
      O => DIFF(1)
    );
  DIFF_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD340"
    )
    port map (
      I => NlwBufferSignal_DIFF_2_OBUF_I,
      O => DIFF(2)
    );
  DIFF_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD341"
    )
    port map (
      I => NlwBufferSignal_DIFF_3_OBUF_I,
      O => DIFF(3)
    );
  DIFF_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD342"
    )
    port map (
      I => NlwBufferSignal_DIFF_4_OBUF_I,
      O => DIFF(4)
    );
  DIFF_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD343"
    )
    port map (
      I => NlwBufferSignal_DIFF_5_OBUF_I,
      O => DIFF(5)
    );
  DIFF_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD344"
    )
    port map (
      I => NlwBufferSignal_DIFF_6_OBUF_I,
      O => DIFF(6)
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_47,
      I => X(0)
    );
  ProtoComp6_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_47,
      O => X_0_IBUF_0
    );
  DIFF_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD345"
    )
    port map (
      I => NlwBufferSignal_DIFF_7_OBUF_I,
      O => DIFF(7)
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_52,
      I => X(1)
    );
  ProtoComp6_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_52,
      O => X_1_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_55,
      I => X(2)
    );
  ProtoComp6_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_55,
      O => X_2_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_58,
      I => X(3)
    );
  ProtoComp6_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_58,
      O => X_3_IBUF_0
    );
  Y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_0_IBUF_61,
      I => Y(0)
    );
  ProtoComp6_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_IBUF_61,
      O => Y_0_IBUF_0
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_64,
      I => X(4)
    );
  ProtoComp6_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_64,
      O => X_4_IBUF_0
    );
  S_6_S_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C_OBUF_67,
      O => C_OBUF_0
    );
  S_6_S_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S(5),
      O => S_5_0
    );
  U1_S_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"3CC33CC33CC33CC3"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => X_6_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      ADR3 => U1_C_8_bdd2,
      ADR5 => '1',
      O => S(6)
    );
  C1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"5DDF0445"
    )
    port map (
      ADR0 => X_7_IBUF_0,
      ADR4 => Y_7_IBUF_0,
      ADR2 => X_6_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      ADR3 => U1_C_8_bdd2,
      O => C_OBUF_67
    );
  U1_C_8_21 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"B200FFB2B200FFB2"
    )
    port map (
      ADR3 => X_5_IBUF_0,
      ADR0 => U1_C_8_bdd6,
      ADR1 => Y_4_IBUF_0,
      ADR2 => X_4_IBUF_0,
      ADR4 => Y_5_IBUF_0,
      ADR5 => '1',
      O => U1_C_8_bdd2
    );
  U1_S_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"4DB2B24D"
    )
    port map (
      ADR3 => X_5_IBUF_0,
      ADR0 => U1_C_8_bdd6,
      ADR1 => Y_4_IBUF_0,
      ADR2 => X_4_IBUF_0,
      ADR4 => Y_5_IBUF_0,
      O => S(5)
    );
  DIFF_6_OBUF_DIFF_6_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S(7),
      O => S_7_0
    );
  DIFF_6_OBUF_DIFF_6_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_1_OBUF_84,
      O => DIFF_1_OBUF_0
    );
  U3_GEN_6_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"A5A5A5B4A5A5A5B4"
    )
    port map (
      ADR5 => '1',
      ADR0 => COUT,
      ADR2 => S(6),
      ADR3 => S(4),
      ADR1 => S_5_0,
      ADR4 => U3_GEN_4_U_Z1,
      O => DIFF_6_OBUF_228
    );
  U3_GEN_4_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"FFFFF7FBFFFFFDFE"
    )
    port map (
      ADR0 => Y_1_IBUF_0,
      ADR3 => X_1_IBUF_0,
      ADR2 => S(2),
      ADR5 => Y_0_IBUF_0,
      ADR1 => X_0_IBUF_0,
      ADR4 => S(3),
      O => U3_GEN_4_U_Z1
    );
  U1_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"80A8EAFE80A8EAFE"
    )
    port map (
      ADR0 => X_7_IBUF_0,
      ADR2 => U1_C_8_bdd2,
      ADR3 => Y_6_IBUF_0,
      ADR1 => X_6_IBUF_0,
      ADR4 => Y_7_IBUF_0,
      ADR5 => '1',
      O => COUT
    );
  U1_S_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"6A5695A9"
    )
    port map (
      ADR0 => X_7_IBUF_0,
      ADR2 => U1_C_8_bdd2,
      ADR3 => Y_6_IBUF_0,
      ADR1 => X_6_IBUF_0,
      ADR4 => Y_7_IBUF_0,
      O => S(7)
    );
  U1_GEN_0_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => X_0_IBUF_0,
      ADR2 => Y_0_IBUF_0,
      ADR5 => '1',
      O => DIFF_0_OBUF_198
    );
  U3_GEN_1_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"66966966"
    )
    port map (
      ADR0 => X_1_IBUF_0,
      ADR1 => Y_1_IBUF_0,
      ADR4 => COUT,
      ADR3 => X_0_IBUF_0,
      ADR2 => Y_0_IBUF_0,
      O => DIFF_1_OBUF_84
    );
  S_4_S_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_4_OBUF_112,
      O => DIFF_4_OBUF_0
    );
  U1_S_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"3C3CC3C33C3CC3C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => X_4_IBUF_0,
      ADR2 => Y_4_IBUF_0,
      ADR4 => U1_C_8_bdd6,
      ADR5 => '1',
      O => S(4)
    );
  U3_GEN_4_U_Z2 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"693C96C3"
    )
    port map (
      ADR0 => COUT,
      ADR3 => U3_GEN_4_U_Z1,
      ADR1 => X_4_IBUF_0,
      ADR2 => Y_4_IBUF_0,
      ADR4 => U1_C_8_bdd6,
      O => DIFF_4_OBUF_112
    );
  U3_GEN_5_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"CCCC3333EDDE1221"
    )
    port map (
      ADR1 => COUT,
      ADR4 => S_5_0,
      ADR3 => X_4_IBUF_0,
      ADR2 => Y_4_IBUF_0,
      ADR0 => U1_C_8_bdd6,
      ADR5 => U3_GEN_4_U_Z1,
      O => DIFF_5_OBUF_227
    );
  U1_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"6696669696996696"
    )
    port map (
      ADR1 => X_2_IBUF_0,
      ADR0 => Y_2_IBUF_0,
      ADR3 => X_1_IBUF_0,
      ADR5 => X_0_IBUF_0,
      ADR4 => Y_0_IBUF_0,
      ADR2 => Y_1_IBUF_0,
      O => S(2)
    );
  U1_C_8_bdd10_U1_C_8_bdd10_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_pack_9,
      O => S(1)
    );
  U1_C_8_bdd10_U1_C_8_bdd10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_3_pack_8,
      O => S(3)
    );
  U1_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"BBBB22BBBBBB22BB"
    )
    port map (
      ADR2 => '1',
      ADR0 => X_1_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR3 => Y_0_IBUF_0,
      ADR1 => Y_1_IBUF_0,
      ADR5 => '1',
      O => U1_C_8_bdd10
    );
  U1_S_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"66669966"
    )
    port map (
      ADR2 => '1',
      ADR0 => X_1_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR3 => Y_0_IBUF_0,
      ADR1 => Y_1_IBUF_0,
      O => S_1_pack_9
    );
  U1_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"F7517510F7517510"
    )
    port map (
      ADR3 => X_3_IBUF_0,
      ADR4 => U1_C_8_bdd10,
      ADR1 => Y_2_IBUF_0,
      ADR2 => X_2_IBUF_0,
      ADR0 => Y_3_IBUF_0,
      ADR5 => '1',
      O => U1_C_8_bdd6
    );
  U1_S_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"59A69A65"
    )
    port map (
      ADR3 => X_3_IBUF_0,
      ADR4 => U1_C_8_bdd10,
      ADR1 => Y_2_IBUF_0,
      ADR2 => X_2_IBUF_0,
      ADR0 => Y_3_IBUF_0,
      O => S_3_pack_8
    );
  U3_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"33CCC936CC3336C9"
    )
    port map (
      ADR4 => COUT,
      ADR3 => X_2_IBUF_0,
      ADR5 => Y_2_IBUF_0,
      ADR1 => U1_C_8_bdd10,
      ADR0 => DIFF_0_OBUF_198,
      ADR2 => S(1),
      O => DIFF_2_OBUF_194
    );
  U3_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"AA55AA55AA55EB14"
    )
    port map (
      ADR0 => COUT,
      ADR3 => S(3),
      ADR5 => S(2),
      ADR1 => Y_0_IBUF_0,
      ADR2 => X_0_IBUF_0,
      ADR4 => S(1),
      O => DIFF_3_OBUF_226
    );
  U3_GEN_7_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"999999999999999A"
    )
    port map (
      ADR1 => COUT,
      ADR0 => S_7_0,
      ADR5 => S(4),
      ADR3 => S_5_0,
      ADR4 => S(6),
      ADR2 => U3_GEN_4_U_Z1,
      O => DIFF_7_OBUF_199
    );
  NlwBufferBlock_C_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => C_OBUF_0,
      O => NlwBufferSignal_C_OBUF_I
    );
  NlwBufferBlock_DIFF_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_0_OBUF_198,
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
      I => DIFF_2_OBUF_194,
      O => NlwBufferSignal_DIFF_2_OBUF_I
    );
  NlwBufferBlock_DIFF_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_3_OBUF_226,
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
      I => DIFF_5_OBUF_227,
      O => NlwBufferSignal_DIFF_5_OBUF_I
    );
  NlwBufferBlock_DIFF_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_6_OBUF_228,
      O => NlwBufferSignal_DIFF_6_OBUF_I
    );
  NlwBufferBlock_DIFF_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DIFF_7_OBUF_199,
      O => NlwBufferSignal_DIFF_7_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

