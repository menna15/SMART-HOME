/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:24:14 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 836154952 */

module Separate56(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire n_0_0_0;
   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_3_1;
   wire n_0_4_0;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire [2:0]next_state_reg;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire n_0_6_3;
   wire n_0_6_4;
   wire n_0_6_5;
   wire n_0_6_6;
   wire n_0_6_7;
   wire n_0_6_8;
   wire n_0_6_9;
   wire n_0_6_10;
   wire n_0_6_11;
   wire n_0_6_12;
   wire n_0_6_13;
   wire n_0_6_14;
   wire n_0_6_15;
   wire n_0_6_16;
   wire n_0_6_17;
   wire n_0_6_18;
   wire n_0_6_19;
   wire n_0_6_20;
   wire n_0_6_21;
   wire n_0_6_22;
   wire n_0_6_23;
   wire n_0_6_24;
   wire n_0_6_25;
   wire n_0_6_26;
   wire n_0_6_27;
   wire n_0_6_28;
   wire n_0_6_29;
   wire n_0_6_30;
   wire n_0_6_31;
   wire n_0_6_32;
   wire n_0_6_33;
   wire n_0_6_34;
   wire n_0_6_35;
   wire n_0_6_36;
   wire n_0_6_37;
   wire n_0_6_38;
   wire n_0_6_39;
   wire n_0_6_40;
   wire n_0_6_41;
   wire n_0_6_42;
   wire n_0_6_43;
   wire n_0_6_44;
   wire n_0_6_45;
   wire n_0_0;
   wire n_0_6_46;
   wire n_0_6_47;
   wire n_0_6_48;
   wire n_0_6_49;
   wire n_0_6_50;
   wire n_0_6_51;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;

   DFFR_X2 \current_state_reg[2]  (.D(next_state_reg[2]), .RN(n_0_0), .CK(clk), 
      .Q(display[2]), .QN());
   DFFR_X2 \current_state_reg[1]  (.D(next_state_reg[1]), .RN(n_0_0), .CK(clk), 
      .Q(display[1]), .QN());
   NAND2_X1 i_0_0_0 (.A1(display[1]), .A2(display[2]), .ZN(n_0_0_0));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_0), .A2(display[0]), .ZN(cooler));
   NAND2_X1 i_0_1_0 (.A1(display[0]), .A2(display[2]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_2_0 (.A1(display[0]), .A2(display[1]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_3_0 (.A(display[0]), .ZN(n_0_3_0));
   NAND2_X1 i_0_3_1 (.A1(display[2]), .A2(n_0_3_0), .ZN(n_0_3_1));
   NOR2_X1 i_0_3_2 (.A1(n_0_3_1), .A2(display[1]), .ZN(winbuzz));
   INV_X1 i_0_4_0 (.A(display[1]), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_1 (.A1(n_0_4_0), .A2(display[0]), .ZN(rdoor));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(fdoor));
   NAND3_X1 i_0_5_1 (.A1(n_0_5_2), .A2(n_0_5_1), .A3(display[0]), .ZN(n_0_5_0));
   INV_X1 i_0_5_2 (.A(display[1]), .ZN(n_0_5_1));
   INV_X1 i_0_5_3 (.A(display[2]), .ZN(n_0_5_2));
   NAND3_X1 i_0_6_0 (.A1(n_0_6_5), .A2(n_0_6_0), .A3(n_0_6_7), .ZN(
      next_state_reg[0]));
   NOR2_X1 i_0_6_1 (.A1(n_0_6_4), .A2(n_0_6_1), .ZN(n_0_6_0));
   AOI21_X1 i_0_6_2 (.A(n_0_6_3), .B1(n_0_6_34), .B2(n_0_6_2), .ZN(n_0_6_1));
   OR2_X1 i_0_6_3 (.A1(SRD), .A2(n_0_6_31), .ZN(n_0_6_2));
   AOI211_X1 i_0_6_4 (.A(SFA), .B(n_0_6_10), .C1(n_0_6_50), .C2(n_0_6_15), 
      .ZN(n_0_6_3));
   AOI211_X1 i_0_6_5 (.A(n_0_6_28), .B(n_0_6_19), .C1(n_0_6_26), .C2(n_0_6_9), 
      .ZN(n_0_6_4));
   OAI21_X1 i_0_6_6 (.A(n_0_6_6), .B1(n_0_6_24), .B2(n_0_6_14), .ZN(n_0_6_5));
   OAI21_X1 i_0_6_7 (.A(n_0_6_42), .B1(n_0_6_26), .B2(n_0_6_18), .ZN(n_0_6_6));
   OAI21_X1 i_0_6_8 (.A(n_0_6_21), .B1(n_0_6_15), .B2(n_0_6_8), .ZN(n_0_6_7));
   AOI211_X1 i_0_6_9 (.A(SRD), .B(n_0_6_38), .C1(n_0_6_49), .C2(n_0_6_9), 
      .ZN(n_0_6_8));
   INV_X1 i_0_6_10 (.A(n_0_6_10), .ZN(n_0_6_9));
   NOR2_X1 i_0_6_11 (.A1(SW), .A2(n_0_6_42), .ZN(n_0_6_10));
   OAI21_X1 i_0_6_12 (.A(n_0_6_11), .B1(n_0_6_34), .B2(n_0_6_17), .ZN(
      next_state_reg[1]));
   AOI21_X1 i_0_6_13 (.A(n_0_6_12), .B1(n_0_6_27), .B2(n_0_6_16), .ZN(n_0_6_11));
   AOI221_X1 i_0_6_14 (.A(n_0_6_15), .B1(n_0_6_39), .B2(n_0_6_32), .C1(n_0_6_20), 
      .C2(n_0_6_13), .ZN(n_0_6_12));
   OAI21_X1 i_0_6_15 (.A(n_0_6_42), .B1(n_0_6_30), .B2(n_0_6_14), .ZN(n_0_6_13));
   NOR3_X1 i_0_6_16 (.A1(n_0_6_46), .A2(n_0_6_36), .A3(SW), .ZN(n_0_6_14));
   NOR2_X1 i_0_6_17 (.A1(n_0_6_48), .A2(n_0_6_38), .ZN(n_0_6_15));
   OAI21_X1 i_0_6_18 (.A(n_0_6_32), .B1(SW), .B2(n_0_6_39), .ZN(n_0_6_16));
   AOI21_X1 i_0_6_19 (.A(SFA), .B1(n_0_6_37), .B2(n_0_6_18), .ZN(n_0_6_17));
   OR2_X1 i_0_6_20 (.A1(n_0_6_38), .A2(n_0_6_19), .ZN(n_0_6_18));
   AND2_X1 i_0_6_21 (.A1(SRD), .A2(n_0_6_48), .ZN(n_0_6_19));
   AOI22_X1 i_0_6_22 (.A1(n_0_6_39), .A2(n_0_6_37), .B1(n_0_6_25), .B2(n_0_6_22), 
      .ZN(next_state_reg[2]));
   INV_X1 i_0_6_23 (.A(n_0_6_21), .ZN(n_0_6_20));
   NOR2_X1 i_0_6_24 (.A1(n_0_6_46), .A2(n_0_6_29), .ZN(n_0_6_21));
   OR2_X1 i_0_6_25 (.A1(n_0_6_29), .A2(n_0_6_23), .ZN(n_0_6_22));
   AOI221_X1 i_0_6_26 (.A(n_0_6_38), .B1(n_0_6_48), .B2(n_0_6_32), .C1(n_0_6_43), 
      .C2(n_0_6_24), .ZN(n_0_6_23));
   NOR2_X1 i_0_6_27 (.A1(n_0_3), .A2(n_0_6_29), .ZN(n_0_6_24));
   AOI221_X1 i_0_6_28 (.A(n_0_6_33), .B1(n_0_3), .B2(n_0_6_35), .C1(n_0_6_32), 
      .C2(n_0_6_27), .ZN(n_0_6_25));
   NOR2_X1 i_0_6_29 (.A1(SFA), .A2(SFD), .ZN(n_0_6_26));
   OAI21_X1 i_0_6_30 (.A(n_0_6_31), .B1(SFD), .B2(n_0_6_28), .ZN(n_0_6_27));
   NAND3_X1 i_0_6_31 (.A1(n_0_6_36), .A2(n_0_6_29), .A3(n_0_6_46), .ZN(n_0_6_28));
   INV_X1 i_0_6_32 (.A(n_0_6_30), .ZN(n_0_6_29));
   NOR2_X1 i_0_6_33 (.A1(n_0_6_47), .A2(n_0_2), .ZN(n_0_6_30));
   OR3_X1 i_0_6_34 (.A1(n_0_1), .A2(n_0_2), .A3(n_0_6_46), .ZN(n_0_6_31));
   NOR2_X1 i_0_6_35 (.A1(SFA), .A2(SRD), .ZN(n_0_6_32));
   NOR2_X1 i_0_6_36 (.A1(SFA), .A2(n_0_6_34), .ZN(n_0_6_33));
   NAND2_X1 i_0_6_37 (.A1(n_0_6_46), .A2(n_0_6_35), .ZN(n_0_6_34));
   INV_X1 i_0_6_38 (.A(n_0_6_36), .ZN(n_0_6_35));
   NAND2_X1 i_0_6_39 (.A1(n_0_6_47), .A2(n_0_2), .ZN(n_0_6_36));
   NOR2_X1 i_0_6_40 (.A1(SW), .A2(n_0_6_43), .ZN(n_0_6_37));
   INV_X1 i_0_6_41 (.A(n_0_6_39), .ZN(n_0_6_38));
   OAI21_X1 i_0_6_42 (.A(ST[6]), .B1(n_0_6_41), .B2(n_0_6_40), .ZN(n_0_6_39));
   OR3_X1 i_0_6_43 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_6_40));
   AND3_X1 i_0_6_44 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_6_41));
   INV_X1 i_0_6_45 (.A(n_0_6_43), .ZN(n_0_6_42));
   AOI21_X1 i_0_6_46 (.A(ST[6]), .B1(ST[5]), .B2(n_0_6_44), .ZN(n_0_6_43));
   NOR2_X1 i_0_6_47 (.A1(n_0_6_51), .A2(n_0_6_45), .ZN(n_0_6_44));
   NOR3_X1 i_0_6_48 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_6_45));
   INV_X1 i_0_6_49 (.A(Rst), .ZN(n_0_0));
   INV_X1 i_0_6_50 (.A(n_0_3), .ZN(n_0_6_46));
   INV_X1 i_0_6_51 (.A(n_0_1), .ZN(n_0_6_47));
   INV_X1 i_0_6_52 (.A(SFD), .ZN(n_0_6_48));
   INV_X1 i_0_6_53 (.A(SFA), .ZN(n_0_6_49));
   INV_X1 i_0_6_54 (.A(SW), .ZN(n_0_6_50));
   INV_X1 i_0_6_55 (.A(ST[4]), .ZN(n_0_6_51));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_1));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_2));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(display[0]), .Z(n_0_3));
   DFFR_X2 \current_state_reg[0]  (.D(next_state_reg[0]), .RN(n_0_0), .CK(clk), 
      .Q(display[0]), .QN());
endmodule
