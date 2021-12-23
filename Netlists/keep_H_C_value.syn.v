/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:09:06 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2116225088 */

module keep_H_C_value(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire n_0_0;
   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_2_1;
   wire n_0_2_2;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire [2:0]next_state_reg;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire n_0_5_3;
   wire n_0_5_4;
   wire n_0_5_5;
   wire n_0_5_6;
   wire n_0_5_7;
   wire n_0_5_8;
   wire n_0_5_9;
   wire n_0_5_10;
   wire n_0_5_11;
   wire n_0_5_12;
   wire n_0_5_13;
   wire n_0_5_14;
   wire n_0_5_15;
   wire n_0_5_16;
   wire n_0_5_17;
   wire n_0_5_18;
   wire n_0_5_19;
   wire n_0_5_20;
   wire n_0_5_21;
   wire n_0_5_22;
   wire n_0_5_23;
   wire n_0_5_24;
   wire n_0_5_25;
   wire n_0_5_26;
   wire n_0_5_27;
   wire n_0_5_28;
   wire n_0_2;
   wire n_0_5_29;
   wire n_0_1;
   wire n_0_5_30;
   wire n_0_5_31;
   wire n_0_5_32;
   wire n_0_5_33;
   wire n_0_5_34;
   wire n_0_5_35;
   wire n_0_5_36;
   wire n_0_5_37;
   wire n_0_5_38;
   wire n_0_5_39;
   wire n_0_5_40;
   wire n_0_3;
   wire n_0_5_41;
   wire n_0_5_42;
   wire n_0_5_43;
   wire n_0_5_44;
   wire n_0_5_45;
   wire n_0_5_46;
   wire n_0_5_47;
   wire n_0_5_48;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;

   DFFR_X2 \current_state_reg[1]  (.D(next_state_reg[1]), .RN(n_0_0), .CK(clk), 
      .Q(display[1]), .QN());
   DLH_X1 cooler_reg (.D(n_0_3), .G(n_0_2), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_1), .G(n_0_2), .Q(heater));
   INV_X1 i_0_0_0 (.A(Rst), .ZN(n_0_0));
   NAND2_X1 i_0_1_0 (.A1(display[1]), .A2(display[0]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_2_0 (.A(n_0_2_0), .ZN(winbuzz));
   NAND3_X1 i_0_2_1 (.A1(display[2]), .A2(n_0_2_2), .A3(n_0_2_1), .ZN(n_0_2_0));
   INV_X1 i_0_2_2 (.A(display[0]), .ZN(n_0_2_1));
   INV_X1 i_0_2_3 (.A(display[1]), .ZN(n_0_2_2));
   INV_X1 i_0_3_0 (.A(display[1]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[0]), .ZN(rdoor));
   INV_X1 i_0_4_0 (.A(display[2]), .ZN(n_0_4_0));
   NAND2_X1 i_0_4_1 (.A1(display[0]), .A2(n_0_4_0), .ZN(n_0_4_1));
   NOR2_X1 i_0_4_2 (.A1(n_0_4_1), .A2(display[1]), .ZN(fdoor));
   OAI21_X1 i_0_5_0 (.A(n_0_5_4), .B1(n_0_5_2), .B2(n_0_5_0), .ZN(
      next_state_reg[0]));
   INV_X1 i_0_5_1 (.A(n_0_5_1), .ZN(n_0_5_0));
   OAI21_X1 i_0_5_2 (.A(n_0_5_43), .B1(SW), .B2(n_0_5_16), .ZN(n_0_5_1));
   AOI22_X1 i_0_5_3 (.A1(n_0_5_46), .A2(n_0_5_28), .B1(n_0_5_24), .B2(n_0_5_3), 
      .ZN(n_0_5_2));
   NOR2_X1 i_0_5_4 (.A1(n_0_5), .A2(SRD), .ZN(n_0_5_3));
   OAI21_X1 i_0_5_5 (.A(n_0_5_5), .B1(n_0_5_38), .B2(n_0_5_9), .ZN(n_0_5_4));
   OAI33_X1 i_0_5_6 (.A1(n_0_5_17), .A2(n_0_5_8), .A3(n_0_5_34), .B1(n_0_5_24), 
      .B2(n_0_5_12), .B3(n_0_5_6), .ZN(n_0_5_5));
   NOR2_X1 i_0_5_7 (.A1(n_0_5_9), .A2(n_0_5_7), .ZN(n_0_5_6));
   NOR2_X1 i_0_5_8 (.A1(SRD), .A2(SW), .ZN(n_0_5_7));
   NOR2_X1 i_0_5_9 (.A1(n_0_6), .A2(n_0_5_31), .ZN(n_0_5_8));
   OAI21_X1 i_0_5_10 (.A(n_0_5_44), .B1(SRD), .B2(n_0_5_43), .ZN(n_0_5_9));
   INV_X1 i_0_5_11 (.A(n_0_5_10), .ZN(next_state_reg[1]));
   OAI33_X1 i_0_5_12 (.A1(SRD), .A2(SFA), .A3(n_0_5_34), .B1(n_0_5_14), .B2(
      n_0_5_11), .B3(n_0_5_15), .ZN(n_0_5_10));
   NOR3_X1 i_0_5_13 (.A1(n_0_5_23), .A2(n_0_5_13), .A3(n_0_5_12), .ZN(n_0_5_11));
   OAI21_X1 i_0_5_14 (.A(n_0_5_30), .B1(n_0_5_47), .B2(n_0_5_42), .ZN(n_0_5_12));
   NOR3_X1 i_0_5_15 (.A1(SRD), .A2(n_0_5_20), .A3(SFA), .ZN(n_0_5_13));
   NOR3_X1 i_0_5_16 (.A1(n_0_6), .A2(n_0_5_43), .A3(n_0_5_27), .ZN(n_0_5_14));
   AND2_X1 i_0_5_17 (.A1(n_0_5_18), .A2(n_0_5_16), .ZN(n_0_5_15));
   OAI21_X1 i_0_5_18 (.A(n_0_5_35), .B1(SFD), .B2(n_0_5_38), .ZN(n_0_5_16));
   INV_X1 i_0_5_19 (.A(n_0_5_18), .ZN(n_0_5_17));
   OAI21_X1 i_0_5_20 (.A(n_0_5_30), .B1(SW), .B2(n_0_5_27), .ZN(n_0_5_18));
   OAI22_X1 i_0_5_21 (.A1(n_0_5_33), .A2(n_0_5_30), .B1(n_0_5_21), .B2(n_0_5_19), 
      .ZN(next_state_reg[2]));
   NOR2_X1 i_0_5_22 (.A1(SW), .A2(n_0_5_32), .ZN(n_0_5_19));
   NOR2_X1 i_0_5_23 (.A1(SW), .A2(n_0_5_38), .ZN(n_0_5_20));
   AOI21_X1 i_0_5_24 (.A(n_0_5_26), .B1(n_0_5_43), .B2(n_0_5_22), .ZN(n_0_5_21));
   NOR3_X1 i_0_5_25 (.A1(n_0_5_25), .A2(n_0_5_23), .A3(SRD), .ZN(n_0_5_22));
   NOR2_X1 i_0_5_26 (.A1(n_0_5_44), .A2(n_0_5_24), .ZN(n_0_5_23));
   NOR2_X1 i_0_5_27 (.A1(n_0_4), .A2(n_0_5_46), .ZN(n_0_5_24));
   NOR3_X1 i_0_5_28 (.A1(n_0_5_48), .A2(n_0_5_46), .A3(n_0_5_47), .ZN(n_0_5_25));
   AOI21_X1 i_0_5_29 (.A(n_0_5_27), .B1(n_0_5_46), .B2(SFA), .ZN(n_0_5_26));
   INV_X1 i_0_5_30 (.A(n_0_5_28), .ZN(n_0_5_27));
   NOR2_X1 i_0_5_31 (.A1(n_0_4), .A2(n_0_5_47), .ZN(n_0_5_28));
   OAI21_X1 i_0_5_32 (.A(n_0_5_29), .B1(n_0_5_32), .B2(n_0_5_30), .ZN(n_0_2));
   NOR2_X1 i_0_5_33 (.A1(n_0_3), .A2(n_0_1), .ZN(n_0_5_29));
   NOR3_X1 i_0_5_34 (.A1(n_0_5_48), .A2(n_0_5_46), .A3(n_0_5), .ZN(n_0_1));
   INV_X1 i_0_5_35 (.A(n_0_5_31), .ZN(n_0_5_30));
   NOR2_X1 i_0_5_36 (.A1(n_0_5), .A2(n_0_5_41), .ZN(n_0_5_31));
   INV_X1 i_0_5_37 (.A(n_0_5_33), .ZN(n_0_5_32));
   NOR2_X1 i_0_5_38 (.A1(n_0_5_38), .A2(n_0_5_34), .ZN(n_0_5_33));
   INV_X1 i_0_5_39 (.A(n_0_5_35), .ZN(n_0_5_34));
   OAI21_X1 i_0_5_40 (.A(ST[6]), .B1(n_0_5_37), .B2(n_0_5_36), .ZN(n_0_5_35));
   OR3_X1 i_0_5_41 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_5_36));
   AND3_X1 i_0_5_42 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_5_37));
   AOI21_X1 i_0_5_43 (.A(ST[6]), .B1(ST[5]), .B2(n_0_5_39), .ZN(n_0_5_38));
   NOR2_X1 i_0_5_44 (.A1(n_0_5_45), .A2(n_0_5_40), .ZN(n_0_5_39));
   NOR3_X1 i_0_5_45 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_5_40));
   NOR2_X1 i_0_5_46 (.A1(n_0_5_47), .A2(n_0_5_41), .ZN(n_0_3));
   INV_X1 i_0_5_47 (.A(n_0_5_42), .ZN(n_0_5_41));
   NOR2_X1 i_0_5_48 (.A1(n_0_5_48), .A2(n_0_6), .ZN(n_0_5_42));
   INV_X1 i_0_5_49 (.A(SFA), .ZN(n_0_5_43));
   INV_X1 i_0_5_50 (.A(SFD), .ZN(n_0_5_44));
   INV_X1 i_0_5_51 (.A(ST[4]), .ZN(n_0_5_45));
   INV_X1 i_0_5_52 (.A(n_0_6), .ZN(n_0_5_46));
   INV_X1 i_0_5_53 (.A(n_0_5), .ZN(n_0_5_47));
   INV_X1 i_0_5_54 (.A(n_0_4), .ZN(n_0_5_48));
   DFFR_X2 \current_state_reg[0]  (.D(next_state_reg[0]), .RN(n_0_0), .CK(clk), 
      .Q(display[0]), .QN());
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_5));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(display[0]), .Z(n_0_6));
   DFFR_X2 \current_state_reg[2]  (.D(next_state_reg[2]), .RN(n_0_0), .CK(clk), 
      .Q(display[2]), .QN());
endmodule
