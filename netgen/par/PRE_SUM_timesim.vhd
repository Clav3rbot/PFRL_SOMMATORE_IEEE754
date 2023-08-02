--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PRE_SUM_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug  2 12:50:38 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf PRE_SUM.pcf -rpw 100 -tpw 0 -ar Structure -tm PRE_SUM -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim PRE_SUM.ncd PRE_SUM_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: PRE_SUM.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/PRE_SUM_timesim.vhd
-- # of Entities	: 1
-- Design Name	: PRE_SUM
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

entity PRE_SUM is
  port (
    OP : in STD_LOGIC := 'X'; 
    XSIGN : out STD_LOGIC; 
    YSIGN : out STD_LOGIC; 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    XEXP : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    XMAN : out STD_LOGIC_VECTOR ( 23 downto 0 ); 
    YMAN : out STD_LOGIC_VECTOR ( 23 downto 0 ); 
    XCASE : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    YCASE : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end PRE_SUM;

architecture Structure of PRE_SUM is
  signal ExpDiff_1_mmx_out5 : STD_LOGIC; 
  signal U1_EXP_COMP_COUT : STD_LOGIC; 
  signal ExpDiff_0_mmx_out11 : STD_LOGIC; 
  signal Y_8_IBUF_0 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out : STD_LOGIC; 
  signal ExpDiff_0_mmx_out : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal Y_23_IBUF_0 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal XEXP_0_OBUF_1403 : STD_LOGIC; 
  signal Y_22_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_COUT : STD_LOGIC; 
  signal U2_Mmux_Y28_0 : STD_LOGIC; 
  signal YMAN_3_OBUF_1407 : STD_LOGIC; 
  signal U2_S_5_S_7_OR_5_o : STD_LOGIC; 
  signal U2_Mmux_Y222_1410 : STD_LOGIC; 
  signal U2_Mmux_Y223_1411 : STD_LOGIC; 
  signal U1_EXP_COMP_U3_GEN_4_U_Z1_1414 : STD_LOGIC; 
  signal X_27_IBUF_0 : STD_LOGIC; 
  signal Y_27_IBUF_0 : STD_LOGIC; 
  signal U1_EXP_COMP_U1_C_8_bdd6 : STD_LOGIC; 
  signal X_26_IBUF_0 : STD_LOGIC; 
  signal U1_EXP_COMP_U1_C_8_bdd10 : STD_LOGIC; 
  signal Y_25_IBUF_0 : STD_LOGIC; 
  signal X_25_IBUF_0 : STD_LOGIC; 
  signal Y_26_IBUF_0 : STD_LOGIC; 
  signal U1_EXP_COMP_S_3_0 : STD_LOGIC; 
  signal U1_EXP_COMP_U1_C_8_bdd2 : STD_LOGIC; 
  signal X_28_IBUF_0 : STD_LOGIC; 
  signal Y_28_IBUF_0 : STD_LOGIC; 
  signal U1_EXP_COMP_S_5_0 : STD_LOGIC; 
  signal X_24_IBUF_0 : STD_LOGIC; 
  signal Y_24_IBUF_0 : STD_LOGIC; 
  signal X_30_IBUF_0 : STD_LOGIC; 
  signal Y_29_IBUF_0 : STD_LOGIC; 
  signal X_29_IBUF_0 : STD_LOGIC; 
  signal Y_30_IBUF_0 : STD_LOGIC; 
  signal U1_EXP_COMP_S_7_0 : STD_LOGIC; 
  signal YSIGN_OBUF_1436 : STD_LOGIC; 
  signal Y_31_IBUF_0 : STD_LOGIC; 
  signal OP_IBUF_0 : STD_LOGIC; 
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal XSIGN_OBUF_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal Y_20_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT2_1448 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal Y_15_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT3_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT4_1452 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal Y_10_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT5_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT6_1456 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT7_0 : STD_LOGIC; 
  signal ExpDiff_0_mmx_out20 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal ExpDiff_0_mmx_out10_0 : STD_LOGIC; 
  signal XEXP_6_OBUF_1463 : STD_LOGIC; 
  signal U1_EXP_COMP_S_6_0 : STD_LOGIC; 
  signal U2_Mmux_Y2 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out15 : STD_LOGIC; 
  signal Y_9_IBUF_0 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal XCASE_0_OBUF_1475 : STD_LOGIC; 
  signal XCASE_1_OBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out2 : STD_LOGIC; 
  signal Y_13_IBUF_0 : STD_LOGIC; 
  signal Y_14_IBUF_0 : STD_LOGIC; 
  signal Y_12_IBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out1 : STD_LOGIC; 
  signal Y_11_IBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out4 : STD_LOGIC; 
  signal YMAN_0_OBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out3 : STD_LOGIC; 
  signal XCASE_2_OBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out6 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out7 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out9 : STD_LOGIC; 
  signal YMAN_1_OBUF_0 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out8 : STD_LOGIC; 
  signal U2_Mmux_Y14 : STD_LOGIC; 
  signal Y_16_IBUF_0 : STD_LOGIC; 
  signal Y_18_IBUF_0 : STD_LOGIC; 
  signal Y_19_IBUF_0 : STD_LOGIC; 
  signal Y_17_IBUF_0 : STD_LOGIC; 
  signal U2_Mmux_Y4 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal Y_21_IBUF_0 : STD_LOGIC; 
  signal YMAN_13_OBUF_1501 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U2_Mmux_Y151_1503 : STD_LOGIC; 
  signal YMAN_16_OBUF_1504 : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal XMAN_10_OBUF_1506 : STD_LOGIC; 
  signal YMAN_2_OBUF_1507 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out17 : STD_LOGIC; 
  signal YMAN_15_OBUF_1509 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out18 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal XMAN_11_OBUF_1512 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal XMAN_12_OBUF_1514 : STD_LOGIC; 
  signal XMAN_1_OBUF_1515 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal XMAN_13_OBUF_1518 : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal XMAN_20_OBUF_1520 : STD_LOGIC; 
  signal YMAN_4_OBUF_1521 : STD_LOGIC; 
  signal XMAN_14_OBUF_1522 : STD_LOGIC; 
  signal XMAN_21_OBUF_1523 : STD_LOGIC; 
  signal XMAN_8_OBUF_1524 : STD_LOGIC; 
  signal YMAN_5_OBUF_1525 : STD_LOGIC; 
  signal U2_Mmux_Y201_1526 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out10 : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT11_1529 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT9_1530 : STD_LOGIC; 
  signal XMAN_15_OBUF_1531 : STD_LOGIC; 
  signal YMAN_6_OBUF_0 : STD_LOGIC; 
  signal XMAN_22_OBUF_1533 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal YMAN_7_OBUF_1535 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out11 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT13_1537 : STD_LOGIC; 
  signal XMAN_16_OBUF_1538 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal XMAN_2_OBUF_1540 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal YMAN_8_OBUF_1542 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out12 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT15_1545 : STD_LOGIC; 
  signal XMAN_17_OBUF_1546 : STD_LOGIC; 
  signal YMAN_9_OBUF_1547 : STD_LOGIC; 
  signal XMAN_3_OBUF_1548 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal YCASE_0_OBUF_1550 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal U2_Mmux_Y202_1554 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out13 : STD_LOGIC; 
  signal XMAN_9_OBUF_1556 : STD_LOGIC; 
  signal YCASE_1_OBUF_0 : STD_LOGIC; 
  signal U3_XMantissa0_22_1_1558 : STD_LOGIC; 
  signal XMAN_18_OBUF_1559 : STD_LOGIC; 
  signal XMAN_4_OBUF_1560 : STD_LOGIC; 
  signal YCASE_2_OBUF_1561 : STD_LOGIC; 
  signal U3_XMantissa0_22_3_1562 : STD_LOGIC; 
  signal XMAN_19_OBUF_1563 : STD_LOGIC; 
  signal XMAN_5_OBUF_1564 : STD_LOGIC; 
  signal U3_XMantissa0 : STD_LOGIC; 
  signal U3_XExponent0_XMantissa0_AND_8_o_1566 : STD_LOGIC; 
  signal U3_XExponent255 : STD_LOGIC; 
  signal XMAN_6_OBUF_1568 : STD_LOGIC; 
  signal ExpDiff_1_mmx_out16 : STD_LOGIC; 
  signal XMAN_7_OBUF_1570 : STD_LOGIC; 
  signal U3_YMantissa0_22_1_1572 : STD_LOGIC; 
  signal U2_Mmux_Y282_1573 : STD_LOGIC; 
  signal U2_Mmux_Y301_1574 : STD_LOGIC; 
  signal U3_YMantissa0_22_2_1575 : STD_LOGIC; 
  signal U3_YMantissa0_22_3_1576 : STD_LOGIC; 
  signal U3_YMantissa0 : STD_LOGIC; 
  signal U3_YExponent0_YMantissa0_AND_14_o_1578 : STD_LOGIC; 
  signal U3_YExponent255 : STD_LOGIC; 
  signal XMAN_0_OBUF_1580 : STD_LOGIC; 
  signal U2_Mmux_Y3 : STD_LOGIC; 
  signal YMAN_10_OBUF_1582 : STD_LOGIC; 
  signal YMAN_11_OBUF_1583 : STD_LOGIC; 
  signal YMAN_17_OBUF_1584 : STD_LOGIC; 
  signal YMAN_18_OBUF_1585 : STD_LOGIC; 
  signal YMAN_19_OBUF_1586 : STD_LOGIC; 
  signal YMAN_12_OBUF_1587 : STD_LOGIC; 
  signal YMAN_20_OBUF_1588 : STD_LOGIC; 
  signal YMAN_21_OBUF_1589 : STD_LOGIC; 
  signal XEXP_1_OBUF_1590 : STD_LOGIC; 
  signal YMAN_14_OBUF_1591 : STD_LOGIC; 
  signal YMAN_22_OBUF_1592 : STD_LOGIC; 
  signal XEXP_2_OBUF_1593 : STD_LOGIC; 
  signal YMAN_23_OBUF_1594 : STD_LOGIC; 
  signal XEXP_3_OBUF_1595 : STD_LOGIC; 
  signal XEXP_4_OBUF_1596 : STD_LOGIC; 
  signal XEXP_5_OBUF_1597 : STD_LOGIC; 
  signal XEXP_7_OBUF_1598 : STD_LOGIC; 
  signal U2_Mmux_Y33_1599 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U2_Mmux_Y32_1601 : STD_LOGIC; 
  signal U2_Mmux_Y26 : STD_LOGIC; 
  signal U2_Mmux_Y24 : STD_LOGIC; 
  signal U2_Mmux_Y281_1604 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U2_Mmux_Y31_1606 : STD_LOGIC; 
  signal U2_Mmux_Y20 : STD_LOGIC; 
  signal U2_Mmux_Y41_1608 : STD_LOGIC; 
  signal U2_Mmux_Y30 : STD_LOGIC; 
  signal U2_Mmux_Y221_1610 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT8_1611 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT1_1612 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT14_1613 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT12_1614 : STD_LOGIC; 
  signal U3_XMantissa0_22_2_1615 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT10_1616 : STD_LOGIC; 
  signal Y_1_IBUF_1 : STD_LOGIC; 
  signal X_5_IBUF_4 : STD_LOGIC; 
  signal Y_2_IBUF_7 : STD_LOGIC; 
  signal X_6_IBUF_10 : STD_LOGIC; 
  signal Y_3_IBUF_13 : STD_LOGIC; 
  signal X_7_IBUF_16 : STD_LOGIC; 
  signal Y_4_IBUF_19 : STD_LOGIC; 
  signal X_8_IBUF_22 : STD_LOGIC; 
  signal Y_5_IBUF_25 : STD_LOGIC; 
  signal X_9_IBUF_28 : STD_LOGIC; 
  signal Y_6_IBUF_31 : STD_LOGIC; 
  signal Y_7_IBUF_36 : STD_LOGIC; 
  signal Y_8_IBUF_41 : STD_LOGIC; 
  signal Y_9_IBUF_46 : STD_LOGIC; 
  signal X_10_IBUF_49 : STD_LOGIC; 
  signal X_11_IBUF_54 : STD_LOGIC; 
  signal X_12_IBUF_59 : STD_LOGIC; 
  signal X_20_IBUF_62 : STD_LOGIC; 
  signal X_13_IBUF_67 : STD_LOGIC; 
  signal X_21_IBUF_70 : STD_LOGIC; 
  signal X_14_IBUF_75 : STD_LOGIC; 
  signal X_22_IBUF_78 : STD_LOGIC; 
  signal X_30_IBUF_81 : STD_LOGIC; 
  signal X_15_IBUF_86 : STD_LOGIC; 
  signal X_23_IBUF_89 : STD_LOGIC; 
  signal X_31_IBUF_92 : STD_LOGIC; 
  signal X_16_IBUF_97 : STD_LOGIC; 
  signal X_24_IBUF_100 : STD_LOGIC; 
  signal X_17_IBUF_105 : STD_LOGIC; 
  signal X_25_IBUF_108 : STD_LOGIC; 
  signal OP_IBUF_113 : STD_LOGIC; 
  signal Y_10_IBUF_116 : STD_LOGIC; 
  signal X_18_IBUF_119 : STD_LOGIC; 
  signal X_26_IBUF_122 : STD_LOGIC; 
  signal Y_11_IBUF_127 : STD_LOGIC; 
  signal X_19_IBUF_130 : STD_LOGIC; 
  signal X_27_IBUF_133 : STD_LOGIC; 
  signal Y_12_IBUF_140 : STD_LOGIC; 
  signal Y_20_IBUF_143 : STD_LOGIC; 
  signal X_28_IBUF_146 : STD_LOGIC; 
  signal Y_13_IBUF_151 : STD_LOGIC; 
  signal Y_21_IBUF_154 : STD_LOGIC; 
  signal X_29_IBUF_157 : STD_LOGIC; 
  signal Y_14_IBUF_162 : STD_LOGIC; 
  signal Y_22_IBUF_165 : STD_LOGIC; 
  signal Y_30_IBUF_168 : STD_LOGIC; 
  signal Y_15_IBUF_171 : STD_LOGIC; 
  signal Y_23_IBUF_174 : STD_LOGIC; 
  signal Y_31_IBUF_177 : STD_LOGIC; 
  signal Y_16_IBUF_180 : STD_LOGIC; 
  signal Y_24_IBUF_183 : STD_LOGIC; 
  signal Y_17_IBUF_186 : STD_LOGIC; 
  signal Y_25_IBUF_189 : STD_LOGIC; 
  signal Y_18_IBUF_192 : STD_LOGIC; 
  signal Y_26_IBUF_195 : STD_LOGIC; 
  signal Y_19_IBUF_200 : STD_LOGIC; 
  signal Y_27_IBUF_203 : STD_LOGIC; 
  signal Y_28_IBUF_208 : STD_LOGIC; 
  signal Y_29_IBUF_217 : STD_LOGIC; 
  signal X_0_IBUF_292 : STD_LOGIC; 
  signal X_1_IBUF_299 : STD_LOGIC; 
  signal X_2_IBUF_306 : STD_LOGIC; 
  signal X_3_IBUF_313 : STD_LOGIC; 
  signal Y_0_IBUF_318 : STD_LOGIC; 
  signal X_4_IBUF_321 : STD_LOGIC; 
  signal U2_Mmux_Y28 : STD_LOGIC; 
  signal YMAN_6_OBUF_505 : STD_LOGIC; 
  signal ExpDiff_4_pack_1 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal YMAN_1_OBUF_597 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal YMAN_0_OBUF_620 : STD_LOGIC; 
  signal ExpDiff_1_pack_3 : STD_LOGIC; 
  signal U1_EXP_COMP_S_1_pack_3 : STD_LOGIC; 
  signal ExpDiff_0_mmx_out_pack_6 : STD_LOGIC; 
  signal ExpDiff_0_mmx_out10 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal YCASE_1_OBUF_918 : STD_LOGIC; 
  signal XSIGN_OBUF_979 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal XCASE_2_OBUF_1009 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT7_1047 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT1_pack_2 : STD_LOGIC; 
  signal XCASE_1_OBUF_1167 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT3_1235 : STD_LOGIC; 
  signal U1_MAN_COMP_U1_GEN_22_U_COUT5_1245 : STD_LOGIC; 
  signal NlwBufferSignal_XCASE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XCASE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XCASE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YCASE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YCASE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YCASE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XSIGN_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YSIGN_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XMAN_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_YMAN_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_XEXP_7_OBUF_I : STD_LOGIC; 
  signal U1_EXP_COMP_S : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal ExpDiff : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_XMantissa0_0 : STD_LOGIC_VECTOR ( 22 downto 22 ); 
  signal U3_YMantissa0_1 : STD_LOGIC_VECTOR ( 22 downto 22 ); 
begin
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_1,
      I => Y(1)
    );
  ProtoComp11_IMUX : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_1,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_4,
      I => X(5)
    );
  ProtoComp11_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_4,
      O => X_5_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_7,
      I => Y(2)
    );
  ProtoComp11_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD348",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_7,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_10,
      I => X(6)
    );
  ProtoComp11_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_10,
      O => X_6_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_13,
      I => Y(3)
    );
  ProtoComp11_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD362",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_13,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_16,
      I => X(7)
    );
  ProtoComp11_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_16,
      O => X_7_IBUF_0
    );
  Y_4_IBUF : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_4_IBUF_19,
      I => Y(4)
    );
  ProtoComp11_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD343",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_19,
      O => Y_4_IBUF_0
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_22,
      I => X(8)
    );
  ProtoComp11_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_22,
      O => X_8_IBUF_0
    );
  Y_5_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_5_IBUF_25,
      I => Y(5)
    );
  ProtoComp11_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_25,
      O => Y_5_IBUF_0
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_28,
      I => X(9)
    );
  ProtoComp11_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_28,
      O => X_9_IBUF_0
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_31,
      I => Y(6)
    );
  ProtoComp11_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_31,
      O => Y_6_IBUF_0
    );
  XCASE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_XCASE_0_OBUF_I,
      O => XCASE(0)
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_36,
      I => Y(7)
    );
  ProtoComp11_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_36,
      O => Y_7_IBUF_0
    );
  XCASE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_XCASE_1_OBUF_I,
      O => XCASE(1)
    );
  Y_8_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_8_IBUF_41,
      I => Y(8)
    );
  ProtoComp11_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_IBUF_41,
      O => Y_8_IBUF_0
    );
  XCASE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD261"
    )
    port map (
      I => NlwBufferSignal_XCASE_2_OBUF_I,
      O => XCASE(2)
    );
  Y_9_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_9_IBUF_46,
      I => Y(9)
    );
  ProtoComp11_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_IBUF_46,
      O => Y_9_IBUF_0
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_49,
      I => X(10)
    );
  ProtoComp11_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_49,
      O => X_10_IBUF_0
    );
  YMAN_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD263"
    )
    port map (
      I => NlwBufferSignal_YMAN_0_OBUF_I,
      O => YMAN(0)
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_54,
      I => X(11)
    );
  ProtoComp11_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_54,
      O => X_11_IBUF_0
    );
  YMAN_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD264"
    )
    port map (
      I => NlwBufferSignal_YMAN_1_OBUF_I,
      O => YMAN(1)
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_59,
      I => X(12)
    );
  ProtoComp11_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_59,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_62,
      I => X(20)
    );
  ProtoComp11_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_62,
      O => X_20_IBUF_0
    );
  YMAN_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD273"
    )
    port map (
      I => NlwBufferSignal_YMAN_2_OBUF_I,
      O => YMAN(2)
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_67,
      I => X(13)
    );
  ProtoComp11_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_67,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_70,
      I => X(21)
    );
  ProtoComp11_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_70,
      O => X_21_IBUF_0
    );
  YMAN_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD274"
    )
    port map (
      I => NlwBufferSignal_YMAN_3_OBUF_I,
      O => YMAN(3)
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_75,
      I => X(14)
    );
  ProtoComp11_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_75,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_78,
      I => X(22)
    );
  ProtoComp11_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_78,
      O => X_22_IBUF_0
    );
  X_30_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_30_IBUF_81,
      I => X(30)
    );
  ProtoComp11_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_30_IBUF_81,
      O => X_30_IBUF_0
    );
  YMAN_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD275"
    )
    port map (
      I => NlwBufferSignal_YMAN_4_OBUF_I,
      O => YMAN(4)
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_86,
      I => X(15)
    );
  ProtoComp11_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_86,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_89,
      I => X(23)
    );
  ProtoComp11_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_89,
      O => X_23_IBUF_0
    );
  X_31_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_31_IBUF_92,
      I => X(31)
    );
  ProtoComp11_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_31_IBUF_92,
      O => X_31_IBUF_0
    );
  YMAN_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD276"
    )
    port map (
      I => NlwBufferSignal_YMAN_5_OBUF_I,
      O => YMAN(5)
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_97,
      I => X(16)
    );
  ProtoComp11_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_97,
      O => X_16_IBUF_0
    );
  X_24_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_24_IBUF_100,
      I => X(24)
    );
  ProtoComp11_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_24_IBUF_100,
      O => X_24_IBUF_0
    );
  YMAN_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD277"
    )
    port map (
      I => NlwBufferSignal_YMAN_6_OBUF_I,
      O => YMAN(6)
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_105,
      I => X(17)
    );
  ProtoComp11_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_105,
      O => X_17_IBUF_0
    );
  X_25_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_25_IBUF_108,
      I => X(25)
    );
  ProtoComp11_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_25_IBUF_108,
      O => X_25_IBUF_0
    );
  YMAN_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD278"
    )
    port map (
      I => NlwBufferSignal_YMAN_7_OBUF_I,
      O => YMAN(7)
    );
  OP_IBUF : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      O => OP_IBUF_113,
      I => OP
    );
  ProtoComp11_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD344",
      PATHPULSE => 202 ps
    )
    port map (
      I => OP_IBUF_113,
      O => OP_IBUF_0
    );
  Y_10_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_10_IBUF_116,
      I => Y(10)
    );
  ProtoComp11_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_IBUF_116,
      O => Y_10_IBUF_0
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_119,
      I => X(18)
    );
  ProtoComp11_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_119,
      O => X_18_IBUF_0
    );
  X_26_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_26_IBUF_122,
      I => X(26)
    );
  ProtoComp11_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_26_IBUF_122,
      O => X_26_IBUF_0
    );
  YMAN_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD279"
    )
    port map (
      I => NlwBufferSignal_YMAN_8_OBUF_I,
      O => YMAN(8)
    );
  Y_11_IBUF : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_11_IBUF_127,
      I => Y(11)
    );
  ProtoComp11_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD345",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_IBUF_127,
      O => Y_11_IBUF_0
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_130,
      I => X(19)
    );
  ProtoComp11_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_130,
      O => X_19_IBUF_0
    );
  X_27_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_27_IBUF_133,
      I => X(27)
    );
  ProtoComp11_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_27_IBUF_133,
      O => X_27_IBUF_0
    );
  YMAN_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD280"
    )
    port map (
      I => NlwBufferSignal_YMAN_9_OBUF_I,
      O => YMAN(9)
    );
  YCASE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_YCASE_0_OBUF_I,
      O => YCASE(0)
    );
  Y_12_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_12_IBUF_140,
      I => Y(12)
    );
  ProtoComp11_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_IBUF_140,
      O => Y_12_IBUF_0
    );
  Y_20_IBUF : X_BUF
    generic map(
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_20_IBUF_143,
      I => Y(20)
    );
  ProtoComp11_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD352",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_IBUF_143,
      O => Y_20_IBUF_0
    );
  X_28_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_28_IBUF_146,
      I => X(28)
    );
  ProtoComp11_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_28_IBUF_146,
      O => X_28_IBUF_0
    );
  YCASE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_YCASE_1_OBUF_I,
      O => YCASE(1)
    );
  Y_13_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_13_IBUF_151,
      I => Y(13)
    );
  ProtoComp11_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_IBUF_151,
      O => Y_13_IBUF_0
    );
  Y_21_IBUF : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_21_IBUF_154,
      I => Y(21)
    );
  ProtoComp11_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD350",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_IBUF_154,
      O => Y_21_IBUF_0
    );
  X_29_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_29_IBUF_157,
      I => X(29)
    );
  ProtoComp11_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_29_IBUF_157,
      O => X_29_IBUF_0
    );
  YCASE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => NlwBufferSignal_YCASE_2_OBUF_I,
      O => YCASE(2)
    );
  Y_14_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_14_IBUF_162,
      I => Y(14)
    );
  ProtoComp11_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_IBUF_162,
      O => Y_14_IBUF_0
    );
  Y_22_IBUF : X_BUF
    generic map(
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_22_IBUF_165,
      I => Y(22)
    );
  ProtoComp11_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD354",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_IBUF_165,
      O => Y_22_IBUF_0
    );
  Y_30_IBUF : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_30_IBUF_168,
      I => Y(30)
    );
  ProtoComp11_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_30_IBUF_168,
      O => Y_30_IBUF_0
    );
  Y_15_IBUF : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_15_IBUF_171,
      I => Y(15)
    );
  ProtoComp11_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD347",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_IBUF_171,
      O => Y_15_IBUF_0
    );
  Y_23_IBUF : X_BUF
    generic map(
      LOC => "PAD353",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_23_IBUF_174,
      I => Y(23)
    );
  ProtoComp11_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD353",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_IBUF_174,
      O => Y_23_IBUF_0
    );
  Y_31_IBUF : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_31_IBUF_177,
      I => Y(31)
    );
  ProtoComp11_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD361",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_31_IBUF_177,
      O => Y_31_IBUF_0
    );
  Y_16_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_16_IBUF_180,
      I => Y(16)
    );
  ProtoComp11_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_IBUF_180,
      O => Y_16_IBUF_0
    );
  Y_24_IBUF : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_24_IBUF_183,
      I => Y(24)
    );
  ProtoComp11_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD363",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_24_IBUF_183,
      O => Y_24_IBUF_0
    );
  Y_17_IBUF : X_BUF
    generic map(
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_17_IBUF_186,
      I => Y(17)
    );
  ProtoComp11_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD349",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_IBUF_186,
      O => Y_17_IBUF_0
    );
  Y_25_IBUF : X_BUF
    generic map(
      LOC => "PAD355",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_25_IBUF_189,
      I => Y(25)
    );
  ProtoComp11_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD355",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_25_IBUF_189,
      O => Y_25_IBUF_0
    );
  Y_18_IBUF : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_18_IBUF_192,
      I => Y(18)
    );
  ProtoComp11_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD346",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_IBUF_192,
      O => Y_18_IBUF_0
    );
  Y_26_IBUF : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_26_IBUF_195,
      I => Y(26)
    );
  ProtoComp11_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD358",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_26_IBUF_195,
      O => Y_26_IBUF_0
    );
  XMAN_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_XMAN_10_OBUF_I,
      O => XMAN(10)
    );
  Y_19_IBUF : X_BUF
    generic map(
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_19_IBUF_200,
      I => Y(19)
    );
  ProtoComp11_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD351",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_IBUF_200,
      O => Y_19_IBUF_0
    );
  Y_27_IBUF : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_27_IBUF_203,
      I => Y(27)
    );
  ProtoComp11_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD359",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_27_IBUF_203,
      O => Y_27_IBUF_0
    );
  XMAN_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_XMAN_11_OBUF_I,
      O => XMAN(11)
    );
  Y_28_IBUF : X_BUF
    generic map(
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_28_IBUF_208,
      I => Y(28)
    );
  ProtoComp11_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD357",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_28_IBUF_208,
      O => Y_28_IBUF_0
    );
  XMAN_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_XMAN_12_OBUF_I,
      O => XMAN(12)
    );
  XMAN_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_XMAN_20_OBUF_I,
      O => XMAN(20)
    );
  XMAN_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_XMAN_0_OBUF_I,
      O => XMAN(0)
    );
  Y_29_IBUF : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_29_IBUF_217,
      I => Y(29)
    );
  ProtoComp11_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD360",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_29_IBUF_217,
      O => Y_29_IBUF_0
    );
  XSIGN_OBUF : X_OBUF
    generic map(
      LOC => "PAD262"
    )
    port map (
      I => NlwBufferSignal_XSIGN_OBUF_I,
      O => XSIGN
    );
  XMAN_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_XMAN_13_OBUF_I,
      O => XMAN(13)
    );
  XMAN_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_XMAN_21_OBUF_I,
      O => XMAN(21)
    );
  XMAN_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_XMAN_1_OBUF_I,
      O => XMAN(1)
    );
  XMAN_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_XMAN_14_OBUF_I,
      O => XMAN(14)
    );
  XMAN_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_XMAN_22_OBUF_I,
      O => XMAN(22)
    );
  XMAN_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_XMAN_2_OBUF_I,
      O => XMAN(2)
    );
  XMAN_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_XMAN_15_OBUF_I,
      O => XMAN(15)
    );
  XMAN_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => '1',
      O => XMAN(23)
    );
  XMAN_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => NlwBufferSignal_XMAN_3_OBUF_I,
      O => XMAN(3)
    );
  XMAN_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_XMAN_16_OBUF_I,
      O => XMAN(16)
    );
  XMAN_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_XMAN_4_OBUF_I,
      O => XMAN(4)
    );
  XMAN_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_XMAN_17_OBUF_I,
      O => XMAN(17)
    );
  XMAN_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_XMAN_5_OBUF_I,
      O => XMAN(5)
    );
  XMAN_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_XMAN_18_OBUF_I,
      O => XMAN(18)
    );
  XMAN_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_XMAN_6_OBUF_I,
      O => XMAN(6)
    );
  XMAN_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_XMAN_19_OBUF_I,
      O => XMAN(19)
    );
  XMAN_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_XMAN_7_OBUF_I,
      O => XMAN(7)
    );
  XMAN_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_XMAN_8_OBUF_I,
      O => XMAN(8)
    );
  YSIGN_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_YSIGN_OBUF_I,
      O => YSIGN
    );
  XMAN_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_XMAN_9_OBUF_I,
      O => XMAN(9)
    );
  YMAN_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD293"
    )
    port map (
      I => NlwBufferSignal_YMAN_10_OBUF_I,
      O => YMAN(10)
    );
  YMAN_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD294"
    )
    port map (
      I => NlwBufferSignal_YMAN_11_OBUF_I,
      O => YMAN(11)
    );
  YMAN_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD295"
    )
    port map (
      I => NlwBufferSignal_YMAN_12_OBUF_I,
      O => YMAN(12)
    );
  YMAN_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD327"
    )
    port map (
      I => NlwBufferSignal_YMAN_20_OBUF_I,
      O => YMAN(20)
    );
  XEXP_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD364"
    )
    port map (
      I => NlwBufferSignal_XEXP_0_OBUF_I,
      O => XEXP(0)
    );
  YMAN_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD296"
    )
    port map (
      I => NlwBufferSignal_YMAN_13_OBUF_I,
      O => YMAN(13)
    );
  YMAN_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD328"
    )
    port map (
      I => NlwBufferSignal_YMAN_21_OBUF_I,
      O => YMAN(21)
    );
  XEXP_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_XEXP_1_OBUF_I,
      O => XEXP(1)
    );
  YMAN_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD321"
    )
    port map (
      I => NlwBufferSignal_YMAN_14_OBUF_I,
      O => YMAN(14)
    );
  YMAN_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD329"
    )
    port map (
      I => NlwBufferSignal_YMAN_22_OBUF_I,
      O => YMAN(22)
    );
  XEXP_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD366"
    )
    port map (
      I => NlwBufferSignal_XEXP_2_OBUF_I,
      O => XEXP(2)
    );
  YMAN_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD322"
    )
    port map (
      I => NlwBufferSignal_YMAN_15_OBUF_I,
      O => YMAN(15)
    );
  YMAN_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD342"
    )
    port map (
      I => NlwBufferSignal_YMAN_23_OBUF_I,
      O => YMAN(23)
    );
  XEXP_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD367"
    )
    port map (
      I => NlwBufferSignal_XEXP_3_OBUF_I,
      O => XEXP(3)
    );
  YMAN_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD323"
    )
    port map (
      I => NlwBufferSignal_YMAN_16_OBUF_I,
      O => YMAN(16)
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_292,
      I => X(0)
    );
  ProtoComp11_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_292,
      O => X_0_IBUF_0
    );
  XEXP_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD368"
    )
    port map (
      I => NlwBufferSignal_XEXP_4_OBUF_I,
      O => XEXP(4)
    );
  YMAN_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD324"
    )
    port map (
      I => NlwBufferSignal_YMAN_17_OBUF_I,
      O => YMAN(17)
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_299,
      I => X(1)
    );
  ProtoComp11_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_299,
      O => X_1_IBUF_0
    );
  XEXP_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD369"
    )
    port map (
      I => NlwBufferSignal_XEXP_5_OBUF_I,
      O => XEXP(5)
    );
  YMAN_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD325"
    )
    port map (
      I => NlwBufferSignal_YMAN_18_OBUF_I,
      O => YMAN(18)
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_306,
      I => X(2)
    );
  ProtoComp11_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_306,
      O => X_2_IBUF_0
    );
  XEXP_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD370"
    )
    port map (
      I => NlwBufferSignal_XEXP_6_OBUF_I,
      O => XEXP(6)
    );
  YMAN_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD326"
    )
    port map (
      I => NlwBufferSignal_YMAN_19_OBUF_I,
      O => YMAN(19)
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_313,
      I => X(3)
    );
  ProtoComp11_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_313,
      O => X_3_IBUF_0
    );
  XEXP_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_XEXP_7_OBUF_I,
      O => XEXP(7)
    );
  Y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_0_IBUF_318,
      I => Y(0)
    );
  ProtoComp11_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_IBUF_318,
      O => Y_0_IBUF_0
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_321,
      I => X(4)
    );
  ProtoComp11_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_321,
      O => X_4_IBUF_0
    );
  U2_Mmux_Y171 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y80",
      INIT => X"202000000000D080"
    )
    port map (
      ADR2 => U2_Mmux_Y151_1503,
      ADR5 => U1_EXP_COMP_S(2),
      ADR4 => U1_EXP_COMP_S(1),
      ADR0 => ExpDiff(0),
      ADR3 => Y_22_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      O => YMAN_22_OBUF_1592
    );
  U2_Mmux_Y181 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y92",
      INIT => X"2010000000002010"
    )
    port map (
      ADR1 => U1_EXP_COMP_S(2),
      ADR2 => U2_Mmux_Y151_1503,
      ADR0 => X_23_IBUF_0,
      ADR5 => X_24_IBUF_0,
      ADR4 => Y_24_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      O => YMAN_23_OBUF_1594
    );
  U1_Mmux_G21 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y116",
      INIT => X"FFFF5F5FA0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => Y_24_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR4 => X_24_IBUF_0,
      O => XEXP_1_OBUF_1590
    );
  U2_Mmux_Y161 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y75",
      INIT => X"000000E00000F010"
    )
    port map (
      ADR4 => ExpDiff_1_mmx_out9,
      ADR2 => U2_Mmux_Y151_1503,
      ADR3 => U1_EXP_COMP_COUT,
      ADR5 => U1_EXP_COMP_S(2),
      ADR1 => ExpDiff(0),
      ADR0 => U1_EXP_COMP_S(1),
      O => YMAN_21_OBUF_1589
    );
  XEXP_0_OBUF_XEXP_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_Mmux_Y28,
      O => U2_Mmux_Y28_0
    );
  U1_Mmux_G11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y100",
      INIT => X"FCCC0CCCFCCC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Y_23_IBUF_0,
      ADR3 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR4 => X_23_IBUF_0,
      ADR5 => '1',
      O => XEXP_0_OBUF_1403
    );
  U2_Mmux_Y281 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y100",
      INIT => X"BBBBEEEE"
    )
    port map (
      ADR0 => Y_22_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => X_23_IBUF_0,
      O => U2_Mmux_Y28
    );
  U2_Mmux_Y121 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y80",
      INIT => X"40401010F000F000"
    )
    port map (
      ADR2 => U2_Mmux_Y151_1503,
      ADR5 => ExpDiff(2),
      ADR0 => U1_EXP_COMP_S(1),
      ADR4 => Y_23_IBUF_0,
      ADR1 => X_23_IBUF_0,
      ADR3 => ExpDiff_1_mmx_out18,
      O => YMAN_19_OBUF_1586
    );
  U2_Mmux_Y151 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y75",
      INIT => X"4040808040408040"
    )
    port map (
      ADR2 => ExpDiff_1_mmx_out4,
      ADR1 => U2_Mmux_Y151_1503,
      ADR4 => U1_EXP_COMP_COUT,
      ADR0 => U1_EXP_COMP_S(2),
      ADR5 => ExpDiff(0),
      ADR3 => U1_EXP_COMP_S(1),
      O => YMAN_20_OBUF_1588
    );
  U2_Mmux_Y101 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y75",
      INIT => X"7272000072720000"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => U2_Mmux_Y151_1503,
      ADR0 => ExpDiff(2),
      ADR1 => ExpDiff_1_mmx_out9,
      ADR2 => ExpDiff_1_mmx_out8,
      O => YMAN_17_OBUF_1584
    );
  U2_Mmux_Y111 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y75",
      INIT => X"00AA0000A8AAA800"
    )
    port map (
      ADR0 => U2_Mmux_Y151_1503,
      ADR3 => ExpDiff(2),
      ADR5 => ExpDiff(1),
      ADR2 => ExpDiff(0),
      ADR1 => Y_22_IBUF_0,
      ADR4 => ExpDiff_1_mmx_out13,
      O => YMAN_18_OBUF_1585
    );
  U2_Mmux_Y32 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"FF00FFCCAAAAF0F0"
    )
    port map (
      ADR5 => ExpDiff(2),
      ADR3 => U2_Mmux_Y3,
      ADR1 => ExpDiff_1_mmx_out12,
      ADR4 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out13,
      ADR2 => ExpDiff_1_mmx_out11,
      O => U2_Mmux_Y33_1599
    );
  U2_Mmux_Y33 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"05050A0500000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_S_5_S_7_OR_5_o,
      ADR5 => U2_Mmux_Y33_1599,
      ADR0 => U1_EXP_COMP_S(4),
      ADR3 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR4 => U1_EXP_COMP_COUT,
      O => YMAN_10_OBUF_1582
    );
  U2_Mmux_Y7 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"000000000040004F"
    )
    port map (
      ADR3 => U2_S_5_S_7_OR_5_o,
      ADR5 => ExpDiff(4),
      ADR1 => ExpDiff_1_mmx_out13,
      ADR2 => ExpDiff(2),
      ADR0 => ExpDiff(3),
      ADR4 => N16,
      O => YMAN_14_OBUF_1591
    );
  U2_Mmux_Y7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"B040BF4FB070BF7F"
    )
    port map (
      ADR2 => ExpDiff(3),
      ADR1 => ExpDiff(0),
      ADR3 => U1_EXP_COMP_S(1),
      ADR5 => Y_22_IBUF_0,
      ADR0 => U1_EXP_COMP_COUT,
      ADR4 => ExpDiff_1_mmx_out12,
      O => N16
    );
  U2_Mmux_Y91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"FF000000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U2_Mmux_Y151_1503,
      ADR5 => ExpDiff(2),
      ADR3 => ExpDiff_1_mmx_out4,
      ADR2 => ExpDiff_1_mmx_out3,
      O => YMAN_16_OBUF_1504
    );
  U2_Mmux_Y1511 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"0000000000000CF3"
    )
    port map (
      ADR0 => '1',
      ADR5 => ExpDiff(3),
      ADR4 => U2_S_5_S_7_OR_5_o,
      ADR3 => U1_EXP_COMP_S(4),
      ADR1 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR2 => U1_EXP_COMP_COUT,
      O => U2_Mmux_Y151_1503
    );
  U2_Mmux_Y31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"3600060063006000"
    )
    port map (
      ADR3 => ExpDiff(3),
      ADR1 => U1_EXP_COMP_S(1),
      ADR0 => U1_EXP_COMP_COUT,
      ADR2 => X_23_IBUF_0,
      ADR5 => Y_23_IBUF_0,
      ADR4 => Y_22_IBUF_0,
      O => U2_Mmux_Y3
    );
  U1_EXP_COMP_U3_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y88",
      INIT => X"AAAA9559AAAA6556"
    )
    port map (
      ADR0 => U1_EXP_COMP_S(2),
      ADR2 => X_24_IBUF_0,
      ADR3 => Y_24_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR5 => X_23_IBUF_0,
      ADR4 => U1_EXP_COMP_COUT,
      O => ExpDiff(2)
    );
  U2_Mmux_Y261 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"CCCCAAAAF0F0FF00"
    )
    port map (
      ADR5 => ExpDiff(2),
      ADR4 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out6,
      ADR1 => ExpDiff_1_mmx_out8,
      ADR2 => ExpDiff_1_mmx_out7,
      ADR3 => ExpDiff_1_mmx_out5,
      O => U2_Mmux_Y26
    );
  U2_Mmux_Y262 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"000F001F00000010"
    )
    port map (
      ADR3 => U2_S_5_S_7_OR_5_o,
      ADR2 => ExpDiff(4),
      ADR4 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out9,
      ADR1 => ExpDiff(2),
      ADR5 => U2_Mmux_Y26,
      O => YMAN_5_OBUF_1525
    );
  U2_Mmux_Y321 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"5DFD58F80DAD08A8"
    )
    port map (
      ADR2 => ExpDiff(2),
      ADR0 => ExpDiff(3),
      ADR3 => ExpDiff_1_mmx_out9,
      ADR5 => ExpDiff_1_mmx_out7,
      ADR1 => ExpDiff_1_mmx_out8,
      ADR4 => ExpDiff_1_mmx_out6,
      O => U2_Mmux_Y32_1601
    );
  U2_Mmux_Y322 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"1010000040405050"
    )
    port map (
      ADR3 => '1',
      ADR0 => U2_S_5_S_7_OR_5_o,
      ADR2 => U2_Mmux_Y32_1601,
      ADR5 => U1_EXP_COMP_S(4),
      ADR4 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR1 => U1_EXP_COMP_COUT,
      O => YMAN_9_OBUF_1547
    );
  U2_Mmux_Y241 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y76",
      INIT => X"CFCFC0C0AFA0AFA0"
    )
    port map (
      ADR2 => ExpDiff(2),
      ADR5 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out1,
      ADR1 => ExpDiff_1_mmx_out3,
      ADR4 => ExpDiff_1_mmx_out2,
      ADR3 => ExpDiff_1_mmx_out,
      O => U2_Mmux_Y24
    );
  U2_Mmux_Y242 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y76",
      INIT => X"1100110015041100"
    )
    port map (
      ADR0 => U2_S_5_S_7_OR_5_o,
      ADR1 => ExpDiff(4),
      ADR4 => ExpDiff_1_mmx_out4,
      ADR2 => ExpDiff(2),
      ADR5 => ExpDiff(3),
      ADR3 => U2_Mmux_Y24,
      O => YMAN_4_OBUF_1521
    );
  U2_Mmux_Y5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"003E0032000E0002"
    )
    port map (
      ADR3 => N10,
      ADR1 => ExpDiff(3),
      ADR5 => ExpDiff_1_mmx_out3,
      ADR2 => ExpDiff(2),
      ADR0 => ExpDiff_1_mmx_out2,
      ADR4 => ExpDiff_1_mmx_out4,
      O => YMAN_12_OBUF_1587
    );
  ExpDiff_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"FFAAF0CCF0AAFFCC"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR2 => Y_21_IBUF_0,
      ADR4 => U1_EXP_COMP_S(1),
      ADR5 => U1_EXP_COMP_COUT,
      ADR0 => Y_22_IBUF_0,
      ADR1 => Y_20_IBUF_0,
      O => ExpDiff_1_mmx_out4
    );
  U2_Mmux_Y282 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"1010FFCC10103300"
    )
    port map (
      ADR1 => ExpDiff(3),
      ADR4 => ExpDiff(4),
      ADR3 => ExpDiff_1_mmx_out10,
      ADR0 => ExpDiff(1),
      ADR2 => U2_Mmux_Y28_0,
      ADR5 => ExpDiff_1_mmx_out12,
      O => U2_Mmux_Y281_1604
    );
  U2_Mmux_Y283 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"33F333BB00C00088"
    )
    port map (
      ADR1 => ExpDiff(2),
      ADR3 => ExpDiff(4),
      ADR4 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out11,
      ADR2 => ExpDiff_1_mmx_out13,
      ADR5 => U2_Mmux_Y281_1604,
      O => U2_Mmux_Y282_1573
    );
  YMAN_7_OBUF_YMAN_7_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_6_OBUF_505,
      O => YMAN_6_OBUF_0
    );
  U2_Mmux_Y303 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U2_Mmux_Y301_1574,
      ADR3 => U2_S_5_S_7_OR_5_o,
      ADR5 => '1',
      O => YMAN_7_OBUF_1535
    );
  U2_Mmux_Y284 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U2_Mmux_Y282_1573,
      ADR2 => '1',
      ADR3 => U2_S_5_S_7_OR_5_o,
      O => YMAN_6_OBUF_505
    );
  U2_S_5_S_7_OR_5_o_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"FFFFFFAA57FFFFFE"
    )
    port map (
      ADR3 => U1_EXP_COMP_S_5_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR2 => U1_EXP_COMP_S(4),
      ADR1 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR0 => U1_EXP_COMP_S_6_0,
      ADR4 => U1_EXP_COMP_S_7_0,
      O => U2_S_5_S_7_OR_5_o
    );
  U2_Mmux_Y8 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"0000100001011101"
    )
    port map (
      ADR1 => U2_S_5_S_7_OR_5_o,
      ADR0 => ExpDiff(4),
      ADR3 => ExpDiff_1_mmx_out18,
      ADR2 => ExpDiff(2),
      ADR4 => ExpDiff(3),
      ADR5 => N14,
      O => YMAN_15_OBUF_1509
    );
  U2_Mmux_Y8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"6F6F00FFF6F600FF"
    )
    port map (
      ADR4 => ExpDiff(3),
      ADR2 => X_23_IBUF_0,
      ADR5 => Y_23_IBUF_0,
      ADR1 => X_24_IBUF_0,
      ADR0 => Y_24_IBUF_0,
      ADR3 => ExpDiff_1_mmx_out17,
      O => N14
    );
  U2_Mmux_Y311 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y75",
      INIT => X"FCBBFC8830BB3088"
    )
    port map (
      ADR1 => ExpDiff(2),
      ADR3 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out2,
      ADR5 => ExpDiff_1_mmx_out4,
      ADR2 => ExpDiff_1_mmx_out3,
      ADR4 => ExpDiff_1_mmx_out1,
      O => U2_Mmux_Y31_1606
    );
  U2_Mmux_Y312 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y75",
      INIT => X"0033000022110000"
    )
    port map (
      ADR2 => '1',
      ADR1 => U2_S_5_S_7_OR_5_o,
      ADR4 => U2_Mmux_Y31_1606,
      ADR3 => U1_EXP_COMP_S(4),
      ADR0 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR5 => U1_EXP_COMP_COUT,
      O => YMAN_8_OBUF_1542
    );
  U2_Mmux_Y6 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y76",
      INIT => X"000003030B080B08"
    )
    port map (
      ADR2 => N10,
      ADR5 => ExpDiff(3),
      ADR0 => ExpDiff_1_mmx_out8,
      ADR1 => ExpDiff(2),
      ADR3 => ExpDiff_1_mmx_out7,
      ADR4 => ExpDiff_1_mmx_out9,
      O => YMAN_13_OBUF_1501
    );
  ExpDiff_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y76",
      INIT => X"228833CC1D473FCF"
    )
    port map (
      ADR1 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      ADR5 => U1_EXP_COMP_S(1),
      ADR0 => U1_EXP_COMP_COUT,
      ADR4 => Y_22_IBUF_0,
      ADR2 => Y_21_IBUF_0,
      O => ExpDiff_1_mmx_out9
    );
  U2_Mmux_Y201 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"0000AAA000000A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ExpDiff(3),
      ADR4 => ExpDiff(4),
      ADR2 => ExpDiff(2),
      ADR3 => ExpDiff_1_mmx_out11,
      ADR5 => ExpDiff_1_mmx_out12,
      O => U2_Mmux_Y20
    );
  U2_Mmux_Y204 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"0F0F0F0F00000A0C"
    )
    port map (
      ADR2 => U2_S_5_S_7_OR_5_o,
      ADR4 => ExpDiff(3),
      ADR3 => ExpDiff(2),
      ADR0 => U2_Mmux_Y201_1526,
      ADR1 => U2_Mmux_Y202_1554,
      ADR5 => U2_Mmux_Y20,
      O => YMAN_2_OBUF_1507
    );
  U2_Mmux_Y5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y80",
      INIT => X"FF7FFFFFFFFFFCFE"
    )
    port map (
      ADR1 => U1_EXP_COMP_S_6_0,
      ADR0 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR2 => U1_EXP_COMP_S(4),
      ADR5 => U1_EXP_COMP_S_5_0,
      ADR3 => U1_EXP_COMP_COUT,
      ADR4 => U1_EXP_COMP_S_7_0,
      O => N10
    );
  U1_EXP_COMP_S_4_U1_EXP_COMP_S_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpDiff_4_pack_1,
      O => ExpDiff(4)
    );
  U1_EXP_COMP_U1_S_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"5A5AA5A55A5AA5A5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => X_27_IBUF_0,
      ADR0 => Y_27_IBUF_0,
      ADR2 => U1_EXP_COMP_U1_C_8_bdd6,
      ADR5 => '1',
      O => U1_EXP_COMP_S(4)
    );
  U1_EXP_COMP_U3_GEN_4_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"695A96A5"
    )
    port map (
      ADR1 => U1_EXP_COMP_COUT,
      ADR3 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR4 => X_27_IBUF_0,
      ADR0 => Y_27_IBUF_0,
      ADR2 => U1_EXP_COMP_U1_C_8_bdd6,
      O => ExpDiff_4_pack_1
    );
  U2_Mmux_Y224 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y88",
      INIT => X"1111000055114400"
    )
    port map (
      ADR2 => '1',
      ADR0 => U2_S_5_S_7_OR_5_o,
      ADR1 => ExpDiff(3),
      ADR4 => U2_Mmux_Y222_1410,
      ADR3 => U2_Mmux_Y223_1411,
      ADR5 => ExpDiff(4),
      O => YMAN_3_OBUF_1407
    );
  U1_Mmux_G51 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y111",
      INIT => X"AFAFFFFFA0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => Y_27_IBUF_0,
      ADR4 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR0 => X_27_IBUF_0,
      O => XEXP_4_OBUF_1596
    );
  ExpDiff_1_mmx_out6_ExpDiff_1_mmx_out6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_1_OBUF_597,
      O => YMAN_1_OBUF_0
    );
  U2_Mmux_Y144 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y76"
    )
    port map (
      IA => N20,
      IB => N21,
      O => YMAN_1_OBUF_597,
      SEL => ExpDiff(2)
    );
  U2_Mmux_Y144_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"0202020233300300"
    )
    port map (
      ADR1 => U2_S_5_S_7_OR_5_o,
      ADR5 => ExpDiff(3),
      ADR4 => ExpDiff_1_mmx_out8,
      ADR2 => ExpDiff(4),
      ADR3 => U2_Mmux_Y14,
      ADR0 => ExpDiff_1_mmx_out6,
      O => N20
    );
  U2_Mmux_Y144_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"0501040015111410"
    )
    port map (
      ADR0 => U2_S_5_S_7_OR_5_o,
      ADR2 => ExpDiff(4),
      ADR3 => ExpDiff_1_mmx_out7,
      ADR1 => ExpDiff(3),
      ADR4 => ExpDiff_1_mmx_out5,
      ADR5 => ExpDiff_1_mmx_out9,
      O => N21
    );
  ExpDiff_1_161 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"DDFA88FADD508850"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR0 => ExpDiff(1),
      ADR4 => Y_10_IBUF_0,
      ADR1 => Y_12_IBUF_0,
      ADR5 => Y_11_IBUF_0,
      ADR2 => Y_9_IBUF_0,
      O => ExpDiff_1_mmx_out6
    );
  ExpDiff_1_mmx_out1_ExpDiff_1_mmx_out1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_0_OBUF_620,
      O => YMAN_0_OBUF_0
    );
  U2_Mmux_Y25 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y78"
    )
    port map (
      IA => N18,
      IB => N19,
      O => YMAN_0_OBUF_620,
      SEL => ExpDiff(2)
    );
  U2_Mmux_Y25_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"0022002200FC0030"
    )
    port map (
      ADR3 => U2_S_5_S_7_OR_5_o,
      ADR5 => ExpDiff(3),
      ADR4 => ExpDiff_1_mmx_out3,
      ADR1 => ExpDiff(4),
      ADR2 => U2_Mmux_Y2,
      ADR0 => ExpDiff_1_mmx_out1,
      O => N18
    );
  U2_Mmux_Y25_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"000A00CF000A00C0"
    )
    port map (
      ADR3 => U2_S_5_S_7_OR_5_o,
      ADR4 => ExpDiff(3),
      ADR1 => ExpDiff_1_mmx_out4,
      ADR2 => ExpDiff(4),
      ADR5 => ExpDiff_1_mmx_out,
      ADR0 => ExpDiff_1_mmx_out2,
      O => N19
    );
  ExpDiff_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"FEAE5E0EF4A45404"
    )
    port map (
      ADR2 => ExpDiff(0),
      ADR0 => ExpDiff(1),
      ADR3 => Y_9_IBUF_0,
      ADR4 => Y_11_IBUF_0,
      ADR5 => Y_10_IBUF_0,
      ADR1 => Y_8_IBUF_0,
      O => ExpDiff_1_mmx_out1
    );
  ExpDiff_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y78",
      INIT => X"AAFFCCF0AA00CCF0"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR4 => ExpDiff(1),
      ADR1 => Y_13_IBUF_0,
      ADR0 => Y_15_IBUF_0,
      ADR5 => Y_14_IBUF_0,
      ADR2 => Y_12_IBUF_0,
      O => ExpDiff_1_mmx_out2
    );
  U2_Mmux_Y42 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y80",
      INIT => X"CCCCFFCCF0F0AAAA"
    )
    port map (
      ADR5 => ExpDiff(2),
      ADR1 => U2_Mmux_Y4,
      ADR3 => ExpDiff_1_mmx_out17,
      ADR4 => ExpDiff(3),
      ADR2 => ExpDiff_1_mmx_out18,
      ADR0 => ExpDiff_1_mmx_out16,
      O => U2_Mmux_Y41_1608
    );
  U2_Mmux_Y43 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y80",
      INIT => X"0300030021002100"
    )
    port map (
      ADR4 => '1',
      ADR1 => U2_S_5_S_7_OR_5_o,
      ADR3 => U2_Mmux_Y41_1608,
      ADR2 => U1_EXP_COMP_S(4),
      ADR0 => U1_EXP_COMP_U3_GEN_4_U_Z1_1414,
      ADR5 => U1_EXP_COMP_COUT,
      O => YMAN_11_OBUF_1583
    );
  U2_Mmux_Y301 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y81",
      INIT => X"FD75EC64B931A820"
    )
    port map (
      ADR0 => ExpDiff(2),
      ADR1 => ExpDiff(3),
      ADR2 => ExpDiff_1_mmx_out16,
      ADR3 => ExpDiff_1_mmx_out18,
      ADR5 => ExpDiff_1_mmx_out17,
      ADR4 => ExpDiff_1_mmx_out15,
      O => U2_Mmux_Y30
    );
  U2_Mmux_Y302 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y81",
      INIT => X"0F0F0F1F00000010"
    )
    port map (
      ADR2 => ExpDiff(4),
      ADR3 => ExpDiff(0),
      ADR1 => ExpDiff(1),
      ADR0 => ExpDiff(2),
      ADR4 => ExpDiff(3),
      ADR5 => U2_Mmux_Y30,
      O => U2_Mmux_Y301_1574
    );
  ExpDiff_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y82",
      INIT => X"D8D8D8D8FFAA5500"
    )
    port map (
      ADR5 => ExpDiff(0),
      ADR0 => ExpDiff(1),
      ADR2 => Y_16_IBUF_0,
      ADR1 => Y_18_IBUF_0,
      ADR4 => Y_17_IBUF_0,
      ADR3 => Y_15_IBUF_0,
      O => ExpDiff_1_mmx_out17
    );
  U2_Mmux_Y223 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y82",
      INIT => X"FFCCCDFE00CCC804"
    )
    port map (
      ADR4 => U1_EXP_COMP_COUT,
      ADR3 => U1_EXP_COMP_S(2),
      ADR2 => ExpDiff(0),
      ADR0 => U1_EXP_COMP_S(1),
      ADR1 => ExpDiff_1_mmx_out16,
      ADR5 => ExpDiff_1_mmx_out17,
      O => U2_Mmux_Y223_1411
    );
  ExpDiff_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y85",
      INIT => X"F0AAF0AACCFFCC00"
    )
    port map (
      ADR5 => ExpDiff(0),
      ADR3 => ExpDiff(1),
      ADR0 => Y_7_IBUF_0,
      ADR2 => Y_9_IBUF_0,
      ADR1 => Y_8_IBUF_0,
      ADR4 => Y_6_IBUF_0,
      O => ExpDiff_1_mmx_out10
    );
  U2_Mmux_Y202 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y85",
      INIT => X"5F1F5F4F50105040"
    )
    port map (
      ADR2 => ExpDiff(4),
      ADR0 => ExpDiff(1),
      ADR1 => X_23_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      ADR3 => Y_22_IBUF_0,
      ADR5 => ExpDiff_1_mmx_out10,
      O => U2_Mmux_Y201_1526
    );
  ExpDiff_0_ExpDiff_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpDiff_1_pack_3,
      O => ExpDiff(1)
    );
  U1_EXP_COMP_U1_GEN_0_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y87",
      INIT => X"5A5A5A5A5A5A5A5A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR5 => '1',
      O => ExpDiff(0)
    );
  U1_EXP_COMP_U3_GEN_1_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y87",
      INIT => X"39C6639C"
    )
    port map (
      ADR3 => X_24_IBUF_0,
      ADR1 => Y_24_IBUF_0,
      ADR4 => U1_EXP_COMP_COUT,
      ADR2 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      O => ExpDiff_1_pack_3
    );
  ExpDiff_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y87",
      INIT => X"F0CCF0CCAAFFAA00"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR5 => ExpDiff(1),
      ADR0 => Y_8_IBUF_0,
      ADR2 => Y_10_IBUF_0,
      ADR1 => Y_9_IBUF_0,
      ADR4 => Y_7_IBUF_0,
      O => ExpDiff_1_mmx_out15
    );
  U2_Mmux_Y21 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y87",
      INIT => X"CCE4F5DDCCE4A088"
    )
    port map (
      ADR4 => U1_EXP_COMP_S(1),
      ADR1 => ExpDiff_0_mmx_out20,
      ADR3 => U1_EXP_COMP_COUT,
      ADR0 => ExpDiff(0),
      ADR2 => Y_1_IBUF_0,
      ADR5 => Y_0_IBUF_0,
      O => U2_Mmux_Y2
    );
  U2_Mmux_Y141 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y91",
      INIT => X"FAF5EEEE50A04444"
    )
    port map (
      ADR0 => U1_EXP_COMP_S(1),
      ADR5 => ExpDiff_0_mmx_out10_0,
      ADR3 => U1_EXP_COMP_COUT,
      ADR4 => ExpDiff(0),
      ADR2 => Y_2_IBUF_0,
      ADR1 => Y_1_IBUF_0,
      O => U2_Mmux_Y14
    );
  U1_EXP_COMP_U1_C_8_bdd10_U1_EXP_COMP_U1_C_8_bdd10_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_EXP_COMP_S_1_pack_3,
      O => U1_EXP_COMP_S(1)
    );
  U1_EXP_COMP_U1_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y97",
      INIT => X"FF3F3303FF3F3303"
    )
    port map (
      ADR0 => '1',
      ADR4 => X_24_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR1 => Y_24_IBUF_0,
      ADR5 => '1',
      O => U1_EXP_COMP_U1_C_8_bdd10
    );
  U1_EXP_COMP_U1_S_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y97",
      INIT => X"33C3CC3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => X_24_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR1 => Y_24_IBUF_0,
      O => U1_EXP_COMP_S_1_pack_3
    );
  U1_EXP_COMP_U3_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y97",
      INIT => X"CCCCCCED33333312"
    )
    port map (
      ADR1 => U1_EXP_COMP_COUT,
      ADR5 => U1_EXP_COMP_S_3_0,
      ADR4 => U1_EXP_COMP_S(2),
      ADR0 => Y_23_IBUF_0,
      ADR2 => X_23_IBUF_0,
      ADR3 => U1_EXP_COMP_S(1),
      O => ExpDiff(3)
    );
  U1_EXP_COMP_U1_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y98",
      INIT => X"5AA55A5A96A55A96"
    )
    port map (
      ADR0 => X_25_IBUF_0,
      ADR2 => Y_25_IBUF_0,
      ADR3 => X_24_IBUF_0,
      ADR5 => X_23_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR4 => Y_24_IBUF_0,
      O => U1_EXP_COMP_S(2)
    );
  U2_Mmux_Y41 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y98",
      INIT => X"0090000900A0000A"
    )
    port map (
      ADR3 => U1_EXP_COMP_S(1),
      ADR0 => U1_EXP_COMP_S_3_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR4 => Y_23_IBUF_0,
      ADR2 => X_23_IBUF_0,
      ADR5 => U1_EXP_COMP_S(2),
      O => U2_Mmux_Y4
    );
  U1_Mmux_G31 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y101",
      INIT => X"CFFFCFFFC000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => Y_25_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR1 => X_25_IBUF_0,
      O => XEXP_2_OBUF_1593
    );
  XEXP_6_OBUF_XEXP_6_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_EXP_COMP_S(6),
      O => U1_EXP_COMP_S_6_0
    );
  U1_Mmux_G71 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y103",
      INIT => X"F5FFA000F5FFA000"
    )
    port map (
      ADR1 => '1',
      ADR4 => Y_29_IBUF_0,
      ADR0 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR2 => X_29_IBUF_0,
      ADR5 => '1',
      O => XEXP_6_OBUF_1463
    );
  U1_EXP_COMP_U1_S_6_1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y103",
      INIT => X"3C3CC3C3"
    )
    port map (
      ADR1 => U1_EXP_COMP_U1_C_8_bdd2,
      ADR4 => Y_29_IBUF_0,
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => X_29_IBUF_0,
      O => U1_EXP_COMP_S(6)
    );
  ExpDiff_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y79",
      INIT => X"AAF0CCFFAAF0CC00"
    )
    port map (
      ADR4 => ExpDiff(0),
      ADR3 => ExpDiff(1),
      ADR2 => Y_19_IBUF_0,
      ADR0 => Y_21_IBUF_0,
      ADR1 => Y_20_IBUF_0,
      ADR5 => Y_18_IBUF_0,
      O => ExpDiff_1_mmx_out13
    );
  U2_Mmux_Y203 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y79",
      INIT => X"FAFF0A0FFAF00A00"
    )
    port map (
      ADR1 => '1',
      ADR2 => ExpDiff(4),
      ADR3 => ExpDiff(1),
      ADR0 => ExpDiff_0_mmx_out,
      ADR5 => ExpDiff_0_mmx_out20,
      ADR4 => ExpDiff_1_mmx_out13,
      O => U2_Mmux_Y202_1554
    );
  U2_Mmux_Y221 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y88",
      INIT => X"FF00FF00CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR5 => ExpDiff(4),
      ADR2 => ExpDiff(1),
      ADR1 => ExpDiff_0_mmx_out11,
      ADR4 => ExpDiff_0_mmx_out10_0,
      ADR3 => ExpDiff_1_mmx_out18,
      O => U2_Mmux_Y221_1610
    );
  U2_Mmux_Y222 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y88",
      INIT => X"55F577F500A022A0"
    )
    port map (
      ADR0 => ExpDiff(2),
      ADR3 => ExpDiff(4),
      ADR4 => ExpDiff(0),
      ADR1 => ExpDiff(1),
      ADR2 => ExpDiff_1_mmx_out15,
      ADR5 => U2_Mmux_Y221_1610,
      O => U2_Mmux_Y222_1410
    );
  ExpDiff_0_mmx_out11_ExpDiff_0_mmx_out11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpDiff_0_mmx_out_pack_6,
      O => ExpDiff_0_mmx_out
    );
  ExpDiff_0_31 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y91",
      INIT => X"E4E4D8D8E4E4D8D8"
    )
    port map (
      ADR3 => '1',
      ADR4 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      ADR2 => Y_5_IBUF_0,
      ADR5 => '1',
      O => ExpDiff_0_mmx_out11
    );
  ExpDiff_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y91",
      INIT => X"FA50F5A0"
    )
    port map (
      ADR3 => Y_4_IBUF_0,
      ADR4 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR1 => '1',
      ADR2 => Y_5_IBUF_0,
      O => ExpDiff_0_mmx_out_pack_6
    );
  ExpDiff_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y91",
      INIT => X"ACACFF00FC0CAFA0"
    )
    port map (
      ADR4 => U1_EXP_COMP_S(1),
      ADR2 => ExpDiff(0),
      ADR5 => U1_EXP_COMP_COUT,
      ADR3 => ExpDiff_0_mmx_out,
      ADR0 => Y_7_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      O => ExpDiff_1_mmx_out
    );
  ExpDiff_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y91",
      INIT => X"FAD8CCEE50D8CC44"
    )
    port map (
      ADR4 => U1_EXP_COMP_S(1),
      ADR0 => ExpDiff(0),
      ADR3 => U1_EXP_COMP_COUT,
      ADR1 => ExpDiff_0_mmx_out11,
      ADR5 => Y_8_IBUF_0,
      ADR2 => Y_7_IBUF_0,
      O => ExpDiff_1_mmx_out5
    );
  ExpDiff_0_mmx_out20_ExpDiff_0_mmx_out20_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ExpDiff_0_mmx_out10,
      O => ExpDiff_0_mmx_out10_0
    );
  ExpDiff_0_131 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y93",
      INIT => X"FCF330C0FCF330C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => X_23_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR2 => Y_3_IBUF_0,
      ADR4 => Y_2_IBUF_0,
      ADR5 => '1',
      O => ExpDiff_0_mmx_out20
    );
  ExpDiff_0_21 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y93",
      INIT => X"E2B8E2B8"
    )
    port map (
      ADR0 => Y_4_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR2 => Y_3_IBUF_0,
      ADR4 => '1',
      O => ExpDiff_0_mmx_out10
    );
  U1_EXP_COMP_U3_GEN_4_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y97",
      INIT => X"FFFFDEFFFFFFFFDE"
    )
    port map (
      ADR2 => Y_24_IBUF_0,
      ADR0 => X_24_IBUF_0,
      ADR4 => U1_EXP_COMP_S(2),
      ADR5 => Y_23_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR1 => U1_EXP_COMP_S_3_0,
      O => U1_EXP_COMP_U3_GEN_4_U_Z1_1414
    );
  U1_Mmux_G41 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y114",
      INIT => X"CFCFFFFFC0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => Y_26_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR1 => X_26_IBUF_0,
      O => XEXP_3_OBUF_1595
    );
  ExpDiff_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y79",
      INIT => X"FD75EC64B931A820"
    )
    port map (
      ADR0 => ExpDiff(0),
      ADR1 => ExpDiff(1),
      ADR2 => Y_20_IBUF_0,
      ADR3 => Y_22_IBUF_0,
      ADR5 => Y_21_IBUF_0,
      ADR4 => Y_19_IBUF_0,
      O => ExpDiff_1_mmx_out18
    );
  ExpDiff_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y78",
      INIT => X"F5DDA0DDF588A088"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR0 => ExpDiff(1),
      ADR4 => Y_11_IBUF_0,
      ADR2 => Y_13_IBUF_0,
      ADR1 => Y_12_IBUF_0,
      ADR5 => Y_10_IBUF_0,
      O => ExpDiff_1_mmx_out11
    );
  N2_N2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  U3_YExponent0_YMantissa0_AND_14_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y103",
      INIT => X"FFFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Y_26_IBUF_0,
      ADR3 => Y_25_IBUF_0,
      ADR2 => Y_24_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      ADR5 => '1',
      O => N2
    );
  U3_YExponent255_30_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y103",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Y_25_IBUF_0,
      ADR2 => Y_24_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      O => N6
    );
  U1_Mmux_G61 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y110",
      INIT => X"F3C0F3C0FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => Y_28_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR5 => U1_MAN_COMP_COUT,
      ADR2 => X_28_IBUF_0,
      O => XEXP_5_OBUF_1597
    );
  U1_Mmux_G81 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y103",
      INIT => X"FF0FFFFFF0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Y_30_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR3 => X_30_IBUF_0,
      O => XEXP_7_OBUF_1598
    );
  ExpDiff_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"F5A0EEEEF5A04444"
    )
    port map (
      ADR0 => ExpDiff(0),
      ADR4 => ExpDiff(1),
      ADR5 => Y_15_IBUF_0,
      ADR2 => Y_17_IBUF_0,
      ADR3 => Y_16_IBUF_0,
      ADR1 => Y_14_IBUF_0,
      O => ExpDiff_1_mmx_out12
    );
  U3_YMantissa0_22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"0000000100000001"
    )
    port map (
      ADR5 => '1',
      ADR3 => Y_19_IBUF_0,
      ADR4 => Y_18_IBUF_0,
      ADR0 => Y_20_IBUF_0,
      ADR2 => Y_21_IBUF_0,
      ADR1 => Y_22_IBUF_0,
      O => U3_YMantissa0_22_3_1576
    );
  U3_YMantissa0_22_2 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y95",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => Y_7_IBUF_0,
      ADR5 => Y_6_IBUF_0,
      ADR0 => Y_8_IBUF_0,
      ADR3 => Y_9_IBUF_0,
      ADR1 => Y_10_IBUF_0,
      ADR4 => Y_11_IBUF_0,
      O => U3_YMantissa0_22_1_1572
    );
  U1_EXP_COMP_U1_C_8_bdd2_U1_EXP_COMP_U1_C_8_bdd2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_EXP_COMP_S(5),
      O => U1_EXP_COMP_S_5_0
    );
  U1_EXP_COMP_U1_C_8_bdd2_U1_EXP_COMP_U1_C_8_bdd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_EXP_COMP_S(3),
      O => U1_EXP_COMP_S_3_0
    );
  U1_EXP_COMP_U1_C_8_21 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y98",
      INIT => X"BF0B2F02BF0B2F02"
    )
    port map (
      ADR3 => X_28_IBUF_0,
      ADR4 => U1_EXP_COMP_U1_C_8_bdd6,
      ADR1 => Y_27_IBUF_0,
      ADR0 => X_27_IBUF_0,
      ADR2 => Y_28_IBUF_0,
      ADR5 => '1',
      O => U1_EXP_COMP_U1_C_8_bdd2
    );
  U1_EXP_COMP_U1_S_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y98",
      INIT => X"4BB4D22D"
    )
    port map (
      ADR3 => X_28_IBUF_0,
      ADR4 => U1_EXP_COMP_U1_C_8_bdd6,
      ADR1 => Y_27_IBUF_0,
      ADR0 => X_27_IBUF_0,
      ADR2 => Y_28_IBUF_0,
      O => U1_EXP_COMP_S(5)
    );
  U1_EXP_COMP_U1_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y98",
      INIT => X"8E0AAF8E8E0AAF8E"
    )
    port map (
      ADR0 => X_26_IBUF_0,
      ADR3 => U1_EXP_COMP_U1_C_8_bdd10,
      ADR4 => Y_25_IBUF_0,
      ADR1 => X_25_IBUF_0,
      ADR2 => Y_26_IBUF_0,
      ADR5 => '1',
      O => U1_EXP_COMP_U1_C_8_bdd6
    );
  U1_EXP_COMP_U1_S_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y98",
      INIT => X"69A55A69"
    )
    port map (
      ADR0 => X_26_IBUF_0,
      ADR3 => U1_EXP_COMP_U1_C_8_bdd10,
      ADR4 => Y_25_IBUF_0,
      ADR1 => X_25_IBUF_0,
      ADR2 => Y_26_IBUF_0,
      O => U1_EXP_COMP_S(3)
    );
  U3_YExponent0_YMantissa0_AND_14_o : X_LUT6
    generic map(
      LOC => "SLICE_X28Y103",
      INIT => X"0000000000000010"
    )
    port map (
      ADR2 => U3_YMantissa0,
      ADR1 => Y_30_IBUF_0,
      ADR3 => Y_29_IBUF_0,
      ADR0 => Y_28_IBUF_0,
      ADR5 => Y_27_IBUF_0,
      ADR4 => N2,
      O => U3_YExponent0_YMantissa0_AND_14_o_1578
    );
  YCASE_0_OBUF_YCASE_0_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_1_OBUF_918,
      O => YCASE_1_OBUF_0
    );
  U3_Mmux_YCASE11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y104",
      INIT => X"030F0000030F0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => U3_YExponent0_YMantissa0_AND_14_o_1578,
      ADR4 => U3_YExponent255,
      ADR3 => U3_YMantissa0,
      ADR1 => Y_31_IBUF_0,
      ADR5 => '1',
      O => YCASE_0_OBUF_1550
    );
  U3_Mmux_YCASE21 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y104",
      INIT => X"0C0F0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => U3_YExponent0_YMantissa0_AND_14_o_1578,
      ADR4 => U3_YExponent255,
      ADR3 => U3_YMantissa0,
      ADR1 => Y_31_IBUF_0,
      O => YCASE_1_OBUF_918
    );
  U3_YMantissa0_22_5 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y104",
      INIT => X"A000A00000000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U3_YMantissa0_1(22),
      ADR0 => U3_YMantissa0_22_1_1572,
      ADR3 => U3_YMantissa0_22_2_1575,
      ADR2 => U3_YMantissa0_22_3_1576,
      O => U3_YMantissa0
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT9 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y116",
      INIT => X"F7517510F751F751"
    )
    port map (
      ADR3 => X_2_IBUF_0,
      ADR0 => Y_2_IBUF_0,
      ADR2 => X_1_IBUF_0,
      ADR1 => Y_1_IBUF_0,
      ADR4 => X_0_IBUF_0,
      ADR5 => Y_0_IBUF_0,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT8_1611
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT10 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y116",
      INIT => X"80A80000EAFE0000"
    )
    port map (
      ADR4 => U1_MAN_COMP_U1_GEN_22_U_COUT7_0,
      ADR0 => X_4_IBUF_0,
      ADR5 => Y_4_IBUF_0,
      ADR1 => X_3_IBUF_0,
      ADR3 => Y_3_IBUF_0,
      ADR2 => U1_MAN_COMP_U1_GEN_22_U_COUT8_1611,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT9_1530
    );
  ExpDiff_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y76",
      INIT => X"EE44F5F5EE44A0A0"
    )
    port map (
      ADR0 => ExpDiff(0),
      ADR4 => ExpDiff(1),
      ADR2 => Y_17_IBUF_0,
      ADR3 => Y_19_IBUF_0,
      ADR1 => Y_18_IBUF_0,
      ADR5 => Y_16_IBUF_0,
      O => ExpDiff_1_mmx_out3
    );
  ExpDiff_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y76",
      INIT => X"D8FFD855D8AAD800"
    )
    port map (
      ADR0 => ExpDiff(0),
      ADR3 => ExpDiff(1),
      ADR4 => Y_18_IBUF_0,
      ADR1 => Y_20_IBUF_0,
      ADR2 => Y_19_IBUF_0,
      ADR5 => Y_17_IBUF_0,
      O => ExpDiff_1_mmx_out8
    );
  ExpDiff_1_171 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => X"FADD50DDFA885088"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR0 => ExpDiff(1),
      ADR2 => Y_14_IBUF_0,
      ADR4 => Y_16_IBUF_0,
      ADR1 => Y_15_IBUF_0,
      ADR5 => Y_13_IBUF_0,
      O => ExpDiff_1_mmx_out7
    );
  U3_YMantissa0_22_3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => Y_13_IBUF_0,
      ADR0 => Y_12_IBUF_0,
      ADR4 => Y_14_IBUF_0,
      ADR5 => Y_15_IBUF_0,
      ADR1 => Y_16_IBUF_0,
      ADR2 => Y_17_IBUF_0,
      O => U3_YMantissa0_22_2_1575
    );
  ExpDiff_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"F0CCAAFFF0CCAA00"
    )
    port map (
      ADR3 => ExpDiff(0),
      ADR4 => ExpDiff(1),
      ADR0 => Y_12_IBUF_0,
      ADR2 => Y_14_IBUF_0,
      ADR1 => Y_13_IBUF_0,
      ADR5 => Y_11_IBUF_0,
      O => ExpDiff_1_mmx_out16
    );
  YSIGN_OBUF_YSIGN_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_OBUF_979,
      O => XSIGN_OBUF_0
    );
  YSIGN_OBUF_YSIGN_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_EXP_COMP_S(7),
      O => U1_EXP_COMP_S_7_0
    );
  U1_Mmux_S11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"5ACCCCCC5ACCCCCC"
    )
    port map (
      ADR4 => U1_MAN_COMP_COUT,
      ADR3 => U1_EXP_COMP_COUT,
      ADR2 => Y_31_IBUF_0,
      ADR0 => OP_IBUF_0,
      ADR1 => X_31_IBUF_0,
      ADR5 => '1',
      O => YSIGN_OBUF_1436
    );
  U1_Mmux_G321 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"CC5A5A5A"
    )
    port map (
      ADR4 => U1_MAN_COMP_COUT,
      ADR3 => U1_EXP_COMP_COUT,
      ADR2 => Y_31_IBUF_0,
      ADR0 => OP_IBUF_0,
      ADR1 => X_31_IBUF_0,
      O => XSIGN_OBUF_979
    );
  U1_EXP_COMP_U1_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"B0FB20F2B0FB20F2"
    )
    port map (
      ADR2 => X_30_IBUF_0,
      ADR0 => U1_EXP_COMP_U1_C_8_bdd2,
      ADR1 => Y_29_IBUF_0,
      ADR4 => X_29_IBUF_0,
      ADR3 => Y_30_IBUF_0,
      ADR5 => '1',
      O => U1_EXP_COMP_COUT
    );
  U1_EXP_COMP_U1_S_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y92",
      INIT => X"4BB4D22D"
    )
    port map (
      ADR2 => X_30_IBUF_0,
      ADR0 => U1_EXP_COMP_U1_C_8_bdd2,
      ADR1 => Y_29_IBUF_0,
      ADR4 => X_29_IBUF_0,
      ADR3 => Y_30_IBUF_0,
      O => U1_EXP_COMP_S(7)
    );
  U3_XExponent0_XMantissa0_AND_8_o : X_LUT6
    generic map(
      LOC => "SLICE_X29Y98",
      INIT => X"0000000000000002"
    )
    port map (
      ADR0 => U3_XMantissa0,
      ADR4 => X_30_IBUF_0,
      ADR3 => X_29_IBUF_0,
      ADR1 => X_28_IBUF_0,
      ADR2 => X_27_IBUF_0,
      ADR5 => N4,
      O => U3_XExponent0_XMantissa0_AND_8_o_1566
    );
  N4_N4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  U3_XExponent0_XMantissa0_AND_8_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y100",
      INIT => X"FFFFFFFAFFFFFFFA"
    )
    port map (
      ADR1 => '1',
      ADR0 => X_26_IBUF_0,
      ADR4 => X_25_IBUF_0,
      ADR3 => X_24_IBUF_0,
      ADR2 => X_23_IBUF_0,
      ADR5 => '1',
      O => N4
    );
  U3_XExponent255_30_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y100",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => X_25_IBUF_0,
      ADR3 => X_24_IBUF_0,
      ADR2 => X_23_IBUF_0,
      O => N8
    );
  YCASE_2_OBUF_YCASE_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_2_OBUF_1009,
      O => XCASE_2_OBUF_0
    );
  U3_Mmux_YCASE31 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y103",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U3_YExponent0_YMantissa0_AND_14_o_1578,
      ADR3 => U3_YExponent255,
      ADR5 => '1',
      O => YCASE_2_OBUF_1561
    );
  U3_Mmux_XCASE31 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y103",
      INIT => X"11111111"
    )
    port map (
      ADR2 => '1',
      ADR0 => U3_XExponent0_XMantissa0_AND_8_o_1566,
      ADR1 => U3_XExponent255,
      ADR3 => '1',
      ADR4 => '1',
      O => XCASE_2_OBUF_1009
    );
  U3_YExponent255_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X29Y103",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => Y_30_IBUF_0,
      ADR3 => Y_29_IBUF_0,
      ADR4 => Y_28_IBUF_0,
      ADR5 => Y_27_IBUF_0,
      ADR1 => Y_26_IBUF_0,
      ADR2 => N6_0,
      O => U3_YExponent255
    );
  U3_XExponent255_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X29Y103",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => X_30_IBUF_0,
      ADR5 => X_29_IBUF_0,
      ADR4 => X_28_IBUF_0,
      ADR2 => X_27_IBUF_0,
      ADR0 => X_26_IBUF_0,
      ADR3 => N8_0,
      O => U3_XExponent255
    );
  U3_YMantissa0_22_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y104",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Y_1_IBUF_0,
      ADR3 => Y_0_IBUF_0,
      ADR0 => Y_2_IBUF_0,
      ADR5 => Y_3_IBUF_0,
      ADR4 => Y_4_IBUF_0,
      ADR2 => Y_5_IBUF_0,
      O => U3_YMantissa0_1(22)
    );
  U1_Mmux_G91 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y116",
      INIT => X"FFFF5F5FA0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => Y_0_IBUF_0,
      ADR0 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR4 => X_0_IBUF_0,
      O => XMAN_0_OBUF_1580
    );
  XMAN_5_OBUF_XMAN_5_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_MAN_COMP_U1_GEN_22_U_COUT7_1047,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT7_0
    );
  U1_Mmux_G271 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y115",
      INIT => X"FFFF0FFFF0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Y_5_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR4 => X_5_IBUF_0,
      O => XMAN_5_OBUF_1564
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT7 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y115",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => X_5_IBUF_0,
      ADR1 => Y_5_IBUF_0,
      ADR5 => '1',
      O => U1_MAN_COMP_U1_GEN_22_U_COUT6_1456
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT8 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y115",
      INIT => X"FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => X_5_IBUF_0,
      ADR1 => Y_5_IBUF_0,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT7_1047
    );
  U1_Mmux_G261 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y116",
      INIT => X"FF33CC00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => Y_4_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR1 => U1_MAN_COMP_COUT,
      ADR3 => X_4_IBUF_0,
      O => XMAN_4_OBUF_1560
    );
  U1_Mmux_G201 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y116",
      INIT => X"CCF0CCF0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => Y_1_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR1 => X_1_IBUF_0,
      O => XMAN_1_OBUF_1515
    );
  U1_Mmux_G241 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y116",
      INIT => X"B8B8F0F0B8B8F0F0"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => Y_2_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR0 => X_2_IBUF_0,
      O => XMAN_2_OBUF_1540
    );
  U1_Mmux_G251 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y116",
      INIT => X"FFCC00CCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => Y_3_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR4 => X_3_IBUF_0,
      O => XMAN_3_OBUF_1548
    );
  U1_Mmux_G191 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y73",
      INIT => X"EEEECCCC4444CCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Y_19_IBUF_0,
      ADR0 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR5 => X_19_IBUF_0,
      O => XMAN_19_OBUF_1563
    );
  U1_Mmux_G211 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y74",
      INIT => X"BBFF8800BBFF8800"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => Y_20_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR0 => X_20_IBUF_0,
      O => XMAN_20_OBUF_1520
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT_U1_MAN_COMP_U1_GEN_22_U_COUT_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_MAN_COMP_U1_GEN_22_U_COUT1_pack_2,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT1_1612
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => X_20_IBUF_0,
      ADR3 => Y_20_IBUF_0,
      ADR5 => '1',
      O => U1_MAN_COMP_U1_GEN_22_U_COUT
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT2 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"CCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => X_20_IBUF_0,
      ADR3 => Y_20_IBUF_0,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT1_pack_2
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT15 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"BB22FF33B320FB32"
    )
    port map (
      ADR3 => X_17_IBUF_0,
      ADR1 => Y_17_IBUF_0,
      ADR0 => X_16_IBUF_0,
      ADR4 => Y_16_IBUF_0,
      ADR2 => U1_MAN_COMP_U1_GEN_22_U_COUT2_1448,
      ADR5 => U1_MAN_COMP_U1_GEN_22_U_COUT13_1537,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT14_1613
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT16 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"F773000031100000"
    )
    port map (
      ADR4 => U1_MAN_COMP_U1_GEN_22_U_COUT1_1612,
      ADR5 => X_19_IBUF_0,
      ADR1 => Y_19_IBUF_0,
      ADR3 => X_18_IBUF_0,
      ADR0 => Y_18_IBUF_0,
      ADR2 => U1_MAN_COMP_U1_GEN_22_U_COUT14_1613,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT15_1545
    );
  U1_Mmux_G231 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"FA0AFA0AAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => Y_22_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR3 => X_22_IBUF_0,
      O => XMAN_22_OBUF_1533
    );
  U1_Mmux_G311 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"ACCCACCCACCCACCC"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => Y_9_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR0 => X_9_IBUF_0,
      O => XMAN_9_OBUF_1556
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT17 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y76",
      INIT => X"8880EEECCCC8FFFE"
    )
    port map (
      ADR1 => X_22_IBUF_0,
      ADR4 => Y_22_IBUF_0,
      ADR0 => X_21_IBUF_0,
      ADR5 => Y_21_IBUF_0,
      ADR2 => U1_MAN_COMP_U1_GEN_22_U_COUT,
      ADR3 => U1_MAN_COMP_U1_GEN_22_U_COUT15_1545,
      O => U1_MAN_COMP_COUT
    );
  U1_Mmux_G151 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"EEEE4444CCCCCCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Y_15_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR4 => X_15_IBUF_0,
      O => XMAN_15_OBUF_1531
    );
  U1_Mmux_G141 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y79",
      INIT => X"FFFF5F5FA0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => Y_14_IBUF_0,
      ADR2 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR4 => X_14_IBUF_0,
      O => XMAN_14_OBUF_1522
    );
  U1_Mmux_G121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"F0AAAAAAF0AAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => Y_12_IBUF_0,
      ADR3 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR2 => X_12_IBUF_0,
      O => XMAN_12_OBUF_1514
    );
  U1_Mmux_G111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y81",
      INIT => X"F5F5FFFFA0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => Y_11_IBUF_0,
      ADR4 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR2 => X_11_IBUF_0,
      O => XMAN_11_OBUF_1512
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT13 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"B0FBB0FBB0FB20F2"
    )
    port map (
      ADR2 => X_12_IBUF_0,
      ADR3 => Y_12_IBUF_0,
      ADR0 => X_11_IBUF_0,
      ADR1 => Y_11_IBUF_0,
      ADR4 => U1_MAN_COMP_U1_GEN_22_U_COUT4_1452,
      ADR5 => U1_MAN_COMP_U1_GEN_22_U_COUT11_1529,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT12_1614
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT14 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"C4CC40CC00C40040"
    )
    port map (
      ADR1 => U1_MAN_COMP_U1_GEN_22_U_COUT3_0,
      ADR5 => X_14_IBUF_0,
      ADR3 => Y_14_IBUF_0,
      ADR2 => X_13_IBUF_0,
      ADR0 => Y_13_IBUF_0,
      ADR4 => U1_MAN_COMP_U1_GEN_22_U_COUT12_1614,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT13_1537
    );
  U3_XMantissa0_22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"0000000000000005"
    )
    port map (
      ADR1 => '1',
      ADR2 => X_19_IBUF_0,
      ADR4 => X_18_IBUF_0,
      ADR5 => X_20_IBUF_0,
      ADR0 => X_21_IBUF_0,
      ADR3 => X_22_IBUF_0,
      O => U3_XMantissa0_22_3_1562
    );
  XCASE_0_OBUF_XCASE_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_1_OBUF_1167,
      O => XCASE_1_OBUF_0
    );
  U3_Mmux_XCASE11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"003000F0003000F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => U3_XExponent0_XMantissa0_AND_8_o_1566,
      ADR2 => U3_XExponent255,
      ADR4 => U3_XMantissa0,
      ADR1 => X_31_IBUF_0,
      ADR5 => '1',
      O => XCASE_0_OBUF_1475
    );
  U3_Mmux_XCASE21 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"00C000F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => U3_XExponent0_XMantissa0_AND_8_o_1566,
      ADR2 => U3_XExponent255,
      ADR4 => U3_XMantissa0,
      ADR1 => X_31_IBUF_0,
      O => XCASE_1_OBUF_1167
    );
  U3_XMantissa0_22_5 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"A0000000A0000000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => U3_XMantissa0_0(22),
      ADR3 => U3_XMantissa0_22_1_1558,
      ADR0 => U3_XMantissa0_22_2_1615,
      ADR2 => U3_XMantissa0_22_3_1562,
      O => U3_XMantissa0
    );
  U3_XMantissa0_22_3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y92",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => X_13_IBUF_0,
      ADR0 => X_12_IBUF_0,
      ADR5 => X_14_IBUF_0,
      ADR1 => X_15_IBUF_0,
      ADR4 => X_16_IBUF_0,
      ADR2 => X_17_IBUF_0,
      O => U3_XMantissa0_22_2_1615
    );
  U1_Mmux_G101 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y95",
      INIT => X"DD88DD88FF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Y_10_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR1 => X_10_IBUF_0,
      O => XMAN_10_OBUF_1506
    );
  U1_Mmux_G301 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y104",
      INIT => X"EE44EE44CCCCCCCC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => Y_8_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR0 => U1_MAN_COMP_COUT,
      ADR3 => X_8_IBUF_0,
      O => XMAN_8_OBUF_1524
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"AFFF0A0F8FEF080E"
    )
    port map (
      ADR4 => X_7_IBUF_0,
      ADR2 => Y_7_IBUF_0,
      ADR0 => X_6_IBUF_0,
      ADR3 => Y_6_IBUF_0,
      ADR1 => U1_MAN_COMP_U1_GEN_22_U_COUT6_1456,
      ADR5 => U1_MAN_COMP_U1_GEN_22_U_COUT9_1530,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT10_1616
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y106",
      INIT => X"80A800A0A0AA80A8"
    )
    port map (
      ADR0 => U1_MAN_COMP_U1_GEN_22_U_COUT5_0,
      ADR2 => X_9_IBUF_0,
      ADR3 => Y_9_IBUF_0,
      ADR1 => X_8_IBUF_0,
      ADR5 => Y_8_IBUF_0,
      ADR4 => U1_MAN_COMP_U1_GEN_22_U_COUT10_1616,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT11_1529
    );
  U3_XMantissa0_22_2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y107",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => X_7_IBUF_0,
      ADR1 => X_6_IBUF_0,
      ADR0 => X_8_IBUF_0,
      ADR3 => X_9_IBUF_0,
      ADR4 => X_10_IBUF_0,
      ADR5 => X_11_IBUF_0,
      O => U3_XMantissa0_22_1_1558
    );
  U3_XMantissa0_22_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y116",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => X_1_IBUF_0,
      ADR5 => X_0_IBUF_0,
      ADR3 => X_2_IBUF_0,
      ADR4 => X_3_IBUF_0,
      ADR2 => X_4_IBUF_0,
      ADR1 => X_5_IBUF_0,
      O => U3_XMantissa0_0(22)
    );
  U1_Mmux_G181 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y75",
      INIT => X"FAFA0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => Y_18_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR4 => X_18_IBUF_0,
      O => XMAN_18_OBUF_1559
    );
  U1_Mmux_G161 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y75",
      INIT => X"AFA0FF00AFA0FF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => Y_16_IBUF_0,
      ADR4 => U1_EXP_COMP_COUT,
      ADR2 => U1_MAN_COMP_COUT,
      ADR0 => X_16_IBUF_0,
      O => XMAN_16_OBUF_1538
    );
  U1_Mmux_G171 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y75",
      INIT => X"FC30FC30F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => Y_17_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR5 => U1_MAN_COMP_COUT,
      ADR3 => X_17_IBUF_0,
      O => XMAN_17_OBUF_1546
    );
  U1_Mmux_G221 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"FFFF33FFCC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => Y_21_IBUF_0,
      ADR1 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR4 => X_21_IBUF_0,
      O => XMAN_21_OBUF_1523
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT2_U1_MAN_COMP_U1_GEN_22_U_COUT2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_MAN_COMP_U1_GEN_22_U_COUT3_1235,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT3_0
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => X_15_IBUF_0,
      ADR2 => Y_15_IBUF_0,
      ADR5 => '1',
      O => U1_MAN_COMP_U1_GEN_22_U_COUT2_1448
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT4 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"FF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => X_15_IBUF_0,
      ADR2 => Y_15_IBUF_0,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT3_1235
    );
  U1_Mmux_G131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y81",
      INIT => X"FAF050F0FAF050F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => Y_13_IBUF_0,
      ADR0 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR4 => X_13_IBUF_0,
      O => XMAN_13_OBUF_1518
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT4_U1_MAN_COMP_U1_GEN_22_U_COUT4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_MAN_COMP_U1_GEN_22_U_COUT5_1245,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT5_0
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT5 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => X_10_IBUF_0,
      ADR2 => Y_10_IBUF_0,
      ADR5 => '1',
      O => U1_MAN_COMP_U1_GEN_22_U_COUT4_1452
    );
  U1_MAN_COMP_U1_GEN_22_U_COUT6 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y99",
      INIT => X"FFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => X_10_IBUF_0,
      ADR2 => Y_10_IBUF_0,
      O => U1_MAN_COMP_U1_GEN_22_U_COUT5_1245
    );
  U1_Mmux_G281 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"CCCCAAAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Y_6_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR4 => U1_MAN_COMP_COUT,
      ADR1 => X_6_IBUF_0,
      O => XMAN_6_OBUF_1568
    );
  U1_Mmux_G291 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y106",
      INIT => X"FFF000F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Y_7_IBUF_0,
      ADR5 => U1_EXP_COMP_COUT,
      ADR3 => U1_MAN_COMP_COUT,
      ADR4 => X_7_IBUF_0,
      O => XMAN_7_OBUF_1570
    );
  NlwBufferBlock_XCASE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_0_OBUF_1475,
      O => NlwBufferSignal_XCASE_0_OBUF_I
    );
  NlwBufferBlock_XCASE_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_1_OBUF_0,
      O => NlwBufferSignal_XCASE_1_OBUF_I
    );
  NlwBufferBlock_XCASE_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_2_OBUF_0,
      O => NlwBufferSignal_XCASE_2_OBUF_I
    );
  NlwBufferBlock_YMAN_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_0_OBUF_0,
      O => NlwBufferSignal_YMAN_0_OBUF_I
    );
  NlwBufferBlock_YMAN_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_1_OBUF_0,
      O => NlwBufferSignal_YMAN_1_OBUF_I
    );
  NlwBufferBlock_YMAN_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_2_OBUF_1507,
      O => NlwBufferSignal_YMAN_2_OBUF_I
    );
  NlwBufferBlock_YMAN_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_3_OBUF_1407,
      O => NlwBufferSignal_YMAN_3_OBUF_I
    );
  NlwBufferBlock_YMAN_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_4_OBUF_1521,
      O => NlwBufferSignal_YMAN_4_OBUF_I
    );
  NlwBufferBlock_YMAN_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_5_OBUF_1525,
      O => NlwBufferSignal_YMAN_5_OBUF_I
    );
  NlwBufferBlock_YMAN_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_6_OBUF_0,
      O => NlwBufferSignal_YMAN_6_OBUF_I
    );
  NlwBufferBlock_YMAN_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_7_OBUF_1535,
      O => NlwBufferSignal_YMAN_7_OBUF_I
    );
  NlwBufferBlock_YMAN_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_8_OBUF_1542,
      O => NlwBufferSignal_YMAN_8_OBUF_I
    );
  NlwBufferBlock_YMAN_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_9_OBUF_1547,
      O => NlwBufferSignal_YMAN_9_OBUF_I
    );
  NlwBufferBlock_YCASE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_0_OBUF_1550,
      O => NlwBufferSignal_YCASE_0_OBUF_I
    );
  NlwBufferBlock_YCASE_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_1_OBUF_0,
      O => NlwBufferSignal_YCASE_1_OBUF_I
    );
  NlwBufferBlock_YCASE_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_2_OBUF_1561,
      O => NlwBufferSignal_YCASE_2_OBUF_I
    );
  NlwBufferBlock_XMAN_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_10_OBUF_1506,
      O => NlwBufferSignal_XMAN_10_OBUF_I
    );
  NlwBufferBlock_XMAN_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_11_OBUF_1512,
      O => NlwBufferSignal_XMAN_11_OBUF_I
    );
  NlwBufferBlock_XMAN_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_12_OBUF_1514,
      O => NlwBufferSignal_XMAN_12_OBUF_I
    );
  NlwBufferBlock_XMAN_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_20_OBUF_1520,
      O => NlwBufferSignal_XMAN_20_OBUF_I
    );
  NlwBufferBlock_XMAN_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_0_OBUF_1580,
      O => NlwBufferSignal_XMAN_0_OBUF_I
    );
  NlwBufferBlock_XSIGN_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_OBUF_0,
      O => NlwBufferSignal_XSIGN_OBUF_I
    );
  NlwBufferBlock_XMAN_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_13_OBUF_1518,
      O => NlwBufferSignal_XMAN_13_OBUF_I
    );
  NlwBufferBlock_XMAN_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_21_OBUF_1523,
      O => NlwBufferSignal_XMAN_21_OBUF_I
    );
  NlwBufferBlock_XMAN_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_1_OBUF_1515,
      O => NlwBufferSignal_XMAN_1_OBUF_I
    );
  NlwBufferBlock_XMAN_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_14_OBUF_1522,
      O => NlwBufferSignal_XMAN_14_OBUF_I
    );
  NlwBufferBlock_XMAN_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_22_OBUF_1533,
      O => NlwBufferSignal_XMAN_22_OBUF_I
    );
  NlwBufferBlock_XMAN_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_2_OBUF_1540,
      O => NlwBufferSignal_XMAN_2_OBUF_I
    );
  NlwBufferBlock_XMAN_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_15_OBUF_1531,
      O => NlwBufferSignal_XMAN_15_OBUF_I
    );
  NlwBufferBlock_XMAN_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_3_OBUF_1548,
      O => NlwBufferSignal_XMAN_3_OBUF_I
    );
  NlwBufferBlock_XMAN_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_16_OBUF_1538,
      O => NlwBufferSignal_XMAN_16_OBUF_I
    );
  NlwBufferBlock_XMAN_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_4_OBUF_1560,
      O => NlwBufferSignal_XMAN_4_OBUF_I
    );
  NlwBufferBlock_XMAN_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_17_OBUF_1546,
      O => NlwBufferSignal_XMAN_17_OBUF_I
    );
  NlwBufferBlock_XMAN_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_5_OBUF_1564,
      O => NlwBufferSignal_XMAN_5_OBUF_I
    );
  NlwBufferBlock_XMAN_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_18_OBUF_1559,
      O => NlwBufferSignal_XMAN_18_OBUF_I
    );
  NlwBufferBlock_XMAN_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_6_OBUF_1568,
      O => NlwBufferSignal_XMAN_6_OBUF_I
    );
  NlwBufferBlock_XMAN_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_19_OBUF_1563,
      O => NlwBufferSignal_XMAN_19_OBUF_I
    );
  NlwBufferBlock_XMAN_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_7_OBUF_1570,
      O => NlwBufferSignal_XMAN_7_OBUF_I
    );
  NlwBufferBlock_XMAN_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_8_OBUF_1524,
      O => NlwBufferSignal_XMAN_8_OBUF_I
    );
  NlwBufferBlock_YSIGN_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YSIGN_OBUF_1436,
      O => NlwBufferSignal_YSIGN_OBUF_I
    );
  NlwBufferBlock_XMAN_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XMAN_9_OBUF_1556,
      O => NlwBufferSignal_XMAN_9_OBUF_I
    );
  NlwBufferBlock_YMAN_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_10_OBUF_1582,
      O => NlwBufferSignal_YMAN_10_OBUF_I
    );
  NlwBufferBlock_YMAN_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_11_OBUF_1583,
      O => NlwBufferSignal_YMAN_11_OBUF_I
    );
  NlwBufferBlock_YMAN_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_12_OBUF_1587,
      O => NlwBufferSignal_YMAN_12_OBUF_I
    );
  NlwBufferBlock_YMAN_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_20_OBUF_1588,
      O => NlwBufferSignal_YMAN_20_OBUF_I
    );
  NlwBufferBlock_XEXP_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_0_OBUF_1403,
      O => NlwBufferSignal_XEXP_0_OBUF_I
    );
  NlwBufferBlock_YMAN_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_13_OBUF_1501,
      O => NlwBufferSignal_YMAN_13_OBUF_I
    );
  NlwBufferBlock_YMAN_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_21_OBUF_1589,
      O => NlwBufferSignal_YMAN_21_OBUF_I
    );
  NlwBufferBlock_XEXP_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_1_OBUF_1590,
      O => NlwBufferSignal_XEXP_1_OBUF_I
    );
  NlwBufferBlock_YMAN_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_14_OBUF_1591,
      O => NlwBufferSignal_YMAN_14_OBUF_I
    );
  NlwBufferBlock_YMAN_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_22_OBUF_1592,
      O => NlwBufferSignal_YMAN_22_OBUF_I
    );
  NlwBufferBlock_XEXP_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_2_OBUF_1593,
      O => NlwBufferSignal_XEXP_2_OBUF_I
    );
  NlwBufferBlock_YMAN_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_15_OBUF_1509,
      O => NlwBufferSignal_YMAN_15_OBUF_I
    );
  NlwBufferBlock_YMAN_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_23_OBUF_1594,
      O => NlwBufferSignal_YMAN_23_OBUF_I
    );
  NlwBufferBlock_XEXP_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_3_OBUF_1595,
      O => NlwBufferSignal_XEXP_3_OBUF_I
    );
  NlwBufferBlock_YMAN_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_16_OBUF_1504,
      O => NlwBufferSignal_YMAN_16_OBUF_I
    );
  NlwBufferBlock_XEXP_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_4_OBUF_1596,
      O => NlwBufferSignal_XEXP_4_OBUF_I
    );
  NlwBufferBlock_YMAN_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_17_OBUF_1584,
      O => NlwBufferSignal_YMAN_17_OBUF_I
    );
  NlwBufferBlock_XEXP_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_5_OBUF_1597,
      O => NlwBufferSignal_XEXP_5_OBUF_I
    );
  NlwBufferBlock_YMAN_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_18_OBUF_1585,
      O => NlwBufferSignal_YMAN_18_OBUF_I
    );
  NlwBufferBlock_XEXP_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_6_OBUF_1463,
      O => NlwBufferSignal_XEXP_6_OBUF_I
    );
  NlwBufferBlock_YMAN_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => YMAN_19_OBUF_1586,
      O => NlwBufferSignal_YMAN_19_OBUF_I
    );
  NlwBufferBlock_XEXP_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_7_OBUF_1598,
      O => NlwBufferSignal_XEXP_7_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

