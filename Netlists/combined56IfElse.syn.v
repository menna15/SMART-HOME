/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 24 14:36:26 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 684967931 */

module combined56_ifelse(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
      alarmbuzz, heater, cooler, display);
   input clk;
   input Rst;
   input SFD;
   input SRD;
   input SW;
   input SFA;
   input [6:0]ST;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarmbuzz;
   output heater;
   output cooler;
   output [2:0]display;

   wire [2:0]state;
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire n_0_7_0;
   wire n_0_7_1;
   wire n_0_8_0;
   wire n_0_8_1;
   wire n_0_8_2;
   wire n_0_8_3;
   wire n_0_8_4;
   wire n_0_8_5;
   wire n_0_8_6;
   wire n_0_8_7;
   wire n_0_8_8;
   wire n_0_8_9;
   wire n_0_8_10;
   wire n_0_8_11;
   wire n_0_8_12;
   wire n_0_8_13;
   wire n_0_8_14;
   wire n_0_8_15;
   wire n_0_8_16;
   wire n_0_8_17;
   wire n_0_8_18;
   wire n_0_8_19;
   wire n_0_8_20;
   wire n_0_8_21;
   wire n_0_8_22;
   wire n_0_8_23;
   wire n_0_8_24;
   wire n_0_8_25;
   wire n_0_8_26;
   wire n_0_8_27;
   wire n_0_8_28;
   wire n_0_8_29;
   wire n_0_8_30;
   wire n_0_0;
   wire n_0_8_31;
   wire n_0_8_32;
   wire n_0_8_33;
   wire n_0_8_34;
   wire n_0_8_35;
   wire n_0_8_36;
   wire n_0_8_37;
   wire n_0_8_38;
   wire n_0_8_39;
   wire n_0_8_40;
   wire n_0_8_41;
   wire n_0_8_42;
   wire n_0_8_43;
   wire n_0_8_44;
   wire n_0_1;
   wire n_0_8_45;
   wire n_0_8_46;
   wire n_0_8_47;
   wire n_0_8_48;
   wire n_0_8_49;
   wire n_0_8_50;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   DFF_X2 \state_reg[0]  (.D(n_0_0), .CK(clk), .Q(state[0]), .QN());
   DFF_X2 \state_reg[1]  (.D(n_0_1), .CK(clk), .Q(display[1]), .QN());
   DFF_X2 \state_reg[2]  (.D(n_0_2), .CK(clk), .Q(display[2]), .QN());
   INV_X1 i_0_1_0 (.A(n_0_1_0), .ZN(display[0]));
   NAND2_X1 i_0_1_1 (.A1(n_0_1_1), .A2(state[0]), .ZN(n_0_1_0));
   NAND2_X1 i_0_1_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_1_1));
   AND2_X1 i_0_2_0 (.A1(display[2]), .A2(display[1]), .ZN(cooler));
   NAND2_X1 i_0_3_0 (.A1(state[0]), .A2(display[2]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_4_0 (.A1(state[0]), .A2(display[1]), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_1 (.A1(n_0_4_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(winbuzz));
   NAND2_X1 i_0_5_1 (.A1(display[2]), .A2(n_0_5_1), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_2 (.A1(state[0]), .A2(display[1]), .ZN(n_0_5_1));
   INV_X1 i_0_6_0 (.A(n_0_6_0), .ZN(rdoor));
   NAND3_X1 i_0_6_1 (.A1(display[1]), .A2(n_0_6_2), .A3(n_0_6_1), .ZN(n_0_6_0));
   INV_X1 i_0_6_2 (.A(state[0]), .ZN(n_0_6_1));
   INV_X1 i_0_6_3 (.A(display[2]), .ZN(n_0_6_2));
   INV_X1 i_0_7_0 (.A(n_0_7_0), .ZN(fdoor));
   NAND2_X1 i_0_7_1 (.A1(state[0]), .A2(n_0_7_1), .ZN(n_0_7_0));
   NOR2_X1 i_0_7_2 (.A1(display[1]), .A2(display[2]), .ZN(n_0_7_1));
   INV_X1 i_0_8_0 (.A(n_0_4), .ZN(n_0_8_0));
   INV_X1 i_0_8_1 (.A(n_0_5), .ZN(n_0_8_1));
   OAI221_X1 i_0_8_2 (.A(n_0_3), .B1(n_0_8_0), .B2(n_0_5), .C1(n_0_8_1), 
      .C2(n_0_4), .ZN(n_0_8_2));
   OR3_X1 i_0_8_3 (.A1(n_0_8_0), .A2(n_0_8_1), .A3(n_0_3), .ZN(n_0_8_3));
   OAI21_X1 i_0_8_4 (.A(n_0_8_2), .B1(SW), .B2(n_0_8_3), .ZN(n_0_8_4));
   INV_X1 i_0_8_5 (.A(n_0_8_4), .ZN(n_0_8_5));
   INV_X1 i_0_8_6 (.A(SFA), .ZN(n_0_8_6));
   INV_X1 i_0_8_7 (.A(ST[6]), .ZN(n_0_8_7));
   NAND3_X1 i_0_8_8 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_8_8));
   NOR3_X1 i_0_8_9 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_8_9));
   AOI21_X1 i_0_8_10 (.A(n_0_8_7), .B1(n_0_8_8), .B2(n_0_8_9), .ZN(n_0_8_10));
   NOR2_X1 i_0_8_11 (.A1(n_0_8_10), .A2(SFD), .ZN(n_0_8_11));
   OR3_X1 i_0_8_12 (.A1(n_0_8_1), .A2(n_0_3), .A3(n_0_4), .ZN(n_0_8_12));
   OAI33_X1 i_0_8_13 (.A1(n_0_8_5), .A2(n_0_8_6), .A3(n_0_8_10), .B1(n_0_8_11), 
      .B2(SW), .B3(n_0_8_12), .ZN(n_0_8_13));
   INV_X1 i_0_8_14 (.A(SRD), .ZN(n_0_8_14));
   NOR3_X1 i_0_8_15 (.A1(n_0_8_0), .A2(n_0_3), .A3(n_0_5), .ZN(n_0_8_15));
   INV_X1 i_0_8_16 (.A(n_0_8_15), .ZN(n_0_8_16));
   NAND4_X1 i_0_8_17 (.A1(n_0_8_2), .A2(n_0_8_16), .A3(n_0_8_12), .A4(n_0_8_3), 
      .ZN(n_0_8_17));
   INV_X1 i_0_8_18 (.A(SW), .ZN(n_0_8_18));
   AOI21_X1 i_0_8_19 (.A(n_0_8_4), .B1(n_0_8_18), .B2(n_0_8_15), .ZN(n_0_8_19));
   OAI21_X1 i_0_8_20 (.A(n_0_8_17), .B1(n_0_8_19), .B2(n_0_8_10), .ZN(n_0_8_20));
   AOI22_X1 i_0_8_21 (.A1(n_0_8_13), .A2(n_0_8_14), .B1(n_0_8_20), .B2(SFD), 
      .ZN(n_0_8_21));
   AND2_X1 i_0_8_22 (.A1(n_0_8_17), .A2(n_0_8_12), .ZN(n_0_8_22));
   OAI21_X1 i_0_8_23 (.A(n_0_8_16), .B1(n_0_8_22), .B2(SRD), .ZN(n_0_8_23));
   NOR3_X1 i_0_8_24 (.A1(ST[1]), .A2(ST[2]), .A3(ST[3]), .ZN(n_0_8_24));
   INV_X1 i_0_8_25 (.A(ST[4]), .ZN(n_0_8_25));
   NOR2_X1 i_0_8_26 (.A1(n_0_8_24), .A2(n_0_8_25), .ZN(n_0_8_26));
   AOI21_X1 i_0_8_27 (.A(ST[6]), .B1(n_0_8_26), .B2(ST[5]), .ZN(n_0_8_27));
   INV_X1 i_0_8_28 (.A(n_0_8_27), .ZN(n_0_8_28));
   OAI21_X1 i_0_8_29 (.A(n_0_8_6), .B1(n_0_8_28), .B2(SW), .ZN(n_0_8_29));
   AOI22_X1 i_0_8_30 (.A1(n_0_8_23), .A2(n_0_8_29), .B1(n_0_8_27), .B2(n_0_8_4), 
      .ZN(n_0_8_30));
   AOI21_X1 i_0_8_31 (.A(Rst), .B1(n_0_8_21), .B2(n_0_8_30), .ZN(n_0_0));
   INV_X1 i_0_8_32 (.A(SFD), .ZN(n_0_8_31));
   NAND4_X1 i_0_8_33 (.A1(n_0_8_12), .A2(n_0_8_16), .A3(n_0_8_3), .A4(n_0_8_31), 
      .ZN(n_0_8_32));
   AOI21_X1 i_0_8_34 (.A(SW), .B1(n_0_8_32), .B2(n_0_8_3), .ZN(n_0_8_33));
   INV_X1 i_0_8_35 (.A(n_0_8_2), .ZN(n_0_8_34));
   OAI21_X1 i_0_8_36 (.A(n_0_8_10), .B1(n_0_8_33), .B2(n_0_8_34), .ZN(n_0_8_35));
   AOI21_X1 i_0_8_37 (.A(n_0_8_10), .B1(SRD), .B2(n_0_8_31), .ZN(n_0_8_36));
   NOR3_X1 i_0_8_38 (.A1(n_0_8_36), .A2(n_0_8_27), .A3(SW), .ZN(n_0_8_37));
   OAI21_X1 i_0_8_39 (.A(n_0_8_15), .B1(n_0_8_37), .B2(SFA), .ZN(n_0_8_38));
   NAND2_X1 i_0_8_40 (.A1(n_0_8_35), .A2(n_0_8_38), .ZN(n_0_8_39));
   INV_X1 i_0_8_41 (.A(n_0_8_17), .ZN(n_0_8_40));
   AOI21_X1 i_0_8_42 (.A(n_0_8_40), .B1(n_0_8_28), .B2(n_0_8_4), .ZN(n_0_8_41));
   OAI21_X1 i_0_8_43 (.A(n_0_8_12), .B1(n_0_8_41), .B2(SFD), .ZN(n_0_8_42));
   NAND2_X1 i_0_8_44 (.A1(n_0_8_14), .A2(n_0_8_6), .ZN(n_0_8_43));
   AOI21_X1 i_0_8_45 (.A(n_0_8_39), .B1(n_0_8_42), .B2(n_0_8_43), .ZN(n_0_8_44));
   NOR2_X1 i_0_8_46 (.A1(n_0_8_44), .A2(Rst), .ZN(n_0_1));
   NOR3_X1 i_0_8_47 (.A1(n_0_8_17), .A2(SFD), .A3(n_0_8_43), .ZN(n_0_8_45));
   OAI221_X1 i_0_8_48 (.A(n_0_8_3), .B1(n_0_8_16), .B2(SFA), .C1(n_0_8_12), 
      .C2(n_0_8_43), .ZN(n_0_8_46));
   OR2_X1 i_0_8_49 (.A1(n_0_8_10), .A2(n_0_8_27), .ZN(n_0_8_47));
   OAI22_X1 i_0_8_50 (.A1(n_0_8_45), .A2(n_0_8_46), .B1(n_0_8_47), .B2(SW), 
      .ZN(n_0_8_48));
   NOR3_X1 i_0_8_51 (.A1(n_0_8_43), .A2(SFD), .A3(n_0_8_18), .ZN(n_0_8_49));
   OAI21_X1 i_0_8_52 (.A(n_0_8_34), .B1(n_0_8_47), .B2(n_0_8_49), .ZN(n_0_8_50));
   AOI21_X1 i_0_8_53 (.A(Rst), .B1(n_0_8_48), .B2(n_0_8_50), .ZN(n_0_2));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_3));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_5));
endmodule
