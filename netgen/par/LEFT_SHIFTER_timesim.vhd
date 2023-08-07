--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: LEFT_SHIFTER_timesim.vhd
-- /___/   /\     Timestamp: Sun Aug  6 11:30:03 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf LEFT_SHIFTER.pcf -rpw 100 -tpw 0 -ar Structure -tm LEFT_SHIFTER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim LEFT_SHIFTER.ncd LEFT_SHIFTER_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: LEFT_SHIFTER.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/LEFT_SHIFTER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: LEFT_SHIFTER
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

entity LEFT_SHIFTER is
  port (
    X : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    S : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Y : out STD_LOGIC_VECTOR ( 23 downto 0 ) 
  );
end LEFT_SHIFTER;

architecture Structure of LEFT_SHIFTER is
  signal S_2_IBUF_0 : STD_LOGIC; 
  signal S_4_IBUF_0 : STD_LOGIC; 
  signal S_0_mmx_out6 : STD_LOGIC; 
  signal S_1_IBUF_0 : STD_LOGIC; 
  signal S_0_mmx_out8 : STD_LOGIC; 
  signal S_1_mmx_out11 : STD_LOGIC; 
  signal S_1_mmx_out19 : STD_LOGIC; 
  signal S_0_IBUF_0 : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal S_5_S_7_OR_2_o : STD_LOGIC; 
  signal S_1_mmx_out15 : STD_LOGIC; 
  signal Y_21_OBUF_0 : STD_LOGIC; 
  signal S_3_IBUF_0 : STD_LOGIC; 
  signal S_1_mmx_out3 : STD_LOGIC; 
  signal S_1_mmx_out4 : STD_LOGIC; 
  signal S_0_mmx_out7_0 : STD_LOGIC; 
  signal Mmux_Y222 : STD_LOGIC; 
  signal S_1_mmx_out12 : STD_LOGIC; 
  signal S_1_mmx_out : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal S_1_mmx_out16 : STD_LOGIC; 
  signal Y_22_OBUF_0 : STD_LOGIC; 
  signal S_1_mmx_out7 : STD_LOGIC; 
  signal S_1_mmx_out5 : STD_LOGIC; 
  signal Mmux_Y242_0 : STD_LOGIC; 
  signal S_1_mmx_out13 : STD_LOGIC; 
  signal S_1_mmx_out1 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal S_1_mmx_out17 : STD_LOGIC; 
  signal Y_23_OBUF_0 : STD_LOGIC; 
  signal S_1_mmx_out6 : STD_LOGIC; 
  signal S_1_mmx_out8 : STD_LOGIC; 
  signal Y_18_OBUF_674 : STD_LOGIC; 
  signal Y_19_OBUF_675 : STD_LOGIC; 
  signal Y_1_OBUF_676 : STD_LOGIC; 
  signal Mmux_Y12_677 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal Y_20_OBUF_680 : STD_LOGIC; 
  signal Mmux_Y182_681 : STD_LOGIC; 
  signal S_1_mmx_out18 : STD_LOGIC; 
  signal S_1_mmx_out14 : STD_LOGIC; 
  signal Y_4_OBUF_684 : STD_LOGIC; 
  signal S_1_mmx_out9 : STD_LOGIC; 
  signal Y_0_OBUF_686 : STD_LOGIC; 
  signal Y_8_OBUF_687 : STD_LOGIC; 
  signal Mmux_Y4_0 : STD_LOGIC; 
  signal Y_10_OBUF_690 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Y_9_OBUF_692 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal S_6_IBUF_0 : STD_LOGIC; 
  signal S_7_IBUF_0 : STD_LOGIC; 
  signal S_5_IBUF_0 : STD_LOGIC; 
  signal Y_12_OBUF_0 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal Y_13_OBUF_701 : STD_LOGIC; 
  signal Y_14_OBUF_702 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal S_0_mmx_out5_0 : STD_LOGIC; 
  signal Y_15_OBUF_0 : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal Mmux_Y9 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_16_OBUF_711 : STD_LOGIC; 
  signal S_1_mmx_out2 : STD_LOGIC; 
  signal Y_2_OBUF_713 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal Y_3_OBUF_715 : STD_LOGIC; 
  signal Y_5_OBUF_716 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal Y_6_OBUF_0 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal Y_7_OBUF_0 : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal Y_11_OBUF_725 : STD_LOGIC; 
  signal Y_17_OBUF_726 : STD_LOGIC; 
  signal Mmux_Y201 : STD_LOGIC; 
  signal Mmux_Y223_728 : STD_LOGIC; 
  signal Mmux_Y6 : STD_LOGIC; 
  signal Mmux_Y91_730 : STD_LOGIC; 
  signal Mmux_Y5 : STD_LOGIC; 
  signal Mmux_Y181_732 : STD_LOGIC; 
  signal Mmux_Y18 : STD_LOGIC; 
  signal Mmux_Y41_734 : STD_LOGIC; 
  signal Mmux_Y13 : STD_LOGIC; 
  signal Mmux_Y11 : STD_LOGIC; 
  signal Mmux_Y243_737 : STD_LOGIC; 
  signal Mmux_Y7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Mmux_Y15 : STD_LOGIC; 
  signal X_5_IBUF_3 : STD_LOGIC; 
  signal X_6_IBUF_8 : STD_LOGIC; 
  signal X_7_IBUF_13 : STD_LOGIC; 
  signal X_8_IBUF_18 : STD_LOGIC; 
  signal X_9_IBUF_23 : STD_LOGIC; 
  signal X_10_IBUF_34 : STD_LOGIC; 
  signal X_11_IBUF_37 : STD_LOGIC; 
  signal X_12_IBUF_40 : STD_LOGIC; 
  signal X_20_IBUF_43 : STD_LOGIC; 
  signal X_13_IBUF_46 : STD_LOGIC; 
  signal X_21_IBUF_49 : STD_LOGIC; 
  signal X_14_IBUF_52 : STD_LOGIC; 
  signal X_22_IBUF_55 : STD_LOGIC; 
  signal X_15_IBUF_58 : STD_LOGIC; 
  signal X_23_IBUF_61 : STD_LOGIC; 
  signal X_16_IBUF_64 : STD_LOGIC; 
  signal X_17_IBUF_67 : STD_LOGIC; 
  signal X_18_IBUF_72 : STD_LOGIC; 
  signal X_19_IBUF_77 : STD_LOGIC; 
  signal S_0_IBUF_102 : STD_LOGIC; 
  signal S_1_IBUF_107 : STD_LOGIC; 
  signal S_2_IBUF_110 : STD_LOGIC; 
  signal S_3_IBUF_113 : STD_LOGIC; 
  signal S_4_IBUF_116 : STD_LOGIC; 
  signal S_5_IBUF_119 : STD_LOGIC; 
  signal S_6_IBUF_122 : STD_LOGIC; 
  signal S_7_IBUF_125 : STD_LOGIC; 
  signal X_0_IBUF_128 : STD_LOGIC; 
  signal X_1_IBUF_131 : STD_LOGIC; 
  signal X_2_IBUF_134 : STD_LOGIC; 
  signal X_3_IBUF_137 : STD_LOGIC; 
  signal X_4_IBUF_142 : STD_LOGIC; 
  signal S_0_mmx_out7 : STD_LOGIC; 
  signal Y_6_OBUF_188 : STD_LOGIC; 
  signal S_0_mmx_out5 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal Y_21_OBUF_239 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Y_22_OBUF_268 : STD_LOGIC; 
  signal Mmux_Y242 : STD_LOGIC; 
  signal Y_7_OBUF_373 : STD_LOGIC; 
  signal S_1_mmx_out7_pack_4 : STD_LOGIC; 
  signal Y_12_OBUF_446 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal Y_23_OBUF_504 : STD_LOGIC; 
  signal Y_15_OBUF_558 : STD_LOGIC; 
  signal Mmux_Y4 : STD_LOGIC; 
  signal NlwBufferSignal_Y_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Y_0_OBUF_I : STD_LOGIC; 
