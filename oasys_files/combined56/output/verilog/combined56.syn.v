/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:01:39 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1910307382 */

module Combined56(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_5_0;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire [2:0]next_state_reg;
   wire n_0_7_0;
   wire n_0_7_1;
   wire n_0_7_2;
   wire n_0_7_3;
   wire n_0_7_4;
   wire n_0_7_5;
   wire n_0_7_6;
   wire n_0_7_7;
   wire n_0_7_8;
   wire n_0_7_9;
   wire n_0_7_10;
   wire n_0_7_11;
   wire n_0_7_12;
   wire n_0_7_13;
   wire n_0_7_14;
   wire n_0_7_15;
   wire n_0_7_16;
   wire n_0_7_17;
   wire n_0_7_18;
   wire n_0_7_19;
   wire n_0_7_20;
   wire n_0_7_21;
   wire n_0_7_22;
   wire n_0_7_23;
   wire n_0_7_24;
   wire n_0_7_25;
   wire n_0_7_26;
   wire n_0_7_27;
   wire n_0_7_28;
   wire n_0_7_29;
   wire n_0_7_30;
   wire n_0_7_31;
   wire n_0_7_32;
   wire n_0_7_33;
   wire n_0_7_34;
   wire n_0_7_35;
   wire n_0_7_36;
   wire n_0_7_37;
   wire n_0_7_38;
   wire n_0_7_39;
   wire n_0_7_40;
   wire n_0_7_41;
   wire n_0_7_42;
   wire n_0_7_43;
   wire n_0_7_44;
   wire n_0_7_45;
   wire n_0_7_46;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;

   DFFR_X2 \current_state_reg[2]  (.D(next_state_reg[2]), .RN(n_0_0), .CK(clk), 
      .Q(display[2]), .QN());
   DFFR_X2 \current_state_reg[1]  (.D(next_state_reg[1]), .RN(n_0_0), .CK(clk), 
      .Q(display[1]), .QN());
   INV_X1 i_0_0_0 (.A(Rst), .ZN(n_0_0));
   NAND2_X1 i_0_1_0 (.A1(display[1]), .A2(display[2]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[0]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(display[0]), .A2(display[2]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(display[1]), .A2(display[0]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_4_0 (.A(display[0]), .ZN(n_0_4_0));
   NAND2_X1 i_0_4_1 (.A1(display[2]), .A2(n_0_4_0), .ZN(n_0_4_1));
   NOR2_X1 i_0_4_2 (.A1(n_0_4_1), .A2(display[1]), .ZN(winbuzz));
   INV_X1 i_0_5_0 (.A(display[1]), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_1 (.A1(n_0_5_0), .A2(display[0]), .ZN(rdoor));
   INV_X1 i_0_6_0 (.A(n_0_6_0), .ZN(fdoor));
   NAND3_X1 i_0_6_1 (.A1(n_0_6_2), .A2(n_0_6_1), .A3(display[0]), .ZN(n_0_6_0));
   INV_X1 i_0_6_2 (.A(display[1]), .ZN(n_0_6_1));
   INV_X1 i_0_6_3 (.A(display[2]), .ZN(n_0_6_2));
   OAI21_X1 i_0_7_0 (.A(n_0_7_4), .B1(n_0_7_2), .B2(n_0_7_0), .ZN(
      next_state_reg[0]));
   INV_X1 i_0_7_1 (.A(n_0_7_1), .ZN(n_0_7_0));
   OAI21_X1 i_0_7_2 (.A(n_0_7_44), .B1(SW), .B2(n_0_7_15), .ZN(n_0_7_1));
   AOI22_X1 i_0_7_3 (.A1(n_0_7_39), .A2(n_0_7_38), .B1(n_0_7_34), .B2(n_0_7_3), 
      .ZN(n_0_7_2));
   NOR2_X1 i_0_7_4 (.A1(SRD), .A2(n_0_2), .ZN(n_0_7_3));
   OAI21_X1 i_0_7_5 (.A(n_0_7_5), .B1(n_0_7_27), .B2(n_0_7_8), .ZN(n_0_7_4));
   OAI33_X1 i_0_7_6 (.A1(n_0_7_16), .A2(n_0_7_7), .A3(n_0_7_22), .B1(n_0_7_34), 
      .B2(n_0_7_11), .B3(n_0_7_6), .ZN(n_0_7_5));
   AOI21_X1 i_0_7_7 (.A(n_0_7_8), .B1(n_0_7_45), .B2(n_0_7_43), .ZN(n_0_7_6));
   NOR2_X1 i_0_7_8 (.A1(n_0_3), .A2(n_0_7_19), .ZN(n_0_7_7));
   OAI21_X1 i_0_7_9 (.A(n_0_7_42), .B1(n_0_7_44), .B2(SRD), .ZN(n_0_7_8));
   INV_X1 i_0_7_10 (.A(n_0_7_9), .ZN(next_state_reg[1]));
   OAI33_X1 i_0_7_11 (.A1(SFA), .A2(SRD), .A3(n_0_7_22), .B1(n_0_7_13), .B2(
      n_0_7_10), .B3(n_0_7_14), .ZN(n_0_7_9));
   NOR3_X1 i_0_7_12 (.A1(n_0_7_33), .A2(n_0_7_12), .A3(n_0_7_11), .ZN(n_0_7_10));
   OAI21_X1 i_0_7_13 (.A(n_0_7_20), .B1(n_0_7_40), .B2(n_0_7_21), .ZN(n_0_7_11));
   AOI21_X1 i_0_7_14 (.A(n_0_7_32), .B1(n_0_7_45), .B2(n_0_7_26), .ZN(n_0_7_12));
   NOR3_X1 i_0_7_15 (.A1(n_0_7_44), .A2(n_0_3), .A3(n_0_7_37), .ZN(n_0_7_13));
   AND2_X1 i_0_7_16 (.A1(n_0_7_17), .A2(n_0_7_15), .ZN(n_0_7_14));
   OAI21_X1 i_0_7_17 (.A(n_0_7_23), .B1(SFD), .B2(n_0_7_27), .ZN(n_0_7_15));
   INV_X1 i_0_7_18 (.A(n_0_7_17), .ZN(n_0_7_16));
   OAI21_X1 i_0_7_19 (.A(n_0_7_20), .B1(SW), .B2(n_0_7_37), .ZN(n_0_7_17));
   OAI21_X1 i_0_7_20 (.A(n_0_7_18), .B1(n_0_7_45), .B2(n_0_7_30), .ZN(
      next_state_reg[2]));
   OAI22_X1 i_0_7_21 (.A1(n_0_7_27), .A2(n_0_7_22), .B1(n_0_7_31), .B2(n_0_7_19), 
      .ZN(n_0_7_18));
   INV_X1 i_0_7_22 (.A(n_0_7_20), .ZN(n_0_7_19));
   NAND2_X1 i_0_7_23 (.A1(n_0_7_40), .A2(n_0_7_21), .ZN(n_0_7_20));
   NOR2_X1 i_0_7_24 (.A1(n_0_7_41), .A2(n_0_3), .ZN(n_0_7_21));
   INV_X1 i_0_7_25 (.A(n_0_7_23), .ZN(n_0_7_22));
   OAI21_X1 i_0_7_26 (.A(ST[6]), .B1(n_0_7_25), .B2(n_0_7_24), .ZN(n_0_7_23));
   OR3_X1 i_0_7_27 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_7_24));
   AND3_X1 i_0_7_28 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_7_25));
   INV_X1 i_0_7_29 (.A(n_0_7_27), .ZN(n_0_7_26));
   AOI21_X1 i_0_7_30 (.A(ST[6]), .B1(ST[5]), .B2(n_0_7_28), .ZN(n_0_7_27));
   NOR2_X1 i_0_7_31 (.A1(n_0_7_46), .A2(n_0_7_29), .ZN(n_0_7_28));
   NOR3_X1 i_0_7_32 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_7_29));
   INV_X1 i_0_7_33 (.A(n_0_7_31), .ZN(n_0_7_30));
   OAI33_X1 i_0_7_34 (.A1(n_0_1), .A2(n_0_7_40), .A3(n_0_7_36), .B1(n_0_7_33), 
      .B2(n_0_7_32), .B3(n_0_7_35), .ZN(n_0_7_31));
   NAND2_X1 i_0_7_35 (.A1(n_0_7_44), .A2(n_0_7_43), .ZN(n_0_7_32));
   NOR2_X1 i_0_7_36 (.A1(n_0_7_42), .A2(n_0_7_34), .ZN(n_0_7_33));
   NOR2_X1 i_0_7_37 (.A1(n_0_1), .A2(n_0_7_39), .ZN(n_0_7_34));
   NOR3_X1 i_0_7_38 (.A1(n_0_7_41), .A2(n_0_7_39), .A3(n_0_7_40), .ZN(n_0_7_35));
   NOR2_X1 i_0_7_39 (.A1(n_0_7_44), .A2(n_0_3), .ZN(n_0_7_36));
   INV_X1 i_0_7_40 (.A(n_0_7_38), .ZN(n_0_7_37));
   NOR2_X1 i_0_7_41 (.A1(n_0_1), .A2(n_0_7_40), .ZN(n_0_7_38));
   INV_X1 i_0_7_42 (.A(n_0_3), .ZN(n_0_7_39));
   INV_X1 i_0_7_43 (.A(n_0_2), .ZN(n_0_7_40));
   INV_X1 i_0_7_44 (.A(n_0_1), .ZN(n_0_7_41));
   INV_X1 i_0_7_45 (.A(SFD), .ZN(n_0_7_42));
   INV_X1 i_0_7_46 (.A(SRD), .ZN(n_0_7_43));
   INV_X1 i_0_7_47 (.A(SFA), .ZN(n_0_7_44));
   INV_X1 i_0_7_48 (.A(SW), .ZN(n_0_7_45));
   INV_X1 i_0_7_49 (.A(ST[4]), .ZN(n_0_7_46));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_1));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_2));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(display[0]), .Z(n_0_3));
   DFFR_X2 \current_state_reg[0]  (.D(next_state_reg[0]), .RN(n_0_0), .CK(clk), 
      .Q(display[0]), .QN());
endmodule
