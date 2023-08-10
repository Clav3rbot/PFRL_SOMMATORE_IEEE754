--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: POST_SUM_timesim.vhd
-- /___/   /\     Timestamp: Thu Aug 10 16:54:05 2023
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
    XEXP_INCR : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    XCASE : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    YCASE : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    XEXP : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    MAN : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    Z : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end POST_SUM;

architecture Structure of POST_SUM is
  signal U6_GEN_15_U_Z2_1751 : STD_LOGIC; 
  signal U1_U5_GEN_15_U_Z31_1755 : STD_LOGIC; 
  signal U1_ShiftPos_2_14 : STD_LOGIC; 
  signal MAN_5_IBUF_0 : STD_LOGIC; 
  signal MAN_1_IBUF_0 : STD_LOGIC; 
  signal MAN_3_IBUF_0 : STD_LOGIC; 
  signal MAN_7_IBUF_0 : STD_LOGIC; 
  signal YCASE_0_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_18_U_Z11 : STD_LOGIC; 
  signal Y_12_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_15_U_Z3 : STD_LOGIC; 
  signal MAN_23_IBUF_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT13_1768 : STD_LOGIC; 
  signal MAN_22_IBUF_0 : STD_LOGIC; 
  signal Y_20_IBUF_0 : STD_LOGIC; 
  signal X_28_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_15_U_Z4 : STD_LOGIC; 
  signal MAN_11_IBUF_0 : STD_LOGIC; 
  signal MAN_9_IBUF_0 : STD_LOGIC; 
  signal MAN_13_IBUF_0 : STD_LOGIC; 
  signal MAN_15_IBUF_0 : STD_LOGIC; 
  signal YCASE_1_IBUF_0 : STD_LOGIC; 
  signal Y_13_IBUF_0 : STD_LOGIC; 
  signal U2_XNInf_XZero_OR_292_o : STD_LOGIC; 
  signal U2_XNorm_YZero_AND_18_o : STD_LOGIC; 
  signal Y_31_IBUF_0 : STD_LOGIC; 
  signal U2_XZero_YNorm_AND_19_o : STD_LOGIC; 
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal U2_XPInf_YNaN_OR_284_o : STD_LOGIC; 
  signal XCASE_2_IBUF_0 : STD_LOGIC; 
  signal XCASE_0_IBUF_0 : STD_LOGIC; 
  signal YCASE_2_IBUF_0 : STD_LOGIC; 
  signal XCASE_1_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_30_U_Z2 : STD_LOGIC; 
  signal U2_XPInf_XZero_OR_288_o : STD_LOGIC; 
  signal XSIGN_IBUF_0 : STD_LOGIC; 
  signal SPECIAL_IBUF_0 : STD_LOGIC; 
  signal Z_31_OBUF_0 : STD_LOGIC; 
  signal Y_21_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_15_U_Z1_1796 : STD_LOGIC; 
  signal MAN_10_IBUF_0 : STD_LOGIC; 
  signal MAN_8_IBUF_0 : STD_LOGIC; 
  signal MAN_12_IBUF_0 : STD_LOGIC; 
  signal MAN_14_IBUF_0 : STD_LOGIC; 
  signal X_29_IBUF_0 : STD_LOGIC; 
  signal Z_15_OBUF_1802 : STD_LOGIC; 
  signal MAN_16_IBUF_0 : STD_LOGIC; 
  signal XEXP_INCR_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_15_U_Z : STD_LOGIC; 
  signal U1_U5_GEN_21_U_Z2 : STD_LOGIC; 
  signal U1_n0007_8_0 : STD_LOGIC; 
  signal Y_14_IBUF_0 : STD_LOGIC; 
  signal Y_22_IBUF_0 : STD_LOGIC; 
  signal Y_30_IBUF_0 : STD_LOGIC; 
  signal Y_15_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_12_U_Z1 : STD_LOGIC; 
  signal MAN_2_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_Z11 : STD_LOGIC; 
  signal U6_GEN_20_U_Z3_1815 : STD_LOGIC; 
  signal U6_GEN_20_U_Z2_1816 : STD_LOGIC; 
  signal U1_U2_Mmux_Y172_0 : STD_LOGIC; 
  signal Y_23_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_20_U_Z : STD_LOGIC; 
  signal U6_GEN_24_U_Z11 : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_12_U_Z : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal Y_16_IBUF_0 : STD_LOGIC; 
  signal Z_20_OBUF_1825 : STD_LOGIC; 
  signal MAN_21_IBUF_0 : STD_LOGIC; 
  signal Y_24_IBUF_0 : STD_LOGIC; 
  signal Y_17_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_2_U_Z : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal Y_25_IBUF_0 : STD_LOGIC; 
  signal Z_12_OBUF_1833 : STD_LOGIC; 
  signal U6_GEN_12_U_Z1_0 : STD_LOGIC; 
  signal U6_GEN_11_U_Z1_1835 : STD_LOGIC; 
  signal Z_10_OBUF_1836 : STD_LOGIC; 
  signal Z_2_OBUF_1837 : STD_LOGIC; 
  signal U6_GEN_2_U_Z2_1838 : STD_LOGIC; 
  signal Y_18_IBUF_0 : STD_LOGIC; 
  signal Y_26_IBUF_0 : STD_LOGIC; 
  signal Z_11_OBUF_1841 : STD_LOGIC; 
  signal U1_U2_Mmux_Y1411 : STD_LOGIC; 
  signal MAN_17_IBUF_0 : STD_LOGIC; 
  signal MAN_19_IBUF_0 : STD_LOGIC; 
  signal Y_19_IBUF_0 : STD_LOGIC; 
  signal Y_27_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_29_U_Z1_1847 : STD_LOGIC; 
  signal XEXP_2_IBUF_0 : STD_LOGIC; 
  signal XEXP_0_IBUF_0 : STD_LOGIC; 
  signal XEXP_1_IBUF_0 : STD_LOGIC; 
  signal XEXP_5_IBUF_0 : STD_LOGIC; 
  signal XEXP_3_IBUF_0 : STD_LOGIC; 
  signal XEXP_4_IBUF_0 : STD_LOGIC; 
  signal Y_28_IBUF_0 : STD_LOGIC; 
  signal U1_U2_Mmux_Y1412 : STD_LOGIC; 
  signal MAN_18_IBUF_0 : STD_LOGIC; 
  signal Z_13_OBUF_1857 : STD_LOGIC; 
  signal U6_GEN_10_U_Z : STD_LOGIC; 
  signal U6_GEN_10_U_Z4 : STD_LOGIC; 
  signal U1_U3_C_9_bdd0 : STD_LOGIC; 
  signal XEXP_7_IBUF_0 : STD_LOGIC; 
  signal Z_21_OBUF_1862 : STD_LOGIC; 
  signal U6_GEN_0_U_Z : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal Y_29_IBUF_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT511 : STD_LOGIC; 
  signal MAN_20_IBUF_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT51 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT27_0 : STD_LOGIC; 
  signal Z_14_OBUF_1871 : STD_LOGIC; 
  signal Z_22_OBUF_1872 : STD_LOGIC; 
  signal U1_ShiftPos_2_mmx_out9 : STD_LOGIC; 
  signal U1_ShiftPos_2_141 : STD_LOGIC; 
  signal U6_GEN_16_U_Z3_1875 : STD_LOGIC; 
  signal U6_GEN_16_U_Z2_0 : STD_LOGIC; 
  signal Z_30_OBUF_0 : STD_LOGIC; 
  signal Z_23_OBUF_1878 : STD_LOGIC; 
  signal Z_16_OBUF_1879 : STD_LOGIC; 
  signal Z_17_OBUF_1880 : STD_LOGIC; 
  signal U6_GEN_17_U_Z2_1881 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_11_U_Z2_1883 : STD_LOGIC; 
  signal Z_24_OBUF_0 : STD_LOGIC; 
  signal U1_ShiftPos_2_21_1885 : STD_LOGIC; 
  signal U1_U2_Mmux_Y123 : STD_LOGIC; 
  signal U1_U5_GEN_17_U_Z1 : STD_LOGIC; 
  signal U1_U2_Mmux_Y101_1888 : STD_LOGIC; 
  signal Z_25_OBUF_0 : STD_LOGIC; 
  signal Z_18_OBUF_1890 : STD_LOGIC; 
  signal U6_GEN_18_U_Z5_1891 : STD_LOGIC; 
  signal U6_GEN_18_U_Z : STD_LOGIC; 
  signal Z_26_OBUF_1893 : STD_LOGIC; 
  signal U1_ShiftPos_2_62 : STD_LOGIC; 
  signal Z_19_OBUF_1895 : STD_LOGIC; 
  signal U1_U5_GEN_21_U_Z11_1896 : STD_LOGIC; 
  signal MAN_4_IBUF_0 : STD_LOGIC; 
  signal MAN_0_IBUF_0 : STD_LOGIC; 
  signal Z_27_OBUF_0 : STD_LOGIC; 
  signal U6_GEN_22_U_Z : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal Z_28_OBUF_0 : STD_LOGIC; 
  signal U6_GEN_14_U_Z : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal Z_29_OBUF_0 : STD_LOGIC; 
  signal U6_GEN_14_U_Z2_1906 : STD_LOGIC; 
  signal U6_GEN_21_U_Z2_1907 : STD_LOGIC; 
  signal U1_U5_GEN_21_U_Z1 : STD_LOGIC; 
  signal U1_ShiftPos_2_mmx_out14_0 : STD_LOGIC; 
  signal U6_GEN_22_U_Z2_1910 : STD_LOGIC; 
  signal U1_U2_Mmux_Y211 : STD_LOGIC; 
  signal XEXP_6_IBUF_0 : STD_LOGIC; 
  signal U1_U3_C_9_bdd4 : STD_LOGIC; 
  signal U6_GEN_4_U_Z : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal Z_4_OBUF_1917 : STD_LOGIC; 
  signal U6_GEN_22_U_Z3_0 : STD_LOGIC; 
  signal U1_U2_Mmux_Y1722 : STD_LOGIC; 
  signal MAN_6_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_11_U_Z3_1921 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal Y_11_IBUF_0 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_11_U_Z2_0 : STD_LOGIC; 
  signal U1_U5_GEN_11_U_Z3 : STD_LOGIC; 
  signal Z_1_OBUF_1927 : STD_LOGIC; 
  signal U6_GEN_1_U_Z1_1928 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal U2_XNorm_YZero_AND_18_o1_1930 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_19_U_Z3_1933 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_19_U_Z1_1935 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_30_U_Z31 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT1 : STD_LOGIC; 
  signal Z_9_OBUF_1939 : STD_LOGIC; 
  signal U6_GEN_9_U_Z2_1940 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal Y_9_IBUF_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT12_1943 : STD_LOGIC; 
  signal U6_GEN_9_U_Z1_1944 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT3 : STD_LOGIC; 
  signal U6_GEN_3_U_Z1_1946 : STD_LOGIC; 
  signal U1_U3_C_9_bdd8 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT3112 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT312 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT22_0 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT2_0 : STD_LOGIC; 
  signal U6_GEN_16_U_Z : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_Z1 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_Z12 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_Z3_0 : STD_LOGIC; 
  signal Z_6_OBUF_1960 : STD_LOGIC; 
  signal Z_5_OBUF_1961 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_21_U_Z1_1964 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_13_U_Z1_1966 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal Z_3_OBUF_1968 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal U1_U2_Mmux_Y171 : STD_LOGIC; 
  signal U6_GEN_29_U_Z : STD_LOGIC; 
  signal U1_U2_Mmux_Y1262_1972 : STD_LOGIC; 
  signal Y_10_IBUF_0 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal Z_7_OBUF_1975 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal Z_0_OBUF_1978 : STD_LOGIC; 
  signal U6_GEN_0_U_Z2_1979 : STD_LOGIC; 
  signal U6_GEN_26_U_Z : STD_LOGIC; 
  signal X_26_IBUF_0 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_8_U_Z : STD_LOGIC; 
  signal Y_8_IBUF_0 : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_8_U_Z1_1986 : STD_LOGIC; 
  signal U6_GEN_18_U_Z3_1987 : STD_LOGIC; 
  signal U6_GEN_28_U_Z2 : STD_LOGIC; 
  signal U6_GEN_26_U_Z11 : STD_LOGIC; 
  signal U6_GEN_26_U_Z2_0 : STD_LOGIC; 
  signal Z_8_OBUF_1991 : STD_LOGIC; 
  signal U6_GEN_30_U_Z4 : STD_LOGIC; 
  signal X_25_IBUF_0 : STD_LOGIC; 
  signal X_30_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_30_U_Z7 : STD_LOGIC; 
  signal X_27_IBUF_0 : STD_LOGIC; 
  signal X_24_IBUF_0 : STD_LOGIC; 
  signal U6_GEN_27_U_Z3 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal U6_GEN_29_U_Z2_2001 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal U6_GEN_25_U_Z3 : STD_LOGIC; 
  signal U6_GEN_4_U_Z1_2004 : STD_LOGIC; 
  signal U6_GEN_13_U_Z : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal U6_GEN_31_U_Z : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal U6_GEN_1_U_Z : STD_LOGIC; 
  signal U6_GEN_11_U_Z : STD_LOGIC; 
  signal U6_GEN_2_U_Z1_2012 : STD_LOGIC; 
  signal U6_GEN_21_U_Z : STD_LOGIC; 
  signal U6_GEN_14_U_Z1_2014 : STD_LOGIC; 
  signal U6_GEN_22_U_Z4_2015 : STD_LOGIC; 
  signal U6_GEN_12_U_Z2_2016 : STD_LOGIC; 
  signal U6_GEN_20_U_Z1_2017 : STD_LOGIC; 
  signal U6_GEN_0_U_Z1_2018 : STD_LOGIC; 
  signal U6_GEN_6_U_Z : STD_LOGIC; 
  signal U6_GEN_6_U_Z1_2020 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT26_2021 : STD_LOGIC; 
  signal U6_GEN_17_U_Z1_2022 : STD_LOGIC; 
  signal U6_GEN_19_U_Z2_2023 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal U6_GEN_19_U_Z : STD_LOGIC; 
  signal U6_GEN_17_U_Z : STD_LOGIC; 
  signal U6_GEN_8_U_Z2_2027 : STD_LOGIC; 
  signal U6_GEN_9_U_Z : STD_LOGIC; 
  signal U6_GEN_16_U_Z1_2029 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U6_GEN_18_U_Z2_2031 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT25 : STD_LOGIC; 
  signal U6_GEN_18_U_Z4_2033 : STD_LOGIC; 
  signal U1_ShiftPos_2_mmx_out10 : STD_LOGIC; 
  signal U6_GEN_15_U_Z3_2035 : STD_LOGIC; 
  signal U6_GEN_3_U_Z : STD_LOGIC; 
  signal U6_GEN_18_U_Z1_2037 : STD_LOGIC; 
  signal U6_GEN_22_U_Z1_2038 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT11_2039 : STD_LOGIC; 
  signal YCASE_0_IBUF_1 : STD_LOGIC; 
  signal Y_12_IBUF_4 : STD_LOGIC; 
  signal Y_20_IBUF_7 : STD_LOGIC; 
  signal X_28_IBUF_10 : STD_LOGIC; 
  signal YCASE_1_IBUF_13 : STD_LOGIC; 
  signal Y_13_IBUF_16 : STD_LOGIC; 
  signal Y_21_IBUF_19 : STD_LOGIC; 
  signal X_29_IBUF_22 : STD_LOGIC; 
  signal YCASE_2_IBUF_25 : STD_LOGIC; 
  signal Y_14_IBUF_28 : STD_LOGIC; 
  signal Y_22_IBUF_31 : STD_LOGIC; 
  signal Y_30_IBUF_34 : STD_LOGIC; 
  signal Y_15_IBUF_37 : STD_LOGIC; 
  signal Y_23_IBUF_40 : STD_LOGIC; 
  signal Y_31_IBUF_43 : STD_LOGIC; 
  signal Y_16_IBUF_46 : STD_LOGIC; 
  signal Y_24_IBUF_49 : STD_LOGIC; 
  signal Y_17_IBUF_52 : STD_LOGIC; 
  signal Y_25_IBUF_55 : STD_LOGIC; 
  signal Y_18_IBUF_60 : STD_LOGIC; 
  signal Y_26_IBUF_63 : STD_LOGIC; 
  signal Y_19_IBUF_68 : STD_LOGIC; 
  signal Y_27_IBUF_71 : STD_LOGIC; 
  signal Y_28_IBUF_78 : STD_LOGIC; 
  signal Y_29_IBUF_85 : STD_LOGIC; 
  signal XSIGN_IBUF_88 : STD_LOGIC; 
  signal XEXP_INCR_IBUF_111 : STD_LOGIC; 
  signal MAN_0_IBUF_126 : STD_LOGIC; 
  signal MAN_1_IBUF_129 : STD_LOGIC; 
  signal XEXP_0_IBUF_132 : STD_LOGIC; 
  signal MAN_2_IBUF_135 : STD_LOGIC; 
  signal XEXP_1_IBUF_138 : STD_LOGIC; 
  signal MAN_3_IBUF_141 : STD_LOGIC; 
  signal XEXP_2_IBUF_144 : STD_LOGIC; 
  signal MAN_4_IBUF_147 : STD_LOGIC; 
  signal XEXP_3_IBUF_150 : STD_LOGIC; 
  signal MAN_5_IBUF_153 : STD_LOGIC; 
  signal X_0_IBUF_156 : STD_LOGIC; 
  signal XEXP_4_IBUF_159 : STD_LOGIC; 
  signal MAN_6_IBUF_162 : STD_LOGIC; 
  signal X_1_IBUF_165 : STD_LOGIC; 
  signal XEXP_5_IBUF_168 : STD_LOGIC; 
  signal MAN_7_IBUF_171 : STD_LOGIC; 
  signal X_2_IBUF_174 : STD_LOGIC; 
  signal XEXP_6_IBUF_177 : STD_LOGIC; 
  signal MAN_8_IBUF_180 : STD_LOGIC; 
  signal X_3_IBUF_183 : STD_LOGIC; 
  signal XEXP_7_IBUF_186 : STD_LOGIC; 
  signal MAN_9_IBUF_189 : STD_LOGIC; 
  signal Y_0_IBUF_192 : STD_LOGIC; 
  signal X_4_IBUF_195 : STD_LOGIC; 
  signal MAN_10_IBUF_198 : STD_LOGIC; 
  signal Y_1_IBUF_201 : STD_LOGIC; 
  signal X_5_IBUF_204 : STD_LOGIC; 
  signal MAN_11_IBUF_207 : STD_LOGIC; 
  signal Y_2_IBUF_210 : STD_LOGIC; 
  signal X_6_IBUF_213 : STD_LOGIC; 
  signal MAN_12_IBUF_216 : STD_LOGIC; 
  signal MAN_20_IBUF_219 : STD_LOGIC; 
  signal Y_3_IBUF_222 : STD_LOGIC; 
  signal X_7_IBUF_225 : STD_LOGIC; 
  signal MAN_13_IBUF_228 : STD_LOGIC; 
  signal MAN_21_IBUF_231 : STD_LOGIC; 
  signal Y_4_IBUF_236 : STD_LOGIC; 
  signal X_8_IBUF_239 : STD_LOGIC; 
  signal MAN_14_IBUF_242 : STD_LOGIC; 
  signal MAN_22_IBUF_245 : STD_LOGIC; 
  signal Y_5_IBUF_250 : STD_LOGIC; 
  signal X_9_IBUF_253 : STD_LOGIC; 
  signal MAN_15_IBUF_256 : STD_LOGIC; 
  signal MAN_23_IBUF_259 : STD_LOGIC; 
  signal SPECIAL_IBUF_264 : STD_LOGIC; 
  signal Y_6_IBUF_267 : STD_LOGIC; 
  signal MAN_16_IBUF_270 : STD_LOGIC; 
  signal XCASE_0_IBUF_275 : STD_LOGIC; 
  signal Y_7_IBUF_278 : STD_LOGIC; 
  signal MAN_17_IBUF_281 : STD_LOGIC; 
  signal XCASE_1_IBUF_286 : STD_LOGIC; 
  signal Y_8_IBUF_289 : STD_LOGIC; 
  signal MAN_18_IBUF_292 : STD_LOGIC; 
  signal XCASE_2_IBUF_297 : STD_LOGIC; 
  signal Y_9_IBUF_300 : STD_LOGIC; 
  signal MAN_19_IBUF_303 : STD_LOGIC; 
  signal X_10_IBUF_308 : STD_LOGIC; 
  signal X_11_IBUF_313 : STD_LOGIC; 
  signal X_12_IBUF_318 : STD_LOGIC; 
  signal X_20_IBUF_321 : STD_LOGIC; 
  signal X_13_IBUF_326 : STD_LOGIC; 
  signal X_21_IBUF_329 : STD_LOGIC; 
  signal X_14_IBUF_332 : STD_LOGIC; 
  signal X_22_IBUF_335 : STD_LOGIC; 
  signal X_30_IBUF_338 : STD_LOGIC; 
  signal X_15_IBUF_341 : STD_LOGIC; 
  signal X_23_IBUF_344 : STD_LOGIC; 
  signal X_31_IBUF_347 : STD_LOGIC; 
  signal X_16_IBUF_350 : STD_LOGIC; 
  signal X_24_IBUF_353 : STD_LOGIC; 
  signal X_17_IBUF_356 : STD_LOGIC; 
  signal X_25_IBUF_359 : STD_LOGIC; 
  signal Y_10_IBUF_362 : STD_LOGIC; 
  signal X_18_IBUF_365 : STD_LOGIC; 
  signal X_26_IBUF_368 : STD_LOGIC; 
  signal Y_11_IBUF_371 : STD_LOGIC; 
  signal X_19_IBUF_374 : STD_LOGIC; 
  signal X_27_IBUF_377 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal Z_27_OBUF_379 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal Z_30_OBUF_402 : STD_LOGIC; 
  signal U6_GEN_26_U_Z2 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal Z_24_OBUF_478 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT2 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal Z_28_OBUF_501 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal Z_29_OBUF_525 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal Z_25_OBUF_578 : STD_LOGIC; 
  signal Z_31_OBUF_690 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal U1_ShiftPos_2_mmx_out14 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal U1_U2_Mmux_Y172 : STD_LOGIC; 
  signal U6_GEN_22_U_Z3_986 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT27_1063 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal U1_U5_GEN_11_U_Z2 : STD_LOGIC; 
  signal N6_pack_6 : STD_LOGIC; 
  signal U1_U1_Mmux_SHIFT22 : STD_LOGIC; 
  signal U6_GEN_16_U_Z2_1348 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U6_GEN_12_U_Z1_1353 : STD_LOGIC; 
  signal U6_GEN_18_U_Z1_pack_3 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal U1_U5_GEN_22_U_Z3 : STD_LOGIC; 
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
  signal U1_ShiftPos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_n0007 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
