--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: IEEE754_ADDER_NP_timesim.vhd
-- /___/   /\     Timestamp: Sat Aug 26 20:11:42 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf IEEE754_ADDER_NP.pcf -rpw 100 -tpw 0 -ar Structure -tm IEEE754_ADDER_NP -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim IEEE754_ADDER_NP.ncd IEEE754_ADDER_NP_timesim.vhd 
-- Device	: 6slx75tfgg676-4 (PRODUCTION 1.23 2013-10-13)
-- Input file	: IEEE754_ADDER_NP.ncd
-- Output file	: /home/andrea/PFRL_SOMMATORE_IEEE754/netgen/par/IEEE754_ADDER_NP_timesim.vhd
-- # of Entities	: 1
-- Design Name	: IEEE754_ADDER_NP
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

entity IEEE754_ADDER_NP is
  port (
    OP : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Z : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end IEEE754_ADDER_NP;

architecture Structure of IEEE754_ADDER_NP is
  signal U1_U1_ExpComp_ExpComp_OR_11_o : STD_LOGIC; 
  signal X_8_IBUF_0 : STD_LOGIC; 
  signal Y_8_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0 : STD_LOGIC; 
  signal X_7_IBUF_0 : STD_LOGIC; 
  signal Y_7_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out4 : STD_LOGIC; 
  signal U1_ExpDiff_0_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18 : STD_LOGIC; 
  signal X_18_IBUF_0 : STD_LOGIC; 
  signal Y_18_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out18 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5 : STD_LOGIC; 
  signal X_5_IBUF_0 : STD_LOGIC; 
  signal Y_5_IBUF_0 : STD_LOGIC; 
  signal U2_XExpIncr : STD_LOGIC; 
  signal U2_U2_GEN_19_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_19_Q : STD_LOGIC; 
  signal U2_C2Mant_20_Q : STD_LOGIC; 
  signal U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323 : STD_LOGIC; 
  signal U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal X_12_IBUF_0 : STD_LOGIC; 
  signal Y_12_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0 : STD_LOGIC; 
  signal X_0_IBUF_0 : STD_LOGIC; 
  signal Y_0_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out_0 : STD_LOGIC; 
  signal U3_U1_U1_GND_29_o_X_26_equal_25_o_26_12 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal U3_U3_XPInf_XZero_OR_367_o : STD_LOGIC; 
  signal U3_U3_XNInf_XZero_OR_371_o : STD_LOGIC; 
  signal U3_U3_XNorm_YZero_AND_35_o_0 : STD_LOGIC; 
  signal U3_U3_XZero_YNorm_AND_36_o : STD_LOGIC; 
  signal U3_U3_YZero : STD_LOGIC; 
  signal U1_U3_YExponent255 : STD_LOGIC; 
  signal U3_U3_XZero : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT110_0 : STD_LOGIC; 
  signal U3_U3_XNInf_XZero_OR_371_o1_3351 : STD_LOGIC; 
  signal Y_31_IBUF_0 : STD_LOGIC; 
  signal U1_U3_YMantissa0 : STD_LOGIC; 
  signal U3_U3_XPInf_XZero_OR_367_o1_0 : STD_LOGIC; 
  signal U1_U3_XExponent255 : STD_LOGIC; 
  signal U1_U3_XMantissa0 : STD_LOGIC; 
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal XCASE_1_0 : STD_LOGIC; 
  signal U3_U1_U3_C_9_bdd4 : STD_LOGIC; 
  signal U3_U2_U3_C_8_bdd6 : STD_LOGIC; 
  signal U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368 : STD_LOGIC; 
  signal X_28_IBUF_0 : STD_LOGIC; 
  signal Y_28_IBUF_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_COUT : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_7_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_5_0 : STD_LOGIC; 
  signal U1_U2_S_5_S_7_OR_13_o_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_U1_C_8_bdd2 : STD_LOGIC; 
  signal X_29_IBUF_0 : STD_LOGIC; 
  signal Y_29_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out2 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10 : STD_LOGIC; 
  signal X_10_IBUF_0 : STD_LOGIC; 
  signal Y_10_IBUF_0 : STD_LOGIC; 
  signal X_21_IBUF_0 : STD_LOGIC; 
  signal Y_21_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out1 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9 : STD_LOGIC; 
  signal X_6_IBUF_0 : STD_LOGIC; 
  signal Y_6_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out16 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16 : STD_LOGIC; 
  signal X_16_IBUF_0 : STD_LOGIC; 
  signal Y_16_IBUF_0 : STD_LOGIC; 
  signal U3_MantNorm_8_Q : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal U3_U1_ShiftPos_3_mmx_out8 : STD_LOGIC; 
  signal U3_U1_U3_C_9_bdd0 : STD_LOGIC; 
  signal U3_MantNorm_15_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o3_3408 : STD_LOGIC; 
  signal X_15_IBUF_0 : STD_LOGIC; 
  signal Y_15_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o4_0 : STD_LOGIC; 
  signal X_25_IBUF_0 : STD_LOGIC; 
  signal Y_25_IBUF_0 : STD_LOGIC; 
  signal Y_2_IBUF_0 : STD_LOGIC; 
  signal X_2_IBUF_0 : STD_LOGIC; 
  signal X_24_IBUF_0 : STD_LOGIC; 
  signal Y_24_IBUF_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o5_3422 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o6_0 : STD_LOGIC; 
  signal U2_ZMant_Temp_25_Q : STD_LOGIC; 
  signal U2_ZMant_Temp_26_Q : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT29 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o7_3434 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o8_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_U1_C_8_bdd6 : STD_LOGIC; 
  signal X_27_IBUF_0 : STD_LOGIC; 
  signal Y_27_IBUF_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_4_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out19 : STD_LOGIC; 
  signal X_9_IBUF_0 : STD_LOGIC; 
  signal Y_9_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out11 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0 : STD_LOGIC; 
  signal X_19_IBUF_0 : STD_LOGIC; 
  signal Y_19_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out20 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0 : STD_LOGIC; 
  signal X_13_IBUF_0 : STD_LOGIC; 
  signal Y_13_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out6 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1 : STD_LOGIC; 
  signal X_1_IBUF_0 : STD_LOGIC; 
  signal Y_1_IBUF_0 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT172 : STD_LOGIC; 
  signal Y_23_IBUF_0 : STD_LOGIC; 
  signal X_23_IBUF_0 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT1111 : STD_LOGIC; 
  signal U3_U3_XPInf_YNaN_OR_363_o_3468 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT111_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out7 : STD_LOGIC; 
  signal X_3_IBUF_0 : STD_LOGIC; 
  signal Y_3_IBUF_0 : STD_LOGIC; 
  signal U2_C2Mant_3_Q : STD_LOGIC; 
  signal U2_OperationLogic : STD_LOGIC; 
  signal U1_U2_Mmux_Y231_0 : STD_LOGIC; 
  signal OP_IBUF_0 : STD_LOGIC; 
  signal U2_U2_GEN_17_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_17_Q : STD_LOGIC; 
  signal U2_C2Mant_15_Q : STD_LOGIC; 
  signal U2_U2_GEN_15_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_16_Q : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out9 : STD_LOGIC; 
  signal X_11_IBUF_0 : STD_LOGIC; 
  signal Y_11_IBUF_0 : STD_LOGIC; 
  signal U2_U1_Mxor_XXorS_14_xo_0_2_3493 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal X_26_IBUF_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal X_17_IBUF_0 : STD_LOGIC; 
  signal Y_17_IBUF_0 : STD_LOGIC; 
  signal U2_C2Mant_4_Q : STD_LOGIC; 
  signal U2_U2_GEN_5_U_Mxor_S_xo_0_2 : STD_LOGIC; 
  signal U2_C2Mant_5_Q : STD_LOGIC; 
  signal U3_Mmux_Z251_3504 : STD_LOGIC; 
  signal U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT27_3511 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT26_3514 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT412 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Y_26_IBUF_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_1_0 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_3_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U3_U2_U2_C_22_Q : STD_LOGIC; 
  signal U3_MantNorm_25_0 : STD_LOGIC; 
  signal X_30_IBUF_0 : STD_LOGIC; 
  signal Y_30_IBUF_0 : STD_LOGIC; 
  signal U2_U2_GEN_23_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_U2_GEN_21_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_21_Q : STD_LOGIC; 
  signal U2_ZMant_Temp_20_Q : STD_LOGIC; 
  signal U2_U2_GEN_13_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_13_Q : STD_LOGIC; 
  signal U2_C2Mant_11_Q : STD_LOGIC; 
  signal U2_U2_GEN_11_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_12_Q : STD_LOGIC; 
  signal X_20_IBUF_0 : STD_LOGIC; 
  signal Y_20_IBUF_0 : STD_LOGIC; 
  signal X_22_IBUF_0 : STD_LOGIC; 
  signal Y_22_IBUF_0 : STD_LOGIC; 
  signal X_14_IBUF_0 : STD_LOGIC; 
  signal Y_14_IBUF_0 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out13 : STD_LOGIC; 
  signal X_4_IBUF_0 : STD_LOGIC; 
  signal Y_4_IBUF_0 : STD_LOGIC; 
  signal Z_0_OBUF_3568 : STD_LOGIC; 
  signal Z_1_OBUF_3569 : STD_LOGIC; 
  signal Z_2_OBUF_3570 : STD_LOGIC; 
  signal Z_3_OBUF_3571 : STD_LOGIC; 
  signal Z_4_OBUF_3572 : STD_LOGIC; 
  signal Z_5_OBUF_3573 : STD_LOGIC; 
  signal Z_6_OBUF_3574 : STD_LOGIC; 
  signal Z_7_OBUF_3575 : STD_LOGIC; 
  signal Z_8_OBUF_3576 : STD_LOGIC; 
  signal Z_9_OBUF_0 : STD_LOGIC; 
  signal Z_10_OBUF_3578 : STD_LOGIC; 
  signal Z_11_OBUF_0 : STD_LOGIC; 
  signal Z_12_OBUF_3580 : STD_LOGIC; 
  signal Z_20_OBUF_3581 : STD_LOGIC; 
  signal Z_13_OBUF_3582 : STD_LOGIC; 
  signal Z_21_OBUF_3583 : STD_LOGIC; 
  signal Z_14_OBUF_3584 : STD_LOGIC; 
  signal Z_22_OBUF_3585 : STD_LOGIC; 
  signal Z_30_OBUF_3586 : STD_LOGIC; 
  signal Z_15_OBUF_3587 : STD_LOGIC; 
  signal Z_23_OBUF_3588 : STD_LOGIC; 
  signal Z_31_OBUF_3589 : STD_LOGIC; 
  signal Z_16_OBUF_3590 : STD_LOGIC; 
  signal Z_24_OBUF_3591 : STD_LOGIC; 
  signal Z_17_OBUF_3592 : STD_LOGIC; 
  signal Z_25_OBUF_3593 : STD_LOGIC; 
  signal Z_18_OBUF_3594 : STD_LOGIC; 
  signal Z_26_OBUF_3595 : STD_LOGIC; 
  signal Z_19_OBUF_3596 : STD_LOGIC; 
  signal Z_27_OBUF_3597 : STD_LOGIC; 
  signal Z_28_OBUF_3598 : STD_LOGIC; 
  signal Z_29_OBUF_3599 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out10 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out19 : STD_LOGIC; 
  signal U3_MantNorm_22_0 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out15 : STD_LOGIC; 
  signal U3_U1_U5_GEN_22_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out8 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out10 : STD_LOGIC; 
  signal U1_U2_Mmux_Y6_0 : STD_LOGIC; 
  signal U1_U2_Mmux_Y2313_3614 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT112_0 : STD_LOGIC; 
  signal SPECIAL : STD_LOGIC; 
  signal U3_U2_isInfty_3617 : STD_LOGIC; 
  signal U3_U2_U2_C_10_Q : STD_LOGIC; 
  signal U3_MantNorm_13_Q : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out20 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out1 : STD_LOGIC; 
  signal U3_MantNorm_23_0 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out6 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out11 : STD_LOGIC; 
  signal U3_U1_U5_GEN_23_U_X_S_AND_5_o2_3626 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out14 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out8 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out22 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out4 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out3 : STD_LOGIC; 
  signal U3_U1_U5_GEN_25_U_X_S_AND_5_o3_3632 : STD_LOGIC; 
  signal U3_U2_U2_C_8_Q : STD_LOGIC; 
  signal U3_MantNorm_11_Q : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out17 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out15 : STD_LOGIC; 
  signal U2_ZMant_Temp_8_Q : STD_LOGIC; 
  signal U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640 : STD_LOGIC; 
  signal U2_U2_GEN_7_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_U2_GEN_9_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_9_0 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT14_3647 : STD_LOGIC; 
  signal U1_U2_Mmux_Y11_3649 : STD_LOGIC; 
  signal U1_U2_Mmux_Y12_3650 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal U1_ExpDiff_2_mmx_out7 : STD_LOGIC; 
  signal U3_U1_U5_GEN_24_U_X_S_AND_5_o1_3654 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out7 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out21 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out2 : STD_LOGIC; 
  signal U3_MantNorm_16_Q : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out13 : STD_LOGIC; 
  signal U3_U1_U5_GEN_16_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_MantNorm_24_Q : STD_LOGIC; 
  signal U3_U1_U1_GND_29_o_X_26_equal_25_o_26_111 : STD_LOGIC; 
  signal U2_ZMant_Temp_24_Q : STD_LOGIC; 
  signal U2_ZMant_Temp_10_Q : STD_LOGIC; 
  signal U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_10_Q : STD_LOGIC; 
  signal U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_6_Q : STD_LOGIC; 
  signal U3_U1_U1_GND_29_o_X_26_equal_20_o_mmx_out : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT411 : STD_LOGIC; 
  signal U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678 : STD_LOGIC; 
  signal U2_C2Mant_25_Q : STD_LOGIC; 
  signal U2_C2Mant_7_Q : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out16 : STD_LOGIC; 
  signal U2_C2Mant_26_Q : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal U3_U1_U1_GND_29_o_X_26_equal_13_o_26_1 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal U3_MantNorm_9_Q : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal U1_ExpDiff_2_mmx_out11 : STD_LOGIC; 
  signal U1_U2_Mmux_Y181 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal U1_U2_Mmux_Y132_3700 : STD_LOGIC; 
  signal U1_U2_Mmux_Y13 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out : STD_LOGIC; 
  signal U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal U2_C2Mant_23_0 : STD_LOGIC; 
  signal U1_U2_Mmux_Y311_3711 : STD_LOGIC; 
  signal U1_U2_Mmux_Y7 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out14 : STD_LOGIC; 
  signal U2_U1_Mxor_XXorS_14_xo_0_3_3714 : STD_LOGIC; 
  signal U2_U1_Mxor_XXorS_14_xo_0_1_3715 : STD_LOGIC; 
  signal U3_MantNorm_18_Q : STD_LOGIC; 
  signal U3_U1_U5_GEN_18_U_X_S_AND_5_o : STD_LOGIC; 
  signal U1_ExpDiff_3_mmx_out10 : STD_LOGIC; 
  signal U1_ExpDiff_2_mmx_out18 : STD_LOGIC; 
  signal U3_U3_YNorm : STD_LOGIC; 
  signal N72_0 : STD_LOGIC; 
  signal U1_ExpDiff_2_mmx_out2 : STD_LOGIC; 
  signal U2_U1_Mxor_XXorS_17_xo_0_2_3723 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out3 : STD_LOGIC; 
  signal U3_U1_U3_C_9_bdd8 : STD_LOGIC; 
  signal U1_U3_XMantissa0_22_1_3729 : STD_LOGIC; 
  signal U1_U3_XMantissa0_22_2_3730 : STD_LOGIC; 
  signal U1_U3_XMantissa0_22_3_3731 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out17 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out12 : STD_LOGIC; 
  signal U3_MantNorm_4_Q : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal U3_U2_ExpCarry : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o2_3752 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o9_3754 : STD_LOGIC; 
  signal U3_U2_U3_C_8_bdd10 : STD_LOGIC; 
  signal U1_U2_Mmux_Y2511_3757 : STD_LOGIC; 
  signal U1_U2_Mmux_Y2512_3758 : STD_LOGIC; 
  signal U1_ExpDiff_1_mmx_out21 : STD_LOGIC; 
  signal U1_ExpDiff_2_mmx_out9 : STD_LOGIC; 
  signal U1_U2_Mmux_Y3511_3761 : STD_LOGIC; 
  signal U3_MantNorm_10_Q : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal U3_MantNorm_6_Q : STD_LOGIC; 
  signal U1_ExpDiff_0_mmx_out : STD_LOGIC; 
  signal U3_MantNorm_3_Q : STD_LOGIC; 
  signal U3_U2_MantIncr : STD_LOGIC; 
  signal U3_U2_U2_C_12_Q : STD_LOGIC; 
  signal U3_MantNorm_17_Q : STD_LOGIC; 
  signal U3_U2_U2_C_14_Q : STD_LOGIC; 
  signal U3_MantNorm_19_Q : STD_LOGIC; 
  signal U3_U2_U2_C_16_Q : STD_LOGIC; 
  signal U3_MantNorm_20_Q : STD_LOGIC; 
  signal U3_MantNorm_21_Q : STD_LOGIC; 
  signal U3_U1_U5_GEN_21_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_U1_U5_GEN_21_U_X_S_AND_5_o1_3780 : STD_LOGIC; 
  signal U2_ZMant_Temp_14_Q : STD_LOGIC; 
  signal U3_U1_U5_GEN_23_U_X_S_AND_5_o1 : STD_LOGIC; 
  signal U3_U1_ShiftPos_0_mmx_out10 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT23 : STD_LOGIC; 
  signal U2_ZMant_Temp_18_Q : STD_LOGIC; 
  signal U3_U2_U2_C_6_Q : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o11_3790 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o13_3791 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o15_3792 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o17_3793 : STD_LOGIC; 
  signal U3_U2_U2_C_2_Q : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal U3_U2_U2_C_4_Q : STD_LOGIC; 
  signal U3_MantNorm_5_Q : STD_LOGIC; 
  signal U3_Mmux_Z241_0 : STD_LOGIC; 
  signal U3_U3_XNorm : STD_LOGIC; 
  signal U3_U1_U5_GEN_17_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_U1_U5_GEN_25_U_X_S_AND_5_o2_0 : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out18 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT11_3804 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT13_3805 : STD_LOGIC; 
  signal U3_U2_U2_C_20_Q : STD_LOGIC; 
  signal U3_U1_U5_GEN_19_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_U2_U2_C_18_Q : STD_LOGIC; 
  signal U3_Mmux_Z25 : STD_LOGIC; 
  signal U3_MantNorm_7_Q : STD_LOGIC; 
  signal U1_ExpDiff_0_mmx_out1 : STD_LOGIC; 
  signal U1_U3_YMantissa0_22_1_3814 : STD_LOGIC; 
  signal U1_U3_YMantissa0_22_3_3815 : STD_LOGIC; 
  signal U3_U1_U5_GEN_20_U_X_S_AND_5_o : STD_LOGIC; 
  signal U3_U1_U5_GEN_20_U_X_S_AND_5_o1_0 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal U3_U1_U5_GEN_24_U_X_S_AND_5_o : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal U1_U2_Mmux_Y251 : STD_LOGIC; 
  signal U2_ZMant_Temp_22_Q : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT12_3823 : STD_LOGIC; 
  signal U2_ZMant_Temp_16_Q : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT1 : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT25 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal U1_U2_Mmux_Y32 : STD_LOGIC; 
  signal U2_U1_Mxor_XXorS_17_xo_0_1_3829 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal U1_U2_Mmux_Y3411_3831 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal U1_U2_Mmux_Y131_3833 : STD_LOGIC; 
  signal U2_ZMant_Temp_6_Q : STD_LOGIC; 
  signal U3_U1_ShiftPos_1_mmx_out5 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal U2_ZMant_Temp_5_Q : STD_LOGIC; 
  signal U2_ZMant_Temp_12_Q : STD_LOGIC; 
  signal U1_U2_Mmux_Y31 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o1_3841 : STD_LOGIC; 
  signal U3_U3_XNInf_XZero_OR_371_o2_3842 : STD_LOGIC; 
  signal U1_U1_EXP_COMP_U1_C_8_bdd10 : STD_LOGIC; 
  signal U3_U2_MantCarry : STD_LOGIC; 
  signal U3_U3_XPInf_XZero_OR_367_o2_3845 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o16_3846 : STD_LOGIC; 
  signal U3_Mmux_Z24 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o10_3848 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o12_3849 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o14_3850 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal U1_U3_YMantissa0_22_2_3852 : STD_LOGIC; 
  signal OP_IBUF_1 : STD_LOGIC; 
  signal X_0_IBUF_4 : STD_LOGIC; 
  signal X_1_IBUF_7 : STD_LOGIC; 
  signal X_2_IBUF_10 : STD_LOGIC; 
  signal X_3_IBUF_13 : STD_LOGIC; 
  signal Y_0_IBUF_16 : STD_LOGIC; 
  signal X_4_IBUF_19 : STD_LOGIC; 
  signal Y_1_IBUF_22 : STD_LOGIC; 
  signal X_5_IBUF_25 : STD_LOGIC; 
  signal Y_2_IBUF_28 : STD_LOGIC; 
  signal X_6_IBUF_31 : STD_LOGIC; 
  signal Y_3_IBUF_34 : STD_LOGIC; 
  signal X_7_IBUF_37 : STD_LOGIC; 
  signal Y_4_IBUF_42 : STD_LOGIC; 
  signal X_8_IBUF_45 : STD_LOGIC; 
  signal Y_5_IBUF_50 : STD_LOGIC; 
  signal X_9_IBUF_53 : STD_LOGIC; 
  signal Y_6_IBUF_58 : STD_LOGIC; 
  signal Y_7_IBUF_63 : STD_LOGIC; 
  signal Y_8_IBUF_68 : STD_LOGIC; 
  signal Y_9_IBUF_73 : STD_LOGIC; 
  signal X_10_IBUF_84 : STD_LOGIC; 
  signal X_11_IBUF_87 : STD_LOGIC; 
  signal X_12_IBUF_90 : STD_LOGIC; 
  signal X_20_IBUF_93 : STD_LOGIC; 
  signal X_13_IBUF_96 : STD_LOGIC; 
  signal X_21_IBUF_99 : STD_LOGIC; 
  signal X_14_IBUF_102 : STD_LOGIC; 
  signal X_22_IBUF_105 : STD_LOGIC; 
  signal X_30_IBUF_108 : STD_LOGIC; 
  signal X_15_IBUF_111 : STD_LOGIC; 
  signal X_23_IBUF_114 : STD_LOGIC; 
  signal X_31_IBUF_117 : STD_LOGIC; 
  signal X_16_IBUF_120 : STD_LOGIC; 
  signal X_24_IBUF_123 : STD_LOGIC; 
  signal X_17_IBUF_126 : STD_LOGIC; 
  signal X_25_IBUF_129 : STD_LOGIC; 
  signal Y_10_IBUF_132 : STD_LOGIC; 
  signal X_18_IBUF_135 : STD_LOGIC; 
  signal X_26_IBUF_138 : STD_LOGIC; 
  signal Y_11_IBUF_141 : STD_LOGIC; 
  signal X_19_IBUF_144 : STD_LOGIC; 
  signal X_27_IBUF_147 : STD_LOGIC; 
  signal Y_12_IBUF_150 : STD_LOGIC; 
  signal Y_20_IBUF_153 : STD_LOGIC; 
  signal X_28_IBUF_156 : STD_LOGIC; 
  signal Y_13_IBUF_159 : STD_LOGIC; 
  signal Y_21_IBUF_162 : STD_LOGIC; 
  signal X_29_IBUF_165 : STD_LOGIC; 
  signal Y_14_IBUF_168 : STD_LOGIC; 
  signal Y_22_IBUF_171 : STD_LOGIC; 
  signal Y_30_IBUF_174 : STD_LOGIC; 
  signal Y_15_IBUF_177 : STD_LOGIC; 
  signal Y_23_IBUF_180 : STD_LOGIC; 
  signal Y_31_IBUF_183 : STD_LOGIC; 
  signal Y_16_IBUF_186 : STD_LOGIC; 
  signal Y_24_IBUF_189 : STD_LOGIC; 
  signal Y_17_IBUF_192 : STD_LOGIC; 
  signal Y_25_IBUF_195 : STD_LOGIC; 
  signal Y_18_IBUF_200 : STD_LOGIC; 
  signal Y_26_IBUF_203 : STD_LOGIC; 
  signal Y_19_IBUF_208 : STD_LOGIC; 
  signal Y_27_IBUF_211 : STD_LOGIC; 
  signal Y_28_IBUF_218 : STD_LOGIC; 
  signal Y_29_IBUF_225 : STD_LOGIC; 
  signal U2_C2Mant_23_Q : STD_LOGIC; 
  signal U2_C2Mant_20_pack_1 : STD_LOGIC; 
  signal U2_U2_GEN_21_U_Mxor_S_xo_0_1_pack_3 : STD_LOGIC; 
  signal U3_U1_U5_GEN_25_U_X_S_AND_5_o2 : STD_LOGIC; 
  signal N112_pack_1 : STD_LOGIC; 
  signal U2_U1_XXorS_15_pack_2 : STD_LOGIC; 
  signal U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_504 : STD_LOGIC; 
  signal U2_U2_GEN_17_U_Mxor_S_xo_0_1_pack_3 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal U3_MantNorm_23_Q : STD_LOGIC; 
  signal U3_U1_U1_Mmux_SHIFT25_pack_2 : STD_LOGIC; 
  signal U2_C2Mant_9_Q : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal U2_U1_XXorS_2_pack_1 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22 : STD_LOGIC; 
  signal U2_U2_GEN_7_U_Mxor_S_xo_0_1_pack_2 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal U3_MantNorm_22_Q : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal U1_U2_Mmux_Y231 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13_pack_5 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal U1_U2_Mmux_Y6 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17 : STD_LOGIC; 
  signal U3_U1_U5_GEN_20_U_X_S_AND_5_o1_1542 : STD_LOGIC; 
  signal U2_ZMant_Temp_5_pack_2 : STD_LOGIC; 
  signal U2_U2_GEN_13_U_Mxor_S_xo_0_1_pack_3 : STD_LOGIC; 
  signal U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_1623 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16_pack_1 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal U3_MantNorm_25_Q : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10_pack_7 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11_pack_8 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18_pack_1 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1_pack_1 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT112 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9_pack_7 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19_pack_1 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5_pack_1 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7 : STD_LOGIC; 
  signal XEXP_2_pack_8 : STD_LOGIC; 
  signal U1_U2_S_5_S_7_OR_13_o : STD_LOGIC; 
  signal U1_U1_EXP_COMP_S_6_pack_3 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6_pack_1 : STD_LOGIC; 
  signal U3_U3_XNorm_YZero_AND_35_o : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2 : STD_LOGIC; 
  signal U3_U2_TempExp_0_pack_5 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3_pack_7 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4_pack_8 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o8_2473 : STD_LOGIC; 
  signal U3_U3_XPInf_XZero_OR_367_o1_2503 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o6_2499 : STD_LOGIC; 
  signal U1_U1_ExpComp_ExpComp_OR_11_o4_2536 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT111 : STD_LOGIC; 
  signal U3_U2_U2_C_20_pack_4 : STD_LOGIC; 
  signal U3_MantNorm_15_Q : STD_LOGIC; 
  signal U3_Mmux_Z241_2815 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal Z_11_OBUF_2828 : STD_LOGIC; 
  signal XEXP_INCR_5_pack_1 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal Z_9_OBUF_3008 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal U3_U3_Mmux_RESULT110 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
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
  signal XMAN : STD_LOGIC_VECTOR ( 25 downto 3 ); 
  signal ZMANT : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal U2_U1_XXorS : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal XCASE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U3_U2_TempExp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XEXP_INCR : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_ExpNorm : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal XEXP : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U1_ExpDiff : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_EXP_COMP_S : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U3_U1_ShiftPos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal YMAN : STD_LOGIC_VECTOR ( 15 downto 15 ); 
  signal U3_U1_n0007 : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal U2_U1_Mxor_XXorS_17_xo : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_U1_Mxor_XXorS_14_xo : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_U3_XMantissa0_0 : STD_LOGIC_VECTOR ( 22 downto 22 ); 
  signal U1_U3_YMantissa0_1 : STD_LOGIC_VECTOR ( 22 downto 22 ); 
begin
  OP_IBUF : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      O => OP_IBUF_1,
      I => OP
    );
  ProtoComp28_IMUX : X_BUF
    generic map(
      LOC => "PAD339",
      PATHPULSE => 202 ps
    )
    port map (
      I => OP_IBUF_1,
      O => OP_IBUF_0
    );
  X_0_IBUF : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_0_IBUF_4,
      I => X(0)
    );
  ProtoComp28_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD263",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_0_IBUF_4,
      O => X_0_IBUF_0
    );
  X_1_IBUF : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_1_IBUF_7,
      I => X(1)
    );
  ProtoComp28_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD264",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_1_IBUF_7,
      O => X_1_IBUF_0
    );
  X_2_IBUF : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_2_IBUF_10,
      I => X(2)
    );
  ProtoComp28_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD273",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_2_IBUF_10,
      O => X_2_IBUF_0
    );
  X_3_IBUF : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_3_IBUF_13,
      I => X(3)
    );
  ProtoComp28_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD274",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_3_IBUF_13,
      O => X_3_IBUF_0
    );
  Y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_0_IBUF_16,
      I => Y(0)
    );
  ProtoComp28_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_0_IBUF_16,
      O => Y_0_IBUF_0
    );
  X_4_IBUF : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_4_IBUF_19,
      I => X(4)
    );
  ProtoComp28_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD275",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_4_IBUF_19,
      O => X_4_IBUF_0
    );
  Y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_1_IBUF_22,
      I => Y(1)
    );
  ProtoComp28_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_1_IBUF_22,
      O => Y_1_IBUF_0
    );
  X_5_IBUF : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_5_IBUF_25,
      I => X(5)
    );
  ProtoComp28_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD276",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_5_IBUF_25,
      O => X_5_IBUF_0
    );
  Y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_2_IBUF_28,
      I => Y(2)
    );
  ProtoComp28_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_2_IBUF_28,
      O => Y_2_IBUF_0
    );
  X_6_IBUF : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_6_IBUF_31,
      I => X(6)
    );
  ProtoComp28_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD277",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_6_IBUF_31,
      O => X_6_IBUF_0
    );
  Y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_3_IBUF_34,
      I => Y(3)
    );
  ProtoComp28_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_3_IBUF_34,
      O => Y_3_IBUF_0
    );
  X_7_IBUF : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_7_IBUF_37,
      I => X(7)
    );
  ProtoComp28_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_7_IBUF_37,
      O => X_7_IBUF_0
    );
  Z_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => NlwBufferSignal_Z_0_OBUF_I,
      O => Z(0)
    );
  Y_4_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_4_IBUF_42,
      I => Y(4)
    );
  ProtoComp28_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_4_IBUF_42,
      O => Y_4_IBUF_0
    );
  X_8_IBUF : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_8_IBUF_45,
      I => X(8)
    );
  ProtoComp28_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD279",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_8_IBUF_45,
      O => X_8_IBUF_0
    );
  Z_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_Z_1_OBUF_I,
      O => Z(1)
    );
  Y_5_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_5_IBUF_50,
      I => Y(5)
    );
  ProtoComp28_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_5_IBUF_50,
      O => Y_5_IBUF_0
    );
  X_9_IBUF : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_9_IBUF_53,
      I => X(9)
    );
  ProtoComp28_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD280",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_9_IBUF_53,
      O => X_9_IBUF_0
    );
  Z_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_Z_2_OBUF_I,
      O => Z(2)
    );
  Y_6_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_6_IBUF_58,
      I => Y(6)
    );
  ProtoComp28_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_6_IBUF_58,
      O => Y_6_IBUF_0
    );
  Z_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_Z_3_OBUF_I,
      O => Z(3)
    );
  Y_7_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_7_IBUF_63,
      I => Y(7)
    );
  ProtoComp28_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_7_IBUF_63,
      O => Y_7_IBUF_0
    );
  Z_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => NlwBufferSignal_Z_4_OBUF_I,
      O => Z(4)
    );
  Y_8_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_8_IBUF_68,
      I => Y(8)
    );
  ProtoComp28_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_8_IBUF_68,
      O => Y_8_IBUF_0
    );
  Z_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_Z_5_OBUF_I,
      O => Z(5)
    );
  Y_9_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_9_IBUF_73,
      I => Y(9)
    );
  ProtoComp28_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_9_IBUF_73,
      O => Y_9_IBUF_0
    );
  Z_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => NlwBufferSignal_Z_6_OBUF_I,
      O => Z(6)
    );
  Z_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => NlwBufferSignal_Z_7_OBUF_I,
      O => Z(7)
    );
  Z_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_Z_8_OBUF_I,
      O => Z(8)
    );
  Z_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_Z_9_OBUF_I,
      O => Z(9)
    );
  X_10_IBUF : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_10_IBUF_84,
      I => X(10)
    );
  ProtoComp28_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD296",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_10_IBUF_84,
      O => X_10_IBUF_0
    );
  X_11_IBUF : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_11_IBUF_87,
      I => X(11)
    );
  ProtoComp28_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD321",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_11_IBUF_87,
      O => X_11_IBUF_0
    );
  X_12_IBUF : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_12_IBUF_90,
      I => X(12)
    );
  ProtoComp28_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD295",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_12_IBUF_90,
      O => X_12_IBUF_0
    );
  X_20_IBUF : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_20_IBUF_93,
      I => X(20)
    );
  ProtoComp28_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD332",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_20_IBUF_93,
      O => X_20_IBUF_0
    );
  X_13_IBUF : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_13_IBUF_96,
      I => X(13)
    );
  ProtoComp28_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD323",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_13_IBUF_96,
      O => X_13_IBUF_0
    );
  X_21_IBUF : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_21_IBUF_99,
      I => X(21)
    );
  ProtoComp28_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD329",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_21_IBUF_99,
      O => X_21_IBUF_0
    );
  X_14_IBUF : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_14_IBUF_102,
      I => X(14)
    );
  ProtoComp28_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD328",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_14_IBUF_102,
      O => X_14_IBUF_0
    );
  X_22_IBUF : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_22_IBUF_105,
      I => X(22)
    );
  ProtoComp28_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD331",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_22_IBUF_105,
      O => X_22_IBUF_0
    );
  X_30_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_30_IBUF_108,
      I => X(30)
    );
  ProtoComp28_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_30_IBUF_108,
      O => X_30_IBUF_0
    );
  X_15_IBUF : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_15_IBUF_111,
      I => X(15)
    );
  ProtoComp28_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD322",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_15_IBUF_111,
      O => X_15_IBUF_0
    );
  X_23_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_23_IBUF_114,
      I => X(23)
    );
  ProtoComp28_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_23_IBUF_114,
      O => X_23_IBUF_0
    );
  X_31_IBUF : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_31_IBUF_117,
      I => X(31)
    );
  ProtoComp28_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD338",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_31_IBUF_117,
      O => X_31_IBUF_0
    );
  X_16_IBUF : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_16_IBUF_120,
      I => X(16)
    );
  ProtoComp28_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD326",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_16_IBUF_120,
      O => X_16_IBUF_0
    );
  X_24_IBUF : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_24_IBUF_123,
      I => X(24)
    );
  ProtoComp28_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD294",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_24_IBUF_123,
      O => X_24_IBUF_0
    );
  X_17_IBUF : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_17_IBUF_126,
      I => X(17)
    );
  ProtoComp28_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD324",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_17_IBUF_126,
      O => X_17_IBUF_0
    );
  X_25_IBUF : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_25_IBUF_129,
      I => X(25)
    );
  ProtoComp28_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD325",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_25_IBUF_129,
      O => X_25_IBUF_0
    );
  Y_10_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_10_IBUF_132,
      I => Y(10)
    );
  ProtoComp28_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_10_IBUF_132,
      O => Y_10_IBUF_0
    );
  X_18_IBUF : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_18_IBUF_135,
      I => X(18)
    );
  ProtoComp28_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD334",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_18_IBUF_135,
      O => X_18_IBUF_0
    );
  X_26_IBUF : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_26_IBUF_138,
      I => X(26)
    );
  ProtoComp28_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD330",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_26_IBUF_138,
      O => X_26_IBUF_0
    );
  Y_11_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_11_IBUF_141,
      I => Y(11)
    );
  ProtoComp28_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_11_IBUF_141,
      O => Y_11_IBUF_0
    );
  X_19_IBUF : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_19_IBUF_144,
      I => X(19)
    );
  ProtoComp28_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD333",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_19_IBUF_144,
      O => X_19_IBUF_0
    );
  X_27_IBUF : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_27_IBUF_147,
      I => X(27)
    );
  ProtoComp28_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD327",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_27_IBUF_147,
      O => X_27_IBUF_0
    );
  Y_12_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_12_IBUF_150,
      I => Y(12)
    );
  ProtoComp28_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_12_IBUF_150,
      O => Y_12_IBUF_0
    );
  Y_20_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_20_IBUF_153,
      I => Y(20)
    );
  ProtoComp28_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_20_IBUF_153,
      O => Y_20_IBUF_0
    );
  X_28_IBUF : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_28_IBUF_156,
      I => X(28)
    );
  ProtoComp28_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD335",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_28_IBUF_156,
      O => X_28_IBUF_0
    );
  Y_13_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_13_IBUF_159,
      I => Y(13)
    );
  ProtoComp28_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_13_IBUF_159,
      O => Y_13_IBUF_0
    );
  Y_21_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_21_IBUF_162,
      I => Y(21)
    );
  ProtoComp28_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_21_IBUF_162,
      O => Y_21_IBUF_0
    );
  X_29_IBUF : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      O => X_29_IBUF_165,
      I => X(29)
    );
  ProtoComp28_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD336",
      PATHPULSE => 202 ps
    )
    port map (
      I => X_29_IBUF_165,
      O => X_29_IBUF_0
    );
  Y_14_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_14_IBUF_168,
      I => Y(14)
    );
  ProtoComp28_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_14_IBUF_168,
      O => Y_14_IBUF_0
    );
  Y_22_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_22_IBUF_171,
      I => Y(22)
    );
  ProtoComp28_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_22_IBUF_171,
      O => Y_22_IBUF_0
    );
  Y_30_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_30_IBUF_174,
      I => Y(30)
    );
  ProtoComp28_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_30_IBUF_174,
      O => Y_30_IBUF_0
    );
  Y_15_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_15_IBUF_177,
      I => Y(15)
    );
  ProtoComp28_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_15_IBUF_177,
      O => Y_15_IBUF_0
    );
  Y_23_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_23_IBUF_180,
      I => Y(23)
    );
  ProtoComp28_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_23_IBUF_180,
      O => Y_23_IBUF_0
    );
  Y_31_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_31_IBUF_183,
      I => Y(31)
    );
  ProtoComp28_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_31_IBUF_183,
      O => Y_31_IBUF_0
    );
  Y_16_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_16_IBUF_186,
      I => Y(16)
    );
  ProtoComp28_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_16_IBUF_186,
      O => Y_16_IBUF_0
    );
  Y_24_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_24_IBUF_189,
      I => Y(24)
    );
  ProtoComp28_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_24_IBUF_189,
      O => Y_24_IBUF_0
    );
  Y_17_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_17_IBUF_192,
      I => Y(17)
    );
  ProtoComp28_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_17_IBUF_192,
      O => Y_17_IBUF_0
    );
  Y_25_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_25_IBUF_195,
      I => Y(25)
    );
  ProtoComp28_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_25_IBUF_195,
      O => Y_25_IBUF_0
    );
  Z_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_Z_10_OBUF_I,
      O => Z(10)
    );
  Y_18_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_18_IBUF_200,
      I => Y(18)
    );
  ProtoComp28_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_18_IBUF_200,
      O => Y_18_IBUF_0
    );
  Y_26_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_26_IBUF_203,
      I => Y(26)
    );
  ProtoComp28_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_26_IBUF_203,
      O => Y_26_IBUF_0
    );
  Z_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_Z_11_OBUF_I,
      O => Z(11)
    );
  Y_19_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_19_IBUF_208,
      I => Y(19)
    );
  ProtoComp28_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_19_IBUF_208,
      O => Y_19_IBUF_0
    );
  Y_27_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_27_IBUF_211,
      I => Y(27)
    );
  ProtoComp28_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_27_IBUF_211,
      O => Y_27_IBUF_0
    );
  Z_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => NlwBufferSignal_Z_12_OBUF_I,
      O => Z(12)
    );
  Z_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_Z_20_OBUF_I,
      O => Z(20)
    );
  Y_28_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_28_IBUF_218,
      I => Y(28)
    );
  ProtoComp28_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_28_IBUF_218,
      O => Y_28_IBUF_0
    );
  Z_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => NlwBufferSignal_Z_13_OBUF_I,
      O => Z(13)
    );
  Z_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_Z_21_OBUF_I,
      O => Z(21)
    );
  Y_29_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      O => Y_29_IBUF_225,
      I => Y(29)
    );
  ProtoComp28_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 202 ps
    )
    port map (
      I => Y_29_IBUF_225,
      O => Y_29_IBUF_0
    );
  Z_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_Z_14_OBUF_I,
      O => Z(14)
    );
  Z_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_Z_22_OBUF_I,
      O => Z(22)
    );
  Z_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD261"
    )
    port map (
      I => NlwBufferSignal_Z_30_OBUF_I,
      O => Z(30)
    );
  Z_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_Z_15_OBUF_I,
      O => Z(15)
    );
  Z_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_Z_23_OBUF_I,
      O => Z(23)
    );
  Z_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD262"
    )
    port map (
      I => NlwBufferSignal_Z_31_OBUF_I,
      O => Z(31)
    );
  Z_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_Z_16_OBUF_I,
      O => Z(16)
    );
  Z_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_Z_24_OBUF_I,
      O => Z(24)
    );
  Z_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_Z_17_OBUF_I,
      O => Z(17)
    );
  Z_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_Z_25_OBUF_I,
      O => Z(25)
    );
  Z_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_Z_18_OBUF_I,
      O => Z(18)
    );
  Z_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_Z_26_OBUF_I,
      O => Z(26)
    );
  Z_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_Z_19_OBUF_I,
      O => Z(19)
    );
  Z_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_Z_27_OBUF_I,
      O => Z(27)
    );
  Z_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_Z_28_OBUF_I,
      O => Z(28)
    );
  Z_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_Z_29_OBUF_I,
      O => Z(29)
    );
  U3_Mmux_Z253 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y71",
      INIT => X"00000E0EFF00FF00"
    )
    port map (
      ADR2 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      ADR5 => SPECIAL,
      ADR4 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_Mmux_Z25,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR3 => U3_Mmux_Z251_3504,
      O => Z_31_OBUF_3589
    );
  U3_U1_ShiftPos_1_201 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y72",
      INIT => X"FC0CFC0CAFAFA0A0"
    )
    port map (
      ADR5 => U3_U1_ShiftPos(0),
      ADR2 => U3_U1_ShiftPos(1),
      ADR1 => ZMANT(19),
      ADR3 => ZMANT(17),
      ADR0 => ZMANT(18),
      ADR4 => ZMANT(20),
      O => U3_U1_ShiftPos_1_mmx_out7
    );
  U3_U1_U5_GEN_20_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y72",
      INIT => X"4FEF4AEA45E540E0"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos_1_mmx_out13,
      ADR1 => U3_U1_ShiftPos_1_mmx_out2,
      ADR5 => U3_U1_ShiftPos_1_mmx_out12,
      ADR4 => U3_U1_ShiftPos_1_mmx_out7,
      O => U3_U1_U5_GEN_20_U_X_S_AND_5_o
    );
  U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y74",
      INIT => X"9696696996696996"
    )
    port map (
      ADR0 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR1 => OP_IBUF_0,
      ADR2 => X_31_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR5 => U1_U2_Mmux_Y7,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_C2Mant_7_Q
    );
  U2_U1_U1_GEN_7_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y75",
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      ADR3 => U2_U1_XXorS(5),
      ADR1 => U2_U1_XXorS(6),
      ADR5 => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U2_U1_XXorS(3),
      ADR2 => U2_U1_XXorS(2),
      ADR4 => U2_U1_XXorS(4),
      O => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640
    );
  U2_U3_GEN_0_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y77",
      INIT => X"CCCC3336CCCC336C"
    )
    port map (
      ADR1 => XEXP(0),
      ADR3 => U2_C2Mant_26_Q,
      ADR0 => XMAN(25),
      ADR5 => U2_C2Mant_25_Q,
      ADR2 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR4 => U2_OperationLogic,
      O => XEXP_INCR(0)
    );
  U2_U1_Mxor_XXorS_13_xo_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y79",
      INIT => X"FFFB0004FFF80007"
    )
    port map (
      ADR4 => U2_OperationLogic,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR0 => U1_ExpDiff_2_mmx_out11,
      ADR1 => U1_ExpDiff(3),
      ADR5 => N70,
      ADR2 => U1_ExpDiff(4),
      O => U2_U1_XXorS(13)
    );
  U2_U1_Mxor_XXorS_13_xo_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y79",
      INIT => X"03F302F7303F313B"
    )
    port map (
      ADR3 => U1_ExpDiff_1_mmx_out3,
      ADR2 => U1_U1_EXP_COMP_COUT,
      ADR5 => U1_U1_EXP_COMP_S(2),
      ADR0 => U1_ExpDiff_0_0,
      ADR4 => U1_U1_EXP_COMP_S_1_0,
      ADR1 => U1_ExpDiff_1_mmx_out2,
      O => N70
    );
  U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1_U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_C2Mant_23_Q,
      O => U2_C2Mant_23_0
    );
  U2_U1_U1_GEN_24_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y80",
      INIT => X"FF5FFFFFFF5FFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_U1_XXorS(21),
      ADR0 => U2_U1_XXorS(22),
      ADR4 => U2_U1_XXorS(23),
      ADR3 => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323,
      ADR5 => '1',
      O => U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1
    );
  U2_U1_U1_GEN_23_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y80",
      INIT => X"FF5F00A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_U1_XXorS(21),
      ADR0 => U2_U1_XXorS(22),
      ADR4 => U2_U1_XXorS(23),
      ADR3 => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323,
      O => U2_C2Mant_23_Q
    );
  U2_U1_U1_GEN_26_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y80",
      INIT => X"F05AF05AF0F0F0F0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U2_U1_XXorS(26),
      ADR3 => U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1,
      ADR5 => U2_U1_XXorS(24),
      ADR0 => U2_U1_XXorS(25),
      O => U2_C2Mant_26_Q
    );
  U2_U1_Mxor_XXorS_22_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y80",
      INIT => X"C3CCCCCC93CC9CCC"
    )
    port map (
      ADR1 => U2_OperationLogic,
      ADR2 => U1_ExpDiff(2),
      ADR5 => U1_U1_EXP_COMP_S_1_0,
      ADR0 => U1_ExpDiff_0_0,
      ADR4 => U1_ExpDiff_1_mmx_out11,
      ADR3 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(22)
    );
  U3_Mmux_Z251 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y71",
      INIT => X"0040226200400040"
    )
    port map (
      ADR0 => U3_U3_XZero,
      ADR3 => U1_U3_XExponent255,
      ADR1 => U3_U3_YZero,
      ADR2 => X_31_IBUF_0,
      ADR5 => Y_31_IBUF_0,
      ADR4 => U1_U3_YExponent255,
      O => U3_Mmux_Z25
    );
  U3_U1_U5_GEN_24_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y72",
      INIT => X"ACACFFF0ACAC0F00"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(1),
      ADR2 => U3_U1_ShiftPos(0),
      ADR1 => ZMANT(22),
      ADR0 => ZMANT(21),
      ADR5 => ZMANT(23),
      ADR3 => ZMANT(24),
      O => U3_U1_U5_GEN_24_U_X_S_AND_5_o
    );
  U3_U1_U5_GEN_24_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y72",
      INIT => X"CACAFF0FCACAF000"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(2),
      ADR2 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_ShiftPos_1_mmx_out7,
      ADR1 => U3_U1_ShiftPos_1_mmx_out21,
      ADR3 => U3_U1_ShiftPos_1_mmx_out2,
      ADR5 => U3_U1_U5_GEN_24_U_X_S_AND_5_o,
      O => U3_U1_U5_GEN_24_U_X_S_AND_5_o1_3654
    );
  U3_U1_ShiftPos_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y72",
      INIT => X"FFAA00AAF0CCF0CC"
    )
    port map (
      ADR5 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR0 => ZMANT(15),
      ADR4 => ZMANT(13),
      ADR2 => ZMANT(14),
      ADR1 => ZMANT(16),
      O => U3_U1_ShiftPos_1_mmx_out2
    );
  U3_U1_U5_GEN_16_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y72",
      INIT => X"AFA0AFA0CFCFC0C0"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(2),
      ADR5 => U3_U1_ShiftPos(3),
      ADR1 => U3_U1_ShiftPos_1_mmx_out21,
      ADR0 => U3_U1_ShiftPos_1_mmx_out12,
      ADR3 => U3_U1_ShiftPos_1_mmx_out17,
      ADR4 => U3_U1_ShiftPos_1_mmx_out2,
      O => U3_U1_U5_GEN_16_U_X_S_AND_5_o
    );
  U3_U1_ShiftPos_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y73",
      INIT => X"CFCCC0CCCFCCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => ZMANT(23),
      ADR2 => ZMANT(26),
      ADR4 => ZMANT(22),
      ADR5 => ZMANT(24),
      ADR3 => ZMANT(25),
      O => U3_U1_ShiftPos_0_mmx_out10
    );
  U2_U1_U1_GEN_5_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y75",
      INIT => X"FF00FF005FA0FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => U2_U1_XXorS(5),
      ADR5 => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR2 => U2_U1_XXorS(2),
      ADR0 => U2_U1_XXorS(3),
      ADR4 => U2_U1_XXorS(4),
      O => U2_C2Mant_5_Q
    );
  U2_Mmux_ZMANT191 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y77",
      INIT => X"FFFFFFFF33333220"
    )
    port map (
      ADR1 => U2_OperationLogic,
      ADR2 => U2_C2Mant_25_Q,
      ADR3 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR0 => XMAN(25),
      ADR4 => U2_C2Mant_26_Q,
      ADR5 => U2_ZMant_Temp_26_Q,
      O => ZMANT(26)
    );
  U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_C2Mant_20_pack_1,
      O => U2_C2Mant_20_Q
    );
  U2_U1_U1_GEN_21_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y79",
      INIT => X"FFFF7FFFFFFF7FFF"
    )
    port map (
      ADR1 => U2_U1_XXorS(19),
      ADR3 => U2_U1_XXorS(20),
      ADR4 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR0 => U2_U1_XXorS(17),
      ADR2 => U2_U1_XXorS(18),
      ADR5 => '1',
      O => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323
    );
  U2_U1_U1_GEN_20_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y79",
      INIT => X"FF007F80"
    )
    port map (
      ADR1 => U2_U1_XXorS(19),
      ADR3 => U2_U1_XXorS(20),
      ADR4 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR0 => U2_U1_XXorS(17),
      ADR2 => U2_U1_XXorS(18),
      O => U2_C2Mant_20_pack_1
    );
  U2_Mmux_ZMANT111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y79",
      INIT => X"E1871E7899669966"
    )
    port map (
      ADR5 => U2_XExpIncr,
      ADR0 => U2_U2_GEN_19_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(19),
      ADR3 => U2_C2Mant_19_Q,
      ADR4 => XMAN(20),
      ADR2 => U2_C2Mant_20_Q,
      O => ZMANT(19)
    );
  U2_ZMant_Temp_20_U2_ZMant_Temp_20_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U2_GEN_21_U_Mxor_S_xo_0_1_pack_3,
      O => U2_U2_GEN_21_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_20_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y80",
      INIT => X"E1871E78E1871E78"
    )
    port map (
      ADR3 => XMAN(19),
      ADR0 => U2_C2Mant_19_Q,
      ADR1 => U2_U2_GEN_19_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(20),
      ADR4 => U2_C2Mant_20_Q,
      ADR5 => '1',
      O => U2_ZMant_Temp_20_Q
    );
  U2_U2_GEN_21_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y80",
      INIT => X"FEF8E080"
    )
    port map (
      ADR3 => XMAN(19),
      ADR0 => U2_C2Mant_19_Q,
      ADR1 => U2_U2_GEN_19_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(20),
      ADR4 => U2_C2Mant_20_Q,
      O => U2_U2_GEN_21_U_Mxor_S_xo_0_1_pack_3
    );
  U2_Mmux_ZMANT131 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y80",
      INIT => X"CFC03F303F30CFC0"
    )
    port map (
      ADR0 => '1',
      ADR2 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_21_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(21),
      ADR4 => U2_C2Mant_21_Q,
      ADR3 => U2_ZMant_Temp_20_Q,
      O => ZMANT(20)
    );
  U2_U2_GEN_23_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y80",
      INIT => X"FEA880EAEA80FEA8"
    )
    port map (
      ADR0 => XMAN(22),
      ADR3 => U2_U1_XXorS(22),
      ADR4 => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323,
      ADR5 => U2_U1_XXorS(21),
      ADR2 => XMAN(21),
      ADR1 => U2_U2_GEN_21_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_23_U_Mxor_S_xo_0_1
    );
  U3_U1_ShiftPos_1_16 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y71",
      INIT => X"FC0CAFAFFC0CA0A0"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(0),
      ADR4 => U3_U1_ShiftPos(1),
      ADR0 => ZMANT(14),
      ADR3 => ZMANT(12),
      ADR1 => ZMANT(13),
      ADR5 => ZMANT(15),
      O => U3_U1_ShiftPos_1_mmx_out1
    );
  U3_U1_U5_GEN_15_U_X_S_AND_5_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y71",
      INIT => X"5353535300F00FFF"
    )
    port map (
      ADR5 => U3_U1_ShiftPos(3),
      ADR1 => U3_U1_ShiftPos_1_mmx_out16,
      ADR2 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos_1_mmx_out11,
      ADR3 => U3_U1_ShiftPos_1_mmx_out20,
      ADR4 => U3_U1_ShiftPos_1_mmx_out1,
      O => N88
    );
  U3_U1_U1_Mmux_SHIFT210_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y72",
      INIT => X"555F555FFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ZMANT(13),
      ADR2 => ZMANT(14),
      ADR0 => U3_U1_U1_GND_29_o_X_26_equal_13_o_26_1,
      ADR5 => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_12,
      O => N110
    );
  U3_U1_U1_GND_29_o_X_26_equal_25_o_26_112 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y72",
      INIT => X"0000001100000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_111,
      ADR1 => ZMANT(19),
      ADR3 => ZMANT(20),
      ADR0 => ZMANT(21),
      ADR4 => ZMANT(22),
      O => U3_U1_U1_GND_29_o_X_26_equal_13_o_26_1
    );
  U3_U1_U1_GND_29_o_X_26_equal_25_o_26_11 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y72",
      INIT => X"0000000001000000"
    )
    port map (
      ADR2 => ZMANT(11),
      ADR0 => ZMANT(12),
      ADR1 => ZMANT(13),
      ADR5 => ZMANT(14),
      ADR4 => U3_U1_U1_GND_29_o_X_26_equal_13_o_26_1,
      ADR3 => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_12,
      O => U3_U1_ShiftPos(4)
    );
  U2_Mmux_ZMANT261 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y73",
      INIT => X"DD7777DD88222288"
    )
    port map (
      ADR2 => '1',
      ADR0 => U2_XExpIncr,
      ADR1 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR4 => XMAN(9),
      ADR3 => U2_C2Mant_9_0,
      ADR5 => U2_ZMant_Temp_8_Q,
      O => ZMANT(8)
    );
  U2_U2_GEN_8_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y73",
      INIT => X"C396963C69C3C396"
    )
    port map (
      ADR4 => XMAN(7),
      ADR5 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR0 => U2_U1_XXorS(7),
      ADR3 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(8),
      ADR2 => U2_U1_XXorS(8),
      O => U2_ZMant_Temp_8_Q
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o1_U3_U1_U5_GEN_23_U_X_S_AND_5_o1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U1_U5_GEN_25_U_X_S_AND_5_o2,
      O => U3_U1_U5_GEN_25_U_X_S_AND_5_o2_0
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y74",
      INIT => X"FFFF0022FFDD0000"
    )
    port map (
      ADR2 => '1',
      ADR4 => ZMANT(21),
      ADR1 => U2_ZMant_Temp_26_Q,
      ADR3 => U2_XExpIncr,
      ADR0 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR5 => U2_ZMant_Temp_20_Q,
      O => U3_U1_U5_GEN_23_U_X_S_AND_5_o1
    );
  U3_U1_U1_Mmux_SHIFT16 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y74",
      INIT => X"0505000005050000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U2_XExpIncr,
      ADR2 => U2_ZMant_Temp_26_Q,
      ADR4 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR5 => '1',
      O => U3_U1_ShiftPos(0)
    );
  U3_U1_U5_GEN_25_U_X_S_AND_5_o3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y74",
      INIT => X"FE04FF00"
    )
    port map (
      ADR3 => ZMANT(25),
      ADR1 => U2_ZMant_Temp_24_Q,
      ADR0 => U2_XExpIncr,
      ADR2 => U2_ZMant_Temp_26_Q,
      ADR4 => U3_U1_U1_Mmux_SHIFT14_3647,
      O => U3_U1_U5_GEN_25_U_X_S_AND_5_o2
    );
  U3_U1_U1_Mmux_SHIFT15 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y74",
      INIT => X"FF00FF00FFCCFFFE"
    )
    port map (
      ADR5 => ZMANT(24),
      ADR4 => ZMANT(22),
      ADR0 => ZMANT(21),
      ADR2 => U3_U1_U1_Mmux_SHIFT13_3805,
      ADR1 => ZMANT(23),
      ADR3 => ZMANT(25),
      O => U3_U1_U1_Mmux_SHIFT14_3647
    );
  U2_U1_U1_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"CC6CCCCCCCCCCCCC"
    )
    port map (
      ADR1 => U2_U1_XXorS(6),
      ADR3 => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR5 => U2_U1_XXorS(2),
      ADR0 => U2_U1_XXorS(3),
      ADR2 => U2_U1_XXorS(4),
      ADR4 => U2_U1_XXorS(5),
      O => U2_C2Mant_6_Q
    );
  U2_U1_U1_GEN_2_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y75",
      INIT => X"7DD77DD7FFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR3 => Y_31_IBUF_0,
      ADR1 => OP_IBUF_0,
      ADR2 => X_31_IBUF_0,
      ADR5 => U2_U1_XXorS(1),
      ADR0 => U2_U1_XXorS(0),
      O => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1
    );
  U2_C2Mant_16_U2_C2Mant_16_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_504,
      O => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0
    );
  U2_C2Mant_16_U2_C2Mant_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U1_XXorS_15_pack_2,
      O => U2_U1_XXorS(15)
    );
  U2_C2Mant_16_U2_C2Mant_16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N112_pack_1,
      O => N112
    );
  U2_U1_U1_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"CCCC6CCCCCCC6CCC"
    )
    port map (
      ADR1 => U2_U1_XXorS(16),
      ADR4 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR0 => U2_U1_XXorS(13),
      ADR3 => U2_U1_XXorS(14),
      ADR2 => U2_U1_XXorS(15),
      ADR5 => '1',
      O => U2_C2Mant_16_Q
    );
  U2_U1_U1_GEN_17_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"FFFF7FFF"
    )
    port map (
      ADR1 => U2_U1_XXorS(16),
      ADR4 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR0 => U2_U1_XXorS(13),
      ADR3 => U2_U1_XXorS(14),
      ADR2 => U2_U1_XXorS(15),
      O => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_504
    );
  U3_Mmux_Z252 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"50FAFA5050FAFA50"
    )
    port map (
      ADR1 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => OP_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR2 => X_31_IBUF_0,
      ADR5 => '1',
      O => U3_Mmux_Z251_3504
    );
  U2_U1_Mxor_XXorS_15_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"3CC3C33C"
    )
    port map (
      ADR1 => YMAN(15),
      ADR0 => '1',
      ADR3 => OP_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR2 => X_31_IBUF_0,
      O => U2_U1_XXorS_15_pack_2
    );
  U3_U1_U1_Mmux_SHIFT3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"FFFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => ZMANT(19),
      ADR3 => ZMANT(20),
      ADR4 => ZMANT(21),
      ADR2 => ZMANT(22),
      ADR5 => '1',
      O => N104
    );
  U3_U1_U1_Mmux_SHIFT211_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"00000F0E"
    )
    port map (
      ADR0 => U3_U1_U1_Mmux_SHIFT29,
      ADR1 => ZMANT(19),
      ADR3 => ZMANT(20),
      ADR4 => ZMANT(21),
      ADR2 => ZMANT(22),
      O => N112_pack_1
    );
  U3_U1_U1_Mmux_SHIFT211 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y76",
      INIT => X"0011001100110010"
    )
    port map (
      ADR3 => U2_XExpIncr,
      ADR1 => U2_ZMant_Temp_25_Q,
      ADR0 => U2_ZMant_Temp_26_Q,
      ADR4 => ZMANT(23),
      ADR5 => ZMANT(24),
      ADR2 => N112,
      O => U3_U1_ShiftPos(1)
    );
  U2_Mmux_ZMANT101 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"99FF990066FF6600"
    )
    port map (
      ADR2 => '1',
      ADR3 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_19_U_Mxor_S_xo_0_1,
      ADR0 => XMAN(19),
      ADR1 => U2_C2Mant_19_Q,
      ADR4 => U2_ZMant_Temp_18_Q,
      O => ZMANT(18)
    );
  U2_U2_GEN_18_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"E87E17811781E87E"
    )
    port map (
      ADR0 => XMAN(17),
      ADR3 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR1 => U2_U1_XXorS(17),
      ADR2 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => XMAN(18),
      ADR4 => U2_U1_XXorS(18),
      O => U2_ZMant_Temp_18_Q
    );
  U2_Mmux_ZMANT171 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y77",
      INIT => X"DD8877227722DD88"
    )
    port map (
      ADR2 => '1',
      ADR0 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR1 => XMAN(25),
      ADR4 => U2_C2Mant_25_Q,
      ADR3 => U2_ZMant_Temp_24_Q,
      O => ZMANT(24)
    );
  U2_U1_Mxor_XXorS_6_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"FA0505FA05FAFA05"
    )
    port map (
      ADR1 => '1',
      ADR3 => OP_IBUF_0,
      ADR5 => X_31_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR2 => U1_U2_Mmux_Y6_0,
      ADR0 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(6)
    );
  U1_U2_Mmux_Y2513 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"0F0F0A0AFF0FFA0A"
    )
    port map (
      ADR1 => '1',
      ADR2 => U1_ExpDiff(4),
      ADR4 => U1_U2_Mmux_Y2511_3757,
      ADR0 => U1_U2_Mmux_Y2512_3758,
      ADR3 => U1_ExpDiff_2_mmx_out7,
      ADR5 => U1_ExpDiff(3),
      O => U1_U2_Mmux_Y251
    );
  U2_U1_Mxor_XXorS_3_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y78",
      INIT => X"9696A5A569695A5A"
    )
    port map (
      ADR3 => '1',
      ADR0 => OP_IBUF_0,
      ADR2 => X_31_IBUF_0,
      ADR5 => Y_31_IBUF_0,
      ADR1 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR4 => U1_U2_Mmux_Y251,
      O => U2_U1_XXorS(3)
    );
  U2_Mmux_ZMANT161 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y79",
      INIT => X"FA50AF05AF05FA50"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_XExpIncr,
      ADR4 => U2_U2_GEN_23_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(23),
      ADR5 => U2_C2Mant_23_0,
      ADR3 => U2_ZMant_Temp_24_Q,
      O => ZMANT(23)
    );
  U2_U2_GEN_24_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y79",
      INIT => X"A55A966996695AA5"
    )
    port map (
      ADR1 => XMAN(23),
      ADR5 => U2_C2Mant_23_0,
      ADR4 => U2_U2_GEN_23_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(24),
      ADR0 => U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1,
      ADR3 => U2_U1_XXorS(24),
      O => U2_ZMant_Temp_24_Q
    );
  U2_U1_Mxor_XXorS_14_xo_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y80",
      INIT => X"EEFCEE3022FC2230"
    )
    port map (
      ADR1 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff(3),
      ADR4 => U1_ExpDiff_1_mmx_out10,
      ADR5 => U2_U1_Mxor_XXorS_14_xo_0_2_3493,
      ADR0 => U1_ExpDiff_1_mmx_out11,
      ADR2 => U1_ExpDiff_1_mmx_out9,
      O => U2_U1_Mxor_XXorS_14_xo_0_3_3714
    );
  U2_Mmux_ZMANT141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y80",
      INIT => X"BB8888BB88BBBB88"
    )
    port map (
      ADR2 => '1',
      ADR1 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_21_U_Mxor_S_xo_0_1,
      ADR3 => XMAN(21),
      ADR4 => U2_C2Mant_21_Q,
      ADR0 => U2_ZMant_Temp_22_Q,
      O => ZMANT(21)
    );
  U2_Mmux_ZMANT151 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y80",
      INIT => X"A5A55A5AFF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_XExpIncr,
      ADR0 => U2_U2_GEN_23_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(23),
      ADR4 => U2_C2Mant_23_0,
      ADR3 => U2_ZMant_Temp_22_Q,
      O => ZMANT(22)
    );
  U2_U2_GEN_22_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y80",
      INIT => X"D2B4B42D2D4B4BD2"
    )
    port map (
      ADR4 => XMAN(21),
      ADR1 => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323,
      ADR0 => U2_U1_XXorS(21),
      ADR3 => U2_U2_GEN_21_U_Mxor_S_xo_0_1,
      ADR5 => XMAN(22),
      ADR2 => U2_U1_XXorS(22),
      O => U2_ZMant_Temp_22_Q
    );
  U2_U1_Mxor_XXorS_21_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y81",
      INIT => X"9669969696699696"
    )
    port map (
      ADR5 => '1',
      ADR1 => OP_IBUF_0,
      ADR0 => X_31_IBUF_0,
      ADR2 => Y_31_IBUF_0,
      ADR3 => U1_ExpDiff_2_mmx_out11,
      ADR4 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(21)
    );
  U3_U1_ShiftPos_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y71",
      INIT => X"AFCFA0CFAFC0A0C0"
    )
    port map (
      ADR3 => U3_U1_ShiftPos(0),
      ADR2 => U3_U1_ShiftPos(1),
      ADR4 => ZMANT(6),
      ADR0 => ZMANT(4),
      ADR1 => ZMANT(5),
      ADR5 => ZMANT(7),
      O => U3_U1_ShiftPos_1_mmx_out16
    );
  U2_Mmux_ZMANT251 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y71",
      INIT => X"FF00A5A5FF005A5A"
    )
    port map (
      ADR1 => '1',
      ADR4 => U2_XExpIncr,
      ADR0 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(7),
      ADR5 => U2_C2Mant_7_Q,
      ADR3 => U2_ZMant_Temp_8_Q,
      O => ZMANT(7)
    );
  U3_U1_U5_GEN_22_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y72",
      INIT => X"FC30EEEEFC302222"
    )
    port map (
      ADR1 => U3_U1_ShiftPos(0),
      ADR4 => U3_U1_ShiftPos(1),
      ADR5 => ZMANT(21),
      ADR3 => ZMANT(19),
      ADR2 => ZMANT(20),
      ADR0 => ZMANT(22),
      O => U3_U1_U5_GEN_22_U_X_S_AND_5_o
    );
  U3_U1_U1_Mmux_SHIFT13 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y72",
      INIT => X"FF33FF33FF00FF32"
    )
    port map (
      ADR1 => ZMANT(14),
      ADR4 => ZMANT(12),
      ADR2 => ZMANT(11),
      ADR0 => U3_U1_U1_Mmux_SHIFT11_3804,
      ADR5 => ZMANT(13),
      ADR3 => ZMANT(15),
      O => U3_U1_U1_Mmux_SHIFT12_3823
    );
  U3_U1_U1_Mmux_SHIFT14 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y72",
      INIT => X"00FF00FF000D000C"
    )
    port map (
      ADR3 => ZMANT(20),
      ADR2 => ZMANT(18),
      ADR1 => ZMANT(17),
      ADR4 => U3_U1_U1_Mmux_SHIFT12_3823,
      ADR0 => ZMANT(16),
      ADR5 => ZMANT(19),
      O => U3_U1_U1_Mmux_SHIFT13_3805
    );
  U2_U2_GEN_11_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y73",
      INIT => X"FEEAA880EFAE8A08"
    )
    port map (
      ADR0 => XMAN(10),
      ADR4 => U2_C2Mant_10_Q,
      ADR1 => XMAN(9),
      ADR5 => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR2 => U2_U1_XXorS(9),
      ADR3 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_11_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_9_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y73",
      INIT => X"FEE0F8808F08FEE0"
    )
    port map (
      ADR3 => XMAN(8),
      ADR2 => U2_U1_XXorS(8),
      ADR5 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR4 => U2_U1_XXorS(7),
      ADR0 => XMAN(7),
      ADR1 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_9_U_Mxor_S_xo_0_1
    );
  U3_U1_U1_GND_29_o_X_26_equal_25_o_26_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y74",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_XExpIncr,
      ADR5 => U2_ZMant_Temp_24_Q,
      ADR4 => ZMANT(23),
      ADR2 => U2_ZMant_Temp_26_Q,
      ADR3 => U2_ZMant_Temp_25_Q,
      O => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_111
    );
  U3_U1_U1_Mmux_SHIFT210 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y75",
      INIT => X"FF00FF00FF00B000"
    )
    port map (
      ADR3 => U3_U1_U1_Mmux_SHIFT23,
      ADR2 => N110,
      ADR0 => U3_U1_U1_Mmux_SHIFT27_3511,
      ADR1 => U3_U1_ShiftPos(4),
      ADR4 => ZMANT(16),
      ADR5 => ZMANT(15),
      O => U3_U1_U1_Mmux_SHIFT29
    );
  U2_Mmux_ZMANT71 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y75",
      INIT => X"B887744B87744BB8"
    )
    port map (
      ADR1 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_15_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(15),
      ADR3 => U2_C2Mant_15_Q,
      ADR0 => XMAN(16),
      ADR4 => U2_C2Mant_16_Q,
      O => ZMANT(15)
    );
  U3_U1_U1_Mmux_SHIFT24 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"0151045404540151"
    )
    port map (
      ADR0 => ZMANT(18),
      ADR2 => U2_XExpIncr,
      ADR5 => XMAN(17),
      ADR1 => U2_C2Mant_17_Q,
      ADR4 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR3 => U2_ZMant_Temp_18_Q,
      O => U3_U1_U1_Mmux_SHIFT23
    );
  U2_Mmux_ZMANT91 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"D88DD88D8DD88DD8"
    )
    port map (
      ADR4 => '1',
      ADR0 => U2_XExpIncr,
      ADR3 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR5 => XMAN(17),
      ADR2 => U2_C2Mant_17_Q,
      ADR1 => U2_ZMant_Temp_18_Q,
      O => ZMANT(17)
    );
  U2_ZMant_Temp_16_U2_ZMant_Temp_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U2_GEN_17_U_Mxor_S_xo_0_1_pack_3,
      O => U2_U2_GEN_17_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_16_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y77",
      INIT => X"9996966699969666"
    )
    port map (
      ADR3 => XMAN(15),
      ADR4 => U2_C2Mant_15_Q,
      ADR2 => U2_U2_GEN_15_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(16),
      ADR0 => U2_C2Mant_16_Q,
      ADR5 => '1',
      O => U2_ZMant_Temp_16_Q
    );
  U2_U2_GEN_17_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y77",
      INIT => X"EEE8E888"
    )
    port map (
      ADR3 => XMAN(15),
      ADR4 => U2_C2Mant_15_Q,
      ADR2 => U2_U2_GEN_15_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(16),
      ADR0 => U2_C2Mant_16_Q,
      O => U2_U2_GEN_17_U_Mxor_S_xo_0_1_pack_3
    );
  U2_Mmux_ZMANT81 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y77",
      INIT => X"BB8877447744BB88"
    )
    port map (
      ADR2 => '1',
      ADR1 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      ADR0 => XMAN(17),
      ADR4 => U2_C2Mant_17_Q,
      ADR3 => U2_ZMant_Temp_16_Q,
      O => ZMANT(16)
    );
  U2_U2_GEN_19_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y77",
      INIT => X"FAE8D4FAE8A050E8"
    )
    port map (
      ADR2 => XMAN(18),
      ADR0 => U2_U1_XXorS(18),
      ADR4 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR3 => U2_U1_XXorS(17),
      ADR5 => XMAN(17),
      ADR1 => U2_U2_GEN_17_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_19_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_26_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => X"B4F0D2C3D2C34B0F"
    )
    port map (
      ADR2 => U2_U1_XXorS(26),
      ADR0 => U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1,
      ADR3 => U2_U1_XXorS(24),
      ADR4 => U2_U1_XXorS(25),
      ADR1 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR5 => XMAN(25),
      O => U2_ZMant_Temp_26_Q
    );
  U2_Mmux_ZMANT181 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => X"FF99FF6600990066"
    )
    port map (
      ADR2 => '1',
      ADR3 => U2_XExpIncr,
      ADR4 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR0 => XMAN(25),
      ADR1 => U2_C2Mant_25_Q,
      ADR5 => U2_ZMant_Temp_26_Q,
      O => ZMANT(25)
    );
  U2_U1_Mxor_XXorS_26_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => X"FFFF0000FF6F0090"
    )
    port map (
      ADR4 => U2_OperationLogic,
      ADR3 => U1_U1_EXP_COMP_S_1_0,
      ADR2 => U1_U2_Mmux_Y181,
      ADR0 => X_23_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR5 => U1_U1_EXP_COMP_S(2),
      O => U2_U1_XXorS(26)
    );
  U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y79",
      INIT => X"DF20FF00FF00FF00"
    )
    port map (
      ADR3 => U2_U1_XXorS(21),
      ADR1 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR4 => U2_U1_XXorS(20),
      ADR2 => U2_U1_XXorS(19),
      ADR5 => U2_U1_XXorS(17),
      ADR0 => U2_U1_XXorS(18),
      O => U2_C2Mant_21_Q
    );
  U2_XExpIncr1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y79",
      INIT => X"5555555055505050"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_OperationLogic,
      ADR4 => U2_C2Mant_25_Q,
      ADR5 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR3 => XMAN(25),
      ADR2 => U2_C2Mant_26_Q,
      O => U2_XExpIncr
    );
  U2_U2_GEN_25_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y79",
      INIT => X"FAAFE88EE88EA00A"
    )
    port map (
      ADR0 => XMAN(24),
      ADR3 => U2_U1_U1_GEN_24_U_Mxor_S_xo_0_1,
      ADR2 => U2_U1_XXorS(24),
      ADR1 => XMAN(23),
      ADR5 => U2_C2Mant_23_0,
      ADR4 => U2_U2_GEN_23_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678
    );
  U1_U2_Mmux_Y1811 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => X"00000000000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => U1_ExpDiff(4),
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR2 => U1_ExpDiff(3),
      O => U1_U2_Mmux_Y181
    );
  U2_U1_Mxor_XXorS_20_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => X"C33C3CC3C33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => OP_IBUF_0,
      ADR3 => X_31_IBUF_0,
      ADR1 => Y_31_IBUF_0,
      ADR4 => U1_ExpDiff_2_mmx_out9,
      ADR5 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(20)
    );
  U2_U1_Mxor_XXorS_24_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => X"A659A65959A659A6"
    )
    port map (
      ADR4 => '1',
      ADR0 => OP_IBUF_0,
      ADR3 => X_31_IBUF_0,
      ADR5 => Y_31_IBUF_0,
      ADR2 => U1_ExpDiff_2_mmx_out18,
      ADR1 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(24)
    );
  U2_U1_U1_GEN_25_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => X"BF40FF00FF00FF00"
    )
    port map (
      ADR3 => U2_U1_XXorS(25),
      ADR0 => U2_U1_U1_GEN_21_U_Mxor_S_xo_0_1_3323,
      ADR2 => U2_U1_XXorS(22),
      ADR5 => U2_U1_XXorS(23),
      ADR1 => U2_U1_XXorS(21),
      ADR4 => U2_U1_XXorS(24),
      O => U2_C2Mant_25_Q
    );
  U3_U1_U1_Mmux_SHIFT1_U3_U1_U1_Mmux_SHIFT1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_MantNorm_23_Q,
      O => U3_MantNorm_23_0
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y71"
    )
    port map (
      IA => N120,
      IB => N121,
      O => U3_MantNorm_23_Q,
      SEL => U3_U1_ShiftPos(3)
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y71",
      INIT => X"00000000FFFFD800"
    )
    port map (
      ADR5 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos_1_mmx_out6,
      ADR1 => U3_U1_ShiftPos_1_mmx_out11,
      ADR4 => U3_U1_U5_GEN_23_U_X_S_AND_5_o2_3626,
      O => N120
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y71",
      INIT => X"0032000200320002"
    )
    port map (
      ADR5 => '1',
      ADR1 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos(2),
      ADR4 => U3_U1_ShiftPos_1_mmx_out20,
      ADR0 => U3_U1_ShiftPos_1_mmx_out1,
      O => N121
    );
  U3_U1_U1_Mmux_SHIFT11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y71",
      INIT => X"F5F0F5F0F5F5F5F1"
    )
    port map (
      ADR0 => ZMANT(4),
      ADR5 => ZMANT(2),
      ADR4 => ZMANT(1),
      ADR1 => ZMANT(0),
      ADR3 => ZMANT(3),
      ADR2 => ZMANT(5),
      O => U3_U1_U1_Mmux_SHIFT1
    );
  U3_U1_U1_Mmux_SHIFT12 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y71",
      INIT => X"0F0F0F0F05010500"
    )
    port map (
      ADR2 => ZMANT(10),
      ADR0 => ZMANT(8),
      ADR3 => ZMANT(7),
      ADR4 => U3_U1_U1_Mmux_SHIFT1,
      ADR1 => ZMANT(6),
      ADR5 => ZMANT(9),
      O => U3_U1_U1_Mmux_SHIFT11_3804
    );
  U3_U1_U1_Mmux_SHIFT412_U3_U1_U1_Mmux_SHIFT412_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U1_U1_Mmux_SHIFT25_pack_2,
      O => U3_U1_U1_Mmux_SHIFT25
    );
  U3_U1_U1_Mmux_SHIFT4121 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y72",
      INIT => X"FFFFFEFEFFFFFEFE"
    )
    port map (
      ADR3 => '1',
      ADR4 => ZMANT(13),
      ADR2 => ZMANT(14),
      ADR0 => ZMANT(11),
      ADR1 => ZMANT(12),
      ADR5 => '1',
      O => U3_U1_U1_Mmux_SHIFT412
    );
  U3_U1_U1_Mmux_SHIFT26 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y72",
      INIT => X"00000E0E"
    )
    port map (
      ADR3 => '1',
      ADR4 => ZMANT(13),
      ADR2 => ZMANT(14),
      ADR0 => ZMANT(11),
      ADR1 => ZMANT(12),
      O => U3_U1_U1_Mmux_SHIFT25_pack_2
    );
  U3_U1_U1_Mmux_SHIFT28 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y72",
      INIT => X"FF03FF03FF03FF02"
    )
    port map (
      ADR1 => ZMANT(10),
      ADR2 => ZMANT(9),
      ADR5 => U3_U1_U1_Mmux_SHIFT26_3514,
      ADR0 => ZMANT(7),
      ADR4 => ZMANT(8),
      ADR3 => U3_U1_U1_Mmux_SHIFT25,
      O => U3_U1_U1_Mmux_SHIFT27_3511
    );
  U3_U1_ShiftPos_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y72",
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR5 => U3_U1_ShiftPos(1),
      ADR1 => ZMANT(18),
      ADR3 => ZMANT(16),
      ADR2 => ZMANT(17),
      ADR0 => ZMANT(19),
      O => U3_U1_ShiftPos_1_mmx_out6
    );
  U3_U1_U5_GEN_19_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y72",
      INIT => X"D8FFD8AAD855D800"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_ShiftPos_1_mmx_out1,
      ADR1 => U3_U1_ShiftPos_1_mmx_out16,
      ADR2 => U3_U1_ShiftPos_1_mmx_out20,
      ADR4 => U3_U1_ShiftPos_1_mmx_out6,
      O => U3_U1_U5_GEN_19_U_X_S_AND_5_o
    );
  U2_U1_U1_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y73",
      INIT => X"6CCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => U2_U1_XXorS(4),
      ADR3 => U2_U1_XXorS(1),
      ADR4 => U2_OperationLogic,
      ADR5 => U2_U1_XXorS(0),
      ADR0 => U2_U1_XXorS(2),
      ADR2 => U2_U1_XXorS(3),
      O => U2_C2Mant_4_Q
    );
  U2_Mmux_ZMANT211 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y73",
      INIT => X"A05A5F5A5F5AA05A"
    )
    port map (
      ADR1 => '1',
      ADR3 => U2_XExpIncr,
      ADR0 => XMAN(3),
      ADR2 => U2_C2Mant_3_Q,
      ADR4 => XMAN(4),
      ADR5 => U2_C2Mant_4_Q,
      O => ZMANT(3)
    );
  U2_Mmux_ZMANT271 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y73",
      INIT => X"FC30CF03CF03FC30"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_XExpIncr,
      ADR4 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(9),
      ADR5 => U2_C2Mant_9_0,
      ADR3 => U2_ZMant_Temp_10_Q,
      O => ZMANT(9)
    );
  U2_U2_GEN_10_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y73",
      INIT => X"E81717E8B24D4DB2"
    )
    port map (
      ADR2 => XMAN(9),
      ADR5 => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR1 => U2_U1_XXorS(9),
      ADR0 => U2_U2_GEN_9_U_Mxor_S_xo_0_1,
      ADR4 => XMAN(10),
      ADR3 => U2_C2Mant_10_Q,
      O => U2_ZMant_Temp_10_Q
    );
  U2_Mmux_ZMANT21 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y74",
      INIT => X"CC33F0F033CCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => U2_XExpIncr,
      ADR3 => U2_U2_GEN_11_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(11),
      ADR5 => U2_C2Mant_11_Q,
      ADR2 => U2_ZMant_Temp_10_Q,
      O => ZMANT(10)
    );
  U2_U1_Mxor_XXorS_0_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y74",
      INIT => X"F0F0F05AF0E1F04B"
    )
    port map (
      ADR2 => U2_OperationLogic,
      ADR0 => U1_ExpDiff(4),
      ADR5 => U1_U2_Mmux_Y11_3649,
      ADR1 => U1_U2_Mmux_Y12_3650,
      ADR4 => U1_ExpDiff_3_mmx_out10,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(0)
    );
  U2_Mmux_ZMANT11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y74",
      INIT => X"6996CCCC5AA5A55A"
    )
    port map (
      ADR5 => U2_XExpIncr,
      ADR1 => U2_U1_XXorS(1),
      ADR3 => OP_IBUF_0,
      ADR2 => X_31_IBUF_0,
      ADR0 => Y_31_IBUF_0,
      ADR4 => U2_U1_XXorS(0),
      O => ZMANT(0)
    );
  U2_C2Mant_10_U2_C2Mant_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_C2Mant_9_Q,
      O => U2_C2Mant_9_0
    );
  U2_U1_U1_GEN_10_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y75",
      INIT => X"CCCC6CCCCCCC6CCC"
    )
    port map (
      ADR1 => U2_U1_XXorS(10),
      ADR4 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR2 => U2_U1_XXorS(8),
      ADR0 => U2_U1_XXorS(7),
      ADR3 => U2_U1_XXorS(9),
      ADR5 => '1',
      O => U2_C2Mant_10_Q
    );
  U2_U1_U1_GEN_9_U_Mxor_S_xo_0_2 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y75",
      INIT => X"FF005FA0"
    )
    port map (
      ADR1 => '1',
      ADR4 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR2 => U2_U1_XXorS(8),
      ADR0 => U2_U1_XXorS(7),
      ADR3 => U2_U1_XXorS(9),
      O => U2_C2Mant_9_Q
    );
  U2_U1_Mxor_XXorS_9_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y75",
      INIT => X"FFFA0005BBBB4444"
    )
    port map (
      ADR4 => U2_OperationLogic,
      ADR5 => U1_ExpDiff(4),
      ADR3 => U1_ExpDiff_2_mmx_out2,
      ADR2 => U1_ExpDiff(3),
      ADR1 => U1_U2_Mmux_Y3511_3761,
      ADR0 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(9)
    );
  U2_U1_Mxor_XXorS_7_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y75",
      INIT => X"A956A95656A956A9"
    )
    port map (
      ADR4 => '1',
      ADR0 => OP_IBUF_0,
      ADR5 => X_31_IBUF_0,
      ADR3 => Y_31_IBUF_0,
      ADR2 => U1_U2_Mmux_Y7,
      ADR1 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(7)
    );
  U2_U1_Mxor_XXorS_16_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"CC3333CCC93636C9"
    )
    port map (
      ADR1 => OP_IBUF_0,
      ADR3 => X_31_IBUF_0,
      ADR4 => Y_31_IBUF_0,
      ADR0 => U1_ExpDiff_3_mmx_out10,
      ADR2 => U1_ExpDiff(4),
      ADR5 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(16)
    );
  U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"CCCC6CCCCCCCCCCC"
    )
    port map (
      ADR1 => U2_U1_XXorS(17),
      ADR4 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR2 => U2_U1_XXorS(13),
      ADR3 => U2_U1_XXorS(15),
      ADR0 => U2_U1_XXorS(14),
      ADR5 => U2_U1_XXorS(16),
      O => U2_C2Mant_17_Q
    );
  U1_U2_Mmux_Y11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y76",
      INIT => X"333300FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => U1_ExpDiff(2),
      ADR4 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff_1_mmx_out6,
      ADR1 => U1_ExpDiff_1_mmx_out19,
      O => U1_U2_Mmux_Y11_3649
    );
  U2_U1_U1_GEN_15_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y77",
      INIT => X"CC33CCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U2_U1_XXorS(15),
      ADR3 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR4 => U2_U1_XXorS(13),
      ADR5 => U2_U1_XXorS(14),
      O => U2_C2Mant_15_Q
    );
  U2_U1_Mxor_XXorS_14_xo_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y77",
      INIT => X"FFCCFFCC00005050"
    )
    port map (
      ADR5 => U2_OperationLogic,
      ADR1 => U2_U1_Mxor_XXorS_14_xo(0),
      ADR3 => U2_U1_Mxor_XXorS_14_xo_0_1_3715,
      ADR2 => U2_U1_Mxor_XXorS_14_xo_0_3_3714,
      ADR0 => U1_ExpDiff(4),
      ADR4 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(14)
    );
  U1_ExpDiff_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"DCDF1013DCDF1013"
    )
    port map (
      ADR5 => '1',
      ADR1 => U1_ExpDiff(3),
      ADR0 => U1_ExpDiff_1_mmx_out21,
      ADR2 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff_1_mmx_out20,
      ADR4 => U1_ExpDiff_2_mmx_out18,
      O => U1_ExpDiff_3_mmx_out10
    );
  U1_ExpDiff_2_101 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y78",
      INIT => X"F5FFFF5FF00FFF33"
    )
    port map (
      ADR5 => U1_ExpDiff_0_0,
      ADR4 => U1_U1_EXP_COMP_S_1_0,
      ADR2 => U1_U1_EXP_COMP_COUT,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0,
      ADR3 => U1_U1_EXP_COMP_S(2),
      O => U1_ExpDiff_2_mmx_out18
    );
  U1_U2_Mmux_Y28_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y79",
      INIT => X"0033550FFF33550F"
    )
    port map (
      ADR3 => U1_ExpDiff(2),
      ADR0 => U1_ExpDiff_1_mmx_out1,
      ADR4 => U1_ExpDiff(3),
      ADR5 => U1_ExpDiff_1_mmx_out3,
      ADR1 => U1_ExpDiff_1_mmx_out2,
      ADR2 => U1_ExpDiff_1_mmx_out,
      O => N62
    );
  U2_U1_Mxor_XXorS_5_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y79",
      INIT => X"CCC9CCCCCCC9CC33"
    )
    port map (
      ADR1 => U2_OperationLogic,
      ADR4 => U1_ExpDiff(4),
      ADR2 => U1_ExpDiff_2_mmx_out11,
      ADR0 => U1_ExpDiff(3),
      ADR5 => N62,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(5)
    );
  U1_U2_Mmux_Y131 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y79",
      INIT => X"CC0CCC44000C0044"
    )
    port map (
      ADR1 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff(4),
      ADR4 => U1_ExpDiff(2),
      ADR2 => U1_ExpDiff_1_mmx_out2,
      ADR0 => U1_ExpDiff_1_mmx_out1,
      ADR5 => U1_ExpDiff_2_mmx_out2,
      O => U1_U2_Mmux_Y13
    );
  U1_ExpDiff_2_111 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y79",
      INIT => X"EEE7FFE7E7EEE7FF"
    )
    port map (
      ADR5 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      ADR1 => U1_U1_EXP_COMP_S_1_0,
      ADR0 => U1_U1_EXP_COMP_S(2),
      ADR2 => U1_U1_EXP_COMP_COUT,
      O => U1_ExpDiff_2_mmx_out2
    );
  U1_U2_Mmux_Y321 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y80",
      INIT => X"CC04CC07FF04FF07"
    )
    port map (
      ADR3 => U1_ExpDiff(4),
      ADR5 => U1_ExpDiff_1_mmx_out17,
      ADR1 => U1_ExpDiff(3),
      ADR2 => U1_ExpDiff(2),
      ADR0 => U1_ExpDiff_1_mmx_out15,
      ADR4 => U1_ExpDiff_1_mmx_out13,
      O => U1_U2_Mmux_Y32
    );
  U1_U2_Mmux_Y322 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y80",
      INIT => X"FFFFFFFFC4C0C4CC"
    )
    port map (
      ADR1 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff(3),
      ADR0 => U1_ExpDiff_1_mmx_out16,
      ADR2 => U1_ExpDiff(4),
      ADR4 => U1_ExpDiff_1_mmx_out14,
      ADR5 => U1_U2_Mmux_Y32,
      O => U1_U2_Mmux_Y7
    );
  U2_U1_Mxor_XXorS_25_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y80",
      INIT => X"AA5555AA66999966"
    )
    port map (
      ADR2 => '1',
      ADR4 => OP_IBUF_0,
      ADR3 => X_31_IBUF_0,
      ADR0 => Y_31_IBUF_0,
      ADR5 => U1_ExpDiff_2_mmx_out2,
      ADR1 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(25)
    );
  U1_U2_Mmux_Y8 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y80",
      INIT => X"0500050045454040"
    )
    port map (
      ADR0 => U2_U1_Mxor_XXorS_17_xo(0),
      ADR2 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff_1_mmx_out17,
      ADR5 => U1_ExpDiff(3),
      ADR4 => U1_ExpDiff_1_mmx_out15,
      ADR1 => U1_ExpDiff_1_mmx_out16,
      O => YMAN(15)
    );
  U2_U1_Mxor_XXorS_23_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y81",
      INIT => X"A65959A6AA5555AA"
    )
    port map (
      ADR4 => OP_IBUF_0,
      ADR0 => X_31_IBUF_0,
      ADR3 => Y_31_IBUF_0,
      ADR2 => U1_ExpDiff(2),
      ADR1 => U1_ExpDiff_1_mmx_out17,
      ADR5 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(23)
    );
  U2_U1_Mxor_XXorS_17_xo_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y81",
      INIT => X"FFFFCCCCFFFF05AF"
    )
    port map (
      ADR5 => U1_ExpDiff(3),
      ADR0 => U1_ExpDiff(2),
      ADR2 => U1_ExpDiff_1_mmx_out3,
      ADR3 => U1_ExpDiff_1_mmx_out4,
      ADR1 => U1_ExpDiff_2_mmx_out2,
      ADR4 => U2_U1_Mxor_XXorS_17_xo(0),
      O => U2_U1_Mxor_XXorS_17_xo_0_1_3829
    );
  U2_U1_Mxor_XXorS_17_xo_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y81",
      INIT => X"F1F10101F0F00000"
    )
    port map (
      ADR3 => '1',
      ADR2 => U2_OperationLogic,
      ADR5 => U2_U1_Mxor_XXorS_17_xo_0_2_3723,
      ADR1 => U1_ExpDiff(4),
      ADR0 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR4 => U2_U1_Mxor_XXorS_17_xo_0_1_3829,
      O => U2_U1_XXorS(17)
    );
  N98_N98_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  U3_U1_U5_GEN_10_U_X_S_AND_5_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y70",
      INIT => X"BBBB1111BBBB1111"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U3_U1_ShiftPos_1_mmx_out19,
      ADR0 => U3_U1_ShiftPos(3),
      ADR4 => U3_U1_ShiftPos_1_mmx_out10,
      ADR5 => '1',
      O => N98
    );
  U3_U1_U5_GEN_9_U_X_S_AND_5_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y70",
      INIT => X"A0F5A0F5"
    )
    port map (
      ADR3 => U3_U1_ShiftPos_1_mmx_out18,
      ADR2 => U3_U1_ShiftPos_1_mmx_out3,
      ADR1 => '1',
      ADR0 => U3_U1_ShiftPos(3),
      ADR4 => '1',
      O => N100
    );
  U3_U1_ShiftPos_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y70",
      INIT => X"FAFCFA0C0AFC0A0C"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR4 => ZMANT(8),
      ADR5 => ZMANT(6),
      ADR0 => ZMANT(7),
      ADR1 => ZMANT(9),
      O => U3_U1_ShiftPos_1_mmx_out18
    );
  U3_U1_ShiftPos_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y70",
      INIT => X"FBCBF8C83B0B3808"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(0),
      ADR1 => U3_U1_ShiftPos(1),
      ADR3 => ZMANT(9),
      ADR5 => ZMANT(7),
      ADR0 => ZMANT(8),
      ADR4 => ZMANT(10),
      O => U3_U1_ShiftPos_1_mmx_out19
    );
  U3_U1_U1_Mmux_SHIFT27 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y71",
      INIT => X"000000000E0E0E0F"
    )
    port map (
      ADR2 => ZMANT(6),
      ADR5 => ZMANT(5),
      ADR0 => ZMANT(3),
      ADR1 => ZMANT(4),
      ADR3 => ZMANT(1),
      ADR4 => ZMANT(2),
      O => U3_U1_U1_Mmux_SHIFT26_3514
    );
  U2_Mmux_ZMANT201 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y71",
      INIT => X"0FF00FF0AAAA5555"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_XExpIncr,
      ADR2 => XMAN(3),
      ADR3 => U2_C2Mant_3_Q,
      ADR4 => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U2_U1_XXorS(2),
      O => ZMANT(2)
    );
  U3_U1_ShiftPos_3_91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y71",
      INIT => X"AB89AB89EFCDEFCD"
    )
    port map (
      ADR4 => '1',
      ADR0 => U3_U1_ShiftPos(3),
      ADR1 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos_1_mmx_out13,
      ADR2 => U3_U1_ShiftPos_1_mmx_out17,
      ADR5 => U3_U1_ShiftPos_1_mmx_out12,
      O => U3_U1_ShiftPos_3_mmx_out8
    );
  U3_U1_ShiftPos_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y71",
      INIT => X"FCFC0C0CFA0AFA0A"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(0),
      ADR5 => U3_U1_ShiftPos(1),
      ADR3 => ZMANT(3),
      ADR4 => ZMANT(1),
      ADR1 => ZMANT(2),
      ADR0 => ZMANT(4),
      O => U3_U1_ShiftPos_1_mmx_out12
    );
  U3_U1_ShiftPos_1_mmx_out3_U3_U1_ShiftPos_1_mmx_out3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  U3_U1_ShiftPos_1_161 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y72",
      INIT => X"FFFF01EFFFFF00FF"
    )
    port map (
      ADR3 => ZMANT(1),
      ADR1 => U2_XExpIncr,
      ADR0 => U2_ZMant_Temp_26_Q,
      ADR5 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR4 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(0),
      O => U3_U1_ShiftPos_1_mmx_out3
    );
  U3_U1_U1_GND_29_o_X_26_equal_25_o_26_121 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y72",
      INIT => X"0000001100000011"
    )
    port map (
      ADR2 => '1',
      ADR1 => ZMANT(18),
      ADR0 => ZMANT(17),
      ADR3 => ZMANT(16),
      ADR4 => ZMANT(15),
      ADR5 => '1',
      O => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_12
    );
  U3_U1_U1_Mmux_SHIFT4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y72",
      INIT => X"FFEEFFEE"
    )
    port map (
      ADR2 => '1',
      ADR1 => ZMANT(18),
      ADR0 => ZMANT(17),
      ADR3 => ZMANT(16),
      ADR4 => '1',
      O => N102
    );
  U3_U1_ShiftPos_1_22 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y72",
      INIT => X"00D033D3CCDCFFDF"
    )
    port map (
      ADR1 => U3_U1_ShiftPos(1),
      ADR5 => ZMANT(0),
      ADR2 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR3 => ZMANT(26),
      ADR4 => ZMANT(2),
      ADR0 => ZMANT(1),
      O => U3_U1_ShiftPos_1_mmx_out10
    );
  N34_N34_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  U3_U2_U1_Mmux_INCR1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y73",
      INIT => X"FEFEFEFEFEFEFEFE"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_ShiftPos(4),
      ADR5 => '1',
      O => N34
    );
  U3_U1_U5_GEN_11_U_X_S_AND_5_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y73",
      INIT => X"00CC33FF"
    )
    port map (
      ADR3 => U3_U1_ShiftPos_1_mmx_out16,
      ADR4 => U3_U1_ShiftPos_1_mmx_out20,
      ADR1 => U3_U1_ShiftPos(2),
      ADR0 => '1',
      ADR2 => '1',
      O => N96
    );
  U3_U1_ShiftPos_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y73",
      INIT => X"FCBB30BBFC883088"
    )
    port map (
      ADR3 => U3_U1_ShiftPos(0),
      ADR1 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(10),
      ADR4 => ZMANT(8),
      ADR0 => ZMANT(9),
      ADR5 => ZMANT(11),
      O => U3_U1_ShiftPos_1_mmx_out20
    );
  U3_U1_U5_GEN_23_U_X_S_AND_5_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y73",
      INIT => X"0F0B05010E0A0400"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_U5_GEN_23_U_X_S_AND_5_o1,
      ADR1 => U3_U1_ShiftPos(1),
      ADR5 => U3_U1_ShiftPos_0_mmx_out10,
      ADR4 => U3_U1_ShiftPos_1_mmx_out16,
      O => U3_U1_U5_GEN_23_U_X_S_AND_5_o2_3626
    );
  U3_U1_ShiftPos_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y73",
      INIT => X"AACCF0FFAACCF000"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR1 => ZMANT(2),
      ADR0 => ZMANT(0),
      ADR2 => ZMANT(1),
      ADR5 => ZMANT(3),
      O => U3_U1_ShiftPos_1_mmx_out11
    );
  U2_Mmux_ZMANT121 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y74",
      INIT => X"AA3FAAC0553F55C0"
    )
    port map (
      ADR3 => U2_XExpIncr,
      ADR4 => U2_U1_XXorS(1),
      ADR1 => U2_OperationLogic,
      ADR2 => U2_U1_XXorS(0),
      ADR5 => U2_U1_U1_GEN_2_U_Mxor_S_xo_0_1,
      ADR0 => U2_U1_XXorS(2),
      O => ZMANT(1)
    );
  U2_Mmux_ZMANT31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y74",
      INIT => X"C993366CA55AA55A"
    )
    port map (
      ADR5 => U2_XExpIncr,
      ADR0 => U2_U2_GEN_11_U_Mxor_S_xo_0_1,
      ADR2 => XMAN(11),
      ADR3 => U2_C2Mant_11_Q,
      ADR1 => XMAN(12),
      ADR4 => U2_C2Mant_12_Q,
      O => ZMANT(11)
    );
  U2_OperationLogic_U2_OperationLogic_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U1_XXorS_2_pack_1,
      O => U2_U1_XXorS(2)
    );
  U2_Mxor_OperationLogic_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"9966996699669966"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => OP_IBUF_0,
      ADR0 => X_31_IBUF_0,
      ADR1 => Y_31_IBUF_0,
      ADR5 => '1',
      O => U2_OperationLogic
    );
  U2_U1_Mxor_XXorS_2_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"96699966"
    )
    port map (
      ADR2 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR4 => U1_U2_Mmux_Y231_0,
      ADR3 => OP_IBUF_0,
      ADR0 => X_31_IBUF_0,
      ADR1 => Y_31_IBUF_0,
      O => U2_U1_XXorS_2_pack_1
    );
  U2_U1_U1_GEN_3_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y75",
      INIT => X"5FFFFFFFA0000000"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_U1_XXorS(3),
      ADR3 => U2_U1_XXorS(1),
      ADR4 => U2_OperationLogic,
      ADR0 => U2_U1_XXorS(0),
      ADR2 => U2_U1_XXorS(2),
      O => U2_C2Mant_3_Q
    );
  U1_U2_Mmux_Y26_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y76",
      INIT => X"0252A2F20757A7F7"
    )
    port map (
      ADR2 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff_1_mmx_out18,
      ADR0 => U1_ExpDiff(3),
      ADR4 => U1_ExpDiff_1_mmx_out20,
      ADR1 => U1_ExpDiff_1_mmx_out19,
      ADR5 => U1_ExpDiff_1_mmx_out6,
      O => N60
    );
  U2_U1_Mxor_XXorS_4_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y76",
      INIT => X"FF00EF10FA05EA15"
    )
    port map (
      ADR3 => U2_OperationLogic,
      ADR2 => U1_ExpDiff(4),
      ADR1 => U1_ExpDiff_2_mmx_out9,
      ADR4 => U1_ExpDiff(3),
      ADR5 => N60,
      ADR0 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(4)
    );
  U2_U1_Mxor_XXorS_12_xo_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"AAAAAAA9AA9AAA99"
    )
    port map (
      ADR0 => U2_OperationLogic,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR5 => U1_ExpDiff_2_mmx_out9,
      ADR2 => U1_ExpDiff(3),
      ADR4 => N68,
      ADR1 => U1_ExpDiff(4),
      O => U2_U1_XXorS(12)
    );
  U2_U1_Mxor_XXorS_12_xo_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"030C020DCF3FDF2F"
    )
    port map (
      ADR5 => U1_ExpDiff_1_mmx_out20,
      ADR1 => U1_U1_EXP_COMP_COUT,
      ADR3 => U1_U1_EXP_COMP_S(2),
      ADR4 => U1_ExpDiff_0_0,
      ADR0 => U1_U1_EXP_COMP_S_1_0,
      ADR2 => U1_ExpDiff_1_mmx_out19,
      O => N68
    );
  U1_U2_Mmux_Y3411 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"FFCC3300B8B8B8B8"
    )
    port map (
      ADR1 => U1_ExpDiff(2),
      ADR5 => U1_ExpDiff(3),
      ADR0 => U1_ExpDiff_1_mmx_out19,
      ADR4 => U1_ExpDiff_1_mmx_out21,
      ADR3 => U1_ExpDiff_1_mmx_out20,
      ADR2 => U1_ExpDiff_1_mmx_out18,
      O => U1_U2_Mmux_Y3411_3831
    );
  U2_U1_Mxor_XXorS_8_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y77",
      INIT => X"E1E1F0F0E1C3F0D2"
    )
    port map (
      ADR2 => U2_OperationLogic,
      ADR0 => U1_ExpDiff(4),
      ADR3 => U1_ExpDiff_2_mmx_out18,
      ADR5 => U1_ExpDiff(3),
      ADR4 => U1_U2_Mmux_Y3411_3831,
      ADR1 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(8)
    );
  U1_U2_Mmux_Y132 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"00000A0AAAAA0A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U1_ExpDiff(2),
      ADR4 => U1_ExpDiff(4),
      ADR2 => U1_ExpDiff_1_mmx_out,
      ADR5 => U1_ExpDiff_1_mmx_out4,
      O => U1_U2_Mmux_Y131_3833
    );
  U2_U1_Mxor_XXorS_1_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y78",
      INIT => X"FCFFFCFE03000301"
    )
    port map (
      ADR5 => U2_OperationLogic,
      ADR3 => U1_ExpDiff(3),
      ADR0 => U1_U2_Mmux_Y132_3700,
      ADR4 => U1_U2_Mmux_Y131_3833,
      ADR2 => U1_U2_Mmux_Y13,
      ADR1 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(1)
    );
  XMAN_25_XMAN_25_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0
    );
  U1_U1_Mmux_G241 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y79",
      INIT => X"AAAACCCCAAAACCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_22_IBUF_0,
      ADR0 => Y_22_IBUF_0,
      ADR5 => '1',
      O => XMAN(25)
    );
  U1_U1_Mmux_S161 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y79",
      INIT => X"CCCCAAAA"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_22_IBUF_0,
      ADR0 => Y_22_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22
    );
  U2_U1_U1_GEN_19_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y79",
      INIT => X"AA55FF00FF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => U2_U1_XXorS(19),
      ADR0 => U2_U1_U1_GEN_17_U_Mxor_S_xo_0_1_0,
      ADR5 => U2_U1_XXorS(17),
      ADR4 => U2_U1_XXorS(18),
      O => U2_C2Mant_19_Q
    );
  U1_U2_Mmux_Y3511 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y79",
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      ADR4 => U1_ExpDiff(2),
      ADR5 => U1_ExpDiff(3),
      ADR1 => U1_ExpDiff_1_mmx_out2,
      ADR3 => U1_ExpDiff_1_mmx_out4,
      ADR2 => U1_ExpDiff_1_mmx_out3,
      ADR0 => U1_ExpDiff_1_mmx_out1,
      O => U1_U2_Mmux_Y3511_3761
    );
  U1_ExpDiff_2_31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y80",
      INIT => X"8910891AEF75EF7F"
    )
    port map (
      ADR0 => U1_U1_EXP_COMP_S(2),
      ADR1 => U1_U1_EXP_COMP_COUT,
      ADR2 => U1_ExpDiff_0_0,
      ADR3 => U1_U1_EXP_COMP_S_1_0,
      ADR5 => U1_ExpDiff_1_mmx_out4,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      O => U1_ExpDiff_2_mmx_out11
    );
  U2_U1_Mxor_XXorS_19_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y80",
      INIT => X"66999966AA5555AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => OP_IBUF_0,
      ADR3 => X_31_IBUF_0,
      ADR0 => Y_31_IBUF_0,
      ADR1 => U1_ExpDiff_2_mmx_out7,
      ADR5 => U1_U2_Mmux_Y181,
      O => U2_U1_XXorS(19)
    );
  U2_U1_Mxor_XXorS_17_xo_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y81",
      INIT => X"33333333FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff_1_mmx_out4,
      ADR4 => U1_ExpDiff(2),
      ADR2 => U1_ExpDiff_1_mmx_out3,
      ADR1 => U1_ExpDiff_2_mmx_out2,
      O => U2_U1_Mxor_XXorS_17_xo_0_2_3723
    );
  U1_U3_XMantissa0_22_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y69",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => X_1_IBUF_0,
      ADR0 => X_0_IBUF_0,
      ADR3 => X_2_IBUF_0,
      ADR5 => X_3_IBUF_0,
      ADR2 => X_4_IBUF_0,
      ADR4 => X_5_IBUF_0,
      O => U1_U3_XMantissa0_0(22)
    );
  U2_ZMant_Temp_6_U2_ZMant_Temp_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U2_GEN_7_U_Mxor_S_xo_0_1_pack_2,
      O => U2_U2_GEN_7_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"C993366CC993366C"
    )
    port map (
      ADR2 => XMAN(5),
      ADR3 => U2_C2Mant_5_Q,
      ADR0 => U2_U2_GEN_5_U_Mxor_S_xo_0_2,
      ADR1 => XMAN(6),
      ADR4 => U2_C2Mant_6_Q,
      ADR5 => '1',
      O => U2_ZMant_Temp_6_Q
    );
  U2_U2_GEN_7_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"FEECC880"
    )
    port map (
      ADR2 => XMAN(5),
      ADR3 => U2_C2Mant_5_Q,
      ADR0 => U2_U2_GEN_5_U_Mxor_S_xo_0_2,
      ADR1 => XMAN(6),
      ADR4 => U2_C2Mant_6_Q,
      O => U2_U2_GEN_7_U_Mxor_S_xo_0_1_pack_2
    );
  U2_Mmux_ZMANT241 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"AFA05F505F50AFA0"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_7_U_Mxor_S_xo_0_1,
      ADR0 => XMAN(7),
      ADR4 => U2_C2Mant_7_Q,
      ADR3 => U2_ZMant_Temp_6_Q,
      O => ZMANT(6)
    );
  U2_U2_GEN_5_U_Mxor_S_xo_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"FAEEA088F0CC0000"
    )
    port map (
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_1_IBUF_0,
      ADR2 => Y_1_IBUF_0,
      ADR4 => U2_C2Mant_4_Q,
      ADR0 => XMAN(3),
      ADR5 => U2_C2Mant_3_Q,
      O => U2_U2_GEN_5_U_Mxor_S_xo_0_2
    );
  U3_U1_U1_GND_29_o_X_26_equal_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y71",
      INIT => X"FF00FE0000000000"
    )
    port map (
      ADR3 => U3_U1_U1_Mmux_SHIFT411,
      ADR5 => U3_U1_ShiftPos(4),
      ADR2 => ZMANT(6),
      ADR0 => ZMANT(3),
      ADR1 => ZMANT(4),
      ADR4 => ZMANT(5),
      O => U3_U1_U1_GND_29_o_X_26_equal_20_o_mmx_out
    );
  U2_Mmux_ZMANT231 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y71",
      INIT => X"E11E877899996666"
    )
    port map (
      ADR5 => U2_XExpIncr,
      ADR4 => U2_U2_GEN_5_U_Mxor_S_xo_0_2,
      ADR1 => XMAN(5),
      ADR0 => U2_C2Mant_5_Q,
      ADR2 => XMAN(6),
      ADR3 => U2_C2Mant_6_Q,
      O => ZMANT(5)
    );
  U3_U1_ShiftPos_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y71",
      INIT => X"F7B3E6A2D591C480"
    )
    port map (
      ADR1 => U3_U1_ShiftPos(0),
      ADR0 => U3_U1_ShiftPos(1),
      ADR3 => ZMANT(5),
      ADR2 => ZMANT(3),
      ADR5 => ZMANT(4),
      ADR4 => ZMANT(6),
      O => U3_U1_ShiftPos_1_mmx_out15
    );
  U3_U1_U5_GEN_14_U_X_S_AND_5_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y71",
      INIT => X"AA27FF2700275527"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR1 => U3_U1_ShiftPos_1_mmx_out19,
      ADR3 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_ShiftPos_1_mmx_out10,
      ADR2 => U3_U1_ShiftPos_1_mmx_out,
      ADR4 => U3_U1_ShiftPos_1_mmx_out15,
      O => N90
    );
  U3_U1_ShiftPos_1_mmx_out5_U3_U1_ShiftPos_1_mmx_out5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_MantNorm_22_Q,
      O => U3_MantNorm_22_0
    );
  U3_U1_U5_GEN_22_U_X_S_AND_5_o4 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y72"
    )
    port map (
      IA => N122,
      IB => N123,
      O => U3_MantNorm_22_Q,
      SEL => U3_U1_ShiftPos(2)
    );
  U3_U1_U5_GEN_22_U_X_S_AND_5_o4_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y72",
      INIT => X"000A0C0F000A0C00"
    )
    port map (
      ADR2 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_ShiftPos_1_mmx_out15,
      ADR4 => U3_U1_ShiftPos(4),
      ADR5 => U3_U1_U5_GEN_22_U_X_S_AND_5_o,
      ADR1 => U3_U1_ShiftPos_1_mmx_out,
      O => N122
    );
  U3_U1_U5_GEN_22_U_X_S_AND_5_o4_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y72",
      INIT => X"0000454F0000404A"
    )
    port map (
      ADR4 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_ShiftPos(4),
      ADR5 => U3_U1_ShiftPos_1_mmx_out5,
      ADR3 => U3_U1_ShiftPos_1_mmx_out10,
      ADR1 => U3_U1_ShiftPos_1_mmx_out19,
      O => N123
    );
  U3_U1_ShiftPos_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y72",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR1 => ZMANT(17),
      ADR5 => ZMANT(15),
      ADR0 => ZMANT(16),
      ADR2 => ZMANT(18),
      O => U3_U1_ShiftPos_1_mmx_out5
    );
  U3_U1_U5_GEN_18_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y72",
      INIT => X"D8D8D8D8FF55AA00"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR5 => U3_U1_ShiftPos(3),
      ADR3 => U3_U1_ShiftPos_1_mmx_out,
      ADR1 => U3_U1_ShiftPos_1_mmx_out15,
      ADR2 => U3_U1_ShiftPos_1_mmx_out19,
      ADR4 => U3_U1_ShiftPos_1_mmx_out5,
      O => U3_U1_U5_GEN_18_U_X_S_AND_5_o
    );
  U3_U1_U5_GEN_11_U_X_S_AND_5_o : X_LUT6
    generic map(
      LOC => "SLICE_X18Y73",
      INIT => X"0000000001010D01"
    )
    port map (
      ADR5 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos_1_mmx_out11,
      ADR1 => U3_U1_ShiftPos(3),
      ADR4 => U3_U1_ShiftPos(2),
      ADR0 => N96_0,
      O => U3_MantNorm_11_Q
    );
  U3_U1_U5_GEN_7_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y73",
      INIT => X"0000000005040004"
    )
    port map (
      ADR2 => U3_U1_n0007(8),
      ADR0 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos(2),
      ADR1 => U3_U1_ShiftPos_1_mmx_out16,
      ADR4 => U3_U1_ShiftPos_1_mmx_out11,
      O => U3_MantNorm_7_Q
    );
  U3_U1_ShiftPos_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y74",
      INIT => X"CCAAF0FFCCAAF000"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR0 => ZMANT(12),
      ADR1 => ZMANT(10),
      ADR2 => ZMANT(11),
      ADR5 => ZMANT(13),
      O => U3_U1_ShiftPos_1_mmx_out22
    );
  U2_Mmux_ZMANT51 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y74",
      INIT => X"AFA0A0AFA0AFAFA0"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR4 => XMAN(13),
      ADR3 => U2_C2Mant_13_Q,
      ADR0 => U2_ZMant_Temp_14_Q,
      O => ZMANT(13)
    );
  U2_Mmux_ZMANT61 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"AF5FA0505FAF50A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_15_U_Mxor_S_xo_0_1,
      ADR0 => XMAN(15),
      ADR3 => U2_C2Mant_15_Q,
      ADR4 => U2_ZMant_Temp_14_Q,
      O => ZMANT(14)
    );
  U2_U2_GEN_14_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"9AA6A6656559599A"
    )
    port map (
      ADR3 => XMAN(13),
      ADR1 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR4 => U2_U1_XXorS(13),
      ADR2 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR5 => XMAN(14),
      ADR0 => U2_U1_XXorS(14),
      O => U2_ZMant_Temp_14_Q
    );
  U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"B4F0F0F0F0F0F0F0"
    )
    port map (
      ADR2 => U2_U1_XXorS(13),
      ADR0 => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR3 => U2_U1_XXorS(9),
      ADR5 => U2_U1_XXorS(11),
      ADR1 => U2_U1_XXorS(10),
      ADR4 => U2_U1_XXorS(12),
      O => U2_C2Mant_13_Q
    );
  U2_U1_U1_GEN_11_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y75",
      INIT => X"BFFFFFFF40000000"
    )
    port map (
      ADR5 => U2_U1_XXorS(11),
      ADR0 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR4 => U2_U1_XXorS(8),
      ADR2 => U2_U1_XXorS(7),
      ADR1 => U2_U1_XXorS(10),
      ADR3 => U2_U1_XXorS(9),
      O => U2_C2Mant_11_Q
    );
  N115_N115_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U2_Mmux_Y231,
      O => U1_U2_Mmux_Y231_0
    );
  U1_U2_Mmux_Y2314 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y77"
    )
    port map (
      IA => N114,
      IB => N115,
      O => U1_U2_Mmux_Y231,
      SEL => U1_ExpDiff(4)
    );
  U1_U2_Mmux_Y2314_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y77",
      INIT => X"AFACFFF0AFAC0F00"
    )
    port map (
      ADR2 => U1_ExpDiff(2),
      ADR4 => U1_ExpDiff(3),
      ADR5 => U1_ExpDiff_1_mmx_out7,
      ADR0 => U1_ExpDiff_1_mmx_out9,
      ADR3 => U1_U2_Mmux_Y2313_3614,
      ADR1 => U1_ExpDiff_1_mmx_out8,
      O => N114
    );
  U1_ExpDiff_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y77",
      INIT => X"00FF000011F011F0"
    )
    port map (
      ADR3 => U1_ExpDiff(3),
      ADR1 => U1_ExpDiff_0_0,
      ADR0 => U1_U1_EXP_COMP_S_1_0,
      ADR5 => U1_ExpDiff(2),
      ADR2 => U1_ExpDiff_1_mmx_out10,
      ADR4 => U1_ExpDiff_1_mmx_out11,
      O => N115
    );
  U2_U1_Mxor_XXorS_18_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y77",
      INIT => X"C3C396C33C3C693C"
    )
    port map (
      ADR5 => OP_IBUF_0,
      ADR1 => X_31_IBUF_0,
      ADR2 => Y_31_IBUF_0,
      ADR3 => N115,
      ADR4 => U1_ExpDiff(4),
      ADR0 => U1_U2_S_5_S_7_OR_13_o_0,
      O => U2_U1_XXorS(18)
    );
  XMAN_16_XMAN_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U2_Mmux_Y6,
      O => U1_U2_Mmux_Y6_0
    );
  XMAN_16_XMAN_16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13_pack_5,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13
    );
  U1_U2_Mmux_Y303 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y78"
    )
    port map (
      IA => N116,
      IB => N117,
      O => U1_U2_Mmux_Y6,
      SEL => U1_ExpDiff(2)
    );
  U1_U2_Mmux_Y303_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"FF00FFFF330F330F"
    )
    port map (
      ADR0 => '1',
      ADR3 => U1_ExpDiff(3),
      ADR5 => U1_ExpDiff(4),
      ADR1 => U1_ExpDiff_1_mmx_out9,
      ADR2 => U1_ExpDiff_1_mmx_out7,
      ADR4 => U1_ExpDiff_1_mmx_out11,
      O => N116
    );
  U1_U2_Mmux_Y303_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"CCC8CFCBFCF8FFFB"
    )
    port map (
      ADR1 => U1_ExpDiff(4),
      ADR0 => U1_ExpDiff_1_0,
      ADR3 => U1_ExpDiff_0_0,
      ADR2 => U1_ExpDiff(3),
      ADR4 => U1_ExpDiff_1_mmx_out8,
      ADR5 => U1_ExpDiff_1_mmx_out10,
      O => N117
    );
  U1_U1_Mmux_G151 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_13_IBUF_0,
      ADR3 => Y_13_IBUF_0,
      ADR5 => '1',
      O => XMAN(16)
    );
  U1_U1_Mmux_S61 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_13_IBUF_0,
      ADR3 => Y_13_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13_pack_5
    );
  U1_ExpDiff_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y78",
      INIT => X"DD88FAFADD885050"
    )
    port map (
      ADR4 => U1_ExpDiff_0_0,
      ADR0 => U1_ExpDiff_1_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13,
      O => U1_ExpDiff_1_mmx_out20
    );
  N66_N66_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_ExpDiff(1),
      O => U1_ExpDiff_1_0
    );
  U2_U1_Mxor_XXorS_11_xo_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"5500015455FFFD57"
    )
    port map (
      ADR0 => U1_ExpDiff_1_mmx_out15,
      ADR4 => U1_U1_EXP_COMP_COUT,
      ADR3 => U1_U1_EXP_COMP_S(2),
      ADR1 => U1_ExpDiff_0_0,
      ADR2 => U1_U1_EXP_COMP_S_1_0,
      ADR5 => U1_ExpDiff_1_mmx_out14,
      O => N66
    );
  U2_U2_GEN_25_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"C3C33C3CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_U2_GEN_25_U_Mxor_S_xo_0_1_3678,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => Y_22_IBUF_0,
      ADR2 => U2_C2Mant_25_Q,
      ADR3 => X_22_IBUF_0,
      O => U2_ZMant_Temp_25_Q
    );
  U2_U1_Mxor_XXorS_14_xo_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR3 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR0 => X_24_IBUF_0,
      ADR4 => Y_24_IBUF_0,
      ADR5 => '1',
      O => U2_U1_Mxor_XXorS_14_xo_0_2_3493
    );
  U1_U1_EXP_COMP_U3_GEN_1_U_Z1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y79",
      INIT => X"5695A96A"
    )
    port map (
      ADR1 => U1_U1_EXP_COMP_COUT,
      ADR3 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR0 => X_24_IBUF_0,
      ADR4 => Y_24_IBUF_0,
      O => U1_ExpDiff(1)
    );
  U1_ExpDiff_1_mmx_out17_U1_ExpDiff_1_mmx_out17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0
    );
  U1_ExpDiff_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"FAFAD8D8DD88FFAA"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0,
      ADR5 => U1_U1_EXP_COMP_S_1_0,
      ADR4 => U1_U1_EXP_COMP_COUT,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0,
      O => U1_ExpDiff_1_mmx_out17
    );
  U1_ExpDiff_2_161 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"FAAFFABE0AA00A82"
    )
    port map (
      ADR3 => U1_U1_EXP_COMP_COUT,
      ADR2 => U1_U1_EXP_COMP_S(2),
      ADR4 => U1_ExpDiff_0_0,
      ADR1 => U1_U1_EXP_COMP_S_1_0,
      ADR0 => U1_ExpDiff_1_mmx_out16,
      ADR5 => U1_ExpDiff_1_mmx_out17,
      O => U1_ExpDiff_2_mmx_out7
    );
  U2_U1_Mxor_XXorS_14_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"FFFFFFFFFFFF0415"
    )
    port map (
      ADR0 => U1_ExpDiff(2),
      ADR1 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff_1_mmx_out9,
      ADR2 => U1_ExpDiff_1_mmx_out11,
      ADR5 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR4 => U1_ExpDiff(4),
      O => U2_U1_Mxor_XXorS_14_xo(0)
    );
  U1_U1_Mmux_G191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"F5A0F5A0F5A0F5A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_17_IBUF_0,
      ADR2 => Y_17_IBUF_0,
      ADR5 => '1',
      O => XMAN(20)
    );
  U1_U1_Mmux_S101 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y80",
      INIT => X"FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_17_IBUF_0,
      ADR2 => Y_17_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17
    );
  U1_ExpDiff_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"E4E4FFAAE4E45500"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR4 => U1_ExpDiff_1_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0,
      O => U1_ExpDiff_1_mmx_out21
    );
  U1_ExpDiff_2_181 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"8B8B8B8B038B47CF"
    )
    port map (
      ADR1 => U1_ExpDiff(2),
      ADR0 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0,
      ADR2 => U1_ExpDiff_1_mmx_out21,
      O => U1_ExpDiff_2_mmx_out9
    );
  U3_U1_U5_GEN_9_U_X_S_AND_5_o : X_LUT6
    generic map(
      LOC => "SLICE_X19Y69",
      INIT => X"0010000000101111"
    )
    port map (
      ADR1 => U3_U1_n0007(8),
      ADR0 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos_1_mmx_out14,
      ADR4 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos(3),
      ADR5 => N100_0,
      O => U3_MantNorm_9_Q
    );
  U3_U1_ShiftPos_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y70",
      INIT => X"FC30BBBBFC308888"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR1 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(4),
      ADR3 => ZMANT(2),
      ADR0 => ZMANT(3),
      ADR5 => ZMANT(5),
      O => U3_U1_ShiftPos_1_mmx_out14
    );
  U3_U1_U1_Mmux_SHIFT4 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y70",
      INIT => X"AAAAA8AAAAAAA8A8"
    )
    port map (
      ADR0 => U3_U1_U1_GND_29_o_X_26_equal_13_o_26_1,
      ADR1 => ZMANT(15),
      ADR4 => N102_0,
      ADR3 => U3_U1_U1_GND_29_o_X_26_equal_20_o_mmx_out,
      ADR5 => U3_U1_U1_Mmux_SHIFT411,
      ADR2 => U3_U1_U1_Mmux_SHIFT412,
      O => U3_U1_ShiftPos(3)
    );
  XMAN_5_XMAN_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_ZMant_Temp_5_pack_2,
      O => U2_ZMant_Temp_5_Q
    );
  XMAN_5_XMAN_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U1_U5_GEN_20_U_X_S_AND_5_o1_1542,
      O => U3_U1_U5_GEN_20_U_X_S_AND_5_o1_0
    );
  U1_U1_Mmux_G271 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_2_IBUF_0,
      ADR3 => Y_2_IBUF_0,
      ADR5 => '1',
      O => XMAN(5)
    );
  U2_U2_GEN_5_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"E14B1EB4"
    )
    port map (
      ADR4 => U2_U2_GEN_5_U_Mxor_S_xo_0_2,
      ADR2 => U2_C2Mant_5_Q,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_2_IBUF_0,
      ADR3 => Y_2_IBUF_0,
      O => U2_ZMant_Temp_5_pack_2
    );
  U2_Mmux_ZMANT221 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"FF009696FF003C3C"
    )
    port map (
      ADR4 => U2_XExpIncr,
      ADR2 => XMAN(4),
      ADR1 => U2_C2Mant_4_Q,
      ADR5 => XMAN(3),
      ADR0 => U2_C2Mant_3_Q,
      ADR3 => U2_ZMant_Temp_5_Q,
      O => ZMANT(4)
    );
  U3_U1_U5_GEN_21_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"ACACACACACACACAC"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U3_U1_ShiftPos(2),
      ADR1 => U3_U1_ShiftPos_1_mmx_out22,
      ADR0 => U3_U1_ShiftPos_1_mmx_out18,
      ADR5 => '1',
      O => U3_U1_U5_GEN_21_U_X_S_AND_5_o1_3780
    );
  U3_U1_U5_GEN_20_U_X_S_AND_5_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"FFF00F00"
    )
    port map (
      ADR3 => U3_U1_ShiftPos_1_mmx_out21,
      ADR4 => U3_U1_ShiftPos_1_mmx_out17,
      ADR2 => U3_U1_ShiftPos(2),
      ADR0 => '1',
      ADR1 => '1',
      O => U3_U1_U5_GEN_20_U_X_S_AND_5_o1_1542
    );
  U3_U1_ShiftPos_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y71",
      INIT => X"FE76BA32DC549810"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(0),
      ADR1 => U3_U1_ShiftPos(1),
      ADR5 => ZMANT(7),
      ADR3 => ZMANT(5),
      ADR4 => ZMANT(6),
      ADR2 => ZMANT(8),
      O => U3_U1_ShiftPos_1_mmx_out17
    );
  U3_U1_U5_GEN_25_U_X_S_AND_5_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y72",
      INIT => X"3210331132102200"
    )
    port map (
      ADR1 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos_0_mmx_out10,
      ADR4 => U3_U1_ShiftPos(1),
      ADR5 => U3_U1_U5_GEN_25_U_X_S_AND_5_o2_0,
      ADR3 => U3_U1_ShiftPos_1_mmx_out18,
      O => U3_U1_U5_GEN_25_U_X_S_AND_5_o3_3632
    );
  U3_U1_ShiftPos_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y72",
      INIT => X"AAF0CCFFAAF0CC00"
    )
    port map (
      ADR3 => U3_U1_ShiftPos(0),
      ADR4 => U3_U1_ShiftPos(1),
      ADR1 => ZMANT(13),
      ADR0 => ZMANT(11),
      ADR2 => ZMANT(12),
      ADR5 => ZMANT(14),
      O => U3_U1_ShiftPos_1_mmx_out
    );
  U3_U1_ShiftPos_1_171 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y72",
      INIT => X"CCF0AAFFCCF0AA00"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR3 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(16),
      ADR1 => ZMANT(14),
      ADR0 => ZMANT(15),
      ADR5 => ZMANT(17),
      O => U3_U1_ShiftPos_1_mmx_out4
    );
  U3_U1_U5_GEN_17_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y72",
      INIT => X"AFA0AFA0CFCFC0C0"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(2),
      ADR5 => U3_U1_ShiftPos(3),
      ADR1 => U3_U1_ShiftPos_1_mmx_out22,
      ADR0 => U3_U1_ShiftPos_1_mmx_out14,
      ADR3 => U3_U1_ShiftPos_1_mmx_out18,
      ADR4 => U3_U1_ShiftPos_1_mmx_out4,
      O => U3_U1_U5_GEN_17_U_X_S_AND_5_o
    );
  U2_U3_GEN_1_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y73",
      INIT => X"33FF7878CC007878"
    )
    port map (
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR5 => Y_24_IBUF_0,
      ADR1 => U2_XExpIncr,
      ADR3 => Y_23_IBUF_0,
      ADR2 => X_24_IBUF_0,
      ADR0 => X_23_IBUF_0,
      O => XEXP_INCR(1)
    );
  U1_U3_XMantissa0_22_3 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y73",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => X_13_IBUF_0,
      ADR1 => X_12_IBUF_0,
      ADR2 => X_14_IBUF_0,
      ADR5 => X_15_IBUF_0,
      ADR0 => X_16_IBUF_0,
      ADR4 => X_17_IBUF_0,
      O => U1_U3_XMantissa0_22_2_3730
    );
  U1_ExpDiff_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y73",
      INIT => X"FF5ADDDDA5008888"
    )
    port map (
      ADR0 => U1_U1_EXP_COMP_S_1_0,
      ADR4 => U1_ExpDiff_0_0,
      ADR2 => U1_U1_EXP_COMP_COUT,
      ADR5 => U1_ExpDiff_0_mmx_out1,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4,
      O => U1_ExpDiff_1_mmx_out
    );
  U1_ExpDiff_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y73",
      INIT => X"F7FBD5EAA2518040"
    )
    port map (
      ADR3 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => Y_2_IBUF_0,
      ADR2 => X_2_IBUF_0,
      O => U1_ExpDiff_0_mmx_out1
    );
  U2_ZMant_Temp_12_U2_ZMant_Temp_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U2_GEN_13_U_Mxor_S_xo_0_1_pack_3,
      O => U2_U2_GEN_13_U_Mxor_S_xo_0_1
    );
  U2_U2_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y74",
      INIT => X"C936936CC936936C"
    )
    port map (
      ADR0 => XMAN(11),
      ADR4 => U2_C2Mant_11_Q,
      ADR2 => U2_U2_GEN_11_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(12),
      ADR3 => U2_C2Mant_12_Q,
      ADR5 => '1',
      O => U2_ZMant_Temp_12_Q
    );
  U2_U2_GEN_13_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y74",
      INIT => X"FEC8EC80"
    )
    port map (
      ADR0 => XMAN(11),
      ADR4 => U2_C2Mant_11_Q,
      ADR2 => U2_U2_GEN_11_U_Mxor_S_xo_0_1,
      ADR1 => XMAN(12),
      ADR3 => U2_C2Mant_12_Q,
      O => U2_U2_GEN_13_U_Mxor_S_xo_0_1_pack_3
    );
  U2_Mmux_ZMANT41 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y74",
      INIT => X"CFC03F303F30CFC0"
    )
    port map (
      ADR0 => '1',
      ADR2 => U2_XExpIncr,
      ADR5 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      ADR4 => XMAN(13),
      ADR1 => U2_C2Mant_13_Q,
      ADR3 => U2_ZMant_Temp_12_Q,
      O => ZMANT(12)
    );
  U2_U2_GEN_15_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y74",
      INIT => X"FFE88F0EE800FE80"
    )
    port map (
      ADR3 => XMAN(14),
      ADR5 => U2_U1_XXorS(14),
      ADR4 => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0,
      ADR2 => U2_U1_XXorS(13),
      ADR0 => XMAN(13),
      ADR1 => U2_U2_GEN_13_U_Mxor_S_xo_0_1,
      O => U2_U2_GEN_15_U_Mxor_S_xo_0_1
    );
  U2_C2Mant_12_U2_C2Mant_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_1623,
      O => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_0
    );
  U2_U1_U1_GEN_12_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y75",
      INIT => X"F0F078F0F0F078F0"
    )
    port map (
      ADR2 => U2_U1_XXorS(12),
      ADR4 => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR1 => U2_U1_XXorS(10),
      ADR0 => U2_U1_XXorS(11),
      ADR3 => U2_U1_XXorS(9),
      ADR5 => '1',
      O => U2_C2Mant_12_Q
    );
  U2_U1_U1_GEN_13_U_Mxor_S_xo_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y75",
      INIT => X"FFFF7FFF"
    )
    port map (
      ADR2 => U2_U1_XXorS(12),
      ADR4 => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1,
      ADR1 => U2_U1_XXorS(10),
      ADR0 => U2_U1_XXorS(11),
      ADR3 => U2_U1_XXorS(9),
      O => U2_U1_U1_GEN_13_U_Mxor_S_xo_0_1_1623
    );
  U2_U1_U1_GEN_9_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y75",
      INIT => X"F5F5FFFFF5F5FFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U2_U1_U1_GEN_7_U_Mxor_S_xo_0_1_3640,
      ADR4 => U2_U1_XXorS(8),
      ADR0 => U2_U1_XXorS(7),
      O => U2_U1_U1_GEN_9_U_Mxor_S_xo_0_1
    );
  XMAN_15_XMAN_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0
    );
  U1_U1_Mmux_G141 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y76",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_12_IBUF_0,
      ADR1 => Y_12_IBUF_0,
      ADR5 => '1',
      O => XMAN(15)
    );
  U1_U1_Mmux_S51 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y76",
      INIT => X"F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_12_IBUF_0,
      ADR1 => Y_12_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12
    );
  U1_U2_Mmux_Y312 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y77",
      INIT => X"00F000F000F011F0"
    )
    port map (
      ADR3 => U1_ExpDiff(4),
      ADR1 => U1_ExpDiff_0_0,
      ADR0 => U1_ExpDiff(2),
      ADR5 => U1_U1_EXP_COMP_S_1_0,
      ADR4 => U1_ExpDiff(3),
      ADR2 => U1_U2_Mmux_Y311_3711,
      O => U1_U2_Mmux_Y31
    );
  U2_U1_Mxor_XXorS_10_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y77",
      INIT => X"9966AA55669955AA"
    )
    port map (
      ADR2 => '1',
      ADR3 => OP_IBUF_0,
      ADR5 => X_31_IBUF_0,
      ADR0 => Y_31_IBUF_0,
      ADR1 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR4 => U1_U2_Mmux_Y31,
      O => U2_U1_XXorS(10)
    );
  U1_ExpDiff_1_161 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"AACCAACCF0FFF000"
    )
    port map (
      ADR3 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0,
      O => U1_ExpDiff_1_mmx_out3
    );
  U1_U2_Mmux_Y133 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"0011003333113333"
    )
    port map (
      ADR2 => '1',
      ADR1 => U1_ExpDiff(2),
      ADR3 => U1_ExpDiff(4),
      ADR4 => U1_ExpDiff_0_mmx_out,
      ADR0 => U1_ExpDiff_1_0,
      ADR5 => U1_ExpDiff_1_mmx_out3,
      O => U1_U2_Mmux_Y132_3700
    );
  U1_ExpDiff_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"FFF0CCAA00F0CCAA"
    )
    port map (
      ADR4 => U1_ExpDiff_0_0,
      ADR3 => U1_ExpDiff_1_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0,
      O => U1_ExpDiff_1_mmx_out15
    );
  U1_U2_Mmux_Y2511 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y78",
      INIT => X"F0F00000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_ExpDiff(2),
      ADR5 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff_1_mmx_out13,
      ADR4 => U1_ExpDiff_1_mmx_out15,
      O => U1_U2_Mmux_Y2511_3757
    );
  XMAN_23_XMAN_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0
    );
  U1_U1_Mmux_G221 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y79",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => X_20_IBUF_0,
      ADR2 => Y_20_IBUF_0,
      ADR5 => '1',
      O => XMAN(23)
    );
  U1_U1_Mmux_S141 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y79",
      INIT => X"FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => X_20_IBUF_0,
      ADR2 => Y_20_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20
    );
  U1_U1_EXP_COMP_U3_GEN_4_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y79",
      INIT => X"C3C3C3C3C3C3C3D2"
    )
    port map (
      ADR1 => U1_U1_EXP_COMP_COUT,
      ADR2 => U1_U1_EXP_COMP_S_4_0,
      ADR3 => U1_ExpDiff_0_0,
      ADR0 => U1_U1_EXP_COMP_S_1_0,
      ADR4 => U1_U1_EXP_COMP_S(2),
      ADR5 => U1_U1_EXP_COMP_S_3_0,
      O => U1_ExpDiff(4)
    );
  U2_U1_Mxor_XXorS_11_xo_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X19Y79",
      INIT => X"F0F0F078F0F0F02D"
    )
    port map (
      ADR2 => U2_OperationLogic,
      ADR3 => U1_U2_S_5_S_7_OR_13_o_0,
      ADR0 => U1_ExpDiff(3),
      ADR5 => N66,
      ADR1 => U1_ExpDiff_2_mmx_out7,
      ADR4 => U1_ExpDiff(4),
      O => U2_U1_XXorS(11)
    );
  U1_ExpDiff_1_23 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y80",
      INIT => X"FAFACFC00A0ACFC0"
    )
    port map (
      ADR2 => U1_ExpDiff_0_0,
      ADR4 => U1_ExpDiff_1_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0,
      O => U1_ExpDiff_1_mmx_out10
    );
  U2_U1_Mxor_XXorS_14_xo_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y80",
      INIT => X"CC004800FF007B00"
    )
    port map (
      ADR3 => U1_ExpDiff(2),
      ADR1 => U1_ExpDiff(3),
      ADR0 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_S_1_0,
      ADR5 => U1_ExpDiff_1_mmx_out10,
      O => U2_U1_Mxor_XXorS_14_xo_0_1_3715
    );
  U1_U1_EXP_COMP_U3_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y80",
      INIT => X"AA55AA55AA55EB14"
    )
    port map (
      ADR0 => U1_U1_EXP_COMP_COUT,
      ADR3 => U1_U1_EXP_COMP_S_3_0,
      ADR4 => U1_U1_EXP_COMP_S(2),
      ADR1 => Y_23_IBUF_0,
      ADR2 => X_23_IBUF_0,
      ADR5 => U1_U1_EXP_COMP_S_1_0,
      O => U1_ExpDiff(3)
    );
  XMAN_19_XMAN_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16
    );
  U1_U1_Mmux_G181 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_16_IBUF_0,
      ADR4 => Y_16_IBUF_0,
      ADR5 => '1',
      O => XMAN(19)
    );
  U1_U1_Mmux_S91 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"F3F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_16_IBUF_0,
      ADR4 => Y_16_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16_pack_1
    );
  U1_ExpDiff_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"EEEEFA504444FA50"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR4 => U1_ExpDiff_1_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out17_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out16,
      O => U1_ExpDiff_1_mmx_out16
    );
  U3_U1_U4_GEN_2_U_Z : X_LUT6
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => X"5014054114054150"
    )
    port map (
      ADR0 => U3_U1_n0007(8),
      ADR2 => XEXP_INCR(2),
      ADR1 => XEXP_INCR(1),
      ADR4 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos(1),
      ADR5 => N106,
      O => U3_ExpNorm(2)
    );
  U1_U3_XMantissa0_22_2 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => X_7_IBUF_0,
      ADR5 => X_6_IBUF_0,
      ADR2 => X_8_IBUF_0,
      ADR3 => X_9_IBUF_0,
      ADR1 => X_10_IBUF_0,
      ADR0 => X_11_IBUF_0,
      O => U1_U3_XMantissa0_22_1_3729
    );
  U3_U1_ShiftPos_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"D8FFD8AAD855D800"
    )
    port map (
      ADR3 => U3_U1_ShiftPos(0),
      ADR0 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(11),
      ADR1 => ZMANT(9),
      ADR5 => ZMANT(10),
      ADR4 => ZMANT(12),
      O => U3_U1_ShiftPos_1_mmx_out21
    );
  U3_U1_U3_C_9_51 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"D400F500FFD4FFF5"
    )
    port map (
      ADR3 => XEXP_INCR(2),
      ADR2 => XEXP_INCR(1),
      ADR0 => U3_U1_ShiftPos(1),
      ADR1 => XEXP_INCR(0),
      ADR4 => U3_U1_ShiftPos(0),
      ADR5 => U3_U1_ShiftPos(2),
      O => U3_U1_U3_C_9_bdd8
    );
  U3_U1_U1_Mmux_SHIFT3 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"E0E0E0A0E0E0A0A0"
    )
    port map (
      ADR2 => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_111,
      ADR1 => U3_U1_U1_GND_29_o_X_26_equal_25_o_26_12,
      ADR4 => U3_U1_U1_Mmux_SHIFT412,
      ADR3 => U3_U1_U1_GND_29_o_X_26_equal_20_o_mmx_out,
      ADR5 => U3_U1_U1_Mmux_SHIFT411,
      ADR0 => N104,
      O => U3_U1_ShiftPos(2)
    );
  U3_MantNorm_16_U3_MantNorm_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_MantNorm_25_Q,
      O => U3_MantNorm_25_0
    );
  U3_U1_U5_GEN_25_U_X_S_AND_5_o5 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y72"
    )
    port map (
      IA => N118,
      IB => N119,
      O => U3_MantNorm_25_Q,
      SEL => U3_U1_ShiftPos(2)
    );
  U3_U1_U5_GEN_25_U_X_S_AND_5_o5_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"5500554055505540"
    )
    port map (
      ADR0 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos(3),
      ADR4 => U3_U1_ShiftPos(4),
      ADR1 => U3_U1_ShiftPos_1_mmx_out4,
      ADR5 => U3_U1_ShiftPos_1_mmx_out3,
      ADR3 => U3_U1_U5_GEN_25_U_X_S_AND_5_o3_3632,
      O => N118
    );
  U3_U1_U5_GEN_25_U_X_S_AND_5_o5_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"0073005100620040"
    )
    port map (
      ADR3 => U3_U1_n0007(8),
      ADR0 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_ShiftPos_1_mmx_out14,
      ADR1 => U3_U1_ShiftPos(4),
      ADR5 => U3_U1_ShiftPos_1_mmx_out8,
      ADR4 => U3_U1_ShiftPos_1_mmx_out22,
      O => N119
    );
  U3_U1_U5_GEN_16_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"0000555700000002"
    )
    port map (
      ADR4 => U3_U1_n0007(8),
      ADR0 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos_1_mmx_out13,
      ADR1 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_U5_GEN_16_U_X_S_AND_5_o,
      O => U3_MantNorm_16_Q
    );
  U3_U1_U5_GEN_17_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y73",
      INIT => X"0030003000301130"
    )
    port map (
      ADR1 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(4),
      ADR0 => U3_U1_ShiftPos(2),
      ADR5 => U3_U1_ShiftPos_1_mmx_out3,
      ADR4 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_U5_GEN_17_U_X_S_AND_5_o,
      O => U3_MantNorm_17_Q
    );
  U1_U3_XExponent0_XMantissa0_AND_9_o : X_LUT6
    generic map(
      LOC => "SLICE_X20Y73",
      INIT => X"0000000100000000"
    )
    port map (
      ADR5 => U1_U3_XMantissa0,
      ADR1 => X_30_IBUF_0,
      ADR2 => X_29_IBUF_0,
      ADR3 => X_28_IBUF_0,
      ADR4 => X_27_IBUF_0,
      ADR0 => N6,
      O => U3_U3_XZero
    );
  U1_U3_XMantissa0_22_5 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y73",
      INIT => X"C000C00000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U1_U3_XMantissa0_0(22),
      ADR3 => U1_U3_XMantissa0_22_1_3729,
      ADR1 => U1_U3_XMantissa0_22_2_3730,
      ADR5 => U1_U3_XMantissa0_22_3_3731,
      O => U1_U3_XMantissa0
    );
  U1_U2_Mmux_Y12 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y74",
      INIT => X"0000000033335FFF"
    )
    port map (
      ADR5 => U1_ExpDiff(2),
      ADR4 => U1_ExpDiff(3),
      ADR2 => U1_ExpDiff_1_0,
      ADR0 => U1_ExpDiff_0_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out_0,
      ADR1 => U1_ExpDiff_1_mmx_out18,
      O => U1_U2_Mmux_Y12_3650
    );
  N6_N6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  U1_U3_XExponent0_XMantissa0_AND_9_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y75",
      INIT => X"FFFEFFFEFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR1 => X_26_IBUF_0,
      ADR2 => X_25_IBUF_0,
      ADR0 => X_24_IBUF_0,
      ADR3 => X_23_IBUF_0,
      ADR5 => '1',
      O => N6
    );
  U1_U3_XExponent255_30_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y75",
      INIT => X"A000A000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => X_25_IBUF_0,
      ADR0 => X_24_IBUF_0,
      ADR3 => X_23_IBUF_0,
      O => N10
    );
  XMAN_14_XMAN_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11_pack_8,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11
    );
  XMAN_14_XMAN_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10_pack_7,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10
    );
  U1_U1_Mmux_G131 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"F3C0F3C0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_11_IBUF_0,
      ADR2 => Y_11_IBUF_0,
      ADR5 => '1',
      O => XMAN(14)
    );
  U1_U1_Mmux_S41 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_11_IBUF_0,
      ADR2 => Y_11_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11_pack_8
    );
  U1_ExpDiff_1_221 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"D8D8D8D8FFAA5500"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11,
      O => U1_ExpDiff_1_mmx_out9
    );
  U1_U1_Mmux_G121 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"FA0AFA0AFA0AFA0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_10_IBUF_0,
      ADR3 => Y_10_IBUF_0,
      ADR5 => '1',
      O => XMAN(13)
    );
  U1_U1_Mmux_S31 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"AFA0AFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_10_IBUF_0,
      ADR3 => Y_10_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10_pack_7
    );
  U1_ExpDiff_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"DFDAD5D08F8A8580"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR2 => U1_ExpDiff_1_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out13,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10,
      O => U1_ExpDiff_1_mmx_out2
    );
  U1_ExpDiff_1_211 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y77",
      INIT => X"FFB833B8CCB800B8"
    )
    port map (
      ADR1 => U1_ExpDiff_0_0,
      ADR3 => U1_ExpDiff_1_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0,
      O => U1_ExpDiff_1_mmx_out8
    );
  U1_U2_Mmux_Y311 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y77",
      INIT => X"ACACFF0FACACF000"
    )
    port map (
      ADR4 => U1_ExpDiff(2),
      ADR2 => U1_ExpDiff(3),
      ADR1 => U1_ExpDiff_1_mmx_out9,
      ADR0 => U1_ExpDiff_1_mmx_out11,
      ADR3 => U1_ExpDiff_1_mmx_out10,
      ADR5 => U1_ExpDiff_1_mmx_out8,
      O => U1_U2_Mmux_Y311_3711
    );
  U1_U3_XMantissa0_22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y79",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR2 => X_19_IBUF_0,
      ADR5 => X_18_IBUF_0,
      ADR1 => X_20_IBUF_0,
      ADR3 => X_21_IBUF_0,
      ADR4 => X_22_IBUF_0,
      O => U1_U3_XMantissa0_22_3_3731
    );
  XMAN_21_XMAN_21_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18
    );
  U1_U1_Mmux_G201 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y80",
      INIT => X"FC0CFC0CFC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_18_IBUF_0,
      ADR3 => Y_18_IBUF_0,
      ADR5 => '1',
      O => XMAN(21)
    );
  U1_U1_Mmux_S111 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y80",
      INIT => X"CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_18_IBUF_0,
      ADR3 => Y_18_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18_pack_1
    );
  U1_ExpDiff_1_171 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y80",
      INIT => X"FF00CCCCAAAAF0F0"
    )
    port map (
      ADR4 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out18,
      O => U1_ExpDiff_1_mmx_out4
    );
  U3_U1_U4_GEN_2_U_Z_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => X"00000000000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U2_XExpIncr,
      ADR3 => U2_ZMant_Temp_26_Q,
      ADR2 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR5 => XEXP_INCR(0),
      O => N106
    );
  XMAN_4_XMAN_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1
    );
  U1_U1_Mmux_G261 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"F5F5A0A0F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => X_1_IBUF_0,
      ADR2 => Y_1_IBUF_0,
      ADR5 => '1',
      O => XMAN(4)
    );
  U1_U1_Mmux_S21 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => X_1_IBUF_0,
      ADR2 => Y_1_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1_pack_1
    );
  U1_ExpDiff_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"FBF83B38CBC80B08"
    )
    port map (
      ADR2 => U1_ExpDiff_0_0,
      ADR1 => U1_ExpDiff_1_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1,
      O => U1_ExpDiff_1_mmx_out6
    );
  U3_U1_U5_GEN_12_U_X_S_AND_5_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"A101AB0BF151FB5B"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR4 => U3_U1_ShiftPos_1_mmx_out17,
      ADR2 => U3_U1_ShiftPos(3),
      ADR3 => U3_U1_ShiftPos_1_mmx_out13,
      ADR1 => U3_U1_ShiftPos_1_mmx_out21,
      ADR5 => U3_U1_ShiftPos_1_mmx_out12,
      O => N94
    );
  U3_U1_U1_Mmux_SHIFT4111 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"0000000000000303"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ZMANT(10),
      ADR1 => ZMANT(9),
      ADR2 => ZMANT(7),
      ADR5 => ZMANT(8),
      O => U3_U1_U1_Mmux_SHIFT411
    );
  U3_U1_U4_GEN_1_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"0033006300CC009C"
    )
    port map (
      ADR0 => XEXP_INCR(0),
      ADR5 => XEXP_INCR(1),
      ADR1 => U3_U1_ShiftPos(1),
      ADR2 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR4 => ZMANT(26),
      ADR3 => U3_U1_n0007(8),
      O => U3_ExpNorm(1)
    );
  U3_U1_ShiftPos_1_211 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      ADR4 => U3_U1_ShiftPos(0),
      ADR5 => U3_U1_ShiftPos(1),
      ADR2 => ZMANT(20),
      ADR3 => ZMANT(18),
      ADR1 => ZMANT(19),
      ADR0 => ZMANT(21),
      O => U3_U1_ShiftPos_1_mmx_out8
    );
  U3_U1_U5_GEN_21_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"5FDD5F880ADD0A88"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR3 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_ShiftPos_1_mmx_out3,
      ADR1 => U3_U1_ShiftPos_1_mmx_out4,
      ADR5 => U3_U1_ShiftPos_1_mmx_out14,
      ADR4 => U3_U1_ShiftPos_1_mmx_out8,
      O => U3_U1_U5_GEN_21_U_X_S_AND_5_o
    );
  U3_U2_U1_Mmux_INCR1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y73",
      INIT => X"0000000003010303"
    )
    port map (
      ADR1 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos_1_mmx_out10,
      ADR5 => N34,
      ADR0 => U3_U1_ShiftPos_1_mmx_out3,
      ADR3 => U3_MantNorm_3_Q,
      ADR4 => U3_U1_ShiftPos_1_mmx_out13,
      O => U3_U2_MantIncr
    );
  U3_U1_ShiftPos_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y73",
      INIT => X"FFFF3333FFFF3B3B"
    )
    port map (
      ADR3 => '1',
      ADR1 => ZMANT(0),
      ADR0 => U3_U1_U1_Mmux_SHIFT14_3647,
      ADR5 => U2_XExpIncr,
      ADR2 => U2_ZMant_Temp_26_Q,
      ADR4 => U3_U1_ShiftPos(1),
      O => U3_U1_ShiftPos_1_mmx_out13
    );
  U3_U1_U5_GEN_20_U_X_S_AND_5_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y73",
      INIT => X"2222EE222020E020"
    )
    port map (
      ADR2 => XEXP_INCR(7),
      ADR5 => U3_U1_U3_C_9_bdd0,
      ADR1 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_U5_GEN_20_U_X_S_AND_5_o,
      ADR3 => U3_U1_U5_GEN_20_U_X_S_AND_5_o1_0,
      ADR4 => U3_U1_ShiftPos(4),
      O => U3_MantNorm_20_Q
    );
  U3_U1_U5_GEN_5_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y73",
      INIT => X"0000000300000022"
    )
    port map (
      ADR4 => U3_U1_n0007(8),
      ADR1 => U3_U1_ShiftPos(3),
      ADR3 => U3_U1_ShiftPos(4),
      ADR5 => U3_U1_ShiftPos(2),
      ADR2 => U3_U1_ShiftPos_1_mmx_out3,
      ADR0 => U3_U1_ShiftPos_1_mmx_out14,
      O => U3_MantNorm_5_Q
    );
  U3_U3_XNorm_U3_U3_XNorm_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U3_Mmux_RESULT112,
      O => U3_U3_Mmux_RESULT112_0
    );
  U3_U3_XNorm1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U3_U3_XZero,
      ADR4 => U1_U3_XExponent255,
      ADR5 => '1',
      O => U3_U3_XNorm
    );
  U3_U3_Mmux_RESULT1121 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"00000010"
    )
    port map (
      ADR2 => U3_U3_YZero,
      ADR0 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR3 => U3_U3_XZero,
      ADR4 => U1_U3_XExponent255,
      O => U3_U3_Mmux_RESULT112
    );
  U1_U3_XExponent255_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => X_30_IBUF_0,
      ADR4 => X_29_IBUF_0,
      ADR1 => X_28_IBUF_0,
      ADR3 => X_27_IBUF_0,
      ADR2 => X_26_IBUF_0,
      ADR5 => N10_0,
      O => U1_U3_XExponent255
    );
  U1_U2_Mmux_Y2313 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"0000CFC00000A0A0"
    )
    port map (
      ADR4 => U1_ExpDiff(3),
      ADR5 => U1_ExpDiff_0_0,
      ADR2 => U1_ExpDiff_1_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1,
      O => U1_U2_Mmux_Y2313_3614
    );
  U1_ExpDiff_1_mmx_out14_U1_ExpDiff_1_mmx_out14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9_pack_7,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9
    );
  U1_ExpDiff_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y76",
      INIT => X"FF55AA00D8D8D8D8"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0,
      O => U1_ExpDiff_1_mmx_out14
    );
  U1_U2_Mmux_Y2512 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y76",
      INIT => X"00FD00EC00310020"
    )
    port map (
      ADR3 => U1_ExpDiff(2),
      ADR1 => U1_ExpDiff(3),
      ADR2 => U1_ExpDiff_0_mmx_out1,
      ADR0 => U1_ExpDiff_1_0,
      ADR4 => U1_ExpDiff_0_mmx_out,
      ADR5 => U1_ExpDiff_1_mmx_out14,
      O => U1_U2_Mmux_Y2512_3758
    );
  U1_U1_Mmux_G111 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y76",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_9_IBUF_0,
      ADR3 => Y_9_IBUF_0,
      ADR5 => '1',
      O => XMAN(12)
    );
  U1_U1_Mmux_S231 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y76",
      INIT => X"BB88BB88"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_9_IBUF_0,
      ADR3 => Y_9_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9_pack_7
    );
  U1_ExpDiff_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y76",
      INIT => X"FCFC0C0CAFA0AFA0"
    )
    port map (
      ADR5 => U1_ExpDiff_0_0,
      ADR2 => U1_ExpDiff_1_0,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out10,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out12_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out11,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9,
      O => U1_ExpDiff_1_mmx_out19
    );
  XEXP_0_XEXP_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_ExpDiff(0),
      O => U1_ExpDiff_0_0
    );
  U1_U1_Mmux_G11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y77",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      ADR5 => '1',
      O => XEXP(0)
    );
  U1_U1_EXP_COMP_U1_S_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y77",
      INIT => X"0FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      O => U1_ExpDiff(0)
    );
  XMAN_17_XMAN_17_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14_0
    );
  U1_U1_Mmux_G161 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y78",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_14_IBUF_0,
      ADR2 => Y_14_IBUF_0,
      ADR5 => '1',
      O => XMAN(17)
    );
  U1_U1_Mmux_S71 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y78",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_14_IBUF_0,
      ADR2 => Y_14_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out14
    );
  XMAN_24_XMAN_24_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0
    );
  U1_U1_Mmux_G231 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y79",
      INIT => X"EEEE4444EEEE4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_21_IBUF_0,
      ADR4 => Y_21_IBUF_0,
      ADR5 => '1',
      O => XMAN(24)
    );
  U1_U1_Mmux_S151 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y79",
      INIT => X"DDDD8888"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_21_IBUF_0,
      ADR4 => Y_21_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21
    );
  XMAN_22_XMAN_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19
    );
  U1_U1_Mmux_G211 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y80",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_19_IBUF_0,
      ADR2 => Y_19_IBUF_0,
      ADR5 => '1',
      O => XMAN(22)
    );
  U1_U1_Mmux_S121 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y80",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_19_IBUF_0,
      ADR2 => Y_19_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19_pack_1
    );
  U1_ExpDiff_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y80",
      INIT => X"F7D5E6C4B391A280"
    )
    port map (
      ADR1 => U1_ExpDiff_0_0,
      ADR0 => U1_ExpDiff_1_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out20_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out22_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out21_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out19,
      O => U1_ExpDiff_1_mmx_out11
    );
  U3_U1_U4_GEN_3_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"0303303030300303"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => XEXP_INCR(3),
      ADR5 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_U3_C_9_bdd8,
      ADR1 => U3_U1_n0007(8),
      O => U3_ExpNorm(3)
    );
  U3_U2_U3_S_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"3F3FC0C0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U3_ExpNorm(4),
      ADR2 => U3_ExpNorm(3),
      ADR1 => U3_ExpNorm(2),
      ADR5 => U3_U2_U3_C_8_bdd10,
      O => U3_U2_TempExp(4)
    );
  U3_U1_U5_GEN_10_U_X_S_AND_5_o : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"0101001100000011"
    )
    port map (
      ADR0 => U3_U1_n0007(8),
      ADR1 => U3_U1_ShiftPos(4),
      ADR5 => U3_U1_ShiftPos_1_mmx_out15,
      ADR4 => U3_U1_ShiftPos(2),
      ADR2 => U3_U1_ShiftPos(3),
      ADR3 => N98,
      O => U3_MantNorm_10_Q
    );
  U1_ExpDiff_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"E2E2FF00FF00E2E2"
    )
    port map (
      ADR5 => X_23_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out1,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => Y_0_IBUF_0,
      ADR2 => X_0_IBUF_0,
      O => U1_ExpDiff_0_mmx_out
    );
  U1_U1_ExpComp_ExpComp_OR_11_o9 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"7F5715015F550500"
    )
    port map (
      ADR4 => Y_2_IBUF_0,
      ADR0 => X_2_IBUF_0,
      ADR3 => Y_1_IBUF_0,
      ADR2 => X_1_IBUF_0,
      ADR5 => Y_0_IBUF_0,
      ADR1 => X_0_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o9_3754
    );
  U3_U1_U5_GEN_13_U_X_S_AND_5_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y72",
      INIT => X"B1B1B1B10055AAFF"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR4 => U3_U1_ShiftPos_1_mmx_out18,
      ADR5 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_ShiftPos_1_mmx_out3,
      ADR3 => U3_U1_ShiftPos_1_mmx_out22,
      ADR1 => U3_U1_ShiftPos_1_mmx_out14,
      O => N92
    );
  U3_U1_U5_GEN_13_U_X_S_AND_5_o : X_LUT6
    generic map(
      LOC => "SLICE_X22Y72",
      INIT => X"000000000F0F0F0E"
    )
    port map (
      ADR5 => U3_U1_ShiftPos(4),
      ADR2 => N92,
      ADR4 => XEXP_INCR(7),
      ADR0 => XEXP_INCR(6),
      ADR1 => XEXP_INCR(5),
      ADR3 => U3_U1_U3_C_9_bdd4,
      O => U3_MantNorm_13_Q
    );
  XMAN_8_XMAN_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5
    );
  U1_U1_Mmux_G301 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y73",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_5_IBUF_0,
      ADR2 => Y_5_IBUF_0,
      ADR5 => '1',
      O => XMAN(8)
    );
  U1_U1_Mmux_S191 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y73",
      INIT => X"D8D8D8D8"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_5_IBUF_0,
      ADR2 => Y_5_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5_pack_1
    );
  U1_ExpDiff_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y73",
      INIT => X"FE76DC54BA329810"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR1 => U1_ExpDiff_1_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5,
      O => U1_ExpDiff_1_mmx_out18
    );
  XCASE_0_XCASE_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XCASE(1),
      O => XCASE_1_0
    );
  XCASE_0_XCASE_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0
    );
  U1_U3_Mmux_CaseX11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y74",
      INIT => X"003F0000003F0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_U3_XExponent255,
      ADR3 => U3_U3_XZero,
      ADR1 => U1_U3_XMantissa0,
      ADR2 => X_31_IBUF_0,
      ADR5 => '1',
      O => XCASE(0)
    );
  U1_U3_Mmux_CaseX21 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y74",
      INIT => X"00F30000"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_U3_XExponent255,
      ADR3 => U3_U3_XZero,
      ADR1 => U1_U3_XMantissa0,
      ADR2 => X_31_IBUF_0,
      O => XCASE(1)
    );
  U1_U1_Mmux_G91 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y74",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_7_IBUF_0,
      ADR0 => Y_7_IBUF_0,
      ADR5 => '1',
      O => XMAN(10)
    );
  U1_U1_Mmux_S211 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y74",
      INIT => X"F0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_7_IBUF_0,
      ADR0 => Y_7_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7
    );
  XEXP_3_XEXP_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_2_pack_8,
      O => XEXP(2)
    );
  U1_U1_Mmux_G41 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y75",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_26_IBUF_0,
      ADR1 => Y_26_IBUF_0,
      ADR5 => '1',
      O => XEXP(3)
    );
  U1_U1_Mmux_G31 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y75",
      INIT => X"AAAAFF00"
    )
    port map (
      ADR3 => X_25_IBUF_0,
      ADR0 => Y_25_IBUF_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => '1',
      ADR2 => '1',
      O => XEXP_2_pack_8
    );
  U2_U3_GEN_4_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y75",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => XEXP(4),
      ADR4 => U2_XExpIncr,
      ADR2 => XEXP(0),
      ADR1 => XEXP(1),
      ADR3 => XEXP(2),
      ADR5 => XEXP(3),
      O => XEXP_INCR(4)
    );
  U2_U3_GEN_3_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y75",
      INIT => X"66AAAAAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => XEXP(3),
      ADR3 => U2_XExpIncr,
      ADR5 => XEXP(0),
      ADR4 => XEXP(1),
      ADR1 => XEXP(2),
      O => XEXP_INCR(3)
    );
  U3_Mmux_Z19_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y75",
      INIT => X"0001010110111111"
    )
    port map (
      ADR1 => U3_U3_Mmux_RESULT172,
      ADR0 => U3_U3_Mmux_RESULT1111,
      ADR2 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR3 => Y_26_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_26_IBUF_0,
      O => N84
    );
  U3_Mmux_Z15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y78",
      INIT => X"0033000000200020"
    )
    port map (
      ADR1 => U3_U3_XPInf_XZero_OR_367_o,
      ADR3 => U3_U3_XNInf_XZero_OR_371_o,
      ADR5 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR2 => Y_22_IBUF_0,
      ADR0 => U3_U3_XZero_YNorm_AND_36_o,
      ADR4 => X_22_IBUF_0,
      O => N44
    );
  XEXP_4_XEXP_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S(4),
      O => U1_U1_EXP_COMP_S_4_0
    );
  U1_U1_Mmux_G51 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y79",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_27_IBUF_0,
      ADR0 => Y_27_IBUF_0,
      ADR5 => '1',
      O => XEXP(4)
    );
  U1_U1_EXP_COMP_U1_S_4_1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y79",
      INIT => X"5AA55AA5"
    )
    port map (
      ADR4 => '1',
      ADR3 => U1_U1_EXP_COMP_U1_C_8_bdd6,
      ADR1 => '1',
      ADR2 => X_27_IBUF_0,
      ADR0 => Y_27_IBUF_0,
      O => U1_U1_EXP_COMP_S(4)
    );
  U1_U1_ExpComp_ExpComp_OR_11_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y79",
      INIT => X"0000000100000000"
    )
    port map (
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o1_3841,
      ADR2 => U1_ExpDiff(2),
      ADR1 => U1_ExpDiff(3),
      ADR3 => U1_ExpDiff(6),
      ADR0 => U1_ExpDiff(7),
      ADR4 => U1_ExpDiff(4),
      O => U1_U1_ExpComp_ExpComp_OR_11_o2_3752
    );
  U1_U1_ExpComp_ExpComp_OR_11_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y79",
      INIT => X"0000500500001001"
    )
    port map (
      ADR2 => X_23_IBUF_0,
      ADR3 => Y_23_IBUF_0,
      ADR0 => U1_ExpDiff(5),
      ADR4 => U1_ExpDiff_1_0,
      ADR1 => X_22_IBUF_0,
      ADR5 => Y_22_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o1_3841
    );
  XMAN_18_XMAN_18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15_0
    );
  XMAN_18_XMAN_18_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S_6_pack_3,
      O => U1_U1_EXP_COMP_S(6)
    );
  XMAN_18_XMAN_18_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U2_S_5_S_7_OR_13_o,
      O => U1_U2_S_5_S_7_OR_13_o_0
    );
  U1_U1_Mmux_G171 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_15_IBUF_0,
      ADR3 => Y_15_IBUF_0,
      ADR5 => '1',
      O => XMAN(18)
    );
  U1_U1_Mmux_S81 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_15_IBUF_0,
      ADR3 => Y_15_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out15
    );
  U1_U1_ExpComp_ExpComp_OR_11_o18 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"AAFFFAFF00FF00FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o2_3752,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o17_3793,
      ADR2 => Y_22_IBUF_0,
      ADR4 => X_22_IBUF_0,
      ADR3 => U1_U1_EXP_COMP_COUT,
      O => U1_U1_ExpComp_ExpComp_OR_11_o
    );
  U1_U1_Mmux_G71 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_29_IBUF_0,
      ADR2 => Y_29_IBUF_0,
      ADR5 => '1',
      O => XEXP(6)
    );
  U1_U1_EXP_COMP_U1_S_6_1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"5A5AA5A5"
    )
    port map (
      ADR1 => '1',
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd2,
      ADR3 => '1',
      ADR0 => X_29_IBUF_0,
      ADR2 => Y_29_IBUF_0,
      O => U1_U1_EXP_COMP_S_6_pack_3
    );
  U1_U1_EXP_COMP_U3_GEN_7_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"CCCC3336CCCC3336"
    )
    port map (
      ADR4 => U1_U1_EXP_COMP_COUT,
      ADR1 => U1_U1_EXP_COMP_S_7_0,
      ADR0 => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1,
      ADR3 => U1_U1_EXP_COMP_S_5_0,
      ADR2 => U1_U1_EXP_COMP_S(6),
      ADR5 => '1',
      O => U1_ExpDiff(7)
    );
  U1_U2_S_5_S_7_OR_13_o_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y80",
      INIT => X"FFFC7FFE"
    )
    port map (
      ADR4 => U1_U1_EXP_COMP_COUT,
      ADR1 => U1_U1_EXP_COMP_S_7_0,
      ADR0 => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1,
      ADR3 => U1_U1_EXP_COMP_S_5_0,
      ADR2 => U1_U1_EXP_COMP_S(6),
      O => U1_U2_S_5_S_7_OR_13_o
    );
  U1_U1_EXP_COMP_U3_GEN_6_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y81",
      INIT => X"55A9AA56AA5655A9"
    )
    port map (
      ADR3 => U1_U1_EXP_COMP_COUT,
      ADR5 => X_29_IBUF_0,
      ADR0 => Y_29_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd2,
      ADR1 => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1,
      ADR2 => U1_U1_EXP_COMP_S_5_0,
      O => U1_ExpDiff(6)
    );
  U3_U2_U3_S_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"ED12DE2112122121"
    )
    port map (
      ADR4 => XEXP_INCR(3),
      ADR0 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_U3_C_9_bdd8,
      ADR1 => U3_U1_n0007(8),
      ADR3 => U3_ExpNorm(2),
      ADR5 => U3_U2_U3_C_8_bdd10,
      O => U3_U2_TempExp(3)
    );
  U3_U2_U3_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"1000200000000000"
    )
    port map (
      ADR5 => U3_MantNorm_25_0,
      ADR1 => U3_U1_n0007(8),
      ADR2 => U3_ExpNorm(1),
      ADR3 => U3_U2_U2_C_22_Q,
      ADR4 => U3_U1_ShiftPos(0),
      ADR0 => XEXP_INCR(0),
      O => U3_U2_U3_C_8_bdd10
    );
  U3_U2_U3_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"0000288200000000"
    )
    port map (
      ADR1 => XEXP_INCR(3),
      ADR2 => U3_U1_ShiftPos(3),
      ADR3 => U3_U1_U3_C_9_bdd8,
      ADR4 => U3_U1_n0007(8),
      ADR0 => U3_ExpNorm(2),
      ADR5 => U3_U2_U3_C_8_bdd10,
      O => U3_U2_U3_C_8_bdd6
    );
  U3_U2_U3_S_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"6699CC33669ACC30"
    )
    port map (
      ADR3 => XEXP_INCR(5),
      ADR1 => U3_U1_U3_C_9_bdd4,
      ADR2 => XEXP_INCR(7),
      ADR5 => XEXP_INCR(6),
      ADR0 => U3_ExpNorm(4),
      ADR4 => U3_U2_U3_C_8_bdd6,
      O => U3_U2_TempExp(5)
    );
  XMAN_3_XMAN_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out_0
    );
  U1_U1_Mmux_G251 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_0_IBUF_0,
      ADR2 => Y_0_IBUF_0,
      ADR5 => '1',
      O => XMAN(3)
    );
  U1_U1_Mmux_S11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR3 => X_0_IBUF_0,
      ADR2 => Y_0_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out
    );
  U3_U1_U5_GEN_4_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"0000011100000100"
    )
    port map (
      ADR4 => U3_U1_n0007(8),
      ADR0 => U3_U1_ShiftPos(3),
      ADR1 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos(2),
      ADR2 => U3_U1_ShiftPos_1_mmx_out13,
      ADR5 => U3_U1_ShiftPos_1_mmx_out12,
      O => U3_MantNorm_4_Q
    );
  U3_U1_U3_S_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"0000000000000303"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => XEXP_INCR(7),
      ADR5 => XEXP_INCR(6),
      ADR4 => XEXP_INCR(5),
      ADR1 => U3_U1_U3_C_9_bdd4,
      O => U3_U1_n0007(8)
    );
  U3_U1_U3_C_9_bdd4_U3_U1_U3_C_9_bdd4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6_pack_1,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6
    );
  U3_U1_U3_C_9_31 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y72",
      INIT => X"F5555000FFF55550"
    )
    port map (
      ADR1 => '1',
      ADR4 => XEXP_INCR(4),
      ADR2 => U3_U1_U3_C_9_bdd8,
      ADR5 => U3_U1_ShiftPos(3),
      ADR3 => XEXP_INCR(3),
      ADR0 => U3_U1_ShiftPos(4),
      O => U3_U1_U3_C_9_bdd4
    );
  U1_U1_Mmux_G311 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y72",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_6_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      ADR5 => '1',
      O => XMAN(9)
    );
  U1_U1_Mmux_S201 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y72",
      INIT => X"E4E4E4E4"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_6_IBUF_0,
      ADR1 => Y_6_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6_pack_1
    );
  U1_ExpDiff_1_13 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y72",
      INIT => X"E4E4E4E4FF55AA00"
    )
    port map (
      ADR0 => U1_ExpDiff_0_0,
      ADR5 => U1_ExpDiff_1_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out9,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6,
      O => U1_ExpDiff_1_mmx_out1
    );
  U3_U3_Mmux_RESULT1111_U3_U3_Mmux_RESULT1111_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U3_XNorm_YZero_AND_35_o,
      O => U3_U3_XNorm_YZero_AND_35_o_0
    );
  U3_U3_Mmux_RESULT11111 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y73",
      INIT => X"7575313175753131"
    )
    port map (
      ADR3 => '1',
      ADR1 => U3_U3_YZero,
      ADR0 => U3_U3_XZero,
      ADR2 => U1_U3_YExponent255,
      ADR4 => U1_U3_XExponent255,
      ADR5 => '1',
      O => U3_U3_Mmux_RESULT1111
    );
  U3_U3_XNorm_YZero_AND_35_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y73",
      INIT => X"00004444"
    )
    port map (
      ADR2 => '1',
      ADR1 => U3_U3_YZero,
      ADR0 => U3_U3_XZero,
      ADR3 => '1',
      ADR4 => U1_U3_XExponent255,
      O => U3_U3_XNorm_YZero_AND_35_o
    );
  U3_U1_U5_GEN_3_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y73",
      INIT => X"0100010001000000"
    )
    port map (
      ADR0 => U3_U1_ShiftPos(2),
      ADR2 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos_1_mmx_out11,
      ADR1 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_U3_C_9_bdd0,
      ADR4 => XEXP_INCR(7),
      O => U3_MantNorm_3_Q
    );
  U3_U1_U3_C_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y73",
      INIT => X"FFFCFFDEFFEDFFCF"
    )
    port map (
      ADR2 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR4 => Y_28_IBUF_0,
      ADR5 => X_28_IBUF_0,
      ADR3 => XEXP_INCR(6),
      ADR1 => U3_U1_U3_C_9_bdd4,
      O => U3_U1_U3_C_9_bdd0
    );
  XMAN_11_XMAN_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8_0
    );
  U1_U1_Mmux_G101 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y74",
      INIT => X"F0F0CCCCF0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_8_IBUF_0,
      ADR2 => Y_8_IBUF_0,
      ADR5 => '1',
      O => XMAN(11)
    );
  U1_U1_Mmux_S221 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y74",
      INIT => X"CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_8_IBUF_0,
      ADR2 => Y_8_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out8
    );
  U3_U3_XNInf_XZero_OR_371_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y74",
      INIT => X"5455545400000000"
    )
    port map (
      ADR5 => U3_U3_XNInf_XZero_OR_371_o1_3351,
      ADR0 => U3_U3_YNorm,
      ADR1 => U3_U3_XZero,
      ADR2 => U3_U3_XNorm,
      ADR4 => XCASE_1_0,
      ADR3 => XCASE(0),
      O => U3_U3_XNInf_XZero_OR_371_o2_3842
    );
  U3_U3_XNInf_XZero_OR_371_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y74",
      INIT => X"FFFF0202FFFF0002"
    )
    port map (
      ADR2 => U3_U3_XNorm,
      ADR1 => XCASE(0),
      ADR0 => XCASE_1_0,
      ADR5 => U3_U3_YZero,
      ADR3 => U1_U3_YExponent255,
      ADR4 => U3_U3_XNInf_XZero_OR_371_o2_3842,
      O => U3_U3_XNInf_XZero_OR_371_o
    );
  U2_U3_GEN_5_U_Mxor_S_xo_0_1_U2_U3_GEN_5_U_Mxor_S_xo_0_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2_0
    );
  U2_U3_GEN_5_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y75",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => XEXP(2),
      ADR1 => XEXP(4),
      ADR0 => XEXP(1),
      ADR4 => U2_XExpIncr,
      ADR2 => XEXP(0),
      ADR5 => XEXP(3),
      O => U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368
    );
  U2_U3_GEN_6_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y75",
      INIT => X"AAAAFF005A5A33CC"
    )
    port map (
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => Y_29_IBUF_0,
      ADR5 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368,
      ADR2 => Y_28_IBUF_0,
      ADR3 => X_29_IBUF_0,
      ADR1 => X_28_IBUF_0,
      O => XEXP_INCR(6)
    );
  U1_U1_Mmux_G21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y75",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_24_IBUF_0,
      ADR0 => Y_24_IBUF_0,
      ADR5 => '1',
      O => XEXP(1)
    );
  U1_U1_Mmux_S131 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y75",
      INIT => X"FFF000F0"
    )
    port map (
      ADR2 => Y_2_IBUF_0,
      ADR4 => X_2_IBUF_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => '1',
      ADR0 => '1',
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out2
    );
  U2_U3_GEN_2_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y75",
      INIT => X"47B8B8B8B8B8B8B8"
    )
    port map (
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_25_IBUF_0,
      ADR0 => Y_25_IBUF_0,
      ADR3 => U2_XExpIncr,
      ADR5 => XEXP(0),
      ADR4 => XEXP(1),
      O => XEXP_INCR(2)
    );
  U3_Mmux_Z18_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y76",
      INIT => X"010501050B0F0B0F"
    )
    port map (
      ADR4 => '1',
      ADR2 => U3_U3_Mmux_RESULT172,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR3 => Y_25_IBUF_0,
      ADR1 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_25_IBUF_0,
      O => N80
    );
  U3_Mmux_Z22_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y76",
      INIT => X"000000000C3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR5 => U3_U3_Mmux_RESULT172,
      ADR1 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR3 => Y_29_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_29_IBUF_0,
      O => N76
    );
  U1_U1_EXP_COMP_U1_C_8_bdd6_U1_U1_EXP_COMP_U1_C_8_bdd6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S(3),
      O => U1_U1_EXP_COMP_S_3_0
    );
  U1_U1_EXP_COMP_U1_C_8_bdd6_U1_U1_EXP_COMP_U1_C_8_bdd6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S(1),
      O => U1_U1_EXP_COMP_S_1_0
    );
  U1_U1_EXP_COMP_U1_C_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"F5717150F5717150"
    )
    port map (
      ADR2 => X_26_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd10,
      ADR1 => Y_25_IBUF_0,
      ADR3 => X_25_IBUF_0,
      ADR0 => Y_26_IBUF_0,
      ADR5 => '1',
      O => U1_U1_EXP_COMP_U1_C_8_bdd6
    );
  U1_U1_EXP_COMP_U1_S_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"5A9696A5"
    )
    port map (
      ADR2 => X_26_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd10,
      ADR1 => Y_25_IBUF_0,
      ADR3 => X_25_IBUF_0,
      ADR0 => Y_26_IBUF_0,
      O => U1_U1_EXP_COMP_S(3)
    );
  U1_U1_EXP_COMP_U1_C_8_61 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"AF0AFF0FAF0AFF0F"
    )
    port map (
      ADR1 => '1',
      ADR3 => X_24_IBUF_0,
      ADR0 => X_23_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      ADR2 => Y_24_IBUF_0,
      ADR5 => '1',
      O => U1_U1_EXP_COMP_U1_C_8_bdd10
    );
  U1_U1_EXP_COMP_U1_S_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"5AA50FF0"
    )
    port map (
      ADR1 => '1',
      ADR3 => X_24_IBUF_0,
      ADR0 => X_23_IBUF_0,
      ADR4 => Y_23_IBUF_0,
      ADR2 => Y_24_IBUF_0,
      O => U1_U1_EXP_COMP_S(1)
    );
  U1_U1_EXP_COMP_U1_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"20DFDF20BA4545BA"
    )
    port map (
      ADR3 => X_25_IBUF_0,
      ADR4 => Y_25_IBUF_0,
      ADR5 => X_24_IBUF_0,
      ADR1 => X_23_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR0 => Y_24_IBUF_0,
      O => U1_U1_EXP_COMP_S(2)
    );
  U1_U1_EXP_COMP_U3_GEN_2_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y78",
      INIT => X"EBAA1455AAEB5514"
    )
    port map (
      ADR0 => U1_U1_EXP_COMP_COUT,
      ADR4 => U1_U1_EXP_COMP_S(2),
      ADR2 => X_23_IBUF_0,
      ADR1 => Y_23_IBUF_0,
      ADR5 => X_24_IBUF_0,
      ADR3 => Y_24_IBUF_0,
      O => U1_ExpDiff(2)
    );
  U1_U1_EXP_COMP_COUT_U1_U1_EXP_COMP_COUT_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S(7),
      O => U1_U1_EXP_COMP_S_7_0
    );
  U1_U1_EXP_COMP_COUT_U1_U1_EXP_COMP_COUT_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_EXP_COMP_S(5),
      O => U1_U1_EXP_COMP_S_5_0
    );
  U1_U1_EXP_COMP_U1_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y79",
      INIT => X"D4F550D4D4F550D4"
    )
    port map (
      ADR2 => X_30_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd2,
      ADR3 => Y_29_IBUF_0,
      ADR1 => X_29_IBUF_0,
      ADR0 => Y_30_IBUF_0,
      ADR5 => '1',
      O => U1_U1_EXP_COMP_COUT
    );
  U1_U1_EXP_COMP_U1_S_7_1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y79",
      INIT => X"695AA569"
    )
    port map (
      ADR2 => X_30_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd2,
      ADR3 => Y_29_IBUF_0,
      ADR1 => X_29_IBUF_0,
      ADR0 => Y_30_IBUF_0,
      O => U1_U1_EXP_COMP_S(7)
    );
  U1_U1_EXP_COMP_U1_C_8_21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y79",
      INIT => X"B2BB22B2B2BB22B2"
    )
    port map (
      ADR0 => X_28_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd6,
      ADR3 => Y_27_IBUF_0,
      ADR2 => X_27_IBUF_0,
      ADR1 => Y_28_IBUF_0,
      ADR5 => '1',
      O => U1_U1_EXP_COMP_U1_C_8_bdd2
    );
  U1_U1_EXP_COMP_U1_S_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y79",
      INIT => X"69669969"
    )
    port map (
      ADR0 => X_28_IBUF_0,
      ADR4 => U1_U1_EXP_COMP_U1_C_8_bdd6,
      ADR3 => Y_27_IBUF_0,
      ADR2 => X_27_IBUF_0,
      ADR1 => Y_28_IBUF_0,
      O => U1_U1_EXP_COMP_S(5)
    );
  U2_U1_Mxor_XXorS_17_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y80",
      INIT => X"FFFFBFFFFFFFFDFC"
    )
    port map (
      ADR2 => U1_U1_EXP_COMP_S_5_0,
      ADR1 => U1_U1_EXP_COMP_S_7_0,
      ADR5 => U1_U1_EXP_COMP_S(6),
      ADR3 => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1,
      ADR0 => U1_U1_EXP_COMP_COUT,
      ADR4 => U1_ExpDiff(4),
      O => U2_U1_Mxor_XXorS_17_xo(0)
    );
  U3_U2_MantCarry_U3_U2_MantCarry_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U2_TempExp_0_pack_5,
      O => U3_U2_TempExp(0)
    );
  U3_U2_U2_GEN_22_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"AA00AA00AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => U3_U2_U2_C_22_Q,
      ADR3 => U3_MantNorm_25_0,
      ADR5 => '1',
      O => U3_U2_MantCarry
    );
  U3_U2_U3_S_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"AA00963C"
    )
    port map (
      ADR4 => U3_U1_n0007(8),
      ADR1 => U3_U1_ShiftPos(0),
      ADR2 => XEXP_INCR(0),
      ADR0 => U3_U2_U2_C_22_Q,
      ADR3 => U3_MantNorm_25_0,
      O => U3_U2_TempExp_0_pack_5
    );
  U3_U2_isInfty_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"CC00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U3_U2_TempExp(3),
      ADR3 => U3_U2_TempExp(2),
      ADR1 => U3_U2_TempExp(1),
      ADR5 => U3_U2_TempExp(0),
      O => N2
    );
  U3_U2_U3_S_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"FF00DF20DF20FF00"
    )
    port map (
      ADR3 => U3_ExpNorm(2),
      ADR4 => U3_U1_ShiftPos(0),
      ADR5 => XEXP_INCR(0),
      ADR2 => U3_ExpNorm(1),
      ADR0 => U3_U2_MantCarry,
      ADR1 => U3_U1_n0007(8),
      O => U3_U2_TempExp(2)
    );
  U3_Mmux_Z18 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => X"333333333333FA33"
    )
    port map (
      ADR1 => N80,
      ADR5 => U3_U3_XZero,
      ADR3 => U3_U3_YNorm,
      ADR4 => U1_U3_XExponent255,
      ADR0 => U3_U2_ExpCarry,
      ADR2 => U3_U2_TempExp(2),
      O => Z_25_OBUF_3593
    );
  U3_Mmux_Z17_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y71",
      INIT => X"0002001300130013"
    )
    port map (
      ADR1 => U3_U3_Mmux_RESULT172,
      ADR3 => U3_U3_Mmux_RESULT1111,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR5 => Y_24_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_24_IBUF_0,
      O => N86
    );
  U3_U1_U5_GEN_6_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y71",
      INIT => X"000000000004000E"
    )
    port map (
      ADR5 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_ShiftPos(4),
      ADR0 => U3_U1_ShiftPos(2),
      ADR4 => U3_U1_ShiftPos_1_mmx_out10,
      ADR1 => U3_U1_ShiftPos_1_mmx_out15,
      O => U3_MantNorm_6_Q
    );
  XMAN_7_XMAN_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4_pack_8,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4
    );
  XMAN_7_XMAN_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3_pack_7,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3
    );
  U1_U1_Mmux_G291 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_4_IBUF_0,
      ADR3 => Y_4_IBUF_0,
      ADR5 => '1',
      O => XMAN(7)
    );
  U1_U1_Mmux_S181 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_4_IBUF_0,
      ADR3 => Y_4_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4_pack_8
    );
  U1_ExpDiff_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"EEF322F3EEC022C0"
    )
    port map (
      ADR3 => U1_ExpDiff_0_0,
      ADR1 => U1_ExpDiff_1_0,
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out7_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4,
      O => U1_ExpDiff_1_mmx_out13
    );
  U1_U1_Mmux_G281 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_3_IBUF_0,
      ADR1 => Y_3_IBUF_0,
      ADR5 => '1',
      O => XMAN(6)
    );
  U1_U1_Mmux_S171 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"F0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR2 => X_3_IBUF_0,
      ADR1 => Y_3_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3_pack_7
    );
  U1_ExpDiff_1_201 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y72",
      INIT => X"DDDD8888FA50FA50"
    )
    port map (
      ADR5 => U1_ExpDiff_0_0,
      ADR0 => U1_ExpDiff_1_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out4,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out6,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out5,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o_mmx_out3,
      O => U1_ExpDiff_1_mmx_out7
    );
  SPECIAL_SPECIAL_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o8_2473,
      O => U1_U1_ExpComp_ExpComp_OR_11_o8_0
    );
  U1_U3_SPECIAL1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y73",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U3_U3_XZero,
      ADR4 => U1_U3_XExponent255,
      ADR2 => U3_U3_YZero,
      ADR5 => U1_U3_YExponent255,
      O => SPECIAL
    );
  U1_U1_ExpComp_ExpComp_OR_11_o7 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y73",
      INIT => X"CFCFCFCFCFCFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => X_5_IBUF_0,
      ADR1 => Y_5_IBUF_0,
      ADR5 => '1',
      O => U1_U1_ExpComp_ExpComp_OR_11_o7_3434
    );
  U1_U1_ExpComp_ExpComp_OR_11_o8 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y73",
      INIT => X"0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => X_5_IBUF_0,
      ADR1 => Y_5_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o8_2473
    );
  U3_Mmux_Z21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y73",
      INIT => X"0000000003031133"
    )
    port map (
      ADR5 => U3_U3_Mmux_RESULT172,
      ADR1 => U3_U3_Mmux_RESULT1111,
      ADR4 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR3 => Y_28_IBUF_0,
      ADR0 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_28_IBUF_0,
      O => N82
    );
  U3_U3_XPInf_XZero_OR_367_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y74",
      INIT => X"0A0A08080A0A0A08"
    )
    port map (
      ADR0 => U3_U3_XPInf_XZero_OR_367_o1_0,
      ADR2 => U3_U3_YNorm,
      ADR4 => U3_U3_XZero,
      ADR1 => U3_U3_XNorm,
      ADR3 => XCASE(0),
      ADR5 => XCASE_1_0,
      O => U3_U3_XPInf_XZero_OR_367_o2_3845
    );
  U3_U3_XPInf_XZero_OR_367_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y74",
      INIT => X"FFFF0000FFFF2202"
    )
    port map (
      ADR5 => U3_U3_XNorm,
      ADR1 => XCASE_1_0,
      ADR0 => XCASE(0),
      ADR3 => U3_U3_YZero,
      ADR2 => U1_U3_YExponent255,
      ADR4 => U3_U3_XPInf_XZero_OR_367_o2_3845,
      O => U3_U3_XPInf_XZero_OR_367_o
    );
  U1_U1_ExpComp_ExpComp_OR_11_o5_U1_U1_ExpComp_ExpComp_OR_11_o5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o6_2499,
      O => U1_U1_ExpComp_ExpComp_OR_11_o6_0
    );
  U1_U1_ExpComp_ExpComp_OR_11_o5_U1_U1_ExpComp_ExpComp_OR_11_o5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U3_XPInf_XZero_OR_367_o1_2503,
      O => U3_U3_XPInf_XZero_OR_367_o1_0
    );
  U1_U1_ExpComp_ExpComp_OR_11_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y75",
      INIT => X"F0F0FFFFF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => X_10_IBUF_0,
      ADR2 => Y_10_IBUF_0,
      ADR5 => '1',
      O => U1_U1_ExpComp_ExpComp_OR_11_o5_3422
    );
  U1_U1_ExpComp_ExpComp_OR_11_o6 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y75",
      INIT => X"0000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => X_10_IBUF_0,
      ADR2 => Y_10_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o6_2499
    );
  U3_U3_XNInf_XZero_OR_371_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y75",
      INIT => X"2000200020002000"
    )
    port map (
      ADR4 => '1',
      ADR1 => U3_U3_YZero,
      ADR0 => U1_U3_YExponent255,
      ADR2 => Y_31_IBUF_0,
      ADR3 => U1_U3_YMantissa0,
      ADR5 => '1',
      O => U3_U3_XNInf_XZero_OR_371_o1_3351
    );
  U3_U3_XPInf_XZero_OR_367_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y75",
      INIT => X"02000200"
    )
    port map (
      ADR4 => '1',
      ADR1 => U3_U3_YZero,
      ADR0 => U1_U3_YExponent255,
      ADR2 => Y_31_IBUF_0,
      ADR3 => U1_U3_YMantissa0,
      O => U3_U3_XPInf_XZero_OR_367_o1_2503
    );
  U3_Mmux_Z5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y78",
      INIT => X"FFFFFAAAFAAAFAAA"
    )
    port map (
      ADR1 => '1',
      ADR3 => U3_U3_Mmux_RESULT110_0,
      ADR2 => Y_13_IBUF_0,
      ADR4 => U3_U3_Mmux_RESULT112_0,
      ADR5 => X_13_IBUF_0,
      ADR0 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N30
    );
  U3_Mmux_Z13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y79",
      INIT => X"0000000030223000"
    )
    port map (
      ADR5 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR3 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR0 => Y_20_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_20_IBUF_0,
      O => N46
    );
  U3_Mmux_Z20_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y79",
      INIT => X"00330033005500FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => U3_U3_Mmux_RESULT172,
      ADR5 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR0 => Y_27_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR1 => X_27_IBUF_0,
      O => N78
    );
  N24_N24_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U1_U1_ExpComp_ExpComp_OR_11_o4_2536,
      O => U1_U1_ExpComp_ExpComp_OR_11_o4_0
    );
  U3_Mmux_Z11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"FFFFFAF0FFFFAA00"
    )
    port map (
      ADR1 => '1',
      ADR5 => U3_U3_Mmux_RESULT110_0,
      ADR2 => Y_19_IBUF_0,
      ADR3 => U3_U3_Mmux_RESULT112_0,
      ADR0 => X_19_IBUF_0,
      ADR4 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N24
    );
  U1_U1_ExpComp_ExpComp_OR_11_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"BBBBBBBBBBBBBBBB"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => X_15_IBUF_0,
      ADR0 => Y_15_IBUF_0,
      ADR5 => '1',
      O => U1_U1_ExpComp_ExpComp_OR_11_o3_3408
    );
  U1_U1_ExpComp_ExpComp_OR_11_o4 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"22222222"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => X_15_IBUF_0,
      ADR0 => Y_15_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o4_2536
    );
  U3_Mmux_Z8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y80",
      INIT => X"0000323000000200"
    )
    port map (
      ADR4 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR2 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR3 => Y_16_IBUF_0,
      ADR0 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_16_IBUF_0,
      O => N50
    );
  U1_U1_ExpComp_ExpComp_OR_11_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y81",
      INIT => X"DFDF45455D5D0404"
    )
    port map (
      ADR3 => '1',
      ADR4 => Y_19_IBUF_0,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o15_3792,
      ADR2 => X_18_IBUF_0,
      ADR1 => Y_18_IBUF_0,
      ADR0 => X_19_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o16_3846
    );
  U1_U1_ExpComp_ExpComp_OR_11_o17 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y81",
      INIT => X"B2BB22B2B2BB22B2"
    )
    port map (
      ADR5 => '1',
      ADR0 => Y_21_IBUF_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o16_3846,
      ADR3 => X_20_IBUF_0,
      ADR4 => Y_20_IBUF_0,
      ADR1 => X_21_IBUF_0,
      O => U1_U1_ExpComp_ExpComp_OR_11_o17_3793
    );
  U3_Mmux_Z17 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => X"05FF00FF04FE00FF"
    )
    port map (
      ADR3 => N86,
      ADR0 => U3_U3_XZero,
      ADR4 => U3_U3_YNorm,
      ADR2 => U1_U3_XExponent255,
      ADR1 => U3_U2_ExpCarry,
      ADR5 => U3_U2_TempExp(1),
      O => Z_24_OBUF_3591
    );
  U3_U2_U3_S_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => X"E1B4F0F0F0F0F0F0"
    )
    port map (
      ADR2 => U3_ExpNorm(1),
      ADR3 => XEXP_INCR(0),
      ADR1 => U3_U1_ShiftPos(0),
      ADR5 => U3_U2_U2_C_22_Q,
      ADR4 => U3_MantNorm_25_0,
      ADR0 => U3_U1_n0007(8),
      O => U3_U2_TempExp(1)
    );
  U3_Mmux_Z20 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => X"3333737333337323"
    )
    port map (
      ADR1 => N78,
      ADR4 => U3_U3_XZero,
      ADR2 => U3_U3_YNorm,
      ADR0 => U1_U3_XExponent255,
      ADR3 => U3_U2_ExpCarry,
      ADR5 => U3_U2_TempExp(4),
      O => Z_27_OBUF_3597
    );
  Z_30_OBUF_Z_30_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U3_Mmux_RESULT111,
      O => U3_U3_Mmux_RESULT111_0
    );
  U3_Mmux_Z243 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"FFFFFEF0FFFF0000"
    )
    port map (
      ADR5 => U3_U3_XNorm,
      ADR3 => U3_U3_YNorm,
      ADR1 => U3_U2_ExpCarry,
      ADR0 => U3_U2_TempExp(7),
      ADR2 => U3_Mmux_Z241_0,
      ADR4 => U3_Mmux_Z24,
      O => Z_30_OBUF_3586
    );
  U3_Mmux_Z241 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"FFEAFFAACCC8FFAA"
    )
    port map (
      ADR0 => U3_U3_Mmux_RESULT1111,
      ADR3 => U3_U3_Mmux_RESULT172,
      ADR1 => U3_U3_XZero,
      ADR5 => U1_U3_XExponent255,
      ADR4 => U3_U3_YNorm,
      ADR2 => Y_30_IBUF_0,
      O => U3_Mmux_Z24
    );
  U3_U3_Mmux_RESULT1721 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"FEFEFEFEFEFEFEFE"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR2 => U3_U3_XPInf_XZero_OR_367_o,
      ADR5 => '1',
      O => U3_U3_Mmux_RESULT172
    );
  U3_U3_Mmux_RESULT1112 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"CDCDCCCC"
    )
    port map (
      ADR3 => '1',
      ADR4 => U3_U3_Mmux_RESULT1111,
      ADR1 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR2 => U3_U3_XPInf_XZero_OR_367_o,
      O => U3_U3_Mmux_RESULT111
    );
  U3_Mmux_Z16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"0015001500BF00BF"
    )
    port map (
      ADR4 => '1',
      ADR3 => U3_U3_Mmux_RESULT172,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR2 => Y_23_IBUF_0,
      ADR1 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_23_IBUF_0,
      O => N74
    );
  U1_U1_ExpComp_ExpComp_OR_11_o10 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y72",
      INIT => X"EAFEAAEEEEFFEAFE"
    )
    port map (
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o8_0,
      ADR1 => Y_4_IBUF_0,
      ADR3 => X_4_IBUF_0,
      ADR2 => Y_3_IBUF_0,
      ADR5 => X_3_IBUF_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o9_3754,
      O => U1_U1_ExpComp_ExpComp_OR_11_o10_3848
    );
  U1_U1_ExpComp_ExpComp_OR_11_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y72",
      INIT => X"B020FBF22020F2F2"
    )
    port map (
      ADR2 => Y_7_IBUF_0,
      ADR4 => X_7_IBUF_0,
      ADR0 => Y_6_IBUF_0,
      ADR1 => X_6_IBUF_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o7_3434,
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o10_3848,
      O => U1_U1_ExpComp_ExpComp_OR_11_o11_3790
    );
  U3_U1_U4_GEN_4_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y72",
      INIT => X"0451451051041045"
    )
    port map (
      ADR3 => XEXP_INCR(4),
      ADR5 => U3_U1_ShiftPos(4),
      ADR4 => XEXP_INCR(3),
      ADR1 => U3_U1_ShiftPos(3),
      ADR2 => U3_U1_U3_C_9_bdd8,
      ADR0 => U3_U1_n0007(8),
      O => U3_ExpNorm(4)
    );
  U3_U1_U5_GEN_18_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y72",
      INIT => X"0033013300000100"
    )
    port map (
      ADR1 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(4),
      ADR4 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos_1_mmx_out10,
      ADR2 => U3_U1_ShiftPos(3),
      ADR5 => U3_U1_U5_GEN_18_U_X_S_AND_5_o,
      O => U3_MantNorm_18_Q
    );
  U3_Mmux_Z4 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y73",
      INIT => X"FC00FC55FC55FC00"
    )
    port map (
      ADR3 => SPECIAL,
      ADR1 => U3_U3_Mmux_RESULT111_0,
      ADR2 => N54,
      ADR0 => U3_U2_isInfty_3617,
      ADR4 => U3_MantNorm_15_0,
      ADR5 => U3_U2_U2_C_12_Q,
      O => Z_12_OBUF_3580
    );
  U3_Mmux_Z5 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y73",
      INIT => X"888888888DDDD888"
    )
    port map (
      ADR0 => SPECIAL,
      ADR5 => U3_U2_isInfty_3617,
      ADR4 => U3_MantNorm_16_Q,
      ADR3 => U3_MantNorm_15_0,
      ADR2 => U3_U2_U2_C_12_Q,
      ADR1 => N30,
      O => Z_13_OBUF_3582
    );
  U3_Mmux_Z30_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y74",
      INIT => X"FFFFFFFFFFA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => U3_U3_Mmux_RESULT110_0,
      ADR0 => Y_7_IBUF_0,
      ADR3 => U3_U3_Mmux_RESULT112_0,
      ADR4 => X_7_IBUF_0,
      ADR5 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N14
    );
  U3_U3_XPInf_YNaN_OR_363_o : X_LUT6
    generic map(
      LOC => "SLICE_X25Y74",
      INIT => X"00000F0FCC00DF8F"
    )
    port map (
      ADR5 => U3_U3_XNorm,
      ADR3 => XCASE_1_0,
      ADR4 => N72_0,
      ADR0 => Y_31_IBUF_0,
      ADR1 => XCASE(0),
      ADR2 => U1_U3_YMantissa0,
      O => U3_U3_XPInf_YNaN_OR_363_o_3468
    );
  U1_U1_ExpComp_ExpComp_OR_11_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y75",
      INIT => X"FFBFBFBBBBABABAA"
    )
    port map (
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o6_0,
      ADR5 => Y_9_IBUF_0,
      ADR1 => X_9_IBUF_0,
      ADR4 => Y_8_IBUF_0,
      ADR2 => X_8_IBUF_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o11_3790,
      O => U1_U1_ExpComp_ExpComp_OR_11_o12_3849
    );
  U1_U1_ExpComp_ExpComp_OR_11_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y75",
      INIT => X"B222BBBB2222B222"
    )
    port map (
      ADR0 => Y_12_IBUF_0,
      ADR1 => X_12_IBUF_0,
      ADR5 => Y_11_IBUF_0,
      ADR4 => X_11_IBUF_0,
      ADR2 => U1_U1_ExpComp_ExpComp_OR_11_o5_3422,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o12_3849,
      O => U1_U1_ExpComp_ExpComp_OR_11_o13_3791
    );
  U3_Mmux_Z4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y76",
      INIT => X"0302030000020000"
    )
    port map (
      ADR2 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR3 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR0 => Y_12_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_12_IBUF_0,
      O => N54
    );
  U3_Mmux_Z6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y78",
      INIT => X"0033000000200020"
    )
    port map (
      ADR3 => U3_U3_XPInf_XZero_OR_367_o,
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR5 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR0 => Y_14_IBUF_0,
      ADR2 => U3_U3_XZero_YNorm_AND_36_o,
      ADR4 => X_14_IBUF_0,
      O => N52
    );
  U1_U1_EXP_COMP_U3_GEN_5_U_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y79",
      INIT => X"F00FFF00F00FFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => U1_U1_EXP_COMP_S_5_0,
      ADR2 => U1_U1_EXP_COMP_COUT,
      ADR4 => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1,
      O => U1_ExpDiff(5)
    );
  U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y79",
      INIT => X"FFFFFFFFFFFDFFFE"
    )
    port map (
      ADR1 => U1_U1_EXP_COMP_S(2),
      ADR3 => U1_U1_EXP_COMP_S_4_0,
      ADR2 => U1_U1_EXP_COMP_S_1_0,
      ADR4 => X_23_IBUF_0,
      ADR0 => Y_23_IBUF_0,
      ADR5 => U1_U1_EXP_COMP_S_3_0,
      O => U1_U1_EXP_COMP_U2_GEN_5_U_Mxor_S_xo_0_1
    );
  U3_Mmux_Z9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y79",
      INIT => X"FFECFFECFFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => U3_U3_Mmux_RESULT110_0,
      ADR5 => Y_17_IBUF_0,
      ADR2 => U3_U3_Mmux_RESULT112_0,
      ADR0 => X_17_IBUF_0,
      ADR3 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N26
    );
  U3_Mmux_Z14_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y79",
      INIT => X"FFFAFFF0FAFAF0F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => U3_U3_Mmux_RESULT110_0,
      ADR5 => Y_21_IBUF_0,
      ADR4 => U3_U3_Mmux_RESULT112_0,
      ADR0 => X_21_IBUF_0,
      ADR2 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N20
    );
  U3_Mmux_Z7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y80",
      INIT => X"FFEEEEEEFFAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => U3_U3_Mmux_RESULT110_0,
      ADR4 => Y_15_IBUF_0,
      ADR1 => U3_U3_Mmux_RESULT112_0,
      ADR5 => X_15_IBUF_0,
      ADR0 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N28
    );
  U1_U1_ExpComp_ExpComp_OR_11_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y80",
      INIT => X"FBFFBAFFAAFBAABA"
    )
    port map (
      ADR0 => U1_U1_ExpComp_ExpComp_OR_11_o4_0,
      ADR5 => Y_14_IBUF_0,
      ADR3 => X_14_IBUF_0,
      ADR2 => Y_13_IBUF_0,
      ADR1 => X_13_IBUF_0,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o13_3791,
      O => U1_U1_ExpComp_ExpComp_OR_11_o14_3850
    );
  U1_U1_ExpComp_ExpComp_OR_11_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y80",
      INIT => X"8E0A0A0AAF8E8E8E"
    )
    port map (
      ADR0 => Y_17_IBUF_0,
      ADR2 => X_17_IBUF_0,
      ADR1 => Y_16_IBUF_0,
      ADR5 => X_16_IBUF_0,
      ADR3 => U1_U1_ExpComp_ExpComp_OR_11_o3_3408,
      ADR4 => U1_U1_ExpComp_ExpComp_OR_11_o14_3850,
      O => U1_U1_ExpComp_ExpComp_OR_11_o15_3792
    );
  U3_Mmux_Z10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y81",
      INIT => X"0000505000004400"
    )
    port map (
      ADR4 => U3_U3_XPInf_XZero_OR_367_o,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR5 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR1 => Y_18_IBUF_0,
      ADR3 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_18_IBUF_0,
      O => N48
    );
  U3_Mmux_Z19 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y69",
      INIT => X"333333333F3A3333"
    )
    port map (
      ADR1 => N84,
      ADR5 => U3_U3_XZero,
      ADR4 => U3_U3_YNorm,
      ADR2 => U1_U3_XExponent255,
      ADR0 => U3_U2_ExpCarry,
      ADR3 => U3_U2_TempExp(3),
      O => Z_26_OBUF_3595
    );
  U3_U1_U5_GEN_24_U_X_S_AND_5_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y70",
      INIT => X"0033003300F000F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => U3_U1_n0007(8),
      ADR5 => U3_U1_ShiftPos(4),
      ADR2 => U3_U1_U5_GEN_24_U_X_S_AND_5_o1_3654,
      ADR1 => U3_U1_ShiftPos_3_mmx_out8,
      O => U3_MantNorm_24_Q
    );
  U3_U2_U2_C_18_U3_U2_U2_C_18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U2_U2_C_20_pack_4,
      O => U3_U2_U2_C_20_Q
    );
  U3_U2_U2_GEN_17_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y71",
      INIT => X"AA000000AA000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => U3_MantNorm_20_Q,
      ADR0 => U3_U2_U2_C_16_Q,
      ADR4 => U3_MantNorm_19_Q,
      ADR5 => '1',
      O => U3_U2_U2_C_18_Q
    );
  U3_U2_U2_GEN_19_U_COUT1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y71",
      INIT => X"80000000"
    )
    port map (
      ADR2 => U3_MantNorm_22_0,
      ADR1 => U3_MantNorm_21_Q,
      ADR3 => U3_MantNorm_20_Q,
      ADR0 => U3_U2_U2_C_16_Q,
      ADR4 => U3_MantNorm_19_Q,
      O => U3_U2_U2_C_20_pack_4
    );
  U3_U1_U5_GEN_19_U_X_S_AND_5_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y71",
      INIT => X"0000000033007340"
    )
    port map (
      ADR5 => U3_U1_n0007(8),
      ADR1 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_U5_GEN_19_U_X_S_AND_5_o,
      ADR2 => U3_U1_ShiftPos_1_mmx_out11,
      ADR4 => U3_U1_ShiftPos(2),
      ADR0 => U3_U1_ShiftPos(3),
      O => U3_MantNorm_19_Q
    );
  U3_U2_U2_GEN_21_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y71",
      INIT => X"0008008800000080"
    )
    port map (
      ADR0 => U3_U2_U2_C_20_Q,
      ADR1 => U3_MantNorm_23_0,
      ADR3 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos(4),
      ADR4 => U3_U1_ShiftPos_3_mmx_out8,
      ADR5 => U3_U1_U5_GEN_24_U_X_S_AND_5_o1_3654,
      O => U3_U2_U2_C_22_Q
    );
  U3_Mmux_Z1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y71",
      INIT => X"0044005000440000"
    )
    port map (
      ADR3 => U3_U3_XPInf_XZero_OR_367_o,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR4 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR5 => Y_0_IBUF_0,
      ADR2 => U3_U3_XZero_YNorm_AND_36_o,
      ADR1 => X_0_IBUF_0,
      O => N58
    );
  U3_MantNorm_8_U3_MantNorm_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_MantNorm_15_Q,
      O => U3_MantNorm_15_0
    );
  U3_U1_U5_GEN_8_U_X_S_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y72",
      INIT => X"000000FA000000FA"
    )
    port map (
      ADR1 => '1',
      ADR4 => U3_U1_ShiftPos(4),
      ADR3 => U3_U1_ShiftPos_3_mmx_out8,
      ADR0 => XEXP_INCR(7),
      ADR2 => U3_U1_U3_C_9_bdd0,
      ADR5 => '1',
      O => U3_MantNorm_8_Q
    );
  U3_U1_U5_GEN_15_U_X_S_AND_5_o : X_LUT5
    generic map(
      LOC => "SLICE_X26Y72",
      INIT => X"00003232"
    )
    port map (
      ADR1 => N88,
      ADR4 => U3_U1_ShiftPos(4),
      ADR3 => '1',
      ADR0 => XEXP_INCR(7),
      ADR2 => U3_U1_U3_C_9_bdd0,
      O => U3_MantNorm_15_Q
    );
  U3_Mmux_Z27_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y72",
      INIT => X"0000000000CC00A0"
    )
    port map (
      ADR3 => U3_U3_XPInf_XZero_OR_367_o,
      ADR5 => U3_U3_XNInf_XZero_OR_371_o,
      ADR4 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR2 => Y_4_IBUF_0,
      ADR0 => U3_U3_XZero_YNorm_AND_36_o,
      ADR1 => X_4_IBUF_0,
      O => N40
    );
  U3_Mmux_Z26_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y72",
      INIT => X"FFFFEAEAEAEAEAEA"
    )
    port map (
      ADR3 => '1',
      ADR1 => U3_U3_Mmux_RESULT110_0,
      ADR2 => Y_3_IBUF_0,
      ADR4 => U3_U3_Mmux_RESULT112_0,
      ADR5 => X_3_IBUF_0,
      ADR0 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N18
    );
  U3_U2_U2_C_10_U3_U2_U2_C_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_Mmux_Z241_2815,
      O => U3_Mmux_Z241_0
    );
  U3_U2_U2_GEN_9_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => X"0000000000005000"
    )
    port map (
      ADR1 => '1',
      ADR4 => U3_U1_n0007(8),
      ADR5 => U3_U1_ShiftPos(4),
      ADR0 => N94,
      ADR2 => U3_U2_U2_C_8_Q,
      ADR3 => U3_MantNorm_11_Q,
      O => U3_U2_U2_C_10_Q
    );
  U3_U2_U2_GEN_7_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => U3_MantNorm_10_Q,
      ADR5 => U3_MantNorm_8_Q,
      ADR3 => U3_U2_U2_C_4_Q,
      ADR1 => U3_MantNorm_7_Q,
      ADR4 => U3_MantNorm_9_Q,
      O => U3_U2_U2_C_8_Q
    );
  U3_U2_U2_GEN_3_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => X"8800880088008800"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => U3_MantNorm_6_Q,
      ADR3 => U3_U2_U2_C_2_Q,
      ADR1 => U3_MantNorm_5_Q,
      ADR5 => '1',
      O => U3_U2_U2_C_4_Q
    );
  U3_Mmux_Z242 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => X"F0F00000"
    )
    port map (
      ADR4 => U3_U3_YZero,
      ADR2 => X_30_IBUF_0,
      ADR1 => '1',
      ADR3 => '1',
      ADR0 => '1',
      O => U3_Mmux_Z241_2815
    );
  U3_U2_U2_GEN_1_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => X"0000000004040000"
    )
    port map (
      ADR3 => '1',
      ADR0 => U3_U1_n0007(8),
      ADR5 => U3_U1_ShiftPos_1_mmx_out10,
      ADR2 => N34,
      ADR1 => U3_MantNorm_3_Q,
      ADR4 => U3_MantNorm_4_Q,
      O => U3_U2_U2_C_2_Q
    );
  Z_10_OBUF_Z_10_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_11_OBUF_2828,
      O => Z_11_OBUF_0
    );
  U3_Mmux_Z3 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y74"
    )
    port map (
      IA => N126,
      IB => N127,
      O => Z_11_OBUF_2828,
      SEL => SPECIAL
    );
  U3_Mmux_Z3_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y74",
      INIT => X"0000AAA900000003"
    )
    port map (
      ADR4 => U3_U2_isInfty_3617,
      ADR0 => U3_U2_U2_C_10_Q,
      ADR5 => U3_MantNorm_13_Q,
      ADR1 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(4),
      ADR2 => N90,
      O => N126
    );
  U3_Mmux_Z3_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y74",
      INIT => X"FFEEFFCCEEEECCCC"
    )
    port map (
      ADR2 => '1',
      ADR0 => U3_U3_Mmux_RESULT110_0,
      ADR4 => Y_11_IBUF_0,
      ADR3 => U3_U3_Mmux_RESULT112_0,
      ADR5 => X_11_IBUF_0,
      ADR1 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N127
    );
  U3_Mmux_Z2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y74",
      INIT => X"FF05FF50CC05CC50"
    )
    port map (
      ADR3 => SPECIAL,
      ADR1 => U3_U3_Mmux_RESULT111_0,
      ADR5 => N56,
      ADR0 => U3_U2_isInfty_3617,
      ADR2 => U3_MantNorm_13_Q,
      ADR4 => U3_U2_U2_C_10_Q,
      O => Z_10_OBUF_3578
    );
  U3_Mmux_Z2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y75",
      INIT => X"000000000E040A00"
    )
    port map (
      ADR2 => U3_U3_XPInf_XZero_OR_367_o,
      ADR5 => U3_U3_XNInf_XZero_OR_371_o,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR1 => Y_10_IBUF_0,
      ADR4 => U3_U3_XZero_YNorm_AND_36_o,
      ADR3 => X_10_IBUF_0,
      O => N56
    );
  U3_Mmux_Z15 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"FFFFCCCC050A050A"
    )
    port map (
      ADR5 => SPECIAL,
      ADR1 => U3_U3_Mmux_RESULT111_0,
      ADR4 => N44,
      ADR2 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_25_0,
      ADR0 => U3_U2_U2_C_22_Q,
      O => Z_22_OBUF_3585
    );
  U3_Mmux_Z14 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"FF12FF2200120022"
    )
    port map (
      ADR3 => SPECIAL,
      ADR1 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_24_Q,
      ADR2 => U3_MantNorm_23_0,
      ADR4 => U3_U2_U2_C_20_Q,
      ADR5 => N20,
      O => Z_21_OBUF_3583
    );
  U3_Mmux_Z13 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"CCCF888BCCFC88B8"
    )
    port map (
      ADR1 => SPECIAL,
      ADR4 => U3_U3_Mmux_RESULT111_0,
      ADR0 => N46,
      ADR3 => U3_U2_isInfty_3617,
      ADR2 => U3_MantNorm_23_0,
      ADR5 => U3_U2_U2_C_20_Q,
      O => Z_20_OBUF_3581
    );
  U3_Mmux_Z22 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"0202FFFF0200FFFD"
    )
    port map (
      ADR4 => N76,
      ADR2 => U3_U3_XZero,
      ADR0 => U3_U3_YNorm,
      ADR1 => U1_U3_XExponent255,
      ADR5 => U3_U2_ExpCarry,
      ADR3 => U3_U2_TempExp(6),
      O => Z_29_OBUF_3599
    );
  U3_U2_isInfty : X_LUT6
    generic map(
      LOC => "SLICE_X27Y71",
      INIT => X"FF80FF00FF00FF00"
    )
    port map (
      ADR4 => U3_U2_TempExp(7),
      ADR0 => U3_U2_TempExp(6),
      ADR5 => U3_U2_TempExp(5),
      ADR2 => U3_U2_TempExp(4),
      ADR1 => N2,
      ADR3 => U3_U2_ExpCarry,
      O => U3_U2_isInfty_3617
    );
  U3_Mmux_Z30 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y71",
      INIT => X"CC00CC00DE12EE22"
    )
    port map (
      ADR1 => SPECIAL,
      ADR5 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_10_Q,
      ADR2 => U3_MantNorm_9_Q,
      ADR4 => U3_U2_U2_C_6_Q,
      ADR3 => N14,
      O => Z_7_OBUF_3575
    );
  U3_Mmux_Z8 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y71",
      INIT => X"FF11FF22F011F022"
    )
    port map (
      ADR3 => SPECIAL,
      ADR2 => U3_U3_Mmux_RESULT111_0,
      ADR5 => N50,
      ADR1 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_19_Q,
      ADR4 => U3_U2_U2_C_16_Q,
      O => Z_16_OBUF_3590
    );
  U3_Mmux_Z9 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y71",
      INIT => X"CCCCCCCC050F0A00"
    )
    port map (
      ADR5 => SPECIAL,
      ADR2 => U3_U2_isInfty_3617,
      ADR4 => U3_MantNorm_20_Q,
      ADR3 => U3_MantNorm_19_Q,
      ADR0 => U3_U2_U2_C_16_Q,
      ADR1 => N26,
      O => Z_17_OBUF_3592
    );
  U3_U1_U5_GEN_21_U_X_S_AND_5_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y72",
      INIT => X"33AA30A000AA00A0"
    )
    port map (
      ADR4 => XEXP_INCR(7),
      ADR2 => U3_U1_U3_C_9_bdd0,
      ADR3 => U3_U1_ShiftPos(3),
      ADR0 => U3_U1_U5_GEN_21_U_X_S_AND_5_o,
      ADR5 => U3_U1_U5_GEN_21_U_X_S_AND_5_o1_3780,
      ADR1 => U3_U1_ShiftPos(4),
      O => U3_MantNorm_21_Q
    );
  U3_Mmux_Z12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y72",
      INIT => X"FFFAFAFAFFAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => U3_U3_Mmux_RESULT110_0,
      ADR2 => Y_1_IBUF_0,
      ADR4 => U3_U3_Mmux_RESULT112_0,
      ADR3 => X_1_IBUF_0,
      ADR0 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N22
    );
  U3_U2_U2_GEN_15_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y73",
      INIT => X"8000000080000000"
    )
    port map (
      ADR5 => '1',
      ADR3 => U3_MantNorm_18_Q,
      ADR2 => U3_MantNorm_16_Q,
      ADR4 => U3_U2_U2_C_12_Q,
      ADR1 => U3_MantNorm_15_0,
      ADR0 => U3_MantNorm_17_Q,
      O => U3_U2_U2_C_16_Q
    );
  U3_U2_U2_GEN_11_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y73",
      INIT => X"0000004400000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => U3_U1_n0007(8),
      ADR3 => U3_U1_ShiftPos(4),
      ADR0 => N90,
      ADR1 => U3_U2_U2_C_10_Q,
      ADR5 => U3_MantNorm_13_Q,
      O => U3_U2_U2_C_12_Q
    );
  U3_U2_U2_GEN_5_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y73",
      INIT => X"000C000000080000"
    )
    port map (
      ADR3 => U3_U1_ShiftPos(4),
      ADR1 => U3_MantNorm_7_Q,
      ADR4 => U3_U2_U2_C_4_Q,
      ADR2 => U3_U1_ShiftPos_3_mmx_out8,
      ADR5 => XEXP_INCR(7),
      ADR0 => U3_U1_U3_C_9_bdd0,
      O => U3_U2_U2_C_6_Q
    );
  U3_U2_U2_GEN_13_U_COUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y73",
      INIT => X"00000C0000000800"
    )
    port map (
      ADR2 => U3_U1_ShiftPos(4),
      ADR1 => U3_U2_U2_C_12_Q,
      ADR3 => U3_MantNorm_16_Q,
      ADR4 => N88,
      ADR0 => XEXP_INCR(7),
      ADR5 => U3_U1_U3_C_9_bdd0,
      O => U3_U2_U2_C_14_Q
    );
  U3_Mmux_Z7 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y74",
      INIT => X"CCCCDFEC00001320"
    )
    port map (
      ADR1 => SPECIAL,
      ADR4 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_18_Q,
      ADR0 => U3_MantNorm_17_Q,
      ADR2 => U3_U2_U2_C_14_Q,
      ADR5 => N28,
      O => Z_15_OBUF_3587
    );
  U3_Mmux_Z6 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y74",
      INIT => X"F0F3A0A3F3F0A3A0"
    )
    port map (
      ADR2 => SPECIAL,
      ADR0 => U3_U3_Mmux_RESULT111_0,
      ADR4 => N52,
      ADR1 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_17_Q,
      ADR5 => U3_U2_U2_C_14_Q,
      O => Z_14_OBUF_3584
    );
  U3_Mmux_Z11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y71",
      INIT => X"AB01BA10BA10BA10"
    )
    port map (
      ADR0 => SPECIAL,
      ADR1 => U3_U2_isInfty_3617,
      ADR2 => U3_MantNorm_22_0,
      ADR4 => U3_MantNorm_21_Q,
      ADR5 => U3_U2_U2_C_18_Q,
      ADR3 => N24,
      O => Z_19_OBUF_3596
    );
  XEXP_5_XEXP_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => XEXP_INCR_5_pack_1,
      O => XEXP_INCR(5)
    );
  U1_U1_Mmux_G61 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y72",
      INIT => X"EEEE2222EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_28_IBUF_0,
      ADR4 => Y_28_IBUF_0,
      ADR5 => '1',
      O => XEXP(5)
    );
  U2_U3_GEN_5_U_Mxor_S_xo_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y72",
      INIT => X"E1E12D2D"
    )
    port map (
      ADR3 => '1',
      ADR2 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368,
      ADR1 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR0 => X_28_IBUF_0,
      ADR4 => Y_28_IBUF_0,
      O => XEXP_INCR_5_pack_1
    );
  U3_U2_U3_S_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y72",
      INIT => X"6CCCCCC8CCC8CCC8"
    )
    port map (
      ADR1 => XEXP_INCR(7),
      ADR2 => U3_U1_U3_C_9_bdd4,
      ADR4 => U3_ExpNorm(4),
      ADR5 => U3_U2_U3_C_8_bdd6,
      ADR0 => XEXP_INCR(6),
      ADR3 => XEXP_INCR(5),
      O => U3_U2_TempExp(7)
    );
  U3_Mmux_Z26 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y73",
      INIT => X"F000F000F066F0AA"
    )
    port map (
      ADR3 => SPECIAL,
      ADR5 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_6_Q,
      ADR4 => U3_MantNorm_5_Q,
      ADR1 => U3_U2_U2_C_2_Q,
      ADR2 => N18,
      O => Z_3_OBUF_3571
    );
  U3_Mmux_Z28 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y73",
      INIT => X"CDCE0102CECE0202"
    )
    port map (
      ADR1 => SPECIAL,
      ADR2 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_8_Q,
      ADR5 => U3_MantNorm_7_Q,
      ADR3 => U3_U2_U2_C_4_Q,
      ADR4 => N16,
      O => Z_5_OBUF_3573
    );
  U3_Mmux_Z29 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y74",
      INIT => X"FFFF1144F0F01144"
    )
    port map (
      ADR4 => SPECIAL,
      ADR2 => U3_U3_Mmux_RESULT111_0,
      ADR5 => N38,
      ADR0 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_9_Q,
      ADR1 => U3_U2_U2_C_6_Q,
      O => Z_6_OBUF_3574
    );
  Z_2_OBUF_Z_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_9_OBUF_3008,
      O => Z_9_OBUF_0
    );
  U3_Mmux_Z32 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y75"
    )
    port map (
      IA => N124,
      IB => N125,
      O => Z_9_OBUF_3008,
      SEL => SPECIAL
    );
  U3_Mmux_Z32_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"3332000100010001"
    )
    port map (
      ADR1 => U3_U2_isInfty_3617,
      ADR5 => U3_U2_U2_C_8_Q,
      ADR4 => U3_MantNorm_11_Q,
      ADR3 => U3_U1_n0007(8),
      ADR2 => U3_U1_ShiftPos(4),
      ADR0 => N94,
      O => N124
    );
  U3_Mmux_Z32_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"FFFFFFFFFAF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR2 => U3_U3_Mmux_RESULT110_0,
      ADR4 => Y_9_IBUF_0,
      ADR3 => U3_U3_Mmux_RESULT112_0,
      ADR0 => X_9_IBUF_0,
      ADR5 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N125
    );
  U3_Mmux_Z23 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y75",
      INIT => X"AABEAABEAABE0014"
    )
    port map (
      ADR0 => SPECIAL,
      ADR4 => U3_U3_Mmux_RESULT111_0,
      ADR5 => N42,
      ADR3 => U3_U2_isInfty_3617,
      ADR2 => U3_MantNorm_5_Q,
      ADR1 => U3_U2_U2_C_2_Q,
      O => Z_2_OBUF_3570
    );
  U3_U3_YNorm_U3_U3_YNorm_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N72,
      O => N72_0
    );
  U3_U3_YNorm1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U3_U3_YZero,
      ADR3 => U1_U3_YExponent255,
      ADR5 => '1',
      O => U3_U3_YNorm
    );
  U3_U3_XPInf_YNaN_OR_363_o_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"F0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U3_U3_YZero,
      ADR3 => U1_U3_YExponent255,
      O => N72
    );
  U1_U3_YExponent255_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => Y_30_IBUF_0,
      ADR0 => Y_29_IBUF_0,
      ADR1 => Y_28_IBUF_0,
      ADR5 => Y_27_IBUF_0,
      ADR2 => Y_26_IBUF_0,
      ADR3 => N8_0,
      O => U1_U3_YExponent255
    );
  U3_Mmux_Z21 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y70",
      INIT => X"10101000FFFFFFEF"
    )
    port map (
      ADR5 => N82,
      ADR1 => U3_U3_XZero,
      ADR2 => U3_U3_YNorm,
      ADR0 => U1_U3_XExponent255,
      ADR3 => U3_U2_ExpCarry,
      ADR4 => U3_U2_TempExp(5),
      O => Z_28_OBUF_3598
    );
  U3_Mmux_Z16 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => X"11FF00FF10FE00FF"
    )
    port map (
      ADR3 => N74,
      ADR1 => U3_U3_XZero,
      ADR4 => U3_U3_YNorm,
      ADR0 => U1_U3_XExponent255,
      ADR5 => U3_U2_ExpCarry,
      ADR2 => U3_U2_TempExp(0),
      O => Z_23_OBUF_3588
    );
  U3_U2_U3_C_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => XEXP_INCR(6),
      ADR0 => U3_ExpNorm(4),
      ADR5 => U3_U2_U3_C_8_bdd6,
      ADR4 => XEXP_INCR(5),
      ADR3 => U3_U1_U3_C_9_bdd4,
      ADR2 => XEXP_INCR(7),
      O => U3_U2_ExpCarry
    );
  U3_Mmux_Z27 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => X"CCCC8888CFFC8BB8"
    )
    port map (
      ADR1 => SPECIAL,
      ADR0 => U3_U3_Mmux_RESULT111_0,
      ADR4 => N40,
      ADR5 => U3_U2_isInfty_3617,
      ADR2 => U3_MantNorm_7_Q,
      ADR3 => U3_U2_U2_C_4_Q,
      O => Z_4_OBUF_3572
    );
  U2_U3_GEN_7_U_Mxor_S_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => X"A5AAAAAAC3CCCCCC"
    )
    port map (
      ADR5 => U1_U1_ExpComp_ExpComp_OR_11_o,
      ADR1 => X_30_IBUF_0,
      ADR0 => Y_30_IBUF_0,
      ADR2 => U2_U3_GEN_5_U_Mxor_S_xo_0_1_3368,
      ADR4 => XEXP(5),
      ADR3 => XEXP(6),
      O => XEXP_INCR(7)
    );
  U3_U2_U3_S_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => X"7E817E80FC03FC00"
    )
    port map (
      ADR3 => XEXP_INCR(6),
      ADR1 => XEXP_INCR(5),
      ADR5 => U3_U2_U3_C_8_bdd6,
      ADR0 => U3_ExpNorm(4),
      ADR2 => U3_U1_U3_C_9_bdd4,
      ADR4 => XEXP_INCR(7),
      O => U3_U2_TempExp(6)
    );
  U3_Mmux_Z12 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y73",
      INIT => X"AAAA0000AAAA3CCC"
    )
    port map (
      ADR4 => SPECIAL,
      ADR5 => U3_U2_isInfty_3617,
      ADR1 => U3_MantNorm_4_Q,
      ADR3 => U3_MantNorm_3_Q,
      ADR2 => U3_U2_MantIncr,
      ADR0 => N22,
      O => Z_1_OBUF_3569
    );
  U3_Mmux_Z1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y73",
      INIT => X"FAFA0000FAFA33CC"
    )
    port map (
      ADR4 => SPECIAL,
      ADR2 => N58,
      ADR0 => U3_U3_Mmux_RESULT111_0,
      ADR5 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_3_Q,
      ADR1 => U3_U2_MantIncr,
      O => Z_0_OBUF_3568
    );
  U3_Mmux_Z28_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y73",
      INIT => X"FFFAFFAAFAFAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => U3_U3_Mmux_RESULT110_0,
      ADR3 => Y_5_IBUF_0,
      ADR4 => U3_U3_Mmux_RESULT112_0,
      ADR2 => X_5_IBUF_0,
      ADR0 => U3_U3_XPInf_YNaN_OR_363_o_3468,
      O => N16
    );
  U3_Mmux_Z29_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => X"0000000044445000"
    )
    port map (
      ADR5 => U3_U3_XPInf_XZero_OR_367_o,
      ADR0 => U3_U3_XNInf_XZero_OR_371_o,
      ADR4 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR2 => Y_6_IBUF_0,
      ADR3 => U3_U3_XZero_YNorm_AND_36_o,
      ADR1 => X_6_IBUF_0,
      O => N38
    );
  Z_8_OBUF_Z_8_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => U3_U3_Mmux_RESULT110,
      O => U3_U3_Mmux_RESULT110_0
    );
  U3_Mmux_Z31 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"FFCC0000FFCC5A5A"
    )
    port map (
      ADR4 => SPECIAL,
      ADR3 => U3_U3_Mmux_RESULT111_0,
      ADR1 => N36,
      ADR5 => U3_U2_isInfty_3617,
      ADR0 => U3_MantNorm_11_Q,
      ADR2 => U3_U2_U2_C_8_Q,
      O => Z_8_OBUF_3576
    );
  U3_U3_XZero_YNorm_AND_36_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"0505000005050000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U3_U3_YZero,
      ADR2 => U1_U3_YExponent255,
      ADR4 => U3_U3_XZero,
      ADR5 => '1',
      O => U3_U3_XZero_YNorm_AND_36_o
    );
  U3_U3_Mmux_RESULT1101 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"00010000"
    )
    port map (
      ADR1 => U3_U3_XNInf_XZero_OR_371_o,
      ADR3 => U3_U3_XPInf_XZero_OR_367_o,
      ADR0 => U3_U3_YZero,
      ADR2 => U1_U3_YExponent255,
      ADR4 => U3_U3_XZero,
      O => U3_U3_Mmux_RESULT110
    );
  U3_Mmux_Z31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"0000322200001000"
    )
    port map (
      ADR1 => U3_U3_XPInf_XZero_OR_367_o,
      ADR4 => U3_U3_XNInf_XZero_OR_371_o,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR2 => Y_8_IBUF_0,
      ADR3 => U3_U3_XZero_YNorm_AND_36_o,
      ADR5 => X_8_IBUF_0,
      O => N36
    );
  U3_Mmux_Z23_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => X"000000E4000000A0"
    )
    port map (
      ADR4 => U3_U3_XPInf_XZero_OR_367_o,
      ADR3 => U3_U3_XNInf_XZero_OR_371_o,
      ADR0 => U3_U3_XNorm_YZero_AND_35_o_0,
      ADR5 => Y_2_IBUF_0,
      ADR1 => U3_U3_XZero_YNorm_AND_36_o,
      ADR2 => X_2_IBUF_0,
      O => N42
    );
  N4_N4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  U1_U3_YExponent0_YMantissa0_AND_15_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y80",
      INIT => X"FFFEFFFEFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR3 => Y_26_IBUF_0,
      ADR0 => Y_25_IBUF_0,
      ADR1 => Y_24_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      ADR5 => '1',
      O => N4
    );
  U1_U3_YExponent255_30_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y80",
      INIT => X"80808080"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => Y_25_IBUF_0,
      ADR1 => Y_24_IBUF_0,
      ADR2 => Y_23_IBUF_0,
      O => N8
    );
  U1_U3_YExponent0_YMantissa0_AND_15_o : X_LUT6
    generic map(
      LOC => "SLICE_X30Y82",
      INIT => X"0000000000010000"
    )
    port map (
      ADR4 => U1_U3_YMantissa0,
      ADR5 => Y_30_IBUF_0,
      ADR1 => Y_29_IBUF_0,
      ADR3 => Y_28_IBUF_0,
      ADR0 => Y_27_IBUF_0,
      ADR2 => N4,
      O => U3_U3_YZero
    );
  U1_U3_YMantissa0_22_5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y82",
      INIT => X"8080808000000000"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => U1_U3_YMantissa0_1(22),
      ADR5 => U1_U3_YMantissa0_22_1_3814,
      ADR0 => U1_U3_YMantissa0_22_2_3852,
      ADR2 => U1_U3_YMantissa0_22_3_3815,
      O => U1_U3_YMantissa0
    );
  U1_U3_YMantissa0_22_3 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y82",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Y_13_IBUF_0,
      ADR2 => Y_12_IBUF_0,
      ADR1 => Y_14_IBUF_0,
      ADR0 => Y_15_IBUF_0,
      ADR4 => Y_16_IBUF_0,
      ADR3 => Y_17_IBUF_0,
      O => U1_U3_YMantissa0_22_2_3852
    );
  U3_Mmux_Z10 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"CCCFCFCC888B8B88"
    )
    port map (
      ADR1 => SPECIAL,
      ADR5 => U3_U3_Mmux_RESULT111_0,
      ADR0 => N48,
      ADR2 => U3_U2_isInfty_3617,
      ADR3 => U3_MantNorm_21_Q,
      ADR4 => U3_U2_U2_C_18_Q,
      O => Z_18_OBUF_3594
    );
  U1_U3_YMantissa0_22_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y82",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Y_1_IBUF_0,
      ADR1 => Y_0_IBUF_0,
      ADR2 => Y_2_IBUF_0,
      ADR3 => Y_3_IBUF_0,
      ADR0 => Y_4_IBUF_0,
      ADR4 => Y_5_IBUF_0,
      O => U1_U3_YMantissa0_1(22)
    );
  U1_U3_YMantissa0_22_2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y82",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Y_7_IBUF_0,
      ADR5 => Y_6_IBUF_0,
      ADR2 => Y_8_IBUF_0,
      ADR0 => Y_9_IBUF_0,
      ADR4 => Y_10_IBUF_0,
      ADR3 => Y_11_IBUF_0,
      O => U1_U3_YMantissa0_22_1_3814
    );
  U1_U3_YMantissa0_22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y82",
      INIT => X"0000000000000011"
    )
    port map (
      ADR2 => '1',
      ADR4 => Y_19_IBUF_0,
      ADR5 => Y_18_IBUF_0,
      ADR0 => Y_20_IBUF_0,
      ADR1 => Y_21_IBUF_0,
      ADR3 => Y_22_IBUF_0,
      O => U1_U3_YMantissa0_22_3_3815
    );
  NlwBufferBlock_Z_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_0_OBUF_3568,
      O => NlwBufferSignal_Z_0_OBUF_I
    );
  NlwBufferBlock_Z_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_1_OBUF_3569,
      O => NlwBufferSignal_Z_1_OBUF_I
    );
  NlwBufferBlock_Z_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_2_OBUF_3570,
      O => NlwBufferSignal_Z_2_OBUF_I
    );
  NlwBufferBlock_Z_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_3_OBUF_3571,
      O => NlwBufferSignal_Z_3_OBUF_I
    );
  NlwBufferBlock_Z_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_4_OBUF_3572,
      O => NlwBufferSignal_Z_4_OBUF_I
    );
  NlwBufferBlock_Z_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_5_OBUF_3573,
      O => NlwBufferSignal_Z_5_OBUF_I
    );
  NlwBufferBlock_Z_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_6_OBUF_3574,
      O => NlwBufferSignal_Z_6_OBUF_I
    );
  NlwBufferBlock_Z_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_7_OBUF_3575,
      O => NlwBufferSignal_Z_7_OBUF_I
    );
  NlwBufferBlock_Z_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_8_OBUF_3576,
      O => NlwBufferSignal_Z_8_OBUF_I
    );
  NlwBufferBlock_Z_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_9_OBUF_0,
      O => NlwBufferSignal_Z_9_OBUF_I
    );
  NlwBufferBlock_Z_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_10_OBUF_3578,
      O => NlwBufferSignal_Z_10_OBUF_I
    );
  NlwBufferBlock_Z_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_11_OBUF_0,
      O => NlwBufferSignal_Z_11_OBUF_I
    );
  NlwBufferBlock_Z_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_12_OBUF_3580,
      O => NlwBufferSignal_Z_12_OBUF_I
    );
  NlwBufferBlock_Z_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_20_OBUF_3581,
      O => NlwBufferSignal_Z_20_OBUF_I
    );
  NlwBufferBlock_Z_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_13_OBUF_3582,
      O => NlwBufferSignal_Z_13_OBUF_I
    );
  NlwBufferBlock_Z_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_21_OBUF_3583,
      O => NlwBufferSignal_Z_21_OBUF_I
    );
  NlwBufferBlock_Z_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_14_OBUF_3584,
      O => NlwBufferSignal_Z_14_OBUF_I
    );
  NlwBufferBlock_Z_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_22_OBUF_3585,
      O => NlwBufferSignal_Z_22_OBUF_I
    );
  NlwBufferBlock_Z_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_30_OBUF_3586,
      O => NlwBufferSignal_Z_30_OBUF_I
    );
  NlwBufferBlock_Z_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_15_OBUF_3587,
      O => NlwBufferSignal_Z_15_OBUF_I
    );
  NlwBufferBlock_Z_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_23_OBUF_3588,
      O => NlwBufferSignal_Z_23_OBUF_I
    );
  NlwBufferBlock_Z_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_31_OBUF_3589,
      O => NlwBufferSignal_Z_31_OBUF_I
    );
  NlwBufferBlock_Z_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_16_OBUF_3590,
      O => NlwBufferSignal_Z_16_OBUF_I
    );
  NlwBufferBlock_Z_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_24_OBUF_3591,
      O => NlwBufferSignal_Z_24_OBUF_I
    );
  NlwBufferBlock_Z_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_17_OBUF_3592,
      O => NlwBufferSignal_Z_17_OBUF_I
    );
  NlwBufferBlock_Z_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_25_OBUF_3593,
      O => NlwBufferSignal_Z_25_OBUF_I
    );
  NlwBufferBlock_Z_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_18_OBUF_3594,
      O => NlwBufferSignal_Z_18_OBUF_I
    );
  NlwBufferBlock_Z_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_26_OBUF_3595,
      O => NlwBufferSignal_Z_26_OBUF_I
    );
  NlwBufferBlock_Z_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_19_OBUF_3596,
      O => NlwBufferSignal_Z_19_OBUF_I
    );
  NlwBufferBlock_Z_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_27_OBUF_3597,
      O => NlwBufferSignal_Z_27_OBUF_I
    );
  NlwBufferBlock_Z_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_28_OBUF_3598,
      O => NlwBufferSignal_Z_28_OBUF_I
    );
  NlwBufferBlock_Z_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Z_29_OBUF_3599,
      O => NlwBufferSignal_Z_29_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