begin
  Y_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD346"
    )
    port map (
      I => NlwBufferSignal_Y_1_OBUF_I,
      O => Y(1)
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_3,
      I => X(5)
    );
  ProtoComp17_IMUX : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_3,
      O => X_5_IBUF_0
    );
  Y_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD347"
    )
    port map (
      I => NlwBufferSignal_Y_2_OBUF_I,
      O => Y(2)
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_8,
      I => X(6)
    );
  ProtoComp17_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_8,
      O => X_6_IBUF_0
    );
  Y_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD351"
    )
    port map (
      I => NlwBufferSignal_Y_3_OBUF_I,
      O => Y(3)
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_13,
      I => X(7)
    );
  ProtoComp17_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_13,
      O => X_7_IBUF_0
    );
  Y_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD352"
    )
    port map (
      I => NlwBufferSignal_Y_4_OBUF_I,
      O => Y(4)
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_18,
      I => X(8)
    );
  ProtoComp17_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_18,
      O => X_8_IBUF_0
    );
  Y_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD350"
    )
    port map (
      I => NlwBufferSignal_Y_5_OBUF_I,
      O => Y(5)
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_23,
      I => X(9)
    );
  ProtoComp17_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_23,
      O => X_9_IBUF_0
    );
  Y_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD348"
    )
    port map (
      I => NlwBufferSignal_Y_6_OBUF_I,
      O => Y(6)
    );
  Y_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD349"
    )
    port map (
      I => NlwBufferSignal_Y_7_OBUF_I,
      O => Y(7)
    );
  Y_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD356"
    )
    port map (
      I => NlwBufferSignal_Y_8_OBUF_I,
      O => Y(8)
    );
  Y_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD354"
    )
    port map (
      I => NlwBufferSignal_Y_9_OBUF_I,
      O => Y(9)
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_34,
      I => X(10)
    );
  ProtoComp17_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_34,
      O => X_10_IBUF_0
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_37,
      I => X(11)
    );
  ProtoComp17_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_37,
      O => X_11_IBUF_0
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_40,
      I => X(12)
    );
  ProtoComp17_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_40,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_43,
      I => X(20)
    );
  ProtoComp17_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_43,
      O => X_20_IBUF_0
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_46,
      I => X(13)
    );
  ProtoComp17_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_46,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_49,
      I => X(21)
    );
  ProtoComp17_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_49,
      O => X_21_IBUF_0
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_52,
      I => X(14)
    );
  ProtoComp17_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_52,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_55,
      I => X(22)
    );
  ProtoComp17_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_55,
      O => X_22_IBUF_0
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_58,
      I => X(15)
    );
  ProtoComp17_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_58,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_61,
      I => X(23)
    );
  ProtoComp17_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_61,
      O => X_23_IBUF_0
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_64,
      I => X(16)
    );
  ProtoComp17_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_64,
      O => X_16_IBUF_0
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_67,
      I => X(17)
    );
  ProtoComp17_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_67,
      O => X_17_IBUF_0
    );
  Y_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD355"
    )
    port map (
      I => NlwBufferSignal_Y_10_OBUF_I,
      O => Y(10)
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_72,
      I => X(18)
    );
  ProtoComp17_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_72,
      O => X_18_IBUF_0
    );
  Y_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD353"
    )
    port map (
      I => NlwBufferSignal_Y_11_OBUF_I,
      O => Y(11)
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_77,
      I => X(19)
    );
  ProtoComp17_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_77,
      O => X_19_IBUF_0
    );
  Y_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD357"
    )
    port map (
      I => NlwBufferSignal_Y_12_OBUF_I,
      O => Y(12)
    );
  Y_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_Y_20_OBUF_I,
      O => Y(20)
    );
  Y_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD358"
    )
    port map (
      I => NlwBufferSignal_Y_13_OBUF_I,
      O => Y(13)
    );
  Y_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD366"
    )
    port map (
      I => NlwBufferSignal_Y_21_OBUF_I,
      O => Y(21)
    );
  Y_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD359"
    )
    port map (
      I => NlwBufferSignal_Y_14_OBUF_I,
      O => Y(14)
    );
  Y_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD367"
    )
    port map (
      I => NlwBufferSignal_Y_22_OBUF_I,
      O => Y(22)
    );
  Y_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD360"
    )
    port map (
      I => NlwBufferSignal_Y_15_OBUF_I,
      O => Y(15)
    );
  Y_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD368"
    )
    port map (
      I => NlwBufferSignal_Y_23_OBUF_I,
      O => Y(23)
    );
  Y_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD361"
    )
    port map (
      I => NlwBufferSignal_Y_16_OBUF_I,
      O => Y(16)
    );
  Y_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD362"
    )
    port map (
      I => NlwBufferSignal_Y_17_OBUF_I,
      O => Y(17)
    );
  Y_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD363"
    )
    port map (
      I => NlwBufferSignal_Y_18_OBUF_I,
      O => Y(18)
    );
  S_0_IBUF : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_0_IBUF_102,
      I => S(0)
    );
  ProtoComp17_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_IBUF_102,
      O => S_0_IBUF_0
    );
  Y_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD364"
    )
    port map (
      I => NlwBufferSignal_Y_19_OBUF_I,
      O => Y(19)
    );
  S_1_IBUF : X_BUF
    generic map(
      LOC => "PAD374",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_1_IBUF_107,
      I => S(1)
    );
  ProtoComp17_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD374",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_IBUF_107,
      O => S_1_IBUF_0
    );
  S_2_IBUF : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_2_IBUF_110,
      I => S(2)
    );
  ProtoComp17_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_2_IBUF_110,
      O => S_2_IBUF_0
    );
  S_3_IBUF : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_3_IBUF_113,
      I => S(3)
    );
  ProtoComp17_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_3_IBUF_113,
      O => S_3_IBUF_0
    );
  S_4_IBUF : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_4_IBUF_116,
      I => S(4)
    );
  ProtoComp17_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_4_IBUF_116,
      O => S_4_IBUF_0
    );
  S_5_IBUF : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_5_IBUF_119,
      I => S(5)
    );
  ProtoComp17_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD369",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_5_IBUF_119,
      O => S_5_IBUF_0
    );
  S_6_IBUF : X_BUF
    generic map(
      LOC => "PAD373",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_6_IBUF_122,
      I => S(6)
    );
  ProtoComp17_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD373",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_6_IBUF_122,
      O => S_6_IBUF_0
    );
  S_7_IBUF : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      O => S_7_IBUF_125,
      I => S(7)
    );
  ProtoComp17_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD370",
      PATHPULSE => 202 ps
    )
    port map (
      I => S_7_IBUF_125,
      O => S_7_IBUF_0
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_128,
      I => X(0)
    );
  ProtoComp17_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_128,
      O => X_0_IBUF_0
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_131,
      I => X(1)
    );
  ProtoComp17_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_131,
      O => X_1_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_134,
      I => X(2)
    );
  ProtoComp17_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_134,
      O => X_2_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_137,
      I => X(3)
    );
  ProtoComp17_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_137,
      O => X_3_IBUF_0
    );
  Y_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD345"
    )
    port map (
      I => NlwBufferSignal_Y_0_OBUF_I,
      O => Y(0)
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_142,
      I => X(4)
    );
  ProtoComp17_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_142,
      O => X_4_IBUF_0
    );
  S_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"EE22FCFCEE223030"
    )
    port map (
      ADR4 => S_0_IBUF_0,
      ADR1 => S_1_IBUF_0,
      ADR0 => X_10_IBUF_0,
      ADR3 => X_8_IBUF_0,
      ADR5 => X_9_IBUF_0,
      ADR2 => X_11_IBUF_0,
      O => S_1_mmx_out17
    );
  S_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"FAEE50EEFA445044"
    )
    port map (
      ADR3 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR2 => X_9_IBUF_0,
      ADR4 => X_7_IBUF_0,
      ADR5 => X_8_IBUF_0,
      ADR1 => X_10_IBUF_0,
      O => S_1_mmx_out16
    );
  S_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR1 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR4 => X_8_IBUF_0,
      ADR3 => X_6_IBUF_0,
      ADR2 => X_7_IBUF_0,
      ADR5 => X_9_IBUF_0,
      O => S_1_mmx_out15
    );
  S_0_mmx_out8_S_0_mmx_out8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_mmx_out7,
      O => S_0_mmx_out7_0
    );
  S_0_201 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"FC0CFC0CFC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => S_0_IBUF_0,
      ADR1 => X_21_IBUF_0,
      ADR3 => X_20_IBUF_0,
      ADR5 => '1',
      O => S_0_mmx_out8
    );
  S_0_191 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"AFA0AFA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => X_19_IBUF_0,
      ADR2 => S_0_IBUF_0,
      ADR4 => '1',
      ADR3 => X_20_IBUF_0,
      O => S_0_mmx_out7
    );
  S_0_mmx_out6_S_0_mmx_out6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_0_mmx_out5,
      O => S_0_mmx_out5_0
    );
  S_0_mmx_out6_S_0_mmx_out6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_OBUF_188,
      O => Y_6_OBUF_0
    );
  S_0_181 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => S_0_IBUF_0,
      ADR3 => X_19_IBUF_0,
      ADR1 => X_18_IBUF_0,
      ADR5 => '1',
      O => S_0_mmx_out6
    );
  S_0_171 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => X_17_IBUF_0,
      ADR4 => S_0_IBUF_0,
      ADR3 => '1',
      ADR1 => X_18_IBUF_0,
      O => S_0_mmx_out5
    );
  S_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"FC30FC30BBBB8888"
    )
    port map (
      ADR5 => S_1_IBUF_0,
      ADR1 => S_0_IBUF_0,
      ADR2 => X_16_IBUF_0,
      ADR3 => X_15_IBUF_0,
      ADR0 => X_17_IBUF_0,
      ADR4 => X_18_IBUF_0,
      O => S_1_mmx_out5
    );
  Mmux_Y251 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"0000222200002222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => S_1_mmx_out7,
      ADR4 => S_2_IBUF_0,
      ADR0 => Mmux_Y12_677,
      ADR5 => '1',
      O => Y_2_OBUF_713
    );
  Mmux_Y291 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"2222AA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => S_1_mmx_out12,
      ADR1 => S_1_mmx_out7,
      ADR4 => S_2_IBUF_0,
      ADR0 => Mmux_Y12_677,
      O => Y_6_OBUF_188
    );
  S_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"CAFFCAF0CA0FCA00"
    )
    port map (
      ADR3 => S_0_IBUF_0,
      ADR2 => S_1_IBUF_0,
      ADR0 => X_5_IBUF_0,
      ADR1 => X_3_IBUF_0,
      ADR5 => X_4_IBUF_0,
      ADR4 => X_6_IBUF_0,
      O => S_1_mmx_out12
    );
  S_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"FCFCAFA00C0CAFA0"
    )
    port map (
      ADR4 => S_0_IBUF_0,
      ADR2 => S_1_IBUF_0,
      ADR1 => X_4_IBUF_0,
      ADR5 => X_2_IBUF_0,
      ADR0 => X_3_IBUF_0,
      ADR3 => X_5_IBUF_0,
      O => S_1_mmx_out11
    );
  Mmux_Y281 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"0FFF0F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Mmux_Y12_677,
      ADR3 => S_2_IBUF_0,
      ADR2 => S_1_mmx_out3,
      ADR4 => S_1_mmx_out11,
      O => Y_5_OBUF_716
    );
  S_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"FFD855D8AAD800D8"
    )
    port map (
      ADR3 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR5 => X_3_IBUF_0,
      ADR4 => X_1_IBUF_0,
      ADR1 => X_2_IBUF_0,
      ADR2 => X_4_IBUF_0,
      O => S_1_mmx_out9
    );
  Mmux_Y183 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"FAFFFAAA50555000"
    )
    port map (
      ADR1 => '1',
      ADR0 => S_4_IBUF_0,
      ADR2 => S_0_mmx_out5_0,
      ADR3 => S_1_IBUF_0,
      ADR4 => S_0_mmx_out7_0,
      ADR5 => S_1_mmx_out9,
      O => Mmux_Y182_681
    );
  S_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"AAF0AAF0FFCC00CC"
    )
    port map (
      ADR5 => S_0_IBUF_0,
      ADR3 => S_1_IBUF_0,
      ADR2 => X_16_IBUF_0,
      ADR0 => X_14_IBUF_0,
      ADR4 => X_15_IBUF_0,
      ADR1 => X_17_IBUF_0,
      O => S_1_mmx_out4
    );
  Mmux_Y271 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"3074303000000000"
    )
    port map (
      ADR5 => Mmux_Y12_677,
      ADR1 => S_2_IBUF_0,
      ADR3 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR2 => S_1_mmx_out9,
      O => Y_4_OBUF_684
    );
  S_1_mmx_out19_S_1_mmx_out19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_OBUF_239,
      O => Y_21_OBUF_0
    );
  Mmux_Y204 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y100"
    )
    port map (
      IA => N14,
      IB => N15,
      O => Y_21_OBUF_239,
      SEL => S_3_IBUF_0
    );
  Mmux_Y204_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"0000F0FC0000F8F8"
    )
    port map (
      ADR4 => S_5_S_7_OR_2_o,
      ADR1 => S_2_IBUF_0,
      ADR5 => S_4_IBUF_0,
      ADR3 => S_1_mmx_out3,
      ADR0 => S_1_mmx_out4,
      ADR2 => Mmux_Y201,
      O => N14
    );
  Mmux_Y204_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"0404040405000500"
    )
    port map (
      ADR4 => '1',
      ADR0 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR5 => S_2_IBUF_0,
      ADR1 => S_1_mmx_out15,
      ADR3 => S_1_mmx_out19,
      O => N15
    );
  S_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"FF33CC00B8B8B8B8"
    )
    port map (
      ADR5 => S_0_IBUF_0,
      ADR1 => S_1_IBUF_0,
      ADR4 => X_12_IBUF_0,
      ADR3 => X_10_IBUF_0,
      ADR0 => X_11_IBUF_0,
      ADR2 => X_13_IBUF_0,
      O => S_1_mmx_out19
    );
  Mmux_Y202 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"00FE00F2000E0002"
    )
    port map (
      ADR3 => S_2_IBUF_0,
      ADR2 => S_4_IBUF_0,
      ADR4 => S_0_mmx_out6,
      ADR1 => S_1_IBUF_0,
      ADR0 => S_0_mmx_out8,
      ADR5 => S_1_mmx_out11,
      O => Mmux_Y201
    );
  S_1_mmx_out_S_1_mmx_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_OBUF_268,
      O => Y_22_OBUF_0
    );
  Mmux_Y225 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y101"
    )
    port map (
      IA => N10,
      IB => N11,
      O => Y_22_OBUF_268,
      SEL => S_3_IBUF_0
    );
  Mmux_Y225_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y101",
      INIT => X"00FF002E00FF0000"
    )
    port map (
      ADR3 => S_5_S_7_OR_2_o,
      ADR5 => S_2_IBUF_0,
      ADR1 => S_4_IBUF_0,
      ADR2 => S_1_mmx_out7,
      ADR0 => S_1_mmx_out5,
      ADR4 => Mmux_Y223_728,
      O => N10
    );
  Mmux_Y225_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y101",
      INIT => X"0500050505000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => S_5_S_7_OR_2_o,
      ADR0 => S_4_IBUF_0,
      ADR4 => S_2_IBUF_0,
      ADR3 => S_1_mmx_out16,
      ADR5 => S_1_mmx_out,
      O => N11
    );
  S_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y101",
      INIT => X"FE76BA32DC549810"
    )
    port map (
      ADR1 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR4 => X_13_IBUF_0,
      ADR3 => X_11_IBUF_0,
      ADR5 => X_12_IBUF_0,
      ADR2 => X_14_IBUF_0,
      O => S_1_mmx_out
    );
  Mmux_Y224 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y101",
      INIT => X"00AA00FC00AA000C"
    )
    port map (
      ADR3 => S_2_IBUF_0,
      ADR4 => S_4_IBUF_0,
      ADR5 => S_0_mmx_out7_0,
      ADR2 => S_1_IBUF_0,
      ADR1 => Mmux_Y222,
      ADR0 => S_1_mmx_out12,
      O => Mmux_Y223_728
    );
  Mmux_Y92 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y102",
      INIT => X"FBD97351EAC86240"
    )
    port map (
      ADR0 => S_2_IBUF_0,
      ADR1 => S_3_IBUF_0,
      ADR3 => S_1_mmx_out18,
      ADR4 => S_1_mmx_out9,
      ADR2 => S_1_mmx_out14,
      ADR5 => S_1_mmx_out2,
      O => Mmux_Y91_730
    );
  Mmux_Y93 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y102",
      INIT => X"0010001100100010"
    )
    port map (
      ADR0 => S_6_IBUF_0,
      ADR1 => S_7_IBUF_0,
      ADR3 => S_5_IBUF_0,
      ADR2 => Mmux_Y9,
      ADR4 => S_4_IBUF_0,
      ADR5 => Mmux_Y91_730,
      O => Y_16_OBUF_711
    );
  Mmux_Y61 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y102",
      INIT => X"7F3B5D196E2A4C08"
    )
    port map (
      ADR0 => S_2_IBUF_0,
      ADR1 => S_3_IBUF_0,
      ADR2 => S_1_mmx_out7,
      ADR4 => S_1_mmx_out16,
      ADR3 => S_1_mmx_out12,
      ADR5 => S_1_mmx_out,
      O => Mmux_Y6
    );
  Mmux_Y62 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y102",
      INIT => X"0001000000010000"
    )
    port map (
      ADR5 => '1',
      ADR4 => Mmux_Y6,
      ADR1 => S_6_IBUF_0,
      ADR2 => S_7_IBUF_0,
      ADR0 => S_5_IBUF_0,
      ADR3 => S_4_IBUF_0,
      O => Y_14_OBUF_702
    );
  Mmux_Y51 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y103",
      INIT => X"3E32FEF20E02CEC2"
    )
    port map (
      ADR1 => S_2_IBUF_0,
      ADR2 => S_3_IBUF_0,
      ADR4 => S_1_mmx_out3,
      ADR3 => S_1_mmx_out15,
      ADR5 => S_1_mmx_out11,
      ADR0 => S_1_mmx_out19,
      O => Mmux_Y5
    );
  Mmux_Y52 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y103",
      INIT => X"0000000000110000"
    )
    port map (
      ADR2 => '1',
      ADR4 => Mmux_Y5,
      ADR5 => S_6_IBUF_0,
      ADR1 => S_7_IBUF_0,
      ADR3 => S_5_IBUF_0,
      ADR0 => S_4_IBUF_0,
      O => Y_13_OBUF_701
    );
  S_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y94",
      INIT => X"CCAAFFF0CCAA00F0"
    )
    port map (
      ADR3 => S_0_IBUF_0,
      ADR4 => S_1_IBUF_0,
      ADR5 => X_7_IBUF_0,
      ADR1 => X_5_IBUF_0,
      ADR0 => X_6_IBUF_0,
      ADR2 => X_8_IBUF_0,
      O => S_1_mmx_out14
    );
  S_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y95",
      INIT => X"FFAAE4E45500E4E4"
    )
    port map (
      ADR4 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR3 => X_11_IBUF_0,
      ADR5 => X_9_IBUF_0,
      ADR2 => X_10_IBUF_0,
      ADR1 => X_12_IBUF_0,
      O => S_1_mmx_out18
    );
  Mmux_Y222_Mmux_Y222_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Y242,
      O => Mmux_Y242_0
    );
  Mmux_Y223 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => S_0_IBUF_0,
      ADR2 => X_22_IBUF_0,
      ADR1 => X_21_IBUF_0,
      ADR5 => '1',
      O => Mmux_Y222
    );
  Mmux_Y243 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => X"F0F0AAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => X_23_IBUF_0,
      ADR4 => S_0_IBUF_0,
      ADR2 => X_22_IBUF_0,
      ADR3 => '1',
      O => Mmux_Y242
    );
  Mmux_Y161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => X"000000000000C088"
    )
    port map (
      ADR4 => S_1_IBUF_0,
      ADR5 => S_2_IBUF_0,
      ADR1 => Mmux_Y12_677,
      ADR3 => S_0_IBUF_0,
      ADR2 => X_0_IBUF_0,
      ADR0 => X_1_IBUF_0,
      O => Y_1_OBUF_676
    );
  S_1_161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y97",
      INIT => X"FBD9EAC873516240"
    )
    port map (
      ADR0 => S_1_IBUF_0,
      ADR1 => S_0_IBUF_0,
      ADR3 => X_17_IBUF_0,
      ADR5 => X_16_IBUF_0,
      ADR2 => X_18_IBUF_0,
      ADR4 => X_19_IBUF_0,
      O => S_1_mmx_out6
    );
  Y_3_OBUF_Y_3_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_OBUF_373,
      O => Y_7_OBUF_0
    );
  Mmux_Y261 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y98",
      INIT => X"4444000044440000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => S_1_mmx_out8,
      ADR0 => S_2_IBUF_0,
      ADR1 => Mmux_Y12_677,
      ADR5 => '1',
      O => Y_3_OBUF_715
    );
  Mmux_Y301 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y98",
      INIT => X"CC884400"
    )
    port map (
      ADR2 => '1',
      ADR3 => S_1_mmx_out13,
      ADR4 => S_1_mmx_out8,
      ADR0 => S_2_IBUF_0,
      ADR1 => Mmux_Y12_677,
      O => Y_7_OBUF_373
    );
  S_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y98",
      INIT => X"FECEF2C23E0E3202"
    )
    port map (
      ADR2 => S_0_IBUF_0,
      ADR1 => S_1_IBUF_0,
      ADR3 => X_6_IBUF_0,
      ADR5 => X_4_IBUF_0,
      ADR4 => X_5_IBUF_0,
      ADR0 => X_7_IBUF_0,
      O => S_1_mmx_out13
    );
  Mmux_Y121 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y98",
      INIT => X"0000000000000101"
    )
    port map (
      ADR3 => '1',
      ADR5 => S_4_IBUF_0,
      ADR1 => S_3_IBUF_0,
      ADR4 => S_6_IBUF_0,
      ADR2 => S_7_IBUF_0,
      ADR0 => S_5_IBUF_0,
      O => Mmux_Y12_677
    );
  S_1_mmx_out3_S_1_mmx_out3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => S_1_mmx_out7_pack_4,
      O => S_1_mmx_out7
    );
  S_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y99",
      INIT => X"FF03FFCFFF03FFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => S_0_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR3 => S_1_IBUF_0,
      ADR2 => X_1_IBUF_0,
      ADR5 => '1',
      O => S_1_mmx_out3
    );
  S_1_171 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y99",
      INIT => X"CC1DFF1D"
    )
    port map (
      ADR0 => X_2_IBUF_0,
      ADR1 => S_0_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR3 => S_1_IBUF_0,
      ADR2 => X_1_IBUF_0,
      O => S_1_mmx_out7_pack_4
    );
  Mmux_Y32 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y99",
      INIT => X"00000A0A000F0C0C"
    )
    port map (
      ADR2 => N2,
      ADR4 => S_3_IBUF_0,
      ADR0 => S_1_mmx_out11,
      ADR5 => S_2_IBUF_0,
      ADR1 => S_1_mmx_out15,
      ADR3 => S_1_mmx_out3,
      O => Y_9_OBUF_692
    );
  Mmux_Y2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y99",
      INIT => X"0303000007040704"
    )
    port map (
      ADR2 => N2,
      ADR1 => S_3_IBUF_0,
      ADR4 => S_1_mmx_out12,
      ADR5 => S_2_IBUF_0,
      ADR3 => S_1_mmx_out16,
      ADR0 => S_1_mmx_out7,
      O => Y_10_OBUF_690
    );
  S_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"FAFA0A0ACFC0CFC0"
    )
    port map (
      ADR5 => S_0_IBUF_0,
      ADR2 => S_1_IBUF_0,
      ADR0 => X_15_IBUF_0,
      ADR4 => X_13_IBUF_0,
      ADR1 => X_14_IBUF_0,
      ADR3 => X_16_IBUF_0,
      O => S_1_mmx_out2
    );
  Mmux_Y182 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"333F3333000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => S_4_IBUF_0,
      ADR3 => S_1_IBUF_0,
      ADR2 => S_0_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR5 => S_1_mmx_out2,
      O => Mmux_Y181_732
    );
  Mmux_Y181 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"000000008888CC00"
    )
    port map (
      ADR2 => '1',
      ADR1 => S_3_IBUF_0,
      ADR5 => S_4_IBUF_0,
      ADR4 => S_2_IBUF_0,
      ADR3 => S_1_mmx_out18,
      ADR0 => S_1_mmx_out14,
      O => Mmux_Y18
    );
  Mmux_Y184 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"00000000FFFF0D08"
    )
    port map (
      ADR5 => S_5_S_7_OR_2_o,
      ADR2 => S_3_IBUF_0,
      ADR0 => S_2_IBUF_0,
      ADR1 => Mmux_Y181_732,
      ADR3 => Mmux_Y182_681,
      ADR4 => Mmux_Y18,
      O => Y_20_OBUF_680
    );
  N2_N2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_OBUF_446,
      O => Y_12_OBUF_0
    );
  Mmux_Y32_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"FFFEFFFEFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR0 => S_6_IBUF_0,
      ADR2 => S_7_IBUF_0,
      ADR1 => S_5_IBUF_0,
      ADR3 => S_4_IBUF_0,
      ADR5 => '1',
      O => N2
    );
  Mmux_Y43 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"00010000"
    )
    port map (
      ADR4 => Mmux_Y41_734,
      ADR0 => S_6_IBUF_0,
      ADR2 => S_7_IBUF_0,
      ADR1 => S_5_IBUF_0,
      ADR3 => S_4_IBUF_0,
      O => Y_12_OBUF_446
    );
  Mmux_Y42 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"FFFC22FCFF302230"
    )
    port map (
      ADR3 => S_2_IBUF_0,
      ADR4 => Mmux_Y4_0,
      ADR0 => S_1_mmx_out14,
      ADR1 => S_3_IBUF_0,
      ADR5 => S_1_mmx_out9,
      ADR2 => S_1_mmx_out18,
      O => Mmux_Y41_734
    );
  Mmux_Y91 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"0000000001000000"
    )
    port map (
      ADR0 => S_3_IBUF_0,
      ADR1 => S_2_IBUF_0,
      ADR2 => S_1_IBUF_0,
      ADR5 => S_0_IBUF_0,
      ADR4 => S_4_IBUF_0,
      ADR3 => X_0_IBUF_0,
      O => Mmux_Y9
    );
  Mmux_Y111 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y102",
      INIT => X"FE5EF454AE0EA404"
    )
    port map (
      ADR0 => S_2_IBUF_0,
      ADR2 => S_3_IBUF_0,
      ADR4 => S_1_mmx_out19,
      ADR3 => S_1_mmx_out11,
      ADR5 => S_1_mmx_out15,
      ADR1 => S_1_mmx_out4,
      O => Mmux_Y11
    );
  Mmux_Y112 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y102",
      INIT => X"00000F1F00000010"
    )
    port map (
      ADR4 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR0 => S_2_IBUF_0,
      ADR3 => S_1_mmx_out3,
      ADR1 => S_3_IBUF_0,
      ADR5 => Mmux_Y11,
      O => Y_17_OBUF_726
    );
  Mmux_Y131 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y102",
      INIT => X"FBF83B38CBC80B08"
    )
    port map (
      ADR1 => S_2_IBUF_0,
      ADR2 => S_3_IBUF_0,
      ADR0 => S_1_mmx_out,
      ADR4 => S_1_mmx_out12,
      ADR5 => S_1_mmx_out16,
      ADR3 => S_1_mmx_out5,
      O => Mmux_Y13
    );
  Mmux_Y132 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y102",
      INIT => X"000F0000001F0010"
    )
    port map (
      ADR3 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR0 => S_2_IBUF_0,
      ADR1 => S_1_mmx_out7,
      ADR5 => S_3_IBUF_0,
      ADR4 => Mmux_Y13,
      O => Y_18_OBUF_674
    );
  S_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y99",
      INIT => X"FAEE50EEFA445044"
    )
    port map (
      ADR0 => S_0_IBUF_0,
      ADR3 => S_1_IBUF_0,
      ADR5 => X_2_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR2 => X_1_IBUF_0,
      ADR1 => X_3_IBUF_0,
      O => S_1_mmx_out8
    );
  Mmux_Y3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y99",
      INIT => X"000000000FCA00CA"
    )
    port map (
      ADR5 => N2,
      ADR3 => S_3_IBUF_0,
      ADR1 => S_1_mmx_out13,
      ADR2 => S_2_IBUF_0,
      ADR0 => S_1_mmx_out17,
      ADR4 => S_1_mmx_out8,
      O => Y_11_OBUF_725
    );
  S_1_mmx_out1_S_1_mmx_out1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_OBUF_504,
      O => Y_23_OBUF_0
    );
  Mmux_Y245 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y100"
    )
    port map (
      IA => N12,
      IB => N13,
      O => Y_23_OBUF_504,
      SEL => S_3_IBUF_0
    );
  Mmux_Y245_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y100",
      INIT => X"00FF008800FF00C0"
    )
    port map (
      ADR3 => S_5_S_7_OR_2_o,
      ADR1 => S_2_IBUF_0,
      ADR5 => S_4_IBUF_0,
      ADR2 => S_1_mmx_out6,
      ADR0 => S_1_mmx_out8,
      ADR4 => Mmux_Y243_737,
      O => N12
    );
  Mmux_Y245_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y100",
      INIT => X"000F0005000A0000"
    )
    port map (
      ADR1 => '1',
      ADR3 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR0 => S_2_IBUF_0,
      ADR4 => S_1_mmx_out17,
      ADR5 => S_1_mmx_out1,
      O => N13
    );
  S_1_110 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y100",
      INIT => X"E4E4E4E4FF55AA00"
    )
    port map (
      ADR5 => S_0_IBUF_0,
      ADR0 => S_1_IBUF_0,
      ADR1 => X_14_IBUF_0,
      ADR2 => X_12_IBUF_0,
      ADR3 => X_13_IBUF_0,
      ADR4 => X_15_IBUF_0,
      O => S_1_mmx_out1
    );
  Mmux_Y244 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y100",
      INIT => X"3333000032023202"
    )
    port map (
      ADR1 => S_2_IBUF_0,
      ADR5 => S_4_IBUF_0,
      ADR3 => S_0_mmx_out8,
      ADR2 => S_1_IBUF_0,
      ADR0 => Mmux_Y242_0,
      ADR4 => S_1_mmx_out13,
      O => Mmux_Y243_737
    );
  N8_N8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_Y4,
      O => Mmux_Y4_0
    );
  N8_N8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_OBUF_558,
      O => Y_15_OBUF_0
    );
  Mmux_Y31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"AFAF8DAFAFAF8DAF"
    )
    port map (
      ADR0 => S_3_IBUF_0,
      ADR4 => S_0_IBUF_0,
      ADR3 => X_0_IBUF_0,
      ADR1 => S_1_IBUF_0,
      ADR2 => S_1_mmx_out14,
      ADR5 => '1',
      O => N8
    );
  Mmux_Y41 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"00002200"
    )
    port map (
      ADR0 => S_3_IBUF_0,
      ADR4 => S_0_IBUF_0,
      ADR3 => X_0_IBUF_0,
      ADR1 => S_1_IBUF_0,
      ADR2 => '1',
      O => Mmux_Y4
    );
  Mmux_Y31 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"000000080000030B"
    )
    port map (
      ADR4 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR0 => S_1_mmx_out9,
      ADR1 => S_2_IBUF_0,
      ADR3 => S_3_IBUF_0,
      ADR5 => N8,
      O => Y_8_OBUF_687
    );
  S_5_S_7_OR_2_o_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"FFFFEEEEFFFFEEEE"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => S_6_IBUF_0,
      ADR0 => S_7_IBUF_0,
      ADR4 => S_5_IBUF_0,
      ADR5 => '1',
      O => S_5_S_7_OR_2_o
    );
  Mmux_Y72 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"00000100"
    )
    port map (
      ADR3 => Mmux_Y7,
      ADR2 => S_4_IBUF_0,
      ADR1 => S_6_IBUF_0,
      ADR0 => S_7_IBUF_0,
      ADR4 => S_5_IBUF_0,
      O => Y_15_OBUF_558
    );
  Mmux_Y71 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y101",
      INIT => X"FECE3E0EF2C23202"
    )
    port map (
      ADR2 => S_2_IBUF_0,
      ADR1 => S_3_IBUF_0,
      ADR3 => S_1_mmx_out17,
      ADR4 => S_1_mmx_out8,
      ADR5 => S_1_mmx_out13,
      ADR0 => S_1_mmx_out1,
      O => Mmux_Y7
    );
  Mmux_Y151 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y102",
      INIT => X"AFFCA0FCAF0CA00C"
    )
    port map (
      ADR2 => S_2_IBUF_0,
      ADR3 => S_3_IBUF_0,
      ADR5 => S_1_mmx_out1,
      ADR0 => S_1_mmx_out13,
      ADR4 => S_1_mmx_out17,
      ADR1 => S_1_mmx_out6,
      O => Mmux_Y15
    );
  Mmux_Y152 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y102",
      INIT => X"0500151005000500"
    )
    port map (
      ADR0 => S_5_S_7_OR_2_o,
      ADR2 => S_4_IBUF_0,
      ADR3 => Mmux_Y15,
      ADR5 => S_1_mmx_out8,
      ADR1 => S_2_IBUF_0,
      ADR4 => S_3_IBUF_0,
      O => Y_19_OBUF_675
    );
  Mmux_Y12 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y96",
      INIT => X"0000000000003000"
    )
    port map (
      ADR0 => '1',
      ADR5 => S_2_IBUF_0,
      ADR2 => Mmux_Y12_677,
      ADR3 => X_0_IBUF_0,
      ADR4 => S_1_IBUF_0,
      ADR1 => S_0_IBUF_0,
      O => Y_0_OBUF_686
    );
  NlwBufferBlock_Y_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_OBUF_676,
      O => NlwBufferSignal_Y_1_OBUF_I
    );
  NlwBufferBlock_Y_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_OBUF_713,
      O => NlwBufferSignal_Y_2_OBUF_I
    );
  NlwBufferBlock_Y_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_OBUF_715,
      O => NlwBufferSignal_Y_3_OBUF_I
    );
  NlwBufferBlock_Y_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_OBUF_684,
      O => NlwBufferSignal_Y_4_OBUF_I
    );
  NlwBufferBlock_Y_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_OBUF_716,
      O => NlwBufferSignal_Y_5_OBUF_I
    );
  NlwBufferBlock_Y_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_OBUF_0,
      O => NlwBufferSignal_Y_6_OBUF_I
    );
  NlwBufferBlock_Y_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_OBUF_0,
      O => NlwBufferSignal_Y_7_OBUF_I
    );
  NlwBufferBlock_Y_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_OBUF_687,
      O => NlwBufferSignal_Y_8_OBUF_I
    );
  NlwBufferBlock_Y_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_OBUF_692,
      O => NlwBufferSignal_Y_9_OBUF_I
    );
  NlwBufferBlock_Y_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_OBUF_690,
      O => NlwBufferSignal_Y_10_OBUF_I
    );
  NlwBufferBlock_Y_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_OBUF_725,
      O => NlwBufferSignal_Y_11_OBUF_I
    );
  NlwBufferBlock_Y_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_OBUF_0,
      O => NlwBufferSignal_Y_12_OBUF_I
    );
  NlwBufferBlock_Y_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_OBUF_680,
      O => NlwBufferSignal_Y_20_OBUF_I
    );
  NlwBufferBlock_Y_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_OBUF_701,
      O => NlwBufferSignal_Y_13_OBUF_I
    );
  NlwBufferBlock_Y_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_OBUF_0,
      O => NlwBufferSignal_Y_21_OBUF_I
    );
  NlwBufferBlock_Y_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_OBUF_702,
      O => NlwBufferSignal_Y_14_OBUF_I
    );
  NlwBufferBlock_Y_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_OBUF_0,
      O => NlwBufferSignal_Y_22_OBUF_I
    );
  NlwBufferBlock_Y_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_OBUF_0,
      O => NlwBufferSignal_Y_15_OBUF_I
    );
  NlwBufferBlock_Y_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_OBUF_0,
      O => NlwBufferSignal_Y_23_OBUF_I
    );
  NlwBufferBlock_Y_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_OBUF_711,
      O => NlwBufferSignal_Y_16_OBUF_I
    );
  NlwBufferBlock_Y_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_OBUF_726,
      O => NlwBufferSignal_Y_17_OBUF_I
    );
  NlwBufferBlock_Y_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_OBUF_674,
      O => NlwBufferSignal_Y_18_OBUF_I
    );
  NlwBufferBlock_Y_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_OBUF_675,
      O => NlwBufferSignal_Y_19_OBUF_I
    );
  NlwBufferBlock_Y_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_OBUF_686,
      O => NlwBufferSignal_Y_0_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