begin
  YCASE_0_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_0_IBUF_1,
      I => YCASE(0)
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_0_IBUF_1,
      O => YCASE_0_IBUF_0
    );
  Y_12_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_12_IBUF_4,
      I => Y(12)
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_IBUF_4,
      O => Y_12_IBUF_0
    );
  Y_20_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_20_IBUF_7,
      I => Y(20)
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_IBUF_7,
      O => Y_20_IBUF_0
    );
  X_28_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_28_IBUF_10,
      I => X(28)
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_28_IBUF_10,
      O => X_28_IBUF_0
    );
  YCASE_1_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_1_IBUF_13,
      I => YCASE(1)
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_1_IBUF_13,
      O => YCASE_1_IBUF_0
    );
  Y_13_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_13_IBUF_16,
      I => Y(13)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_IBUF_16,
      O => Y_13_IBUF_0
    );
  Y_21_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_21_IBUF_19,
      I => Y(21)
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_IBUF_19,
      O => Y_21_IBUF_0
    );
  X_29_IBUF : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_29_IBUF_22,
      I => X(29)
    );
  ProtoComp1_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD341",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_29_IBUF_22,
      O => X_29_IBUF_0
    );
  YCASE_2_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => YCASE_2_IBUF_25,
      I => YCASE(2)
    );
  ProtoComp1_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => YCASE_2_IBUF_25,
      O => YCASE_2_IBUF_0
    );
  Y_14_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_14_IBUF_28,
      I => Y(14)
    );
  ProtoComp1_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_IBUF_28,
      O => Y_14_IBUF_0
    );
  Y_22_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_22_IBUF_31,
      I => Y(22)
    );
  ProtoComp1_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_IBUF_31,
      O => Y_22_IBUF_0
    );
  Y_30_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_30_IBUF_34,
      I => Y(30)
    );
  ProtoComp1_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_30_IBUF_34,
      O => Y_30_IBUF_0
    );
  Y_15_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_15_IBUF_37,
      I => Y(15)
    );
  ProtoComp1_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_IBUF_37,
      O => Y_15_IBUF_0
    );
  Y_23_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_23_IBUF_40,
      I => Y(23)
    );
  ProtoComp1_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_IBUF_40,
      O => Y_23_IBUF_0
    );
  Y_31_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_31_IBUF_43,
      I => Y(31)
    );
  ProtoComp1_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_31_IBUF_43,
      O => Y_31_IBUF_0
    );
  Y_16_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_16_IBUF_46,
      I => Y(16)
    );
  ProtoComp1_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_IBUF_46,
      O => Y_16_IBUF_0
    );
  Y_24_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_24_IBUF_49,
      I => Y(24)
    );
  ProtoComp1_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_24_IBUF_49,
      O => Y_24_IBUF_0
    );
  Y_17_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_17_IBUF_52,
      I => Y(17)
    );
  ProtoComp1_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_IBUF_52,
      O => Y_17_IBUF_0
    );
  Y_25_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_25_IBUF_55,
      I => Y(25)
    );
  ProtoComp1_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_25_IBUF_55,
      O => Y_25_IBUF_0
    );
  Z_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD348"
    )
    port map (
      I => NlwBufferSignal_Z_10_OBUF_I,
      O => Z(10)
    );
  Y_18_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_18_IBUF_60,
      I => Y(18)
    );
  ProtoComp1_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_IBUF_60,
      O => Y_18_IBUF_0
    );
  Y_26_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_26_IBUF_63,
      I => Y(26)
    );
  ProtoComp1_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_26_IBUF_63,
      O => Y_26_IBUF_0
    );
  Z_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD351"
    )
    port map (
      I => NlwBufferSignal_Z_11_OBUF_I,
      O => Z(11)
    );
  Y_19_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_19_IBUF_68,
      I => Y(19)
    );
  ProtoComp1_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_IBUF_68,
      O => Y_19_IBUF_0
    );
  Y_27_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_27_IBUF_71,
      I => Y(27)
    );
  ProtoComp1_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_27_IBUF_71,
      O => Y_27_IBUF_0
    );
  Z_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD350"
    )
    port map (
      I => NlwBufferSignal_Z_12_OBUF_I,
      O => Z(12)
    );
  Z_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD360"
    )
    port map (
      I => NlwBufferSignal_Z_20_OBUF_I,
      O => Z(20)
    );
  Y_28_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_28_IBUF_78,
      I => Y(28)
    );
  ProtoComp1_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_28_IBUF_78,
      O => Y_28_IBUF_0
    );
  Z_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD353"
    )
    port map (
      I => NlwBufferSignal_Z_13_OBUF_I,
      O => Z(13)
    );
  Z_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD361"
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
      O => Y_29_IBUF_85,
      I => Y(29)
    );
  ProtoComp1_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_29_IBUF_85,
      O => Y_29_IBUF_0
    );
  XSIGN_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => XSIGN_IBUF_88,
      I => XSIGN
    );
  ProtoComp1_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => XSIGN_IBUF_88,
      O => XSIGN_IBUF_0
    );
  Z_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD352"
    )
    port map (
      I => NlwBufferSignal_Z_14_OBUF_I,
      O => Z(14)
    );
  Z_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD362"
    )
    port map (
      I => NlwBufferSignal_Z_22_OBUF_I,
      O => Z(22)
    );
  Z_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD370"
    )
    port map (
      I => NlwBufferSignal_Z_30_OBUF_I,
      O => Z(30)
    );
  Z_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD355"
    )
    port map (
      I => NlwBufferSignal_Z_15_OBUF_I,
      O => Z(15)
    );
  Z_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD363"
    )
    port map (
      I => NlwBufferSignal_Z_23_OBUF_I,
      O => Z(23)
    );
  Z_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD373"
    )
    port map (
      I => NlwBufferSignal_Z_31_OBUF_I,
      O => Z(31)
    );
  Z_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD354"
    )
    port map (
      I => NlwBufferSignal_Z_16_OBUF_I,
      O => Z(16)
    );
  Z_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD364"
    )
    port map (
      I => NlwBufferSignal_Z_24_OBUF_I,
      O => Z(24)
    );
  Z_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD357"
    )
    port map (
      I => NlwBufferSignal_Z_17_OBUF_I,
      O => Z(17)
    );
  Z_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD365"
    )
    port map (
      I => NlwBufferSignal_Z_25_OBUF_I,
      O => Z(25)
    );
  XEXP_INCR_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_INCR_IBUF_111,
      I => XEXP_INCR
    );
  ProtoComp1_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_INCR_IBUF_111,
      O => XEXP_INCR_IBUF_0
    );
  Z_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD358"
    )
    port map (
      I => NlwBufferSignal_Z_18_OBUF_I,
      O => Z(18)
    );
  Z_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD366"
    )
    port map (
      I => NlwBufferSignal_Z_26_OBUF_I,
      O => Z(26)
    );
  Z_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD359"
    )
    port map (
      I => NlwBufferSignal_Z_19_OBUF_I,
      O => Z(19)
    );
  Z_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD367"
    )
    port map (
      I => NlwBufferSignal_Z_27_OBUF_I,
      O => Z(27)
    );
  Z_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD368"
    )
    port map (
      I => NlwBufferSignal_Z_28_OBUF_I,
      O => Z(28)
    );
  Z_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD369"
    )
    port map (
      I => NlwBufferSignal_Z_29_OBUF_I,
      O => Z(29)
    );
  MAN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_0_IBUF_126,
      I => MAN(0)
    );
  ProtoComp1_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_0_IBUF_126,
      O => MAN_0_IBUF_0
    );
  MAN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_1_IBUF_129,
      I => MAN(1)
    );
  ProtoComp1_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_1_IBUF_129,
      O => MAN_1_IBUF_0
    );
  XEXP_0_IBUF : X_BUF
    generic map(
      LOC => "PAD374",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_0_IBUF_132,
      I => XEXP(0)
    );
  ProtoComp1_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD374",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_0_IBUF_132,
      O => XEXP_0_IBUF_0
    );
  MAN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_2_IBUF_135,
      I => MAN(2)
    );
  ProtoComp1_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_2_IBUF_135,
      O => MAN_2_IBUF_0
    );
  XEXP_1_IBUF : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_1_IBUF_138,
      I => XEXP(1)
    );
  ProtoComp1_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD375",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_1_IBUF_138,
      O => XEXP_1_IBUF_0
    );
  MAN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_3_IBUF_141,
      I => MAN(3)
    );
  ProtoComp1_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_3_IBUF_141,
      O => MAN_3_IBUF_0
    );
  XEXP_2_IBUF : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_2_IBUF_144,
      I => XEXP(2)
    );
  ProtoComp1_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD376",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_2_IBUF_144,
      O => XEXP_2_IBUF_0
    );
  MAN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_4_IBUF_147,
      I => MAN(4)
    );
  ProtoComp1_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_4_IBUF_147,
      O => MAN_4_IBUF_0
    );
  XEXP_3_IBUF : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_3_IBUF_150,
      I => XEXP(3)
    );
  ProtoComp1_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD381",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_3_IBUF_150,
      O => XEXP_3_IBUF_0
    );
  MAN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_5_IBUF_153,
      I => MAN(5)
    );
  ProtoComp1_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_5_IBUF_153,
      O => MAN_5_IBUF_0
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_156,
      I => X(0)
    );
  ProtoComp1_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_156,
      O => X_0_IBUF_0
    );
  XEXP_4_IBUF : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_4_IBUF_159,
      I => XEXP(4)
    );
  ProtoComp1_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD378",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_4_IBUF_159,
      O => XEXP_4_IBUF_0
    );
  MAN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_6_IBUF_162,
      I => MAN(6)
    );
  ProtoComp1_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_6_IBUF_162,
      O => MAN_6_IBUF_0
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_165,
      I => X(1)
    );
  ProtoComp1_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_165,
      O => X_1_IBUF_0
    );
  XEXP_5_IBUF : X_BUF
    generic map(
      LOC => "PAD379",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_5_IBUF_168,
      I => XEXP(5)
    );
  ProtoComp1_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD379",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_5_IBUF_168,
      O => XEXP_5_IBUF_0
    );
  MAN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_7_IBUF_171,
      I => MAN(7)
    );
  ProtoComp1_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_7_IBUF_171,
      O => MAN_7_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_174,
      I => X(2)
    );
  ProtoComp1_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_174,
      O => X_2_IBUF_0
    );
  XEXP_6_IBUF : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_6_IBUF_177,
      I => XEXP(6)
    );
  ProtoComp1_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD377",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_6_IBUF_177,
      O => XEXP_6_IBUF_0
    );
  MAN_8_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_8_IBUF_180,
      I => MAN(8)
    );
  ProtoComp1_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_8_IBUF_180,
      O => MAN_8_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_183,
      I => X(3)
    );
  ProtoComp1_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_183,
      O => X_3_IBUF_0
    );
  XEXP_7_IBUF : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 202 ps
    )
    port map (
      O => XEXP_7_IBUF_186,
      I => XEXP(7)
    );
  ProtoComp1_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD380",
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_7_IBUF_186,
      O => XEXP_7_IBUF_0
    );
  MAN_9_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_9_IBUF_189,
      I => MAN(9)
    );
  ProtoComp1_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_9_IBUF_189,
      O => MAN_9_IBUF_0
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
  ProtoComp1_IMUX_49 : X_BUF
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
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_195,
      I => X(4)
    );
  ProtoComp1_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_195,
      O => X_4_IBUF_0
    );
  MAN_10_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_10_IBUF_198,
      I => MAN(10)
    );
  ProtoComp1_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_10_IBUF_198,
      O => MAN_10_IBUF_0
    );
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_201,
      I => Y(1)
    );
  ProtoComp1_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_201,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_204,
      I => X(5)
    );
  ProtoComp1_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_204,
      O => X_5_IBUF_0
    );
  MAN_11_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_11_IBUF_207,
      I => MAN(11)
    );
  ProtoComp1_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_11_IBUF_207,
      O => MAN_11_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_210,
      I => Y(2)
    );
  ProtoComp1_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_210,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_213,
      I => X(6)
    );
  ProtoComp1_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_213,
      O => X_6_IBUF_0
    );
  MAN_12_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_12_IBUF_216,
      I => MAN(12)
    );
  ProtoComp1_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_12_IBUF_216,
      O => MAN_12_IBUF_0
    );
  MAN_20_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_20_IBUF_219,
      I => MAN(20)
    );
  ProtoComp1_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_20_IBUF_219,
      O => MAN_20_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_222,
      I => Y(3)
    );
  ProtoComp1_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_222,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_225,
      I => X(7)
    );
  ProtoComp1_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_225,
      O => X_7_IBUF_0
    );
  MAN_13_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_13_IBUF_228,
      I => MAN(13)
    );
  ProtoComp1_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_13_IBUF_228,
      O => MAN_13_IBUF_0
    );
  MAN_21_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_21_IBUF_231,
      I => MAN(21)
    );
  ProtoComp1_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_21_IBUF_231,
      O => MAN_21_IBUF_0
    );
  Z_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD337"
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
      O => Y_4_IBUF_236,
      I => Y(4)
    );
  ProtoComp1_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_236,
      O => Y_4_IBUF_0
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_239,
      I => X(8)
    );
  ProtoComp1_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_239,
      O => X_8_IBUF_0
    );
  MAN_14_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_14_IBUF_242,
      I => MAN(14)
    );
  ProtoComp1_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_14_IBUF_242,
      O => MAN_14_IBUF_0
    );
  MAN_22_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_22_IBUF_245,
      I => MAN(22)
    );
  ProtoComp1_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_22_IBUF_245,
      O => MAN_22_IBUF_0
    );
  Z_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD340"
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
      O => Y_5_IBUF_250,
      I => Y(5)
    );
  ProtoComp1_IMUX_67 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_250,
      O => Y_5_IBUF_0
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_253,
      I => X(9)
    );
  ProtoComp1_IMUX_68 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_253,
      O => X_9_IBUF_0
    );
  MAN_15_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_15_IBUF_256,
      I => MAN(15)
    );
  ProtoComp1_IMUX_69 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_15_IBUF_256,
      O => MAN_15_IBUF_0
    );
  MAN_23_IBUF : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_23_IBUF_259,
      I => MAN(23)
    );
  ProtoComp1_IMUX_70 : X_BUF
    generic map(
      LOC => "PAD204",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_23_IBUF_259,
      O => MAN_23_IBUF_0
    );
  Z_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD339"
    )
    port map (
      I => NlwBufferSignal_Z_2_OBUF_I,
      O => Z(2)
    );
  SPECIAL_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => SPECIAL_IBUF_264,
      I => SPECIAL
    );
  ProtoComp1_IMUX_71 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => SPECIAL_IBUF_264,
      O => SPECIAL_IBUF_0
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_267,
      I => Y(6)
    );
  ProtoComp1_IMUX_72 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_267,
      O => Y_6_IBUF_0
    );
  MAN_16_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_16_IBUF_270,
      I => MAN(16)
    );
  ProtoComp1_IMUX_73 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_16_IBUF_270,
      O => MAN_16_IBUF_0
    );
  Z_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD343"
    )
    port map (
      I => NlwBufferSignal_Z_3_OBUF_I,
      O => Z(3)
    );
  XCASE_0_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_0_IBUF_275,
      I => XCASE(0)
    );
  ProtoComp1_IMUX_74 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_0_IBUF_275,
      O => XCASE_0_IBUF_0
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_278,
      I => Y(7)
    );
  ProtoComp1_IMUX_75 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_278,
      O => Y_7_IBUF_0
    );
  MAN_17_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_17_IBUF_281,
      I => MAN(17)
    );
  ProtoComp1_IMUX_76 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_17_IBUF_281,
      O => MAN_17_IBUF_0
    );
  Z_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD342"
    )
    port map (
      I => NlwBufferSignal_Z_4_OBUF_I,
      O => Z(4)
    );
  XCASE_1_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_1_IBUF_286,
      I => XCASE(1)
    );
  ProtoComp1_IMUX_77 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_1_IBUF_286,
      O => XCASE_1_IBUF_0
    );
  Y_8_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_8_IBUF_289,
      I => Y(8)
    );
  ProtoComp1_IMUX_78 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_IBUF_289,
      O => Y_8_IBUF_0
    );
  MAN_18_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_18_IBUF_292,
      I => MAN(18)
    );
  ProtoComp1_IMUX_79 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_18_IBUF_292,
      O => MAN_18_IBUF_0
    );
  Z_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD345"
    )
    port map (
      I => NlwBufferSignal_Z_5_OBUF_I,
      O => Z(5)
    );
  XCASE_2_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => XCASE_2_IBUF_297,
      I => XCASE(2)
    );
  ProtoComp1_IMUX_80 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE_2_IBUF_297,
      O => XCASE_2_IBUF_0
    );
  Y_9_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_9_IBUF_300,
      I => Y(9)
    );
  ProtoComp1_IMUX_81 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_IBUF_300,
      O => Y_9_IBUF_0
    );
  MAN_19_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAN_19_IBUF_303,
      I => MAN(19)
    );
  ProtoComp1_IMUX_82 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAN_19_IBUF_303,
      O => MAN_19_IBUF_0
    );
  Z_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD344"
    )
    port map (
      I => NlwBufferSignal_Z_6_OBUF_I,
      O => Z(6)
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_308,
      I => X(10)
    );
  ProtoComp1_IMUX_83 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_308,
      O => X_10_IBUF_0
    );
  Z_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD347"
    )
    port map (
      I => NlwBufferSignal_Z_7_OBUF_I,
      O => Z(7)
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_313,
      I => X(11)
    );
  ProtoComp1_IMUX_84 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_313,
      O => X_11_IBUF_0
    );
  Z_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD346"
    )
    port map (
      I => NlwBufferSignal_Z_8_OBUF_I,
      O => Z(8)
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_318,
      I => X(12)
    );
  ProtoComp1_IMUX_85 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_318,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_321,
      I => X(20)
    );
  ProtoComp1_IMUX_86 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_321,
      O => X_20_IBUF_0
    );
  Z_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD349"
    )
    port map (
      I => NlwBufferSignal_Z_9_OBUF_I,
      O => Z(9)
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_326,
      I => X(13)
    );
  ProtoComp1_IMUX_87 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_326,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_329,
      I => X(21)
    );
  ProtoComp1_IMUX_88 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_329,
      O => X_21_IBUF_0
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_332,
      I => X(14)
    );
  ProtoComp1_IMUX_89 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_332,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_335,
      I => X(22)
    );
  ProtoComp1_IMUX_90 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_335,
      O => X_22_IBUF_0
    );
  X_30_IBUF : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_30_IBUF_338,
      I => X(30)
    );
  ProtoComp1_IMUX_91 : X_BUF
    generic map(
      LOC => "PAD356",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_30_IBUF_338,
      O => X_30_IBUF_0
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_341,
      I => X(15)
    );
  ProtoComp1_IMUX_92 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_341,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_344,
      I => X(23)
    );
  ProtoComp1_IMUX_93 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_344,
      O => X_23_IBUF_0
    );
  X_31_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_31_IBUF_347,
      I => X(31)
    );
  ProtoComp1_IMUX_94 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_31_IBUF_347,
      O => X_31_IBUF_0
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_350,
      I => X(16)
    );
  ProtoComp1_IMUX_95 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_350,
      O => X_16_IBUF_0
    );
  X_24_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_24_IBUF_353,
      I => X(24)
    );
  ProtoComp1_IMUX_96 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_24_IBUF_353,
      O => X_24_IBUF_0
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_356,
      I => X(17)
    );
  ProtoComp1_IMUX_97 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_356,
      O => X_17_IBUF_0
    );
  X_25_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_25_IBUF_359,
      I => X(25)
    );
  ProtoComp1_IMUX_98 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_25_IBUF_359,
      O => X_25_IBUF_0
    );
  Y_10_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_10_IBUF_362,
      I => Y(10)
    );
  ProtoComp1_IMUX_99 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_IBUF_362,
      O => Y_10_IBUF_0
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_365,
      I => X(18)
    );
  ProtoComp1_IMUX_100 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_365,
      O => X_18_IBUF_0
    );
  X_26_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_26_IBUF_368,
      I => X(26)
    );
  ProtoComp1_IMUX_101 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_26_IBUF_368,
      O => X_26_IBUF_0
    );
  Y_11_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_11_IBUF_371,
      I => Y(11)
    );
  ProtoComp1_IMUX_102 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_IBUF_371,
      O => Y_11_IBUF_0
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_374,
      I => X(19)
    );
  ProtoComp1_IMUX_103 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_374,
      O => X_19_IBUF_0
    );
  X_27_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_27_IBUF_377,
      I => X(27)
    );
  ProtoComp1_IMUX_104 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_27_IBUF_377,
      O => X_27_IBUF_0
    );
  U6_GEN_27_U_Z3_U6_GEN_27_U_Z3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_27_OBUF_379,
      O => Z_27_OBUF_0
    );
  U6_GEN_27_U_Z5 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y100"
    )
    port map (
      IA => N44,
      IB => N45,
      O => Z_27_OBUF_379,
      SEL => SPECIAL_IBUF_0
    );
  U6_GEN_27_U_Z5_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y100",
      INIT => X"C300F000EBAAFAAA"
    )
    port map (
      ADR3 => XEXP_INCR_IBUF_0,
      ADR2 => XEXP_4_IBUF_0,
      ADR4 => XEXP_3_IBUF_0,
      ADR1 => U6_GEN_26_U_Z11,
      ADR5 => U1_n0007_8_0,
      ADR0 => U6_GEN_27_U_Z3,
      O => N44
    );
  U6_GEN_27_U_Z5_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y100",
      INIT => X"AAEAAAEAFAAAAAAA"
    )
    port map (
      ADR2 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR3 => YCASE_2_IBUF_0,
      ADR5 => XCASE_2_IBUF_0,
      ADR1 => X_27_IBUF_0,
      ADR4 => Y_27_IBUF_0,
      ADR0 => U6_GEN_30_U_Z31,
      O => N45
    );
  U6_GEN_27_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y100",
      INIT => X"1540015440155401"
    )
    port map (
      ADR3 => U1_ShiftPos(4),
      ADR5 => XEXP_4_IBUF_0,
      ADR4 => U1_ShiftPos(3),
      ADR2 => XEXP_3_IBUF_0,
      ADR1 => U1_U3_C_9_bdd8,
      ADR0 => XEXP_INCR_IBUF_0,
      O => U6_GEN_27_U_Z3
    );
  U6_GEN_30_U_Z7_U6_GEN_30_U_Z7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_30_OBUF_402,
      O => Z_30_OBUF_0
    );
  U6_GEN_30_U_Z6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y101"
    )
    port map (
      IA => N40,
      IB => N41,
      O => Z_30_OBUF_402,
      SEL => SPECIAL_IBUF_0
    );
  U6_GEN_30_U_Z6_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y101",
      INIT => X"FFCCA0A03F0CA0A0"
    )
    port map (
      ADR4 => XEXP_7_IBUF_0,
      ADR1 => XEXP_INCR_IBUF_0,
      ADR5 => U6_GEN_29_U_Z1_1847,
      ADR2 => XEXP_6_IBUF_0,
      ADR3 => U1_U3_C_9_bdd0,
      ADR0 => U6_GEN_30_U_Z7,
      O => N40
    );
  U6_GEN_30_U_Z6_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y101",
      INIT => X"FFFFAAFAFFFFAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => N18,
      ADR4 => U6_GEN_24_U_Z11,
      ADR5 => U6_GEN_30_U_Z7,
      ADR2 => XEXP_6_IBUF_0,
      ADR3 => XEXP_7_IBUF_0,
      O => N41
    );
  U6_GEN_30_U_Z71 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y101",
      INIT => X"0000080000000000"
    )
    port map (
      ADR3 => XEXP_4_IBUF_0,
      ADR0 => XEXP_5_IBUF_0,
      ADR2 => SPECIAL_IBUF_0,
      ADR5 => XEXP_3_IBUF_0,
      ADR1 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_26_U_Z11,
      O => U6_GEN_30_U_Z7
    );
  U6_GEN_30_U_Z3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y101",
      INIT => X"DCDCECCCCCCCECCC"
    )
    port map (
      ADR2 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR4 => YCASE_2_IBUF_0,
      ADR0 => XCASE_2_IBUF_0,
      ADR3 => X_30_IBUF_0,
      ADR5 => Y_30_IBUF_0,
      ADR1 => U6_GEN_30_U_Z31,
      O => N18
    );
  U6_GEN_29_U_Z1_U6_GEN_29_U_Z1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U6_GEN_26_U_Z2,
      O => U6_GEN_26_U_Z2_0
    );
  U6_GEN_29_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y102",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => XEXP_2_IBUF_0,
      ADR1 => XEXP_0_IBUF_0,
      ADR5 => XEXP_1_IBUF_0,
      ADR2 => XEXP_5_IBUF_0,
      ADR0 => XEXP_3_IBUF_0,
      ADR3 => XEXP_4_IBUF_0,
      O => U6_GEN_29_U_Z1_1847
    );
  U6_GEN_26_U_Z111 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y102",
      INIT => X"3FFF3FFF3FFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => XEXP_2_IBUF_0,
      ADR2 => XEXP_0_IBUF_0,
      ADR3 => XEXP_1_IBUF_0,
      ADR5 => '1',
      O => U6_GEN_26_U_Z11
    );
  U6_GEN_26_U_Z3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y102",
      INIT => X"2AAA8000"
    )
    port map (
      ADR0 => XEXP_INCR_IBUF_0,
      ADR4 => XEXP_3_IBUF_0,
      ADR1 => XEXP_2_IBUF_0,
      ADR2 => XEXP_0_IBUF_0,
      ADR3 => XEXP_1_IBUF_0,
      O => U6_GEN_26_U_Z2
    );
  U6_GEN_28_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y102",
      INIT => X"C0C06060C0C0C0C0"
    )
    port map (
      ADR3 => '1',
      ADR2 => XEXP_INCR_IBUF_0,
      ADR1 => XEXP_5_IBUF_0,
      ADR4 => U6_GEN_26_U_Z11,
      ADR5 => XEXP_4_IBUF_0,
      ADR0 => XEXP_3_IBUF_0,
      O => U6_GEN_28_U_Z2
    );
  U6_GEN_26_U_Z5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y100",
      INIT => X"0000000014411441"
    )
    port map (
      ADR4 => '1',
      ADR5 => U1_n0007_8_0,
      ADR0 => XEXP_INCR_IBUF_0,
      ADR1 => U1_ShiftPos(3),
      ADR3 => XEXP_3_IBUF_0,
      ADR2 => U1_U3_C_9_bdd8,
      O => N22
    );
  U6_GEN_26_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y100",
      INIT => X"FCCCFFFFFCCCFEEE"
    )
    port map (
      ADR4 => SPECIAL_IBUF_0,
      ADR0 => U6_GEN_26_U_Z2_0,
      ADR5 => N22,
      ADR1 => U6_GEN_30_U_Z4,
      ADR2 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR3 => U6_GEN_26_U_Z,
      O => Z_26_OBUF_1893
    );
  U1_U3_C_9_bdd0_U1_U3_C_9_bdd0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_n0007(8),
      O => U1_n0007_8_0
    );
  U1_U3_C_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y101",
      INIT => X"FFFAFFFAFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => XEXP_6_IBUF_0,
      ADR2 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      ADR5 => '1',
      O => U1_U3_C_9_bdd0
    );
  U1_U3_S_8_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y101",
      INIT => X"00000005"
    )
    port map (
      ADR1 => '1',
      ADR4 => XEXP_7_IBUF_0,
      ADR0 => XEXP_6_IBUF_0,
      ADR2 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      O => U1_n0007(8)
    );
  U1_U3_C_9_31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y101",
      INIT => X"CF0CCFCF0C0CCF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => XEXP_4_IBUF_0,
      ADR3 => U1_U3_C_9_bdd8,
      ADR4 => U1_ShiftPos(3),
      ADR5 => XEXP_3_IBUF_0,
      ADR2 => U1_ShiftPos(4),
      O => U1_U3_C_9_bdd4
    );
  Z_24_OBUF_Z_24_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_24_OBUF_478,
      O => Z_24_OBUF_0
    );
  U6_GEN_24_U_Z5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y97"
    )
    port map (
      IA => N38,
      IB => N39,
      O => Z_24_OBUF_478,
      SEL => SPECIAL_IBUF_0
    );
  U6_GEN_24_U_Z5_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y97",
      INIT => X"00F0F00005FAF906"
    )
    port map (
      ADR2 => XEXP_INCR_IBUF_0,
      ADR4 => XEXP_0_IBUF_0,
      ADR3 => XEXP_1_IBUF_0,
      ADR0 => U1_ShiftPos(1),
      ADR1 => U1_ShiftPos(0),
      ADR5 => U1_n0007_8_0,
      O => N38
    );
  U6_GEN_24_U_Z5_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y97",
      INIT => X"FFFAFFEEFFFAFFAA"
    )
    port map (
      ADR4 => U2_XNorm_YZero_AND_18_o,
      ADR2 => X_24_IBUF_0,
      ADR0 => U6_GEN_24_U_Z11,
      ADR3 => U6_GEN_30_U_Z31,
      ADR5 => Y_24_IBUF_0,
      ADR1 => U2_XZero_YNorm_AND_19_o,
      O => N39
    );
  U1_U3_C_9_51 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y98",
      INIT => X"BF3BFF3F23023303"
    )
    port map (
      ADR5 => XEXP_2_IBUF_0,
      ADR3 => XEXP_1_IBUF_0,
      ADR2 => U1_ShiftPos(1),
      ADR0 => XEXP_0_IBUF_0,
      ADR4 => U1_ShiftPos(0),
      ADR1 => U1_ShiftPos(2),
      O => U1_U3_C_9_bdd8
    );
  U6_GEN_30_U_Z4_U6_GEN_30_U_Z4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_28_OBUF_501,
      O => Z_28_OBUF_0
    );
  U6_GEN_30_U_Z4_U6_GEN_30_U_Z4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_Mmux_SHIFT2,
      O => U1_U1_Mmux_SHIFT2_0
    );
  U6_GEN_28_U_Z5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y100"
    )
    port map (
      IA => N46,
      IB => N47,
      O => Z_28_OBUF_501,
      SEL => SPECIAL_IBUF_0
    );
  U6_GEN_28_U_Z5_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y100",
      INIT => X"FFFFFFFFABAAAAAB"
    )
    port map (
      ADR1 => U1_n0007_8_0,
      ADR2 => XEXP_INCR_IBUF_0,
      ADR4 => XEXP_5_IBUF_0,
      ADR3 => U1_U3_C_9_bdd4,
      ADR5 => U6_GEN_28_U_Z2,
      ADR0 => U6_GEN_30_U_Z4,
      O => N46
    );
  U6_GEN_28_U_Z5_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y100",
      INIT => X"FF00FF88FFC0FF00"
    )
    port map (
      ADR1 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR4 => YCASE_2_IBUF_0,
      ADR5 => XCASE_2_IBUF_0,
      ADR0 => X_28_IBUF_0,
      ADR2 => Y_28_IBUF_0,
      ADR3 => U6_GEN_30_U_Z4,
      O => N47
    );
  U6_GEN_30_U_Z41 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y100",
      INIT => X"FF00F000FF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => SPECIAL_IBUF_0,
      ADR2 => U6_GEN_24_U_Z11,
      ADR4 => U6_GEN_30_U_Z31,
      ADR5 => '1',
      O => U6_GEN_30_U_Z4
    );
  U1_U1_Mmux_SHIFT21 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y100",
      INIT => X"EEEEEEEE"
    )
    port map (
      ADR1 => MAN_16_IBUF_0,
      ADR0 => MAN_17_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => U1_U1_Mmux_SHIFT2
    );
  U6_GEN_29_U_Z2_U6_GEN_29_U_Z2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_29_OBUF_525,
      O => Z_29_OBUF_0
    );
  U6_GEN_29_U_Z5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y101"
    )
    port map (
      IA => N34,
      IB => N35,
      O => Z_29_OBUF_525,
      SEL => XEXP_INCR_IBUF_0
    );
  U6_GEN_29_U_Z5_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y101",
      INIT => X"AAAAAAAAAAAAFAEB"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => XEXP_6_IBUF_0,
      ADR3 => XEXP_5_IBUF_0,
      ADR1 => U1_U3_C_9_bdd4,
      ADR4 => U1_n0007_8_0,
      ADR0 => U6_GEN_29_U_Z2_2001,
      O => N34
    );
  U6_GEN_29_U_Z5_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y101",
      INIT => X"FF00FF00FFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U6_GEN_29_U_Z2_2001,
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => U6_GEN_29_U_Z1_1847,
      ADR0 => XEXP_6_IBUF_0,
      O => N35
    );
  U6_GEN_29_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y101",
      INIT => X"AAAAA000EEEEECCC"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR2 => U6_GEN_29_U_Z,
      ADR4 => U6_GEN_30_U_Z31,
      ADR1 => U6_GEN_30_U_Z7,
      ADR5 => XEXP_6_IBUF_0,
      O => U6_GEN_29_U_Z2_2001
    );
  U6_GEN_29_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y92",
      INIT => X"3C0C3C0C30003000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => YCASE_2_IBUF_0,
      ADR1 => XCASE_2_IBUF_0,
      ADR5 => X_29_IBUF_0,
      ADR3 => Y_29_IBUF_0,
      O => U6_GEN_29_U_Z
    );
  U6_GEN_26_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y92",
      INIT => X"3000C0C030000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => SPECIAL_IBUF_0,
      ADR1 => XCASE_2_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      ADR5 => X_26_IBUF_0,
      ADR3 => Y_26_IBUF_0,
      O => U6_GEN_26_U_Z
    );
  U6_GEN_23_U_Z_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y98",
      INIT => X"CECECCCCFCCCCCCC"
    )
    port map (
      ADR4 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR2 => XCASE_2_IBUF_0,
      ADR5 => YCASE_2_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR1 => U6_GEN_30_U_Z31,
      O => N4
    );
  U6_GEN_23_U_Z : X_LUT6
    generic map(
      LOC => "SLICE_X17Y98",
      INIT => X"FF00FF0031313434"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR0 => U1_n0007_8_0,
      ADR2 => XEXP_INCR_IBUF_0,
      ADR1 => XEXP_0_IBUF_0,
      ADR4 => U1_ShiftPos(0),
      ADR3 => N4,
      O => Z_23_OBUF_1878
    );
  U1_U5_GEN_21_U_Z21 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y101",
      INIT => X"000000FF000000FE"
    )
    port map (
      ADR3 => U1_ShiftPos(3),
      ADR4 => U1_ShiftPos(4),
      ADR2 => XEXP_7_IBUF_0,
      ADR0 => XEXP_6_IBUF_0,
      ADR1 => XEXP_5_IBUF_0,
      ADR5 => U1_U3_C_9_bdd4,
      O => U1_U5_GEN_21_U_Z2
    );
  U6_GEN_30_U_Z31_U6_GEN_30_U_Z31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_25_OBUF_578,
      O => Z_25_OBUF_0
    );
  U6_GEN_25_U_Z5 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y97"
    )
    port map (
      IA => N42,
      IB => N43,
      O => Z_25_OBUF_578,
      SEL => SPECIAL_IBUF_0
    );
  U6_GEN_25_U_Z5_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y97",
      INIT => X"7700880077F088F0"
    )
    port map (
      ADR3 => XEXP_INCR_IBUF_0,
      ADR4 => XEXP_2_IBUF_0,
      ADR1 => XEXP_0_IBUF_0,
      ADR0 => XEXP_1_IBUF_0,
      ADR5 => U1_n0007_8_0,
      ADR2 => U6_GEN_25_U_Z3,
      O => N42
    );
  U6_GEN_25_U_Z5_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y97",
      INIT => X"FFFFFFFF2C200000"
    )
    port map (
      ADR4 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR2 => YCASE_2_IBUF_0,
      ADR1 => XCASE_2_IBUF_0,
      ADR3 => X_25_IBUF_0,
      ADR0 => Y_25_IBUF_0,
      ADR5 => U6_GEN_30_U_Z31,
      O => N43
    );
  U6_GEN_30_U_Z311 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y97",
      INIT => X"22230002F333F772"
    )
    port map (
      ADR1 => YCASE_2_IBUF_0,
      ADR4 => YCASE_1_IBUF_0,
      ADR0 => YCASE_0_IBUF_0,
      ADR2 => XCASE_0_IBUF_0,
      ADR3 => XCASE_1_IBUF_0,
      ADR5 => XCASE_2_IBUF_0,
      O => U6_GEN_30_U_Z31
    );
  U6_GEN_25_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y97",
      INIT => X"559599A9AA6A6656"
    )
    port map (
      ADR5 => U1_ShiftPos(2),
      ADR0 => XEXP_2_IBUF_0,
      ADR1 => U1_ShiftPos(1),
      ADR4 => XEXP_1_IBUF_0,
      ADR2 => U1_ShiftPos(0),
      ADR3 => XEXP_0_IBUF_0,
      O => U6_GEN_25_U_Z3
    );
  U6_GEN_4_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y78",
      INIT => X"FFFF0C0AFFFF0C00"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR3 => XEXP_INCR_IBUF_0,
      ADR1 => MAN_5_IBUF_0,
      ADR0 => U1_U5_GEN_12_U_Z1,
      ADR5 => U1_U5_GEN_21_U_Z2,
      ADR4 => U6_GEN_4_U_Z1_2004,
      O => Z_4_OBUF_1917
    );
  U6_GEN_4_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y78",
      INIT => X"AAAAAAAA00200020"
    )
    port map (
      ADR4 => '1',
      ADR0 => SPECIAL_IBUF_0,
      ADR5 => U2_XPInf_YNaN_OR_284_o,
      ADR2 => U6_GEN_4_U_Z,
      ADR1 => U2_XNInf_XZero_OR_292_o,
      ADR3 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_4_U_Z1_2004
    );
  U6_GEN_13_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"FEFCEECCFCFCCCCC"
    )
    port map (
      ADR1 => U6_GEN_30_U_Z2,
      ADR3 => U6_GEN_11_U_Z1_1835,
      ADR0 => U2_XNorm_YZero_AND_18_o,
      ADR5 => X_13_IBUF_0,
      ADR4 => U6_GEN_11_U_Z2_1883,
      ADR2 => Y_13_IBUF_0,
      O => U6_GEN_13_U_Z
    );
  U6_GEN_13_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"FFFFFFFF0A000E0C"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR3 => XEXP_INCR_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      ADR1 => U6_GEN_13_U_Z1_1966,
      ADR4 => U1_n0007_8_0,
      ADR5 => U6_GEN_13_U_Z,
      O => Z_13_OBUF_1857
    );
  U1_U5_GEN_21_U_Z12 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y81",
      INIT => X"50FF44FF50004400"
    )
    port map (
      ADR3 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(0),
      ADR1 => MAN_3_IBUF_0,
      ADR2 => MAN_2_IBUF_0,
      ADR5 => U1_U5_GEN_21_U_Z11_1896,
      O => U1_U5_GEN_21_U_Z1
    );
  U6_GEN_21_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y81",
      INIT => X"2C2C2C0020202000"
    )
    port map (
      ADR3 => XEXP_7_IBUF_0,
      ADR4 => U1_U3_C_9_bdd0,
      ADR2 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos(4),
      ADR5 => U1_U5_GEN_21_U_Z1,
      ADR0 => U1_ShiftPos_2_mmx_out14_0,
      O => U6_GEN_21_U_Z2_1907
    );
  U6_GEN_5_U_Z_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y82",
      INIT => X"FEFAFCF0FCF0FCF0"
    )
    port map (
      ADR2 => U6_GEN_30_U_Z2,
      ADR4 => U6_GEN_11_U_Z1_1835,
      ADR5 => U2_XNorm_YZero_AND_18_o,
      ADR0 => X_5_IBUF_0,
      ADR1 => Y_5_IBUF_0,
      ADR3 => U6_GEN_11_U_Z2_1883,
      O => N2
    );
  U6_GEN_5_U_Z : X_LUT6
    generic map(
      LOC => "SLICE_X24Y82",
      INIT => X"FF33FF00FF20FF20"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR4 => MAN_6_IBUF_0,
      ADR0 => U1_U5_GEN_21_U_Z2,
      ADR2 => U1_U5_GEN_21_U_Z1,
      ADR3 => N2,
      O => Z_5_OBUF_1961
    );
  U6_GEN_4_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y78",
      INIT => X"FFFFF5A0FFFFA0A0"
    )
    port map (
      ADR1 => '1',
      ADR4 => U6_GEN_24_U_Z11,
      ADR0 => U2_XNorm_YZero_AND_18_o,
      ADR5 => Y_4_IBUF_0,
      ADR3 => U2_XZero_YNorm_AND_19_o,
      ADR2 => X_4_IBUF_0,
      O => U6_GEN_4_U_Z
    );
  U6_GEN_13_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y80",
      INIT => X"0031002000310020"
    )
    port map (
      ADR5 => '1',
      ADR3 => U1_ShiftPos(4),
      ADR1 => XEXP_INCR_IBUF_0,
      ADR0 => U1_ShiftPos(3),
      ADR4 => U1_ShiftPos_2_mmx_out14_0,
      ADR2 => U1_U5_GEN_21_U_Z1,
      O => U6_GEN_13_U_Z1_1966
    );
  U6_GEN_10_U_Z7_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y81",
      INIT => X"A0A0A0A0F5E4A0A0"
    )
    port map (
      ADR0 => XEXP_INCR_IBUF_0,
      ADR5 => U1_ShiftPos(4),
      ADR4 => U6_GEN_10_U_Z4,
      ADR1 => U1_U3_C_9_bdd0,
      ADR3 => XEXP_7_IBUF_0,
      ADR2 => MAN_11_IBUF_0,
      O => N26
    );
  U6_GEN_10_U_Z7 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y81",
      INIT => X"FF55FF75AA00AA20"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      ADR2 => U6_GEN_10_U_Z,
      ADR4 => U2_XNInf_XZero_OR_292_o,
      ADR1 => U2_XPInf_XZero_OR_288_o,
      ADR5 => N26,
      O => Z_10_OBUF_1836
    );
  U6_GEN_30_U_Z2_U6_GEN_30_U_Z2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_31_OBUF_690,
      O => Z_31_OBUF_0
    );
  U6_GEN_30_U_Z21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"AA00AA00AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      ADR5 => '1',
      O => U6_GEN_30_U_Z2
    );
  U6_GEN_31_U_Z2 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"505050D8"
    )
    port map (
      ADR1 => U6_GEN_31_U_Z,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      ADR2 => XSIGN_IBUF_0,
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      O => Z_31_OBUF_690
    );
  U2_XPInf_YNaN_OR_284_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"7333501051005000"
    )
    port map (
      ADR1 => XCASE_2_IBUF_0,
      ADR5 => XCASE_0_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR2 => YCASE_1_IBUF_0,
      ADR4 => XCASE_1_IBUF_0,
      ADR3 => YCASE_0_IBUF_0,
      O => U2_XPInf_YNaN_OR_284_o
    );
  U6_GEN_31_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"FFFCFFCCCCFCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_XNInf_XZero_OR_292_o,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR4 => Y_31_IBUF_0,
      ADR2 => U2_XZero_YNorm_AND_19_o,
      ADR5 => X_31_IBUF_0,
      O => U6_GEN_31_U_Z
    );
  U6_GEN_7_U_Z_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y75",
      INIT => X"FFFFEAAAFFFFC000"
    )
    port map (
      ADR4 => U6_GEN_30_U_Z2,
      ADR3 => U6_GEN_11_U_Z1_1835,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR2 => X_7_IBUF_0,
      ADR0 => Y_7_IBUF_0,
      ADR5 => U6_GEN_11_U_Z2_1883,
      O => N01
    );
  U6_GEN_7_U_Z : X_LUT6
    generic map(
      LOC => "SLICE_X26Y75",
      INIT => X"FF0CFF0CFF0AFF00"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR1 => MAN_8_IBUF_0,
      ADR4 => U1_U5_GEN_21_U_Z2,
      ADR0 => U1_U5_GEN_15_U_Z3,
      ADR3 => N01,
      O => Z_7_OBUF_1975
    );
  U6_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y78",
      INIT => X"FFB8FFB8FF88FF88"
    )
    port map (
      ADR4 => '1',
      ADR3 => U6_GEN_24_U_Z11,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR2 => Y_2_IBUF_0,
      ADR5 => U2_XZero_YNorm_AND_19_o,
      ADR0 => X_2_IBUF_0,
      O => U6_GEN_2_U_Z
    );
  U6_GEN_10_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y81",
      INIT => X"EEEEFAFAEEEEAAAA"
    )
    port map (
      ADR3 => '1',
      ADR0 => U6_GEN_24_U_Z11,
      ADR4 => U2_XNorm_YZero_AND_18_o,
      ADR2 => Y_10_IBUF_0,
      ADR5 => U2_XZero_YNorm_AND_19_o,
      ADR1 => X_10_IBUF_0,
      O => U6_GEN_10_U_Z
    );
  U6_GEN_11_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y75",
      INIT => X"FFFFF8F0FFFF8800"
    )
    port map (
      ADR4 => U6_GEN_30_U_Z2,
      ADR0 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR1 => X_11_IBUF_0,
      ADR5 => U6_GEN_11_U_Z2_1883,
      ADR2 => Y_11_IBUF_0,
      O => U6_GEN_11_U_Z
    );
  U6_GEN_11_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y75",
      INIT => X"FFFFFFFF0000DC50"
    )
    port map (
      ADR4 => SPECIAL_IBUF_0,
      ADR1 => XEXP_INCR_IBUF_0,
      ADR3 => MAN_12_IBUF_0,
      ADR2 => U6_GEN_11_U_Z3_1921,
      ADR0 => U1_n0007_8_0,
      ADR5 => U6_GEN_11_U_Z,
      O => Z_11_OBUF_1841
    );
  U6_GEN_1_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y75",
      INIT => X"FFF8FFF0FF88FF00"
    )
    port map (
      ADR3 => U6_GEN_30_U_Z2,
      ADR4 => U6_GEN_11_U_Z1_1835,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR0 => X_1_IBUF_0,
      ADR2 => U6_GEN_11_U_Z2_1883,
      ADR5 => Y_1_IBUF_0,
      O => U6_GEN_1_U_Z
    );
  U6_GEN_1_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y75",
      INIT => X"FFFF00F8FFFF0088"
    )
    port map (
      ADR3 => SPECIAL_IBUF_0,
      ADR1 => U6_GEN_1_U_Z1_1928,
      ADR0 => U1_U5_GEN_21_U_Z2,
      ADR2 => MAN_2_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_1_U_Z,
      O => Z_1_OBUF_1927
    );
  U6_GEN_2_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y78",
      INIT => X"FFFF5540FFFF4040"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => U6_GEN_2_U_Z2_1838,
      ADR5 => U1_U5_GEN_21_U_Z2,
      ADR1 => MAN_3_IBUF_0,
      ADR2 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_2_U_Z1_2012,
      O => Z_2_OBUF_1837
    );
  U6_GEN_2_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y78",
      INIT => X"CCCFCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => SPECIAL_IBUF_0,
      ADR1 => U2_XPInf_YNaN_OR_284_o,
      ADR4 => U6_GEN_2_U_Z,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR3 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_2_U_Z1_2012
    );
  U6_GEN_21_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y81",
      INIT => X"FFFFEAAAFFFFC000"
    )
    port map (
      ADR4 => U6_GEN_30_U_Z2,
      ADR1 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR2 => X_21_IBUF_0,
      ADR0 => U6_GEN_11_U_Z2_1883,
      ADR5 => Y_21_IBUF_0,
      O => U6_GEN_21_U_Z
    );
  U6_GEN_21_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y81",
      INIT => X"FFFFFFFF50555044"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR3 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_21_U_Z2_1907,
      ADR1 => U6_GEN_21_U_Z1_1964,
      ADR2 => MAN_22_IBUF_0,
      ADR5 => U6_GEN_21_U_Z,
      O => Z_21_OBUF_1862
    );
  U1_ShiftPos_2_mmx_out14_U1_ShiftPos_2_mmx_out14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_ShiftPos_2_mmx_out14,
      O => U1_ShiftPos_2_mmx_out14_0
    );
  U1_ShiftPos_2_63 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y70"
    )
    port map (
      IA => N36,
      IB => N37,
      O => U1_ShiftPos_2_mmx_out14,
      SEL => U1_ShiftPos(1)
    );
  U1_ShiftPos_2_63_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y70",
      INIT => X"F3F3EE22C0C0EE22"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(0),
      ADR3 => MAN_9_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      ADR5 => MAN_12_IBUF_0,
      ADR0 => U1_ShiftPos_2_62,
      O => N36
    );
  U1_ShiftPos_2_63_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y70",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR3 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(2),
      ADR0 => MAN_10_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR2 => U1_ShiftPos_2_62,
      O => N37
    );
  U1_U5_GEN_11_U_Z31 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y71",
      INIT => X"F0AAF0AAFFCC00CC"
    )
    port map (
      ADR5 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR0 => MAN_2_IBUF_0,
      ADR2 => MAN_0_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR1 => MAN_3_IBUF_0,
      O => U1_U5_GEN_11_U_Z3
    );
  U1_U5_GEN_15_U_Z31 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y72",
      INIT => X"E4FFE455E4AAE400"
    )
    port map (
      ADR0 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(2),
      ADR4 => MAN_4_IBUF_0,
      ADR2 => MAN_0_IBUF_0,
      ADR1 => MAN_2_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      O => U1_U5_GEN_15_U_Z31_1755
    );
  U1_U2_Mmux_Y1722_U1_U2_Mmux_Y1722_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U2_Mmux_Y172,
      O => U1_U2_Mmux_Y172_0
    );
  U1_U2_Mmux_Y1724 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y74"
    )
    port map (
      IA => N28,
      IB => N29,
      O => U1_U2_Mmux_Y172,
      SEL => U1_ShiftPos(0)
    );
  U1_U2_Mmux_Y1724_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y74",
      INIT => X"00551B1BAAFF1B1B"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(2),
      ADR3 => MAN_10_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      ADR1 => MAN_12_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      O => N28
    );
  U1_U2_Mmux_Y1724_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y74",
      INIT => X"0A5F22220A5F7777"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(2),
      ADR3 => MAN_9_IBUF_0,
      ADR2 => MAN_5_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR5 => MAN_11_IBUF_0,
      O => N29
    );
  U1_U2_Mmux_Y17221 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y74",
      INIT => X"00FF00FF33332277"
    )
    port map (
      ADR2 => '1',
      ADR5 => MAN_23_IBUF_0,
      ADR1 => MAN_5_IBUF_0,
      ADR4 => MAN_22_IBUF_0,
      ADR0 => U1_U1_Mmux_SHIFT13_1768,
      ADR3 => MAN_6_IBUF_0,
      O => U1_U2_Mmux_Y1722
    );
  U6_GEN_20_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"00FC003033FC3330"
    )
    port map (
      ADR0 => '1',
      ADR1 => U1_ShiftPos(4),
      ADR2 => U6_GEN_20_U_Z2_1816,
      ADR3 => U1_ShiftPos(3),
      ADR5 => U1_U2_Mmux_Y172_0,
      ADR4 => U1_U5_GEN_12_U_Z1,
      O => U6_GEN_20_U_Z3_1815
    );
  U1_U5_GEN_12_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"00DDF0F00088F0F0"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(0),
      ADR5 => MAN_2_IBUF_0,
      ADR1 => MAN_1_IBUF_0,
      ADR2 => U1_U5_GEN_22_U_Z11,
      O => U1_U5_GEN_12_U_Z1
    );
  U6_GEN_2_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"0000115100000040"
    )
    port map (
      ADR4 => U1_ShiftPos(2),
      ADR0 => XEXP_INCR_IBUF_0,
      ADR1 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(0),
      ADR2 => MAN_0_IBUF_0,
      ADR5 => U1_U5_GEN_22_U_Z12,
      O => U6_GEN_2_U_Z2_1838
    );
  U1_U5_GEN_22_U_Z121 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"CFC0CFC0CFC0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => MAN_23_IBUF_0,
      ADR3 => MAN_1_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT13_1768,
      ADR5 => MAN_22_IBUF_0,
      ADR1 => MAN_2_IBUF_0,
      O => U1_U5_GEN_22_U_Z12
    );
  U6_GEN_22_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => X"FDFC3130DDCC1100"
    )
    port map (
      ADR1 => XEXP_INCR_IBUF_0,
      ADR2 => U1_U5_GEN_21_U_Z2,
      ADR5 => U6_GEN_22_U_Z2_1910,
      ADR3 => U6_GEN_22_U_Z3_0,
      ADR0 => U1_n0007_8_0,
      ADR4 => MAN_23_IBUF_0,
      O => U6_GEN_22_U_Z4_2015
    );
  U6_GEN_22_U_Z6 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => X"FFFF555DAAAA0008"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR4 => U2_XPInf_YNaN_OR_284_o,
      ADR1 => U6_GEN_22_U_Z,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR3 => U2_XPInf_XZero_OR_288_o,
      ADR5 => U6_GEN_22_U_Z4_2015,
      O => Z_22_OBUF_1872
    );
  U6_GEN_14_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => X"FFFFFFFF33101010"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR4 => XEXP_INCR_IBUF_0,
      ADR3 => MAN_15_IBUF_0,
      ADR2 => U6_GEN_14_U_Z2_1906,
      ADR0 => U1_n0007_8_0,
      ADR5 => U6_GEN_14_U_Z1_2014,
      O => Z_14_OBUF_1871
    );
  U6_GEN_14_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => X"F000F030F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => SPECIAL_IBUF_0,
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      ADR5 => U6_GEN_14_U_Z,
      ADR1 => U2_XNInf_XZero_OR_292_o,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_14_U_Z1_2014
    );
  U6_GEN_12_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y78",
      INIT => X"0000000005010001"
    )
    port map (
      ADR0 => U1_ShiftPos(4),
      ADR5 => XEXP_INCR_IBUF_0,
      ADR2 => U1_n0007_8_0,
      ADR3 => U1_ShiftPos(3),
      ADR1 => U1_U2_Mmux_Y172_0,
      ADR4 => U1_U5_GEN_12_U_Z1,
      O => U6_GEN_12_U_Z2_2016
    );
  U6_GEN_12_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y78",
      INIT => X"FFFFB3B3FFFFB3A0"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR5 => U6_GEN_12_U_Z2_2016,
      ADR3 => U6_GEN_12_U_Z1_0,
      ADR4 => U6_GEN_30_U_Z2,
      ADR2 => U6_GEN_12_U_Z,
      ADR0 => U6_GEN_11_U_Z1_1835,
      O => Z_12_OBUF_1833
    );
  U6_GEN_20_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y82",
      INIT => X"FFFF0000FFFFF022"
    )
    port map (
      ADR5 => SPECIAL_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR3 => XEXP_INCR_IBUF_0,
      ADR0 => U6_GEN_20_U_Z3_1815,
      ADR1 => U1_n0007_8_0,
      ADR4 => U6_GEN_20_U_Z1_2017,
      O => Z_20_OBUF_1825
    );
  U6_GEN_20_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y82",
      INIT => X"FF00FF3000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => SPECIAL_IBUF_0,
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      ADR2 => U6_GEN_20_U_Z,
      ADR1 => U2_XNInf_XZero_OR_292_o,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_20_U_Z1_2017
    );
  U6_GEN_0_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => X"FFFFFFFF55404040"
    )
    port map (
      ADR0 => SPECIAL_IBUF_0,
      ADR1 => U6_GEN_0_U_Z2_1979,
      ADR2 => U1_U5_GEN_21_U_Z2,
      ADR3 => MAN_1_IBUF_0,
      ADR4 => XEXP_INCR_IBUF_0,
      ADR5 => U6_GEN_0_U_Z1_2018,
      O => Z_0_OBUF_1978
    );
  U6_GEN_0_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => X"CCCC0400CCCC0400"
    )
    port map (
      ADR5 => '1',
      ADR1 => SPECIAL_IBUF_0,
      ADR4 => U2_XPInf_YNaN_OR_284_o,
      ADR3 => U6_GEN_0_U_Z,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR0 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_0_U_Z1_2018
    );
  U6_GEN_0_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"FFFCFFCCFF30FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => U6_GEN_24_U_Z11,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR2 => Y_0_IBUF_0,
      ADR4 => U2_XZero_YNorm_AND_19_o,
      ADR5 => X_0_IBUF_0,
      O => U6_GEN_0_U_Z
    );
  U2_XZero_YNorm_AND_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"0000000100000000"
    )
    port map (
      ADR1 => XCASE_2_IBUF_0,
      ADR5 => YCASE_2_IBUF_0,
      ADR0 => XCASE_1_IBUF_0,
      ADR4 => XCASE_0_IBUF_0,
      ADR2 => YCASE_1_IBUF_0,
      ADR3 => YCASE_0_IBUF_0,
      O => U2_XZero_YNorm_AND_19_o
    );
  U1_U2_Mmux_Y1231 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y70",
      INIT => X"000100CDFF01FFCD"
    )
    port map (
      ADR3 => U1_ShiftPos(2),
      ADR4 => MAN_15_IBUF_0,
      ADR1 => U1_ShiftPos(1),
      ADR2 => U1_ShiftPos(4),
      ADR0 => MAN_17_IBUF_0,
      ADR5 => U1_ShiftPos_2_62,
      O => U1_U2_Mmux_Y123
    );
  U1_ShiftPos_2_621 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y70",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => U1_ShiftPos(1),
      ADR2 => MAN_13_IBUF_0,
      ADR4 => MAN_11_IBUF_0,
      O => U1_ShiftPos_2_62
    );
  U6_GEN_11_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => X"0000000302000203"
    )
    port map (
      ADR2 => U1_ShiftPos(4),
      ADR1 => XEXP_INCR_IBUF_0,
      ADR3 => U1_ShiftPos(3),
      ADR4 => U1_U5_GEN_11_U_Z2_0,
      ADR0 => U1_U5_GEN_11_U_Z3,
      ADR5 => U1_ShiftPos(2),
      O => U6_GEN_11_U_Z3_1921
    );
  U1_U5_GEN_18_U_Z111 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => X"02020202FFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => MAN_1_IBUF_0,
      ADR2 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(1),
      ADR5 => U1_ShiftPos(4),
      O => U1_U5_GEN_18_U_Z11
    );
  U1_U5_GEN_15_U_Z33 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => X"FFFF0000FF03FC00"
    )
    port map (
      ADR0 => '1',
      ADR5 => MAN_23_IBUF_0,
      ADR3 => U1_U5_GEN_15_U_Z31_1755,
      ADR2 => U1_U1_Mmux_SHIFT13_1768,
      ADR1 => MAN_22_IBUF_0,
      ADR4 => U1_ShiftPos_2_14,
      O => U1_U5_GEN_15_U_Z3
    );
  U6_GEN_1_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => X"0000000000003022"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR5 => XEXP_INCR_IBUF_0,
      ADR4 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(0),
      ADR0 => MAN_1_IBUF_0,
      ADR2 => MAN_0_IBUF_0,
      O => U6_GEN_1_U_Z1_1928
    );
  U6_GEN_14_U_Z2_U6_GEN_14_U_Z2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U6_GEN_22_U_Z3_986,
      O => U6_GEN_22_U_Z3_0
    );
  U6_GEN_14_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"0054001000540010"
    )
    port map (
      ADR3 => U1_ShiftPos(4),
      ADR0 => XEXP_INCR_IBUF_0,
      ADR1 => U1_ShiftPos(3),
      ADR2 => U1_U5_GEN_22_U_Z3_0,
      ADR4 => U1_U5_GEN_22_U_Z1,
      ADR5 => '1',
      O => U6_GEN_14_U_Z2_1906
    );
  U6_GEN_22_U_Z4 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"33C000C0"
    )
    port map (
      ADR3 => U1_ShiftPos(4),
      ADR0 => '1',
      ADR1 => U1_ShiftPos(3),
      ADR2 => U1_U5_GEN_22_U_Z3_0,
      ADR4 => U1_U5_GEN_22_U_Z1,
      O => U6_GEN_22_U_Z3_986
    );
  U1_U5_GEN_22_U_Z13 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"CCCCCCCCFF0F000F"
    )
    port map (
      ADR0 => '1',
      ADR5 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(2),
      ADR4 => U1_U5_GEN_22_U_Z12,
      ADR2 => U1_U2_Mmux_Y1722,
      ADR1 => U1_U5_GEN_22_U_Z11,
      O => U1_U5_GEN_22_U_Z1
    );
  U1_U5_GEN_22_U_Z111 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"5050EEEE50504444"
    )
    port map (
      ADR3 => '1',
      ADR4 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(0),
      ADR5 => MAN_3_IBUF_0,
      ADR1 => MAN_4_IBUF_0,
      ADR2 => MAN_0_IBUF_0,
      O => U1_U5_GEN_22_U_Z11
    );
  U6_GEN_14_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y77",
      INIT => X"FFFFEEAAFFFF4400"
    )
    port map (
      ADR2 => '1',
      ADR4 => U6_GEN_24_U_Z11,
      ADR0 => U2_XNorm_YZero_AND_18_o,
      ADR3 => Y_14_IBUF_0,
      ADR1 => U2_XZero_YNorm_AND_19_o,
      ADR5 => X_14_IBUF_0,
      O => U6_GEN_14_U_Z
    );
  U6_GEN_6_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => X"FFFF00CCFFFF00A0"
    )
    port map (
      ADR3 => SPECIAL_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR0 => U1_U5_GEN_22_U_Z1,
      ADR2 => U1_U5_GEN_21_U_Z2,
      ADR4 => U6_GEN_6_U_Z1_2020,
      O => Z_6_OBUF_1960
    );
  U6_GEN_6_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => X"F0F00000F0F04040"
    )
    port map (
      ADR3 => '1',
      ADR2 => SPECIAL_IBUF_0,
      ADR4 => U2_XPInf_YNaN_OR_284_o,
      ADR1 => U6_GEN_6_U_Z,
      ADR0 => U2_XNInf_XZero_OR_292_o,
      ADR5 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_6_U_Z1_2020
    );
  U6_GEN_6_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => X"FFEEBBAAEEEEAAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => U6_GEN_24_U_Z11,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR5 => Y_6_IBUF_0,
      ADR3 => U2_XZero_YNorm_AND_19_o,
      ADR4 => X_6_IBUF_0,
      O => U6_GEN_6_U_Z
    );
  U1_U5_GEN_21_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => X"FA0AFA0ACFCFC0C0"
    )
    port map (
      ADR2 => U1_ShiftPos(0),
      ADR5 => U1_ShiftPos(2),
      ADR1 => MAN_4_IBUF_0,
      ADR3 => MAN_0_IBUF_0,
      ADR0 => MAN_1_IBUF_0,
      ADR4 => MAN_5_IBUF_0,
      O => U1_U5_GEN_21_U_Z11_1896
    );
  U6_GEN_22_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => X"FFE2FFC0FFE2FFC0"
    )
    port map (
      ADR5 => '1',
      ADR3 => U6_GEN_24_U_Z11,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR0 => Y_22_IBUF_0,
      ADR4 => U2_XZero_YNorm_AND_19_o,
      ADR2 => X_22_IBUF_0,
      O => U6_GEN_22_U_Z
    );
  U6_GEN_20_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => X"FFFFFAAAFFFF5000"
    )
    port map (
      ADR1 => '1',
      ADR4 => U6_GEN_24_U_Z11,
      ADR0 => U2_XNorm_YZero_AND_18_o,
      ADR2 => Y_20_IBUF_0,
      ADR3 => U2_XZero_YNorm_AND_19_o,
      ADR5 => X_20_IBUF_0,
      O => U6_GEN_20_U_Z
    );
  U6_GEN_0_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y84",
      INIT => X"0000000000001010"
    )
    port map (
      ADR3 => '1',
      ADR4 => XEXP_INCR_IBUF_0,
      ADR5 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(1),
      ADR1 => U1_ShiftPos(0),
      ADR2 => MAN_0_IBUF_0,
      O => U6_GEN_0_U_Z2_1979
    );
  U6_GEN_30_U_Z411 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"FFFFFFFFFFFEFFFC"
    )
    port map (
      ADR1 => YCASE_0_IBUF_0,
      ADR3 => XCASE_1_IBUF_0,
      ADR5 => XCASE_0_IBUF_0,
      ADR4 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR2 => YCASE_1_IBUF_0,
      O => U6_GEN_24_U_Z11
    );
  U1_U1_Mmux_SHIFT51_U1_U1_Mmux_SHIFT51_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_Mmux_SHIFT27_1063,
      O => U1_U1_Mmux_SHIFT27_0
    );
  U1_U1_Mmux_SHIFT512 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"0000010000000100"
    )
    port map (
      ADR1 => MAN_16_IBUF_0,
      ADR0 => MAN_17_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT511,
      ADR5 => '1',
      O => U1_U1_Mmux_SHIFT51
    );
  U1_U1_Mmux_SHIFT28 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => MAN_18_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      ADR3 => '1',
      O => U1_U1_Mmux_SHIFT27_1063
    );
  U1_U1_Mmux_SHIFT5111 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"0000000000030003"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => MAN_22_IBUF_0,
      ADR2 => MAN_21_IBUF_0,
      ADR1 => MAN_20_IBUF_0,
      ADR3 => MAN_23_IBUF_0,
      O => U1_U1_Mmux_SHIFT511
    );
  U1_U1_Mmux_SHIFT41 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"CCCCCCCCCCCCCCC8"
    )
    port map (
      ADR1 => U1_U1_Mmux_SHIFT51,
      ADR5 => MAN_12_IBUF_0,
      ADR2 => MAN_13_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      ADR4 => MAN_15_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT3112,
      O => U1_ShiftPos(3)
    );
  U1_ShiftPos_1_U1_ShiftPos_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U5_GEN_11_U_Z2,
      O => U1_U5_GEN_11_U_Z2_0
    );
  U1_U5_GEN_11_U_Z23 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y70"
    )
    port map (
      IA => N30,
      IB => N31,
      O => U1_U5_GEN_11_U_Z2,
      SEL => U1_ShiftPos(2)
    );
  U1_U5_GEN_11_U_Z23_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"018923AB45CD67EF"
    )
    port map (
      ADR1 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos(1),
      ADR2 => MAN_11_IBUF_0,
      ADR4 => MAN_9_IBUF_0,
      ADR5 => MAN_10_IBUF_0,
      ADR3 => MAN_8_IBUF_0,
      O => N30
    );
  U1_U5_GEN_11_U_Z23_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"0033FF33550F550F"
    )
    port map (
      ADR5 => U1_ShiftPos(0),
      ADR3 => U1_ShiftPos(1),
      ADR1 => MAN_6_IBUF_0,
      ADR4 => MAN_4_IBUF_0,
      ADR0 => MAN_5_IBUF_0,
      ADR2 => MAN_7_IBUF_0,
      O => N31
    );
  U1_U1_Mmux_SHIFT29 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"0303030203030300"
    )
    port map (
      ADR2 => MAN_22_IBUF_0,
      ADR1 => MAN_23_IBUF_0,
      ADR4 => MAN_20_IBUF_0,
      ADR3 => MAN_21_IBUF_0,
      ADR5 => U1_U1_Mmux_SHIFT26_2021,
      ADR0 => U1_U1_Mmux_SHIFT27_0,
      O => U1_ShiftPos(1)
    );
  U1_U1_Mmux_SHIFT27 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"F1F1F0F1F1F1F0F0"
    )
    port map (
      ADR0 => MAN_14_IBUF_0,
      ADR1 => MAN_15_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT22_0,
      ADR3 => MAN_10_IBUF_0,
      ADR5 => N8_0,
      ADR2 => U1_U1_Mmux_SHIFT2_0,
      O => U1_U1_Mmux_SHIFT26_2021
    );
  U6_GEN_19_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"1111000050FA50FA"
    )
    port map (
      ADR5 => U1_ShiftPos(4),
      ADR2 => U6_GEN_19_U_Z2_2023,
      ADR0 => U1_ShiftPos(3),
      ADR3 => U1_U5_GEN_11_U_Z2_0,
      ADR4 => U1_U5_GEN_11_U_Z3,
      ADR1 => U1_ShiftPos(2),
      O => U6_GEN_19_U_Z3_1933
    );
  U6_GEN_19_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"30302020FCFCFDFD"
    )
    port map (
      ADR3 => '1',
      ADR1 => MAN_23_IBUF_0,
      ADR2 => U6_GEN_19_U_Z1_1935,
      ADR4 => U1_U1_Mmux_SHIFT13_1768,
      ADR0 => MAN_22_IBUF_0,
      ADR5 => U1_U2_Mmux_Y1411,
      O => U6_GEN_19_U_Z2_2023
    );
  U6_GEN_17_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"000000AAF000F0AA"
    )
    port map (
      ADR1 => '1',
      ADR3 => U1_ShiftPos(0),
      ADR0 => U1_U5_GEN_18_U_Z11,
      ADR4 => U1_U2_Mmux_Y123,
      ADR2 => U1_U5_GEN_17_U_Z1,
      ADR5 => U1_U2_Mmux_Y101_1888,
      O => U6_GEN_17_U_Z1_2022
    );
  U6_GEN_17_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"30FC30B8303030B8"
    )
    port map (
      ADR1 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos(4),
      ADR4 => U1_ShiftPos(0),
      ADR0 => U1_ShiftPos_2_21_1885,
      ADR5 => U1_ShiftPos_2_141,
      ADR2 => U6_GEN_17_U_Z1_2022,
      O => U6_GEN_17_U_Z2_1881
    );
  U6_GEN_16_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y72",
      INIT => X"05F700F205070002"
    )
    port map (
      ADR2 => U1_ShiftPos(3),
      ADR3 => U1_ShiftPos(4),
      ADR0 => U1_ShiftPos(0),
      ADR1 => U1_U5_GEN_15_U_Z4,
      ADR4 => U6_GEN_16_U_Z2_0,
      ADR5 => U1_ShiftPos_2_mmx_out9,
      O => U6_GEN_16_U_Z3_1875
    );
  U1_ShiftPos_2_143 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y72",
      INIT => X"F0AAF0AAF0AAF0F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => MAN_23_IBUF_0,
      ADR0 => U1_ShiftPos_2_14,
      ADR4 => U1_U1_Mmux_SHIFT13_1768,
      ADR5 => MAN_22_IBUF_0,
      ADR2 => U1_ShiftPos_2_141,
      O => U1_ShiftPos_2_mmx_out9
    );
  U6_GEN_10_U_Z5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y73",
      INIT => X"0AAA5FFF08AA5DFF"
    )
    port map (
      ADR0 => U1_ShiftPos(1),
      ADR2 => MAN_23_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT13_1768,
      ADR5 => MAN_22_IBUF_0,
      ADR3 => MAN_0_IBUF_0,
      ADR4 => U1_U5_GEN_22_U_Z12,
      O => N24
    );
  U6_GEN_10_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y73",
      INIT => X"00CC00AA0FCC0FAA"
    )
    port map (
      ADR3 => U1_ShiftPos(3),
      ADR4 => U1_ShiftPos(0),
      ADR0 => U1_U2_Mmux_Y1262_1972,
      ADR1 => U1_ShiftPos_2_21_1885,
      ADR2 => U1_ShiftPos(2),
      ADR5 => N24,
      O => U6_GEN_10_U_Z4
    );
  U6_GEN_9_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y73",
      INIT => X"000000000C000A00"
    )
    port map (
      ADR2 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(3),
      ADR5 => U1_ShiftPos(1),
      ADR4 => U1_ShiftPos(0),
      ADR0 => MAN_1_IBUF_0,
      ADR1 => MAN_0_IBUF_0,
      O => U6_GEN_9_U_Z1_1944
    );
  U6_GEN_19_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y75",
      INIT => X"FFFFFFFFEAC0C0C0"
    )
    port map (
      ADR5 => U6_GEN_30_U_Z2,
      ADR4 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR0 => X_19_IBUF_0,
      ADR1 => U6_GEN_11_U_Z2_1883,
      ADR2 => Y_19_IBUF_0,
      O => U6_GEN_19_U_Z
    );
  U6_GEN_19_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y75",
      INIT => X"FF30FF30FF11FF00"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR2 => MAN_20_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_19_U_Z3_1933,
      ADR0 => U1_n0007_8_0,
      ADR3 => U6_GEN_19_U_Z,
      O => Z_19_OBUF_1895
    );
  U6_GEN_15_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y75",
      INIT => X"FAFACFC00A0ACFC0"
    )
    port map (
      ADR2 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(1),
      ADR1 => MAN_10_IBUF_0,
      ADR5 => MAN_8_IBUF_0,
      ADR0 => MAN_12_IBUF_0,
      ADR3 => MAN_14_IBUF_0,
      O => U6_GEN_15_U_Z1_1796
    );
  U6_GEN_17_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y76",
      INIT => X"FFFFEAAAEAAAEAAA"
    )
    port map (
      ADR0 => U6_GEN_30_U_Z2,
      ADR2 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR1 => X_17_IBUF_0,
      ADR5 => U6_GEN_11_U_Z2_1883,
      ADR4 => Y_17_IBUF_0,
      O => U6_GEN_17_U_Z
    );
  U6_GEN_17_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y76",
      INIT => X"FFFFFFFF0C050C00"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR1 => MAN_18_IBUF_0,
      ADR3 => XEXP_INCR_IBUF_0,
      ADR4 => U6_GEN_17_U_Z2_1881,
      ADR0 => U1_n0007_8_0,
      ADR5 => U6_GEN_17_U_Z,
      O => Z_17_OBUF_1880
    );
  U6_GEN_9_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y77",
      INIT => X"FEEEFAAAEEEEAAAA"
    )
    port map (
      ADR0 => U6_GEN_30_U_Z2,
      ADR2 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR5 => X_9_IBUF_0,
      ADR1 => U6_GEN_11_U_Z2_1883,
      ADR4 => Y_9_IBUF_0,
      O => U6_GEN_9_U_Z
    );
  U6_GEN_9_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y77",
      INIT => X"FF23FF03FF22FF00"
    )
    port map (
      ADR1 => SPECIAL_IBUF_0,
      ADR0 => XEXP_INCR_IBUF_0,
      ADR4 => MAN_10_IBUF_0,
      ADR5 => U6_GEN_9_U_Z2_1940,
      ADR2 => U1_n0007_8_0,
      ADR3 => U6_GEN_9_U_Z,
      O => Z_9_OBUF_1939
    );
  U6_GEN_8_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y77",
      INIT => X"BB888888BBB8B8B8"
    )
    port map (
      ADR1 => XEXP_INCR_IBUF_0,
      ADR3 => U1_ShiftPos_2_mmx_out9,
      ADR4 => U1_U5_GEN_21_U_Z2,
      ADR2 => U6_GEN_8_U_Z1_1986,
      ADR5 => U1_n0007_8_0,
      ADR0 => MAN_9_IBUF_0,
      O => U6_GEN_8_U_Z2_2027
    );
  U6_GEN_8_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y77",
      INIT => X"ABFFAB00AAFFAA00"
    )
    port map (
      ADR3 => SPECIAL_IBUF_0,
      ADR0 => U2_XPInf_YNaN_OR_284_o,
      ADR5 => U6_GEN_8_U_Z,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR1 => U2_XPInf_XZero_OR_288_o,
      ADR4 => U6_GEN_8_U_Z2_2027,
      O => Z_8_OBUF_1991
    );
  U6_GEN_16_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"FF00FFAAFF00FF30"
    )
    port map (
      ADR4 => SPECIAL_IBUF_0,
      ADR0 => MAN_17_IBUF_0,
      ADR5 => XEXP_INCR_IBUF_0,
      ADR2 => U6_GEN_16_U_Z3_1875,
      ADR1 => U1_n0007_8_0,
      ADR3 => U6_GEN_16_U_Z1_2029,
      O => Z_16_OBUF_1879
    );
  U6_GEN_16_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y83",
      INIT => X"F0F00050F0F00000"
    )
    port map (
      ADR1 => '1',
      ADR2 => SPECIAL_IBUF_0,
      ADR4 => U2_XPInf_YNaN_OR_284_o,
      ADR5 => U6_GEN_16_U_Z,
      ADR0 => U2_XNInf_XZero_OR_292_o,
      ADR3 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_16_U_Z1_2029
    );
  U6_GEN_15_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FEEEFAAAEEEEAAAA"
    )
    port map (
      ADR0 => U6_GEN_30_U_Z2,
      ADR5 => U6_GEN_11_U_Z1_1835,
      ADR3 => U2_XNorm_YZero_AND_18_o,
      ADR2 => X_15_IBUF_0,
      ADR4 => U6_GEN_11_U_Z2_1883,
      ADR1 => Y_15_IBUF_0,
      O => U6_GEN_15_U_Z
    );
  U6_GEN_11_U_Z21 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"0000000800000000"
    )
    port map (
      ADR2 => XCASE_2_IBUF_0,
      ADR0 => YCASE_2_IBUF_0,
      ADR5 => U2_XNorm_YZero_AND_18_o1_1930,
      ADR1 => SPECIAL_IBUF_0,
      ADR3 => U2_XNInf_XZero_OR_292_o,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_11_U_Z2_1883
    );
  U6_GEN_18_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FFFFAAAAFFFFCC00"
    )
    port map (
      ADR2 => '1',
      ADR4 => U6_GEN_24_U_Z11,
      ADR5 => U2_XNorm_YZero_AND_18_o,
      ADR1 => Y_18_IBUF_0,
      ADR3 => U2_XZero_YNorm_AND_19_o,
      ADR0 => X_18_IBUF_0,
      O => U6_GEN_18_U_Z
    );
  U2_XNorm_YZero_AND_18_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y88",
      INIT => X"0000000000000004"
    )
    port map (
      ADR3 => YCASE_2_IBUF_0,
      ADR1 => XCASE_2_IBUF_0,
      ADR4 => XCASE_1_IBUF_0,
      ADR5 => XCASE_0_IBUF_0,
      ADR0 => YCASE_1_IBUF_0,
      ADR2 => YCASE_0_IBUF_0,
      O => U2_XNorm_YZero_AND_18_o
    );
  U1_U2_Mmux_Y14121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => X"000000FFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U1_ShiftPos(2),
      ADR4 => MAN_18_IBUF_0,
      ADR5 => MAN_14_IBUF_0,
      O => U1_U2_Mmux_Y1412
    );
  U6_GEN_19_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => X"CCAAF0FFCCAAF000"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(2),
      ADR0 => MAN_16_IBUF_0,
      ADR1 => MAN_12_IBUF_0,
      ADR2 => MAN_14_IBUF_0,
      ADR5 => MAN_18_IBUF_0,
      O => U6_GEN_19_U_Z1_1935
    );
  U6_GEN_18_U_Z2_U6_GEN_18_U_Z2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N6_pack_6,
      O => N6
    );
  U6_GEN_18_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"7632541076325410"
    )
    port map (
      ADR1 => U1_ShiftPos(4),
      ADR0 => U1_ShiftPos(2),
      ADR4 => MAN_12_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR3 => MAN_0_IBUF_0,
      ADR5 => '1',
      O => U6_GEN_18_U_Z2_2031
    );
  U1_U2_Mmux_Y101_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"FCFCFCFC"
    )
    port map (
      ADR1 => U1_ShiftPos(4),
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => MAN_16_IBUF_0,
      ADR4 => '1',
      O => N6_pack_6
    );
  U6_GEN_18_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"F303F000F505F505"
    )
    port map (
      ADR2 => U1_ShiftPos(1),
      ADR1 => U1_ShiftPos(2),
      ADR5 => U1_ShiftPos(4),
      ADR4 => MAN_2_IBUF_0,
      ADR0 => U1_U2_Mmux_Y1412,
      ADR3 => U6_GEN_18_U_Z2_2031,
      O => U6_GEN_18_U_Z3_1987
    );
  U1_U2_Mmux_Y101 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"010DC1CD313DF1FD"
    )
    port map (
      ADR2 => U1_ShiftPos(1),
      ADR1 => U1_ShiftPos(2),
      ADR5 => MAN_14_IBUF_0,
      ADR4 => MAN_10_IBUF_0,
      ADR3 => MAN_12_IBUF_0,
      ADR0 => N6,
      O => U1_U2_Mmux_Y101_1888
    );
  U1_U1_Mmux_SHIFT312_U1_U1_Mmux_SHIFT312_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_Mmux_SHIFT22,
      O => U1_U1_Mmux_SHIFT22_0
    );
  U1_U1_Mmux_SHIFT3121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0000010100000101"
    )
    port map (
      ADR3 => '1',
      ADR1 => MAN_12_IBUF_0,
      ADR4 => MAN_14_IBUF_0,
      ADR2 => MAN_13_IBUF_0,
      ADR0 => MAN_15_IBUF_0,
      ADR5 => '1',
      O => U1_U1_Mmux_SHIFT312
    );
  U1_U1_Mmux_SHIFT23 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"FCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => MAN_12_IBUF_0,
      ADR3 => '1',
      ADR2 => MAN_13_IBUF_0,
      ADR4 => '1',
      O => U1_U1_Mmux_SHIFT22
    );
  U1_U1_Mmux_SHIFT52 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0001000000000000"
    )
    port map (
      ADR3 => MAN_10_IBUF_0,
      ADR0 => MAN_11_IBUF_0,
      ADR1 => MAN_8_IBUF_0,
      ADR2 => MAN_9_IBUF_0,
      ADR5 => U1_U1_Mmux_SHIFT51,
      ADR4 => U1_U1_Mmux_SHIFT312,
      O => U1_ShiftPos(4)
    );
  U1_U5_GEN_17_U_Z1_U1_U5_GEN_17_U_Z1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U6_GEN_16_U_Z2_1348,
      O => U6_GEN_16_U_Z2_0
    );
  U1_U5_GEN_17_U_Z1_U1_U5_GEN_17_U_Z1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  U1_U5_GEN_17_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0044FFFF0044FFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => MAN_0_IBUF_0,
      ADR0 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(1),
      ADR4 => U1_ShiftPos(4),
      ADR5 => '1',
      O => U1_U5_GEN_17_U_Z1
    );
  U6_GEN_16_U_Z3 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"00040F0F"
    )
    port map (
      ADR2 => U1_U2_Mmux_Y101_1888,
      ADR1 => MAN_0_IBUF_0,
      ADR0 => U1_ShiftPos(2),
      ADR3 => U1_ShiftPos(1),
      ADR4 => U1_ShiftPos(4),
      O => U6_GEN_16_U_Z2_1348
    );
  U1_U1_Mmux_SHIFT31121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"FFFFFEFEFFFFFEFE"
    )
    port map (
      ADR3 => '1',
      ADR1 => MAN_8_IBUF_0,
      ADR0 => MAN_9_IBUF_0,
      ADR4 => MAN_10_IBUF_0,
      ADR2 => MAN_11_IBUF_0,
      ADR5 => '1',
      O => U1_U1_Mmux_SHIFT3112
    );
  U1_U1_Mmux_SHIFT27_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0F0E0F0E"
    )
    port map (
      ADR3 => U1_U1_Mmux_SHIFT25,
      ADR1 => MAN_8_IBUF_0,
      ADR0 => MAN_9_IBUF_0,
      ADR4 => '1',
      ADR2 => MAN_11_IBUF_0,
      O => N8
    );
  U1_U1_Mmux_SHIFT26 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0000000033333031"
    )
    port map (
      ADR5 => MAN_7_IBUF_0,
      ADR1 => MAN_6_IBUF_0,
      ADR2 => MAN_4_IBUF_0,
      ADR4 => MAN_5_IBUF_0,
      ADR3 => MAN_2_IBUF_0,
      ADR0 => MAN_3_IBUF_0,
      O => U1_U1_Mmux_SHIFT25
    );
  U1_U1_Mmux_SHIFT31 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"CCCC0000CCCD0000"
    )
    port map (
      ADR4 => U1_U1_Mmux_SHIFT312,
      ADR2 => MAN_6_IBUF_0,
      ADR5 => MAN_7_IBUF_0,
      ADR3 => MAN_5_IBUF_0,
      ADR0 => MAN_4_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT3112,
      O => U1_U1_Mmux_SHIFT3
    );
  U6_GEN_3_U_Z1_U6_GEN_3_U_Z1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U6_GEN_12_U_Z1_1353,
      O => U6_GEN_12_U_Z1_0
    );
  U6_GEN_3_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"0000550000005500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => U1_U5_GEN_11_U_Z3,
      ADR4 => U1_ShiftPos(2),
      ADR0 => XEXP_INCR_IBUF_0,
      ADR5 => '1',
      O => U6_GEN_3_U_Z1_1946
    );
  U6_GEN_12_U_Z2 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR2 => MAN_13_IBUF_0,
      ADR1 => '1',
      ADR3 => '1',
      ADR0 => XEXP_INCR_IBUF_0,
      O => U6_GEN_12_U_Z1_1353
    );
  U1_U1_Mmux_SHIFT32 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"FF00FF00FF00FE00"
    )
    port map (
      ADR3 => U1_U1_Mmux_SHIFT511,
      ADR1 => MAN_18_IBUF_0,
      ADR0 => MAN_19_IBUF_0,
      ADR5 => MAN_16_IBUF_0,
      ADR4 => MAN_17_IBUF_0,
      ADR2 => U1_U1_Mmux_SHIFT3,
      O => U1_ShiftPos(2)
    );
  U6_GEN_18_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"88888A8ABB88BA8A"
    )
    port map (
      ADR5 => U1_U2_Mmux_Y123,
      ADR3 => U1_U5_GEN_18_U_Z11,
      ADR1 => MAN_23_IBUF_0,
      ADR2 => MAN_22_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT13_1768,
      ADR0 => U6_GEN_18_U_Z3_1987,
      O => U6_GEN_18_U_Z4_2033
    );
  U6_GEN_18_U_Z6 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"22302230FFFF0000"
    )
    port map (
      ADR5 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos(4),
      ADR3 => U1_ShiftPos(0),
      ADR2 => U1_U2_Mmux_Y1262_1972,
      ADR0 => U1_ShiftPos_2_21_1885,
      ADR4 => U6_GEN_18_U_Z4_2033,
      O => U6_GEN_18_U_Z5_1891
    );
  U1_U5_GEN_15_U_Z32 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y72",
      INIT => X"FFAAE4E45500E4E4"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(2),
      ADR3 => MAN_5_IBUF_0,
      ADR5 => MAN_1_IBUF_0,
      ADR2 => MAN_3_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      O => U1_ShiftPos_2_14
    );
  U6_GEN_15_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y72",
      INIT => X"0000BB8800000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos(3),
      ADR1 => U1_ShiftPos(0),
      ADR0 => U1_U5_GEN_15_U_Z31_1755,
      ADR3 => U1_ShiftPos_2_14,
      O => U6_GEN_15_U_Z2_1751
    );
  U1_U2_Mmux_Y1262 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y72",
      INIT => X"EEF3EEC022F322C0"
    )
    port map (
      ADR3 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(1),
      ADR0 => MAN_6_IBUF_0,
      ADR5 => MAN_4_IBUF_0,
      ADR2 => MAN_8_IBUF_0,
      ADR4 => MAN_10_IBUF_0,
      O => U1_U2_Mmux_Y1262_1972
    );
  U1_U5_GEN_15_U_Z41 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y72",
      INIT => X"10D013D31CDC1FDF"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR2 => U1_ShiftPos(1),
      ADR5 => MAN_11_IBUF_0,
      ADR3 => MAN_9_IBUF_0,
      ADR0 => MAN_13_IBUF_0,
      ADR4 => MAN_15_IBUF_0,
      O => U1_U5_GEN_15_U_Z4
    );
  U6_GEN_9_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y73",
      INIT => X"0000000022332222"
    )
    port map (
      ADR2 => '1',
      ADR1 => U1_ShiftPos(4),
      ADR5 => XEXP_INCR_IBUF_0,
      ADR0 => U6_GEN_9_U_Z1_1944,
      ADR4 => U1_ShiftPos_2_mmx_out10,
      ADR3 => U1_ShiftPos(3),
      O => U6_GEN_9_U_Z2_1940
    );
  U1_ShiftPos_2_23 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y73",
      INIT => X"FA50FA50FB40FB40"
    )
    port map (
      ADR4 => '1',
      ADR0 => MAN_23_IBUF_0,
      ADR2 => U1_ShiftPos_2_141,
      ADR1 => U1_U1_Mmux_SHIFT13_1768,
      ADR5 => MAN_22_IBUF_0,
      ADR3 => U1_ShiftPos_2_21_1885,
      O => U1_ShiftPos_2_mmx_out10
    );
  U1_U2_Mmux_Y1261 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y73",
      INIT => X"F0F0AAAACCCCFF00"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR5 => U1_ShiftPos(2),
      ADR1 => MAN_7_IBUF_0,
      ADR2 => MAN_3_IBUF_0,
      ADR0 => MAN_5_IBUF_0,
      ADR3 => MAN_9_IBUF_0,
      O => U1_ShiftPos_2_21_1885
    );
  U6_GEN_15_U_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y75",
      INIT => X"AA000F00EECCCFCC"
    )
    port map (
      ADR3 => U1_U5_GEN_21_U_Z2,
      ADR4 => U1_ShiftPos(0),
      ADR2 => U1_U5_GEN_15_U_Z4,
      ADR0 => U6_GEN_15_U_Z1_1796,
      ADR1 => U6_GEN_15_U_Z2_1751,
      ADR5 => U1_n0007_8_0,
      O => U6_GEN_15_U_Z3_2035
    );
  U6_GEN_15_U_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y75",
      INIT => X"FF50FF55FF50FF00"
    )
    port map (
      ADR1 => '1',
      ADR0 => SPECIAL_IBUF_0,
      ADR2 => MAN_16_IBUF_0,
      ADR4 => XEXP_INCR_IBUF_0,
      ADR5 => U6_GEN_15_U_Z3_2035,
      ADR3 => U6_GEN_15_U_Z,
      O => Z_15_OBUF_1802
    );
  U6_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y76",
      INIT => X"FFFFFF80FF80FF80"
    )
    port map (
      ADR3 => U6_GEN_30_U_Z2,
      ADR2 => U6_GEN_11_U_Z1_1835,
      ADR1 => U2_XNorm_YZero_AND_18_o,
      ADR0 => X_3_IBUF_0,
      ADR4 => U6_GEN_11_U_Z2_1883,
      ADR5 => Y_3_IBUF_0,
      O => U6_GEN_3_U_Z
    );
  U6_GEN_3_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y76",
      INIT => X"FFFFFFFF0F080808"
    )
    port map (
      ADR2 => SPECIAL_IBUF_0,
      ADR0 => U6_GEN_3_U_Z1_1946,
      ADR1 => U1_U5_GEN_21_U_Z2,
      ADR3 => MAN_4_IBUF_0,
      ADR4 => XEXP_INCR_IBUF_0,
      ADR5 => U6_GEN_3_U_Z,
      O => Z_3_OBUF_1968
    );
  U6_GEN_8_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y76",
      INIT => X"0000000000100000"
    )
    port map (
      ADR3 => U1_ShiftPos(4),
      ADR5 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(1),
      ADR1 => U1_ShiftPos(0),
      ADR4 => U1_ShiftPos(3),
      ADR2 => MAN_0_IBUF_0,
      O => U6_GEN_8_U_Z1_1986
    );
  U6_GEN_8_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y77",
      INIT => X"FFFFFCCCCCCCFCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => U6_GEN_24_U_Z11,
      ADR4 => U2_XNorm_YZero_AND_18_o,
      ADR2 => Y_8_IBUF_0,
      ADR3 => U2_XZero_YNorm_AND_19_o,
      ADR5 => X_8_IBUF_0,
      O => U6_GEN_8_U_Z
    );
  U6_GEN_12_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y78",
      INIT => X"FFFFFA0AFFFFF000"
    )
    port map (
      ADR1 => '1',
      ADR4 => U6_GEN_24_U_Z11,
      ADR2 => U2_XNorm_YZero_AND_18_o,
      ADR5 => Y_12_IBUF_0,
      ADR0 => U2_XZero_YNorm_AND_19_o,
      ADR3 => X_12_IBUF_0,
      O => U6_GEN_12_U_Z
    );
  U6_GEN_16_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y83",
      INIT => X"FFF0FF88FFF0FF88"
    )
    port map (
      ADR5 => '1',
      ADR3 => U6_GEN_24_U_Z11,
      ADR4 => U2_XNorm_YZero_AND_18_o,
      ADR0 => Y_16_IBUF_0,
      ADR1 => U2_XZero_YNorm_AND_19_o,
      ADR2 => X_16_IBUF_0,
      O => U6_GEN_16_U_Z
    );
  U6_GEN_11_U_Z1_U6_GEN_11_U_Z1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U6_GEN_18_U_Z1_pack_3,
      O => U6_GEN_18_U_Z1_2037
    );
  U6_GEN_11_U_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"00000C0C00000C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => SPECIAL_IBUF_0,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      ADR5 => '1',
      O => U6_GEN_11_U_Z1_1835
    );
  U6_GEN_18_U_Z2 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"CC00CC08"
    )
    port map (
      ADR3 => U2_XPInf_YNaN_OR_284_o,
      ADR0 => U6_GEN_18_U_Z,
      ADR1 => SPECIAL_IBUF_0,
      ADR2 => U2_XNInf_XZero_OR_292_o,
      ADR4 => U2_XPInf_XZero_OR_288_o,
      O => U6_GEN_18_U_Z1_pack_3
    );
  U2_XPInf_XZero_OR_288_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"0000001500000404"
    )
    port map (
      ADR4 => XCASE_1_IBUF_0,
      ADR0 => YCASE_1_IBUF_0,
      ADR5 => XCASE_0_IBUF_0,
      ADR3 => XCASE_2_IBUF_0,
      ADR1 => YCASE_0_IBUF_0,
      ADR2 => YCASE_2_IBUF_0,
      O => U2_XPInf_XZero_OR_288_o
    );
  U6_GEN_18_U_Z7 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y84",
      INIT => X"CCEECCCFCCEECCCC"
    )
    port map (
      ADR3 => SPECIAL_IBUF_0,
      ADR0 => MAN_19_IBUF_0,
      ADR4 => XEXP_INCR_IBUF_0,
      ADR5 => U6_GEN_18_U_Z5_1891,
      ADR2 => U1_n0007_8_0,
      ADR1 => U6_GEN_18_U_Z1_2037,
      O => Z_18_OBUF_1890
    );
  U2_XNInf_XZero_OR_292_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"0000000001000322"
    )
    port map (
      ADR1 => XCASE_0_IBUF_0,
      ADR5 => YCASE_0_IBUF_0,
      ADR3 => XCASE_1_IBUF_0,
      ADR2 => XCASE_2_IBUF_0,
      ADR0 => YCASE_1_IBUF_0,
      ADR4 => YCASE_2_IBUF_0,
      O => U2_XNInf_XZero_OR_292_o
    );
  U2_XNorm_YZero_AND_18_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y90",
      INIT => X"0000000000000033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => XCASE_1_IBUF_0,
      ADR1 => XCASE_0_IBUF_0,
      ADR4 => YCASE_1_IBUF_0,
      ADR5 => YCASE_0_IBUF_0,
      O => U2_XNorm_YZero_AND_18_o1_1930
    );
  U6_GEN_22_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y66",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR3 => U1_ShiftPos(1),
      ADR2 => U1_ShiftPos(2),
      ADR0 => MAN_20_IBUF_0,
      ADR4 => MAN_16_IBUF_0,
      ADR1 => MAN_18_IBUF_0,
      ADR5 => MAN_22_IBUF_0,
      O => U6_GEN_22_U_Z1_2038
    );
  U6_GEN_22_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y66",
      INIT => X"FFFF000057575454"
    )
    port map (
      ADR3 => '1',
      ADR5 => MAN_23_IBUF_0,
      ADR0 => U1_U2_Mmux_Y211,
      ADR1 => MAN_22_IBUF_0,
      ADR2 => U1_U1_Mmux_SHIFT13_1768,
      ADR4 => U6_GEN_22_U_Z1_2038,
      O => U6_GEN_22_U_Z2_1910
    );
  U1_U2_Mmux_Y14111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y67",
      INIT => X"11BB11BB0A0A5F5F"
    )
    port map (
      ADR5 => U1_ShiftPos(2),
      ADR0 => U1_ShiftPos(1),
      ADR1 => MAN_15_IBUF_0,
      ADR3 => MAN_13_IBUF_0,
      ADR2 => MAN_17_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      O => U1_U2_Mmux_Y1411
    );
  U1_U1_Mmux_SHIFT14 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"00000000AAAAFAFE"
    )
    port map (
      ADR5 => MAN_21_IBUF_0,
      ADR4 => MAN_19_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      ADR1 => U1_U1_Mmux_SHIFT12_1943,
      ADR3 => MAN_17_IBUF_0,
      ADR0 => MAN_20_IBUF_0,
      O => U1_U1_Mmux_SHIFT13_1768
    );
  U1_U1_Mmux_SHIFT15 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000FFCC0000FFCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => MAN_23_IBUF_0,
      ADR3 => U1_U1_Mmux_SHIFT13_1768,
      ADR1 => MAN_22_IBUF_0,
      O => U1_ShiftPos(0)
    );
  U1_U2_Mmux_Y2111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"084C195D2A6E3B7F"
    )
    port map (
      ADR0 => U1_ShiftPos(2),
      ADR1 => U1_ShiftPos(1),
      ADR5 => MAN_17_IBUF_0,
      ADR2 => MAN_15_IBUF_0,
      ADR3 => MAN_19_IBUF_0,
      ADR4 => MAN_21_IBUF_0,
      O => U1_U2_Mmux_Y211
    );
  U6_GEN_21_U_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"1110BBBF00000000"
    )
    port map (
      ADR5 => U1_U5_GEN_21_U_Z2,
      ADR0 => MAN_23_IBUF_0,
      ADR1 => U1_U2_Mmux_Y171,
      ADR3 => MAN_22_IBUF_0,
      ADR2 => U1_U1_Mmux_SHIFT13_1768,
      ADR4 => U1_U2_Mmux_Y211,
      O => U6_GEN_21_U_Z1_1964
    );
  U1_U1_Mmux_SHIFT11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y71",
      INIT => X"FFFFFFFF0C0E0C0F"
    )
    port map (
      ADR2 => MAN_5_IBUF_0,
      ADR3 => MAN_3_IBUF_0,
      ADR0 => MAN_2_IBUF_0,
      ADR4 => MAN_1_IBUF_0,
      ADR1 => MAN_4_IBUF_0,
      ADR5 => MAN_6_IBUF_0,
      O => U1_U1_Mmux_SHIFT1
    );
  U1_U5_GEN_22_U_Z3_U1_U5_GEN_22_U_Z3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U5_GEN_22_U_Z3,
      O => U1_U5_GEN_22_U_Z3_0
    );
  U1_U5_GEN_22_U_Z33 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y75"
    )
    port map (
      IA => N32,
      IB => N33,
      O => U1_U5_GEN_22_U_Z3,
      SEL => U1_ShiftPos(2)
    );
  U1_U5_GEN_22_U_Z33_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR4 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(0),
      ADR5 => MAN_12_IBUF_0,
      ADR2 => MAN_11_IBUF_0,
      ADR1 => MAN_13_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      O => N32
    );
  U1_U5_GEN_22_U_Z33_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"CCF0CCF0FFAA00AA"
    )
    port map (
      ADR5 => U1_ShiftPos(1),
      ADR3 => U1_ShiftPos(0),
      ADR2 => MAN_8_IBUF_0,
      ADR1 => MAN_7_IBUF_0,
      ADR4 => MAN_9_IBUF_0,
      ADR0 => MAN_10_IBUF_0,
      O => N33
    );
  U1_U2_Mmux_Y1711 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y67",
      INIT => X"474700334747CCFF"
    )
    port map (
      ADR1 => U1_ShiftPos(2),
      ADR4 => U1_ShiftPos(1),
      ADR5 => MAN_16_IBUF_0,
      ADR0 => MAN_14_IBUF_0,
      ADR2 => MAN_18_IBUF_0,
      ADR3 => MAN_20_IBUF_0,
      O => U1_U2_Mmux_Y171
    );
  U6_GEN_20_U_Z3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y67",
      INIT => X"0032CDFF0032CDFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => MAN_23_IBUF_0,
      ADR3 => U1_U2_Mmux_Y1411,
      ADR2 => MAN_22_IBUF_0,
      ADR0 => U1_U1_Mmux_SHIFT13_1768,
      ADR4 => U1_U2_Mmux_Y171,
      O => U6_GEN_20_U_Z2_1816
    );
  U1_U1_Mmux_SHIFT12 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y68",
      INIT => X"0C0F0C0F0C0C0C0E"
    )
    port map (
      ADR2 => MAN_11_IBUF_0,
      ADR3 => MAN_9_IBUF_0,
      ADR5 => MAN_8_IBUF_0,
      ADR0 => U1_U1_Mmux_SHIFT1,
      ADR4 => MAN_7_IBUF_0,
      ADR1 => MAN_10_IBUF_0,
      O => U1_U1_Mmux_SHIFT11_2039
    );
  U1_U1_Mmux_SHIFT13 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y68",
      INIT => X"AAFFAAFFAABBAABA"
    )
    port map (
      ADR3 => MAN_15_IBUF_0,
      ADR1 => MAN_13_IBUF_0,
      ADR2 => MAN_12_IBUF_0,
      ADR4 => U1_U1_Mmux_SHIFT11_2039,
      ADR5 => MAN_14_IBUF_0,
      ADR0 => MAN_16_IBUF_0,
      O => U1_U1_Mmux_SHIFT12_1943
    );
  U1_ShiftPos_2_21 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y72",
      INIT => X"D8FFD8AAD855D800"
    )
    port map (
      ADR3 => U1_ShiftPos(1),
      ADR0 => U1_ShiftPos(2),
      ADR2 => MAN_6_IBUF_0,
      ADR1 => MAN_2_IBUF_0,
      ADR5 => MAN_4_IBUF_0,
      ADR4 => MAN_8_IBUF_0,
      O => U1_ShiftPos_2_141
    );
  NlwBufferBlock_Z_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_10_OBUF_1836,
      O => NlwBufferSignal_Z_10_OBUF_I
    );
  NlwBufferBlock_Z_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_11_OBUF_1841,
      O => NlwBufferSignal_Z_11_OBUF_I
    );
  NlwBufferBlock_Z_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_12_OBUF_1833,
      O => NlwBufferSignal_Z_12_OBUF_I
    );
  NlwBufferBlock_Z_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_20_OBUF_1825,
      O => NlwBufferSignal_Z_20_OBUF_I
    );
  NlwBufferBlock_Z_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_13_OBUF_1857,
      O => NlwBufferSignal_Z_13_OBUF_I
    );
  NlwBufferBlock_Z_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_21_OBUF_1862,
      O => NlwBufferSignal_Z_21_OBUF_I
    );
  NlwBufferBlock_Z_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_14_OBUF_1871,
      O => NlwBufferSignal_Z_14_OBUF_I
    );
  NlwBufferBlock_Z_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_22_OBUF_1872,
      O => NlwBufferSignal_Z_22_OBUF_I
    );
  NlwBufferBlock_Z_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_30_OBUF_0,
      O => NlwBufferSignal_Z_30_OBUF_I
    );
  NlwBufferBlock_Z_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_15_OBUF_1802,
      O => NlwBufferSignal_Z_15_OBUF_I
    );
  NlwBufferBlock_Z_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_23_OBUF_1878,
      O => NlwBufferSignal_Z_23_OBUF_I
    );
  NlwBufferBlock_Z_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_31_OBUF_0,
      O => NlwBufferSignal_Z_31_OBUF_I
    );
  NlwBufferBlock_Z_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_16_OBUF_1879,
      O => NlwBufferSignal_Z_16_OBUF_I
    );
  NlwBufferBlock_Z_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_24_OBUF_0,
      O => NlwBufferSignal_Z_24_OBUF_I
    );
  NlwBufferBlock_Z_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_17_OBUF_1880,
      O => NlwBufferSignal_Z_17_OBUF_I
    );
  NlwBufferBlock_Z_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_25_OBUF_0,
      O => NlwBufferSignal_Z_25_OBUF_I
    );
  NlwBufferBlock_Z_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_18_OBUF_1890,
      O => NlwBufferSignal_Z_18_OBUF_I
    );
  NlwBufferBlock_Z_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_26_OBUF_1893,
      O => NlwBufferSignal_Z_26_OBUF_I
    );
  NlwBufferBlock_Z_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_19_OBUF_1895,
      O => NlwBufferSignal_Z_19_OBUF_I
    );
  NlwBufferBlock_Z_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_27_OBUF_0,
      O => NlwBufferSignal_Z_27_OBUF_I
    );
  NlwBufferBlock_Z_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_28_OBUF_0,
      O => NlwBufferSignal_Z_28_OBUF_I
    );
  NlwBufferBlock_Z_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_29_OBUF_0,
      O => NlwBufferSignal_Z_29_OBUF_I
    );
  NlwBufferBlock_Z_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_0_OBUF_1978,
      O => NlwBufferSignal_Z_0_OBUF_I
    );
  NlwBufferBlock_Z_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_1_OBUF_1927,
      O => NlwBufferSignal_Z_1_OBUF_I
    );
  NlwBufferBlock_Z_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_2_OBUF_1837,
      O => NlwBufferSignal_Z_2_OBUF_I
    );
  NlwBufferBlock_Z_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_3_OBUF_1968,
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
      I => Z_5_OBUF_1961,
      O => NlwBufferSignal_Z_5_OBUF_I
    );
  NlwBufferBlock_Z_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_6_OBUF_1960,
      O => NlwBufferSignal_Z_6_OBUF_I
    );
  NlwBufferBlock_Z_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_7_OBUF_1975,
      O => NlwBufferSignal_Z_7_OBUF_I
    );
  NlwBufferBlock_Z_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_8_OBUF_1991,
      O => NlwBufferSignal_Z_8_OBUF_I
    );
  NlwBufferBlock_Z_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_9_OBUF_1939,
      O => NlwBufferSignal_Z_9_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

