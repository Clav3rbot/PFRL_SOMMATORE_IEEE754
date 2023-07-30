--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SPECIAL_CASE_HANDLER_timesim.vhd
-- /___/   /\     Timestamp: Sun Jul 30 11:33:54 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf SPECIAL_CASE_HANDLER.pcf -rpw 100 -tpw 0 -ar Structure -tm SPECIAL_CASE_HANDLER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim SPECIAL_CASE_HANDLER.ncd SPECIAL_CASE_HANDLER_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: SPECIAL_CASE_HANDLER.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/SPECIAL_CASE_HANDLER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: SPECIAL_CASE_HANDLER
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

entity SPECIAL_CASE_HANDLER is
  port (
    CASEX : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    CASEY : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    RESULT : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end SPECIAL_CASE_HANDLER;

architecture Structure of SPECIAL_CASE_HANDLER is
  signal CASEX_2_IBUF_0 : STD_LOGIC; 
  signal RESULT_11_OBUF_662 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal RESULT_12_OBUF_666 : STD_LOGIC; 
  signal RESULT_20_OBUF_667 : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal X_24_IBUF_0 : STD_LOGIC; 
  signal CASEY_0_IBUF_0 : STD_LOGIC; 
  signal RESULT_13_OBUF_671 : STD_LOGIC; 
  signal RESULT_21_OBUF_672 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal X_25_IBUF_0 : STD_LOGIC; 
  signal CASEY_1_IBUF_0 : STD_LOGIC; 
  signal RESULT_14_OBUF_676 : STD_LOGIC; 
  signal RESULT_22_OBUF_677 : STD_LOGIC; 
  signal RESULT_30_OBUF_678 : STD_LOGIC; 
  signal Y_10_IBUF_0 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal X_26_IBUF_0 : STD_LOGIC; 
  signal CASEY_2_IBUF_0 : STD_LOGIC; 
  signal RESULT_15_OBUF_683 : STD_LOGIC; 
  signal RESULT_23_OBUF_684 : STD_LOGIC; 
  signal RESULT_31_OBUF_685 : STD_LOGIC; 
  signal Y_11_IBUF_0 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal X_27_IBUF_0 : STD_LOGIC; 
  signal RESULT_16_OBUF_689 : STD_LOGIC; 
  signal RESULT_24_OBUF_690 : STD_LOGIC; 
  signal Y_12_IBUF_0 : STD_LOGIC; 
  signal Y_20_IBUF_0 : STD_LOGIC; 
  signal X_28_IBUF_0 : STD_LOGIC; 
  signal RESULT_17_OBUF_694 : STD_LOGIC; 
  signal RESULT_25_OBUF_695 : STD_LOGIC; 
  signal Y_13_IBUF_0 : STD_LOGIC; 
  signal Y_21_IBUF_0 : STD_LOGIC; 
  signal X_29_IBUF_0 : STD_LOGIC; 
  signal RESULT_18_OBUF_699 : STD_LOGIC; 
  signal RESULT_26_OBUF_700 : STD_LOGIC; 
  signal Y_14_IBUF_0 : STD_LOGIC; 
  signal Y_22_IBUF_0 : STD_LOGIC; 
  signal Y_30_IBUF_0 : STD_LOGIC; 
  signal RESULT_0_OBUF_704 : STD_LOGIC; 
  signal RESULT_19_OBUF_705 : STD_LOGIC; 
  signal RESULT_27_OBUF_706 : STD_LOGIC; 
  signal Y_15_IBUF_0 : STD_LOGIC; 
  signal Y_23_IBUF_0 : STD_LOGIC; 
  signal Y_31_IBUF_0 : STD_LOGIC; 
  signal RESULT_1_OBUF_710 : STD_LOGIC; 
  signal RESULT_28_OBUF_711 : STD_LOGIC; 
  signal Y_16_IBUF_0 : STD_LOGIC; 
  signal Y_24_IBUF_0 : STD_LOGIC; 
  signal RESULT_2_OBUF_714 : STD_LOGIC; 
  signal RESULT_29_OBUF_715 : STD_LOGIC; 
  signal Y_17_IBUF_0 : STD_LOGIC; 
  signal Y_25_IBUF_0 : STD_LOGIC; 
  signal RESULT_3_OBUF_718 : STD_LOGIC; 
  signal Y_18_IBUF_0 : STD_LOGIC; 
  signal Y_26_IBUF_0 : STD_LOGIC; 
  signal RESULT_4_OBUF_721 : STD_LOGIC; 
  signal Y_19_IBUF_0 : STD_LOGIC; 
  signal Y_27_IBUF_0 : STD_LOGIC; 
  signal RESULT_5_OBUF_724 : STD_LOGIC; 
  signal Y_28_IBUF_0 : STD_LOGIC; 
  signal RESULT_6_OBUF_726 : STD_LOGIC; 
  signal Y_29_IBUF_0 : STD_LOGIC; 
  signal RESULT_7_OBUF_728 : STD_LOGIC; 
  signal RESULT_8_OBUF_729 : STD_LOGIC; 
  signal RESULT_9_OBUF_730 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal Mmux_RESULT110 : STD_LOGIC; 
  signal Mmux_RESULT304 : STD_LOGIC; 
  signal XPInf_XZero_OR_9_o : STD_LOGIC; 
  signal XNInf_XZero_OR_13_o : STD_LOGIC; 
  signal Mmux_RESULT303 : STD_LOGIC; 
  signal Mmux_RESULT111 : STD_LOGIC; 
  signal Mmux_RESULT112_743 : STD_LOGIC; 
  signal CASEX_0_IBUF_0 : STD_LOGIC; 
  signal CASEX_1_IBUF_0 : STD_LOGIC; 
  signal Mmux_RESULT302 : STD_LOGIC; 
  signal XPInf_YNaN_OR_5_o : STD_LOGIC; 
  signal Mmux_RESULT172 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal Mmux_RESULT1111_751 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal Y_8_IBUF_0 : STD_LOGIC; 
  signal RESULT_10_OBUF_757 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal Y_9_IBUF_0 : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal X_30_IBUF_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal CASEX_2_IBUF_1 : STD_LOGIC; 
  signal X_15_IBUF_6 : STD_LOGIC; 
  signal X_23_IBUF_9 : STD_LOGIC; 
  signal X_31_IBUF_12 : STD_LOGIC; 
  signal X_16_IBUF_19 : STD_LOGIC; 
  signal X_24_IBUF_22 : STD_LOGIC; 
  signal CASEY_0_IBUF_25 : STD_LOGIC; 
  signal X_17_IBUF_32 : STD_LOGIC; 
  signal X_25_IBUF_35 : STD_LOGIC; 
  signal CASEY_1_IBUF_38 : STD_LOGIC; 
  signal Y_10_IBUF_47 : STD_LOGIC; 
  signal X_18_IBUF_50 : STD_LOGIC; 
  signal X_26_IBUF_53 : STD_LOGIC; 
  signal CASEY_2_IBUF_56 : STD_LOGIC; 
  signal Y_11_IBUF_65 : STD_LOGIC; 
  signal X_19_IBUF_68 : STD_LOGIC; 
  signal X_27_IBUF_71 : STD_LOGIC; 
  signal Y_12_IBUF_78 : STD_LOGIC; 
  signal Y_20_IBUF_81 : STD_LOGIC; 
  signal X_28_IBUF_84 : STD_LOGIC; 
  signal Y_13_IBUF_91 : STD_LOGIC; 
  signal Y_21_IBUF_94 : STD_LOGIC; 
  signal X_29_IBUF_97 : STD_LOGIC; 
  signal Y_14_IBUF_104 : STD_LOGIC; 
  signal Y_22_IBUF_107 : STD_LOGIC; 
  signal Y_30_IBUF_110 : STD_LOGIC; 
  signal Y_15_IBUF_119 : STD_LOGIC; 
  signal Y_23_IBUF_122 : STD_LOGIC; 
  signal Y_31_IBUF_125 : STD_LOGIC; 
  signal Y_16_IBUF_132 : STD_LOGIC; 
  signal Y_24_IBUF_135 : STD_LOGIC; 
  signal Y_17_IBUF_142 : STD_LOGIC; 
  signal Y_25_IBUF_145 : STD_LOGIC; 
  signal Y_18_IBUF_150 : STD_LOGIC; 
  signal Y_26_IBUF_153 : STD_LOGIC; 
  signal Y_19_IBUF_158 : STD_LOGIC; 
  signal Y_27_IBUF_161 : STD_LOGIC; 
  signal Y_28_IBUF_166 : STD_LOGIC; 
  signal Y_29_IBUF_171 : STD_LOGIC; 
  signal X_0_IBUF_180 : STD_LOGIC; 
  signal X_1_IBUF_183 : STD_LOGIC; 
  signal X_2_IBUF_186 : STD_LOGIC; 
  signal X_3_IBUF_189 : STD_LOGIC; 
  signal Y_0_IBUF_192 : STD_LOGIC; 
  signal X_4_IBUF_195 : STD_LOGIC; 
  signal Y_1_IBUF_198 : STD_LOGIC; 
  signal X_5_IBUF_201 : STD_LOGIC; 
  signal Y_2_IBUF_204 : STD_LOGIC; 
  signal X_6_IBUF_207 : STD_LOGIC; 
  signal Y_3_IBUF_210 : STD_LOGIC; 
  signal X_7_IBUF_213 : STD_LOGIC; 
  signal Y_4_IBUF_216 : STD_LOGIC; 
  signal X_8_IBUF_219 : STD_LOGIC; 
  signal Y_5_IBUF_222 : STD_LOGIC; 
  signal X_9_IBUF_225 : STD_LOGIC; 
  signal Y_6_IBUF_228 : STD_LOGIC; 
  signal Y_7_IBUF_231 : STD_LOGIC; 
  signal Y_8_IBUF_234 : STD_LOGIC; 
  signal Y_9_IBUF_237 : STD_LOGIC; 
  signal X_10_IBUF_240 : STD_LOGIC; 
  signal X_11_IBUF_243 : STD_LOGIC; 
  signal X_12_IBUF_246 : STD_LOGIC; 
  signal X_20_IBUF_249 : STD_LOGIC; 
  signal CASEX_0_IBUF_252 : STD_LOGIC; 
  signal X_13_IBUF_255 : STD_LOGIC; 
  signal X_21_IBUF_258 : STD_LOGIC; 
  signal CASEX_1_IBUF_261 : STD_LOGIC; 
  signal X_14_IBUF_266 : STD_LOGIC; 
  signal X_22_IBUF_269 : STD_LOGIC; 
  signal X_30_IBUF_272 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal N2_pack_6 : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RESULT_10_OBUF_I : STD_LOGIC; 
begin
  CASEX_2_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEX_2_IBUF_1,
      I => CASEX(2)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEX_2_IBUF_1,
      O => CASEX_2_IBUF_0
    );
  RESULT_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_RESULT_11_OBUF_I,
      O => RESULT(11)
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_6,
      I => X(15)
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_6,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_9,
      I => X(23)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_9,
      O => X_23_IBUF_0
    );
  X_31_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_31_IBUF_12,
      I => X(31)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_31_IBUF_12,
      O => X_31_IBUF_0
    );
  RESULT_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_RESULT_12_OBUF_I,
      O => RESULT(12)
    );
  RESULT_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_RESULT_20_OBUF_I,
      O => RESULT(20)
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_19,
      I => X(16)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_19,
      O => X_16_IBUF_0
    );
  X_24_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_24_IBUF_22,
      I => X(24)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_24_IBUF_22,
      O => X_24_IBUF_0
    );
  CASEY_0_IBUF : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEY_0_IBUF_25,
      I => CASEY(0)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD342",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEY_0_IBUF_25,
      O => CASEY_0_IBUF_0
    );
  RESULT_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_RESULT_13_OBUF_I,
      O => RESULT(13)
    );
  RESULT_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_RESULT_21_OBUF_I,
      O => RESULT(21)
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_32,
      I => X(17)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_32,
      O => X_17_IBUF_0
    );
  X_25_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_25_IBUF_35,
      I => X(25)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_25_IBUF_35,
      O => X_25_IBUF_0
    );
  CASEY_1_IBUF : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEY_1_IBUF_38,
      I => CASEY(1)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEY_1_IBUF_38,
      O => CASEY_1_IBUF_0
    );
  RESULT_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_RESULT_14_OBUF_I,
      O => RESULT(14)
    );
  RESULT_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_RESULT_22_OBUF_I,
      O => RESULT(22)
    );
  RESULT_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD261"
    )
    port map (
      I => NlwBufferSignal_RESULT_30_OBUF_I,
      O => RESULT(30)
    );
  Y_10_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_10_IBUF_47,
      I => Y(10)
    );
  ProtoComp0_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_IBUF_47,
      O => Y_10_IBUF_0
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_50,
      I => X(18)
    );
  ProtoComp0_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_50,
      O => X_18_IBUF_0
    );
  X_26_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_26_IBUF_53,
      I => X(26)
    );
  ProtoComp0_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_26_IBUF_53,
      O => X_26_IBUF_0
    );
  CASEY_2_IBUF : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEY_2_IBUF_56,
      I => CASEY(2)
    );
  ProtoComp0_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEY_2_IBUF_56,
      O => CASEY_2_IBUF_0
    );
  RESULT_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_RESULT_15_OBUF_I,
      O => RESULT(15)
    );
  RESULT_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_RESULT_23_OBUF_I,
      O => RESULT(23)
    );
  RESULT_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD262"
    )
    port map (
      I => NlwBufferSignal_RESULT_31_OBUF_I,
      O => RESULT(31)
    );
  Y_11_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_11_IBUF_65,
      I => Y(11)
    );
  ProtoComp0_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_IBUF_65,
      O => Y_11_IBUF_0
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_68,
      I => X(19)
    );
  ProtoComp0_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_68,
      O => X_19_IBUF_0
    );
  X_27_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_27_IBUF_71,
      I => X(27)
    );
  ProtoComp0_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_27_IBUF_71,
      O => X_27_IBUF_0
    );
  RESULT_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_RESULT_16_OBUF_I,
      O => RESULT(16)
    );
  RESULT_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_RESULT_24_OBUF_I,
      O => RESULT(24)
    );
  Y_12_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_12_IBUF_78,
      I => Y(12)
    );
  ProtoComp0_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_IBUF_78,
      O => Y_12_IBUF_0
    );
  Y_20_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_20_IBUF_81,
      I => Y(20)
    );
  ProtoComp0_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_IBUF_81,
      O => Y_20_IBUF_0
    );
  X_28_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_28_IBUF_84,
      I => X(28)
    );
  ProtoComp0_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_28_IBUF_84,
      O => X_28_IBUF_0
    );
  RESULT_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_RESULT_17_OBUF_I,
      O => RESULT(17)
    );
  RESULT_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_RESULT_25_OBUF_I,
      O => RESULT(25)
    );
  Y_13_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_13_IBUF_91,
      I => Y(13)
    );
  ProtoComp0_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_IBUF_91,
      O => Y_13_IBUF_0
    );
  Y_21_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_21_IBUF_94,
      I => Y(21)
    );
  ProtoComp0_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_IBUF_94,
      O => Y_21_IBUF_0
    );
  X_29_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_29_IBUF_97,
      I => X(29)
    );
  ProtoComp0_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_29_IBUF_97,
      O => X_29_IBUF_0
    );
  RESULT_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_RESULT_18_OBUF_I,
      O => RESULT(18)
    );
  RESULT_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_RESULT_26_OBUF_I,
      O => RESULT(26)
    );
  Y_14_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_14_IBUF_104,
      I => Y(14)
    );
  ProtoComp0_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_IBUF_104,
      O => Y_14_IBUF_0
    );
  Y_22_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_22_IBUF_107,
      I => Y(22)
    );
  ProtoComp0_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_IBUF_107,
      O => Y_22_IBUF_0
    );
  Y_30_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_30_IBUF_110,
      I => Y(30)
    );
  ProtoComp0_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_30_IBUF_110,
      O => Y_30_IBUF_0
    );
  RESULT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => NlwBufferSignal_RESULT_0_OBUF_I,
      O => RESULT(0)
    );
  RESULT_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_RESULT_19_OBUF_I,
      O => RESULT(19)
    );
  RESULT_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_RESULT_27_OBUF_I,
      O => RESULT(27)
    );
  Y_15_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_15_IBUF_119,
      I => Y(15)
    );
  ProtoComp0_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_IBUF_119,
      O => Y_15_IBUF_0
    );
  Y_23_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_23_IBUF_122,
      I => Y(23)
    );
  ProtoComp0_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_IBUF_122,
      O => Y_23_IBUF_0
    );
  Y_31_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_31_IBUF_125,
      I => Y(31)
    );
  ProtoComp0_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_31_IBUF_125,
      O => Y_31_IBUF_0
    );
  RESULT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_RESULT_1_OBUF_I,
      O => RESULT(1)
    );
  RESULT_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_RESULT_28_OBUF_I,
      O => RESULT(28)
    );
  Y_16_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_16_IBUF_132,
      I => Y(16)
    );
  ProtoComp0_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_IBUF_132,
      O => Y_16_IBUF_0
    );
  Y_24_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_24_IBUF_135,
      I => Y(24)
    );
  ProtoComp0_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_24_IBUF_135,
      O => Y_24_IBUF_0
    );
  RESULT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_RESULT_2_OBUF_I,
      O => RESULT(2)
    );
  RESULT_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_RESULT_29_OBUF_I,
      O => RESULT(29)
    );
  Y_17_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_17_IBUF_142,
      I => Y(17)
    );
  ProtoComp0_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_IBUF_142,
      O => Y_17_IBUF_0
    );
  Y_25_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_25_IBUF_145,
      I => Y(25)
    );
  ProtoComp0_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_25_IBUF_145,
      O => Y_25_IBUF_0
    );
  RESULT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_RESULT_3_OBUF_I,
      O => RESULT(3)
    );
  Y_18_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_18_IBUF_150,
      I => Y(18)
    );
  ProtoComp0_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_IBUF_150,
      O => Y_18_IBUF_0
    );
  Y_26_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_26_IBUF_153,
      I => Y(26)
    );
  ProtoComp0_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_26_IBUF_153,
      O => Y_26_IBUF_0
    );
  RESULT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => NlwBufferSignal_RESULT_4_OBUF_I,
      O => RESULT(4)
    );
  Y_19_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_19_IBUF_158,
      I => Y(19)
    );
  ProtoComp0_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_IBUF_158,
      O => Y_19_IBUF_0
    );
  Y_27_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_27_IBUF_161,
      I => Y(27)
    );
  ProtoComp0_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_27_IBUF_161,
      O => Y_27_IBUF_0
    );
  RESULT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_RESULT_5_OBUF_I,
      O => RESULT(5)
    );
  Y_28_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_28_IBUF_166,
      I => Y(28)
    );
  ProtoComp0_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_28_IBUF_166,
      O => Y_28_IBUF_0
    );
  RESULT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_RESULT_6_OBUF_I,
      O => RESULT(6)
    );
  Y_29_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_29_IBUF_171,
      I => Y(29)
    );
  ProtoComp0_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_29_IBUF_171,
      O => Y_29_IBUF_0
    );
  RESULT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => NlwBufferSignal_RESULT_7_OBUF_I,
      O => RESULT(7)
    );
  RESULT_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_RESULT_8_OBUF_I,
      O => RESULT(8)
    );
  RESULT_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_RESULT_9_OBUF_I,
      O => RESULT(9)
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_180,
      I => X(0)
    );
  ProtoComp0_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_180,
      O => X_0_IBUF_0
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_183,
      I => X(1)
    );
  ProtoComp0_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_183,
      O => X_1_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_186,
      I => X(2)
    );
  ProtoComp0_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_186,
      O => X_2_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_189,
      I => X(3)
    );
  ProtoComp0_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_189,
      O => X_3_IBUF_0
    );
  Y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_0_IBUF_192,
      I => Y(0)
    );
  ProtoComp0_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_IBUF_192,
      O => Y_0_IBUF_0
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_195,
      I => X(4)
    );
  ProtoComp0_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_195,
      O => X_4_IBUF_0
    );
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_198,
      I => Y(1)
    );
  ProtoComp0_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_198,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_201,
      I => X(5)
    );
  ProtoComp0_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_201,
      O => X_5_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_204,
      I => Y(2)
    );
  ProtoComp0_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_204,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_207,
      I => X(6)
    );
  ProtoComp0_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_207,
      O => X_6_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_210,
      I => Y(3)
    );
  ProtoComp0_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_210,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_213,
      I => X(7)
    );
  ProtoComp0_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_213,
      O => X_7_IBUF_0
    );
  Y_4_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_4_IBUF_216,
      I => Y(4)
    );
  ProtoComp0_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_216,
      O => Y_4_IBUF_0
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_219,
      I => X(8)
    );
  ProtoComp0_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_219,
      O => X_8_IBUF_0
    );
  Y_5_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_5_IBUF_222,
      I => Y(5)
    );
  ProtoComp0_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_222,
      O => Y_5_IBUF_0
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_225,
      I => X(9)
    );
  ProtoComp0_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_225,
      O => X_9_IBUF_0
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_228,
      I => Y(6)
    );
  ProtoComp0_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_228,
      O => Y_6_IBUF_0
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_231,
      I => Y(7)
    );
  ProtoComp0_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_231,
      O => Y_7_IBUF_0
    );
  Y_8_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_8_IBUF_234,
      I => Y(8)
    );
  ProtoComp0_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_IBUF_234,
      O => Y_8_IBUF_0
    );
  Y_9_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_9_IBUF_237,
      I => Y(9)
    );
  ProtoComp0_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_IBUF_237,
      O => Y_9_IBUF_0
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_240,
      I => X(10)
    );
  ProtoComp0_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_240,
      O => X_10_IBUF_0
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_243,
      I => X(11)
    );
  ProtoComp0_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_243,
      O => X_11_IBUF_0
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_246,
      I => X(12)
    );
  ProtoComp0_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_246,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_249,
      I => X(20)
    );
  ProtoComp0_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_249,
      O => X_20_IBUF_0
    );
  CASEX_0_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEX_0_IBUF_252,
      I => CASEX(0)
    );
  ProtoComp0_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEX_0_IBUF_252,
      O => CASEX_0_IBUF_0
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_255,
      I => X(13)
    );
  ProtoComp0_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_255,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_258,
      I => X(21)
    );
  ProtoComp0_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_258,
      O => X_21_IBUF_0
    );
  CASEX_1_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => CASEX_1_IBUF_261,
      I => CASEX(1)
    );
  ProtoComp0_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => CASEX_1_IBUF_261,
      O => CASEX_1_IBUF_0
    );
  RESULT_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_RESULT_10_OBUF_I,
      O => RESULT(10)
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_266,
      I => X(14)
    );
  ProtoComp0_IMUX_67 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_266,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_269,
      I => X(22)
    );
  ProtoComp0_IMUX_68 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_269,
      O => X_22_IBUF_0
    );
  X_30_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_30_IBUF_272,
      I => X(30)
    );
  ProtoComp0_IMUX_69 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_30_IBUF_272,
      O => X_30_IBUF_0
    );
  Mmux_RESULT303_Mmux_RESULT303_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  XZero_YNorm_AND_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"0000000300000003"
    )
    port map (
      ADR0 => '1',
      ADR2 => CASEX_1_IBUF_0,
      ADR1 => CASEX_0_IBUF_0,
      ADR4 => CASEY_1_IBUF_0,
      ADR3 => CASEY_0_IBUF_0,
      ADR5 => '1',
      O => Mmux_RESULT303
    );
  Mmux_RESULT24_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"FFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR2 => CASEX_1_IBUF_0,
      ADR1 => CASEX_0_IBUF_0,
      ADR4 => CASEY_1_IBUF_0,
      ADR3 => CASEY_0_IBUF_0,
      O => N4_pack_1
    );
  Mmux_RESULT24 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"FFF8FFC8FFC0FFC0"
    )
    port map (
      ADR5 => Mmux_RESULT303,
      ADR0 => Y_30_IBUF_0,
      ADR1 => CASEY_2_IBUF_0,
      ADR4 => X_30_IBUF_0,
      ADR2 => CASEX_2_IBUF_0,
      ADR3 => N4,
      O => RESULT_30_OBUF_678
    );
  Mmux_RESULT3021 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y77",
      INIT => X"0000000000000004"
    )
    port map (
      ADR1 => CASEX_2_IBUF_0,
      ADR2 => CASEY_2_IBUF_0,
      ADR0 => CASEX_1_IBUF_0,
      ADR3 => CASEX_0_IBUF_0,
      ADR5 => CASEY_1_IBUF_0,
      ADR4 => CASEY_0_IBUF_0,
      O => Mmux_RESULT302
    );
  Mmux_RESULT81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y71",
      INIT => X"FFFFECECFFFFA0A0"
    )
    port map (
      ADR3 => '1',
      ADR4 => Mmux_RESULT111,
      ADR0 => X_16_IBUF_0,
      ADR2 => Mmux_RESULT112_743,
      ADR1 => Mmux_RESULT110,
      ADR5 => Y_16_IBUF_0,
      O => RESULT_16_OBUF_689
    );
  Mmux_RESULT21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y72",
      INIT => X"FEEEFEEEFCCCFCCC"
    )
    port map (
      ADR4 => '1',
      ADR1 => Mmux_RESULT111,
      ADR2 => X_10_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR0 => Mmux_RESULT110,
      ADR5 => Y_10_IBUF_0,
      O => RESULT_10_OBUF_757
    );
  Mmux_RESULT311 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"FFFFFCCCFFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Mmux_RESULT111,
      ADR3 => X_8_IBUF_0,
      ADR2 => Mmux_RESULT112_743,
      ADR1 => Mmux_RESULT110,
      ADR5 => Y_8_IBUF_0,
      O => RESULT_8_OBUF_729
    );
  Mmux_RESULT181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"FFFFFFFF00A0C000"
    )
    port map (
      ADR2 => Mmux_RESULT303,
      ADR4 => CASEX_2_IBUF_0,
      ADR3 => CASEY_2_IBUF_0,
      ADR0 => X_25_IBUF_0,
      ADR1 => Y_25_IBUF_0,
      ADR5 => Mmux_RESULT172,
      O => RESULT_25_OBUF_695
    );
  Mmux_RESULT321 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"FF30FF88FF00FF00"
    )
    port map (
      ADR5 => Mmux_RESULT303,
      ADR1 => CASEX_2_IBUF_0,
      ADR4 => CASEY_2_IBUF_0,
      ADR0 => X_9_IBUF_0,
      ADR2 => Y_9_IBUF_0,
      ADR3 => XPInf_YNaN_OR_5_o,
      O => RESULT_9_OBUF_730
    );
  Mmux_RESULT201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"F4F4F8F0F0F0F8F0"
    )
    port map (
      ADR1 => Mmux_RESULT303,
      ADR4 => CASEX_2_IBUF_0,
      ADR0 => CASEY_2_IBUF_0,
      ADR5 => X_27_IBUF_0,
      ADR3 => Y_27_IBUF_0,
      ADR2 => Mmux_RESULT172,
      O => RESULT_27_OBUF_706
    );
  Mmux_RESULT51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"FEEEFCCCFEEEFCCC"
    )
    port map (
      ADR5 => '1',
      ADR1 => XPInf_YNaN_OR_5_o,
      ADR2 => X_13_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR4 => Mmux_RESULT110,
      ADR0 => Y_13_IBUF_0,
      O => RESULT_13_OBUF_671
    );
  Mmux_RESULT131 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"FFFFEEAAFFFFCC00"
    )
    port map (
      ADR2 => '1',
      ADR4 => Mmux_RESULT111,
      ADR1 => X_20_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR0 => Mmux_RESULT110,
      ADR5 => Y_20_IBUF_0,
      O => RESULT_20_OBUF_667
    );
  N0_N0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N2_pack_6,
      O => N2
    );
  Mmux_RESULT16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => XNInf_XZero_OR_13_o,
      ADR3 => XPInf_YNaN_OR_5_o,
      ADR5 => '1',
      O => N0
    );
  Mmux_RESULT25_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => XPInf_XZero_OR_9_o,
      ADR4 => '1',
      ADR3 => XPInf_YNaN_OR_5_o,
      O => N2_pack_6
    );
  Mmux_RESULT16 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"FFFFFFFFFEFAAEAA"
    )
    port map (
      ADR2 => Mmux_RESULT302,
      ADR3 => Y_23_IBUF_0,
      ADR1 => Mmux_RESULT304,
      ADR0 => XPInf_XZero_OR_9_o,
      ADR5 => N0,
      ADR4 => X_23_IBUF_0,
      O => RESULT_23_OBUF_684
    );
  Mmux_RESULT25 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"5554551055445500"
    )
    port map (
      ADR0 => N2,
      ADR1 => Mmux_RESULT302,
      ADR4 => X_31_IBUF_0,
      ADR2 => Mmux_RESULT304,
      ADR5 => Y_31_IBUF_0,
      ADR3 => XNInf_XZero_OR_13_o,
      O => RESULT_31_OBUF_685
    );
  XPInf_XZero_OR_9_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"0000010000000322"
    )
    port map (
      ADR1 => CASEX_1_IBUF_0,
      ADR4 => CASEY_1_IBUF_0,
      ADR3 => CASEX_0_IBUF_0,
      ADR2 => CASEX_2_IBUF_0,
      ADR0 => CASEY_0_IBUF_0,
      ADR5 => CASEY_2_IBUF_0,
      O => XPInf_XZero_OR_9_o
    );
  XNInf_XZero_OR_13_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"000000000013000A"
    )
    port map (
      ADR3 => CASEX_0_IBUF_0,
      ADR5 => CASEY_0_IBUF_0,
      ADR0 => CASEX_1_IBUF_0,
      ADR2 => CASEX_2_IBUF_0,
      ADR4 => CASEY_1_IBUF_0,
      ADR1 => CASEY_2_IBUF_0,
      O => XNInf_XZero_OR_13_o
    );
  Mmux_RESULT1121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"0000000000400040"
    )
    port map (
      ADR4 => '1',
      ADR0 => XPInf_XZero_OR_9_o,
      ADR2 => Mmux_RESULT303,
      ADR1 => CASEX_2_IBUF_0,
      ADR5 => CASEY_2_IBUF_0,
      ADR3 => XNInf_XZero_OR_13_o,
      O => Mmux_RESULT112_743
    );
  Mmux_RESULT171 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"FFFFFFFFFFACFFA0"
    )
    port map (
      ADR2 => Mmux_RESULT302,
      ADR1 => Mmux_RESULT304,
      ADR4 => Y_24_IBUF_0,
      ADR3 => Mmux_RESULT172,
      ADR5 => Mmux_RESULT1111_751,
      ADR0 => X_24_IBUF_0,
      O => RESULT_24_OBUF_690
    );
  Mmux_RESULT11111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"FFFFFFFFFFFFFEEE"
    )
    port map (
      ADR5 => CASEY_0_IBUF_0,
      ADR4 => CASEX_1_IBUF_0,
      ADR1 => CASEX_0_IBUF_0,
      ADR2 => CASEX_2_IBUF_0,
      ADR3 => CASEY_2_IBUF_0,
      ADR0 => CASEY_1_IBUF_0,
      O => Mmux_RESULT1111_751
    );
  Mmux_RESULT281 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"FFFFFCF0FCF0FCF0"
    )
    port map (
      ADR0 => '1',
      ADR2 => XPInf_YNaN_OR_5_o,
      ADR1 => X_5_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR4 => Y_5_IBUF_0,
      O => RESULT_5_OBUF_724
    );
  Mmux_RESULT101 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"FFECFFECFFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR3 => Mmux_RESULT111,
      ADR5 => X_18_IBUF_0,
      ADR1 => Mmux_RESULT112_743,
      ADR2 => Mmux_RESULT110,
      ADR0 => Y_18_IBUF_0,
      O => RESULT_18_OBUF_699
    );
  Mmux_RESULT41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"FFFFFFFFFFA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR5 => Mmux_RESULT111,
      ADR3 => X_12_IBUF_0,
      ADR4 => Mmux_RESULT112_743,
      ADR2 => Mmux_RESULT110,
      ADR0 => Y_12_IBUF_0,
      O => RESULT_12_OBUF_666
    );
  Mmux_RESULT291 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"FFFFEAEAEAEAEAEA"
    )
    port map (
      ADR3 => '1',
      ADR0 => Mmux_RESULT111,
      ADR5 => X_6_IBUF_0,
      ADR4 => Mmux_RESULT112_743,
      ADR1 => Mmux_RESULT110,
      ADR2 => Y_6_IBUF_0,
      O => RESULT_6_OBUF_726
    );
  Mmux_RESULT271 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FFFFFCCCFFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Mmux_RESULT111,
      ADR2 => X_4_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR1 => Y_4_IBUF_0,
      O => RESULT_4_OBUF_721
    );
  Mmux_RESULT231 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FFFFECECECECECEC"
    )
    port map (
      ADR3 => '1',
      ADR1 => Mmux_RESULT111,
      ADR2 => X_2_IBUF_0,
      ADR0 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR4 => Y_2_IBUF_0,
      O => RESULT_2_OBUF_714
    );
  Mmux_RESULT141 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y71",
      INIT => X"FFECFFECFFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR3 => XPInf_YNaN_OR_5_o,
      ADR2 => X_21_IBUF_0,
      ADR0 => Mmux_RESULT112_743,
      ADR1 => Mmux_RESULT110,
      ADR5 => Y_21_IBUF_0,
      O => RESULT_21_OBUF_672
    );
  Mmux_RESULT91 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y71",
      INIT => X"FFFFFCF0FFFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => XPInf_YNaN_OR_5_o,
      ADR1 => X_17_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR2 => Y_17_IBUF_0,
      O => RESULT_17_OBUF_694
    );
  Mmux_RESULT151 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"FFECFFECECECECEC"
    )
    port map (
      ADR4 => '1',
      ADR1 => Mmux_RESULT111,
      ADR5 => X_22_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR0 => Mmux_RESULT110,
      ADR2 => Y_22_IBUF_0,
      O => RESULT_22_OBUF_677
    );
  Mmux_RESULT112 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"FEEEFEEEFAAAFAAA"
    )
    port map (
      ADR4 => '1',
      ADR0 => XPInf_YNaN_OR_5_o,
      ADR3 => X_19_IBUF_0,
      ADR2 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR1 => Y_19_IBUF_0,
      O => RESULT_19_OBUF_705
    );
  Mmux_RESULT71 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y73",
      INIT => X"FEFAFCF0FEFAFCF0"
    )
    port map (
      ADR5 => '1',
      ADR2 => XPInf_YNaN_OR_5_o,
      ADR1 => X_15_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR0 => Mmux_RESULT110,
      ADR4 => Y_15_IBUF_0,
      O => RESULT_15_OBUF_683
    );
  Mmux_RESULT191 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"FFFFFFFFFEF2FCF0"
    )
    port map (
      ADR1 => Mmux_RESULT302,
      ADR4 => Mmux_RESULT304,
      ADR0 => Y_26_IBUF_0,
      ADR2 => Mmux_RESULT172,
      ADR5 => Mmux_RESULT1111_751,
      ADR3 => X_26_IBUF_0,
      O => RESULT_26_OBUF_700
    );
  Mmux_RESULT33 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"FFEEEEEEFFAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => XPInf_YNaN_OR_5_o,
      ADR5 => X_11_IBUF_0,
      ADR1 => Mmux_RESULT112_743,
      ADR4 => Mmux_RESULT110,
      ADR3 => Y_11_IBUF_0,
      O => RESULT_11_OBUF_662
    );
  Mmux_RESULT3041 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"0000000000000010"
    )
    port map (
      ADR2 => CASEY_2_IBUF_0,
      ADR5 => CASEX_2_IBUF_0,
      ADR3 => CASEX_1_IBUF_0,
      ADR0 => CASEX_0_IBUF_0,
      ADR1 => CASEY_1_IBUF_0,
      ADR4 => CASEY_0_IBUF_0,
      O => Mmux_RESULT304
    );
  Mmux_RESULT17 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"FFFFFFA0FFFFA0A0"
    )
    port map (
      ADR1 => '1',
      ADR4 => Mmux_RESULT111,
      ADR0 => X_0_IBUF_0,
      ADR2 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR3 => Y_0_IBUF_0,
      O => RESULT_0_OBUF_704
    );
  Mmux_RESULT1101 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"000000B0000000F0"
    )
    port map (
      ADR2 => Mmux_RESULT304,
      ADR3 => XPInf_XZero_OR_9_o,
      ADR4 => XNInf_XZero_OR_13_o,
      ADR0 => CASEY_2_IBUF_0,
      ADR1 => CASEX_2_IBUF_0,
      ADR5 => Mmux_RESULT303,
      O => Mmux_RESULT110
    );
  Mmux_RESULT1721 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"0C000D04AFBF0F2E"
    )
    port map (
      ADR2 => CASEX_2_IBUF_0,
      ADR1 => CASEX_0_IBUF_0,
      ADR3 => CASEX_1_IBUF_0,
      ADR5 => CASEY_2_IBUF_0,
      ADR0 => CASEY_0_IBUF_0,
      ADR4 => CASEY_1_IBUF_0,
      O => Mmux_RESULT172
    );
  Mmux_RESULT221 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"FFFF2200FFFFC000"
    )
    port map (
      ADR3 => Mmux_RESULT303,
      ADR1 => CASEX_2_IBUF_0,
      ADR5 => CASEY_2_IBUF_0,
      ADR2 => X_29_IBUF_0,
      ADR0 => Y_29_IBUF_0,
      ADR4 => Mmux_RESULT172,
      O => RESULT_29_OBUF_715
    );
  Mmux_RESULT211 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"FFFEFFEEEEFEEEEE"
    )
    port map (
      ADR3 => Mmux_RESULT302,
      ADR4 => Mmux_RESULT304,
      ADR2 => Y_28_IBUF_0,
      ADR1 => Mmux_RESULT172,
      ADR0 => Mmux_RESULT1111_751,
      ADR5 => X_28_IBUF_0,
      O => RESULT_28_OBUF_711
    );
  Mmux_RESULT1111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"FFFFFEFAFEEEFEC0"
    )
    port map (
      ADR0 => CASEX_0_IBUF_0,
      ADR5 => CASEX_2_IBUF_0,
      ADR3 => CASEY_1_IBUF_0,
      ADR4 => CASEX_1_IBUF_0,
      ADR1 => CASEY_0_IBUF_0,
      ADR2 => CASEY_2_IBUF_0,
      O => Mmux_RESULT111
    );
  XPInf_YNaN_OR_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y82",
      INIT => X"50005000DDCC5040"
    )
    port map (
      ADR0 => CASEX_2_IBUF_0,
      ADR2 => CASEX_0_IBUF_0,
      ADR5 => CASEY_2_IBUF_0,
      ADR1 => CASEY_1_IBUF_0,
      ADR3 => CASEX_1_IBUF_0,
      ADR4 => CASEY_0_IBUF_0,
      O => XPInf_YNaN_OR_5_o
    );
  Mmux_RESULT301 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y82",
      INIT => X"FFFFFFFF40408800"
    )
    port map (
      ADR1 => Mmux_RESULT303,
      ADR4 => CASEX_2_IBUF_0,
      ADR0 => CASEY_2_IBUF_0,
      ADR2 => X_7_IBUF_0,
      ADR3 => Y_7_IBUF_0,
      ADR5 => XPInf_YNaN_OR_5_o,
      O => RESULT_7_OBUF_728
    );
  Mmux_RESULT261 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y83",
      INIT => X"FFFCFFF0FFCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => XPInf_YNaN_OR_5_o,
      ADR4 => X_3_IBUF_0,
      ADR1 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR2 => Y_3_IBUF_0,
      O => RESULT_3_OBUF_718
    );
  Mmux_RESULT121 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"FFFCFFF0FFCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => XPInf_YNaN_OR_5_o,
      ADR1 => X_1_IBUF_0,
      ADR4 => Mmux_RESULT112_743,
      ADR5 => Mmux_RESULT110,
      ADR2 => Y_1_IBUF_0,
      O => RESULT_1_OBUF_710
    );
  Mmux_RESULT61 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y84",
      INIT => X"FFFFFF88FFFF8888"
    )
    port map (
      ADR2 => '1',
      ADR4 => Mmux_RESULT111,
      ADR5 => X_14_IBUF_0,
      ADR3 => Mmux_RESULT112_743,
      ADR0 => Mmux_RESULT110,
      ADR1 => Y_14_IBUF_0,
      O => RESULT_14_OBUF_676
    );
  NlwBufferBlock_RESULT_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_11_OBUF_662,
      O => NlwBufferSignal_RESULT_11_OBUF_I
    );
  NlwBufferBlock_RESULT_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_12_OBUF_666,
      O => NlwBufferSignal_RESULT_12_OBUF_I
    );
  NlwBufferBlock_RESULT_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_20_OBUF_667,
      O => NlwBufferSignal_RESULT_20_OBUF_I
    );
  NlwBufferBlock_RESULT_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_13_OBUF_671,
      O => NlwBufferSignal_RESULT_13_OBUF_I
    );
  NlwBufferBlock_RESULT_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_21_OBUF_672,
      O => NlwBufferSignal_RESULT_21_OBUF_I
    );
  NlwBufferBlock_RESULT_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_14_OBUF_676,
      O => NlwBufferSignal_RESULT_14_OBUF_I
    );
  NlwBufferBlock_RESULT_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_22_OBUF_677,
      O => NlwBufferSignal_RESULT_22_OBUF_I
    );
  NlwBufferBlock_RESULT_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_30_OBUF_678,
      O => NlwBufferSignal_RESULT_30_OBUF_I
    );
  NlwBufferBlock_RESULT_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_15_OBUF_683,
      O => NlwBufferSignal_RESULT_15_OBUF_I
    );
  NlwBufferBlock_RESULT_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_23_OBUF_684,
      O => NlwBufferSignal_RESULT_23_OBUF_I
    );
  NlwBufferBlock_RESULT_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_31_OBUF_685,
      O => NlwBufferSignal_RESULT_31_OBUF_I
    );
  NlwBufferBlock_RESULT_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_16_OBUF_689,
      O => NlwBufferSignal_RESULT_16_OBUF_I
    );
  NlwBufferBlock_RESULT_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_24_OBUF_690,
      O => NlwBufferSignal_RESULT_24_OBUF_I
    );
  NlwBufferBlock_RESULT_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_17_OBUF_694,
      O => NlwBufferSignal_RESULT_17_OBUF_I
    );
  NlwBufferBlock_RESULT_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_25_OBUF_695,
      O => NlwBufferSignal_RESULT_25_OBUF_I
    );
  NlwBufferBlock_RESULT_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_18_OBUF_699,
      O => NlwBufferSignal_RESULT_18_OBUF_I
    );
  NlwBufferBlock_RESULT_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_26_OBUF_700,
      O => NlwBufferSignal_RESULT_26_OBUF_I
    );
  NlwBufferBlock_RESULT_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_0_OBUF_704,
      O => NlwBufferSignal_RESULT_0_OBUF_I
    );
  NlwBufferBlock_RESULT_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_19_OBUF_705,
      O => NlwBufferSignal_RESULT_19_OBUF_I
    );
  NlwBufferBlock_RESULT_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_27_OBUF_706,
      O => NlwBufferSignal_RESULT_27_OBUF_I
    );
  NlwBufferBlock_RESULT_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_1_OBUF_710,
      O => NlwBufferSignal_RESULT_1_OBUF_I
    );
  NlwBufferBlock_RESULT_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_28_OBUF_711,
      O => NlwBufferSignal_RESULT_28_OBUF_I
    );
  NlwBufferBlock_RESULT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_2_OBUF_714,
      O => NlwBufferSignal_RESULT_2_OBUF_I
    );
  NlwBufferBlock_RESULT_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_29_OBUF_715,
      O => NlwBufferSignal_RESULT_29_OBUF_I
    );
  NlwBufferBlock_RESULT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_3_OBUF_718,
      O => NlwBufferSignal_RESULT_3_OBUF_I
    );
  NlwBufferBlock_RESULT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_4_OBUF_721,
      O => NlwBufferSignal_RESULT_4_OBUF_I
    );
  NlwBufferBlock_RESULT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_5_OBUF_724,
      O => NlwBufferSignal_RESULT_5_OBUF_I
    );
  NlwBufferBlock_RESULT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_6_OBUF_726,
      O => NlwBufferSignal_RESULT_6_OBUF_I
    );
  NlwBufferBlock_RESULT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_7_OBUF_728,
      O => NlwBufferSignal_RESULT_7_OBUF_I
    );
  NlwBufferBlock_RESULT_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_8_OBUF_729,
      O => NlwBufferSignal_RESULT_8_OBUF_I
    );
  NlwBufferBlock_RESULT_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_9_OBUF_730,
      O => NlwBufferSignal_RESULT_9_OBUF_I
    );
  NlwBufferBlock_RESULT_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RESULT_10_OBUF_757,
      O => NlwBufferSignal_RESULT_10_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

