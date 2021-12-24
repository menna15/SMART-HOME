/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 24 14:11:11 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1372776250 */

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

   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_5_0;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_0;
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
   wire n_0_1;
   wire n_0_7_10;
   wire n_0_7_11;
   wire n_0_7_12;
   wire n_0_7_13;
   wire n_0_7_14;
   wire n_0_7_15;
   wire n_0_7_16;
   wire n_0_7_17;
   wire n_0_2;
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
   wire n_0_3;
   wire n_0_4;

   DFF_X2 \current_state_reg[0]  (.D(n_0_0), .CK(clk), .Q(display[0]), .QN());
   DFF_X2 \current_state_reg[2]  (.D(n_0_2), .CK(clk), .Q(display[2]), .QN());
   DFF_X2 \current_state_reg[1]  (.D(n_0_1), .CK(clk), .Q(display[1]), .QN());
   NAND2_X1 i_0_1_0 (.A1(display[1]), .A2(display[2]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[0]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(display[0]), .A2(display[2]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(display[1]), .A2(display[0]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   NOR2_X1 i_0_4_0 (.A1(n_0_4_0), .A2(display[1]), .ZN(winbuzz));
   NAND2_X1 i_0_4_1 (.A1(display[2]), .A2(n_0_4_1), .ZN(n_0_4_0));
   INV_X1 i_0_4_2 (.A(display[0]), .ZN(n_0_4_1));
   INV_X1 i_0_5_0 (.A(display[1]), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_1 (.A1(n_0_5_0), .A2(display[0]), .ZN(rdoor));
   INV_X1 i_0_6_0 (.A(display[2]), .ZN(n_0_6_0));
   NAND2_X1 i_0_6_1 (.A1(n_0_6_0), .A2(display[0]), .ZN(n_0_6_1));
   NOR2_X1 i_0_6_2 (.A1(n_0_6_1), .A2(display[1]), .ZN(fdoor));
   NOR2_X1 i_0_7_0 (.A1(Rst), .A2(n_0_7_0), .ZN(n_0_0));
   AOI222_X1 i_0_7_1 (.A1(n_0_7_15), .A2(n_0_7_6), .B1(n_0_7_13), .B2(n_0_7_4), 
      .C1(n_0_7_2), .C2(n_0_7_1), .ZN(n_0_7_0));
   OAI21_X1 i_0_7_2 (.A(n_0_7_45), .B1(SW), .B2(n_0_7_12), .ZN(n_0_7_1));
   OAI22_X1 i_0_7_3 (.A1(n_0_4), .A2(n_0_7_35), .B1(SRD), .B2(n_0_7_3), .ZN(
      n_0_7_2));
   NAND2_X1 i_0_7_4 (.A1(n_0_7_42), .A2(n_0_7_31), .ZN(n_0_7_3));
   AOI21_X1 i_0_7_5 (.A(n_0_7_5), .B1(n_0_7_41), .B2(n_0_7_20), .ZN(n_0_7_4));
   AOI21_X1 i_0_7_6 (.A(n_0_7_38), .B1(n_0_7_25), .B2(n_0_7_9), .ZN(n_0_7_5));
   NOR2_X1 i_0_7_7 (.A1(n_0_7_31), .A2(n_0_7_7), .ZN(n_0_7_6));
   AOI21_X1 i_0_7_8 (.A(n_0_7_9), .B1(n_0_7_38), .B2(n_0_7_8), .ZN(n_0_7_7));
   NOR2_X1 i_0_7_9 (.A1(SW), .A2(SRD), .ZN(n_0_7_8));
   OAI21_X1 i_0_7_10 (.A(n_0_7_44), .B1(n_0_7_45), .B2(SRD), .ZN(n_0_7_9));
   NOR3_X1 i_0_7_11 (.A1(n_0_7_11), .A2(n_0_7_10), .A3(Rst), .ZN(n_0_1));
   NOR3_X1 i_0_7_12 (.A1(SRD), .A2(n_0_7_24), .A3(SFA), .ZN(n_0_7_10));
   AOI221_X1 i_0_7_13 (.A(n_0_7_14), .B1(n_0_7_36), .B2(n_0_7_34), .C1(n_0_7_13), 
      .C2(n_0_7_12), .ZN(n_0_7_11));
   AOI21_X1 i_0_7_14 (.A(n_0_7_38), .B1(SFD), .B2(n_0_7_25), .ZN(n_0_7_12));
   OAI21_X1 i_0_7_15 (.A(n_0_7_20), .B1(SW), .B2(n_0_7_35), .ZN(n_0_7_13));
   NOR3_X1 i_0_7_16 (.A1(n_0_7_30), .A2(n_0_7_17), .A3(n_0_7_16), .ZN(n_0_7_14));
   INV_X1 i_0_7_17 (.A(n_0_7_16), .ZN(n_0_7_15));
   OAI21_X1 i_0_7_18 (.A(n_0_7_20), .B1(n_0_7_42), .B2(n_0_7_21), .ZN(n_0_7_16));
   NOR3_X1 i_0_7_19 (.A1(SRD), .A2(n_0_7_37), .A3(SFA), .ZN(n_0_7_17));
   AOI211_X1 i_0_7_20 (.A(n_0_7_18), .B(Rst), .C1(n_0_7_37), .C2(n_0_7_23), 
      .ZN(n_0_2));
   INV_X1 i_0_7_21 (.A(n_0_7_19), .ZN(n_0_7_18));
   OAI21_X1 i_0_7_22 (.A(n_0_7_28), .B1(n_0_7_22), .B2(n_0_7_20), .ZN(n_0_7_19));
   NAND2_X1 i_0_7_23 (.A1(n_0_7_42), .A2(n_0_7_21), .ZN(n_0_7_20));
   NOR2_X1 i_0_7_24 (.A1(n_0_7_43), .A2(n_0_4), .ZN(n_0_7_21));
   NOR2_X1 i_0_7_25 (.A1(n_0_7_38), .A2(n_0_7_24), .ZN(n_0_7_22));
   NOR2_X1 i_0_7_26 (.A1(n_0_7_28), .A2(n_0_7_24), .ZN(n_0_7_23));
   INV_X1 i_0_7_27 (.A(n_0_7_25), .ZN(n_0_7_24));
   OAI21_X1 i_0_7_28 (.A(ST[6]), .B1(n_0_7_27), .B2(n_0_7_26), .ZN(n_0_7_25));
   OR3_X1 i_0_7_29 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_7_26));
   AND3_X1 i_0_7_30 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_7_27));
   AOI22_X1 i_0_7_31 (.A1(n_0_7_36), .A2(n_0_7_33), .B1(n_0_7_45), .B2(n_0_7_29), 
      .ZN(n_0_7_28));
   NOR3_X1 i_0_7_32 (.A1(n_0_7_32), .A2(n_0_7_30), .A3(SRD), .ZN(n_0_7_29));
   NOR2_X1 i_0_7_33 (.A1(n_0_7_44), .A2(n_0_7_31), .ZN(n_0_7_30));
   NOR2_X1 i_0_7_34 (.A1(n_0_3), .A2(n_0_7_41), .ZN(n_0_7_31));
   NOR3_X1 i_0_7_35 (.A1(n_0_7_43), .A2(n_0_7_41), .A3(n_0_7_42), .ZN(n_0_7_32));
   INV_X1 i_0_7_36 (.A(n_0_7_34), .ZN(n_0_7_33));
   NOR2_X1 i_0_7_37 (.A1(n_0_7_45), .A2(n_0_4), .ZN(n_0_7_34));
   INV_X1 i_0_7_38 (.A(n_0_7_36), .ZN(n_0_7_35));
   NOR2_X1 i_0_7_39 (.A1(n_0_3), .A2(n_0_7_42), .ZN(n_0_7_36));
   NOR2_X1 i_0_7_40 (.A1(SW), .A2(n_0_7_38), .ZN(n_0_7_37));
   AOI21_X1 i_0_7_41 (.A(ST[6]), .B1(ST[5]), .B2(n_0_7_39), .ZN(n_0_7_38));
   NOR2_X1 i_0_7_42 (.A1(n_0_7_46), .A2(n_0_7_40), .ZN(n_0_7_39));
   NOR3_X1 i_0_7_43 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_7_40));
   INV_X1 i_0_7_44 (.A(n_0_4), .ZN(n_0_7_41));
   INV_X1 i_0_7_45 (.A(display[1]), .ZN(n_0_7_42));
   INV_X1 i_0_7_46 (.A(n_0_3), .ZN(n_0_7_43));
   INV_X1 i_0_7_47 (.A(SFD), .ZN(n_0_7_44));
   INV_X1 i_0_7_48 (.A(SFA), .ZN(n_0_7_45));
   INV_X1 i_0_7_49 (.A(ST[4]), .ZN(n_0_7_46));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_3));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[0]), .Z(n_0_4));
endmodule
