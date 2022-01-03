/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 06:16:26 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1039528583 */

module Separate56(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
      alarmbuzz, heater, cooler, display);
   input Clk;
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

   wire n_0_2;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_1;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;

   DFF_X1 \current_state_reg[2]  (.D(n_0_1), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_0), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_2), .CK(Clk), .Q(display[0]), .QN());
   NOR2_X1 i_0_0_0 (.A1(n_0_0_39), .A2(display[1]), .ZN(fdoor));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_42), .A2(n_0_0_39), .ZN(alarmbuzz));
   NOR2_X1 i_0_0_2 (.A1(n_0_0_41), .A2(n_0_0_16), .ZN(heater));
   OAI21_X1 i_0_0_3 (.A(n_0_0_0), .B1(n_0_0_4), .B2(Rst), .ZN(n_0_2));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_1), .ZN(n_0_0_0));
   NOR3_X1 i_0_0_5 (.A1(display[2]), .A2(n_0_0_2), .A3(n_0_0_27), .ZN(n_0_0_1));
   AOI22_X1 i_0_0_6 (.A1(SFA), .A2(n_0_0_44), .B1(n_0_0_41), .B2(SFD), .ZN(
      n_0_0_2));
   AOI21_X1 i_0_0_7 (.A(n_0_0_12), .B1(display[2]), .B2(SRD), .ZN(n_0_0_3));
   AOI221_X1 i_0_0_8 (.A(n_0_0_5), .B1(n_0_0_8), .B2(n_0_0_30), .C1(SFD), 
      .C2(cooler), .ZN(n_0_0_4));
   NOR3_X1 i_0_0_9 (.A1(n_0_0_34), .A2(n_0_0_20), .A3(n_0_0_6), .ZN(n_0_0_5));
   AOI22_X1 i_0_0_10 (.A1(n_0_0_7), .A2(SFD), .B1(n_0_0_44), .B2(SFA), .ZN(
      n_0_0_6));
   OAI211_X1 i_0_0_11 (.A(n_0_0_43), .B(n_0_0_42), .C1(SW), .C2(SRD), .ZN(
      n_0_0_7));
   OAI21_X1 i_0_0_12 (.A(n_0_0_9), .B1(n_0_0_16), .B2(display[0]), .ZN(n_0_0_8));
   OAI211_X1 i_0_0_13 (.A(n_0_0_46), .B(n_0_0_10), .C1(n_0_0_24), .C2(n_0_0_44), 
      .ZN(n_0_0_9));
   NAND3_X1 i_0_0_14 (.A1(display[2]), .A2(display[1]), .A3(display[0]), 
      .ZN(n_0_0_10));
   NOR2_X1 i_0_0_15 (.A1(n_0_0_16), .A2(display[0]), .ZN(winbuzz));
   OR4_X1 i_0_0_16 (.A1(n_0_0_17), .A2(n_0_0_14), .A3(n_0_0_13), .A4(n_0_0_11), 
      .ZN(n_0_0));
   AOI21_X1 i_0_0_17 (.A(n_0_0_12), .B1(display[2]), .B2(SFD), .ZN(n_0_0_11));
   NAND3_X1 i_0_0_18 (.A1(rdoor), .A2(n_0_0_48), .A3(SFA), .ZN(n_0_0_12));
   AOI211_X1 i_0_0_19 (.A(n_0_0_39), .B(n_0_0_27), .C1(n_0_0_45), .C2(n_0_0_44), 
      .ZN(n_0_0_13));
   AOI211_X1 i_0_0_20 (.A(Rst), .B(n_0_0_33), .C1(n_0_0_16), .C2(n_0_0_15), 
      .ZN(n_0_0_14));
   OAI21_X1 i_0_0_21 (.A(n_0_0_46), .B1(n_0_0_38), .B2(n_0_0_24), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_22 (.A1(n_0_0_42), .A2(display[2]), .ZN(n_0_0_16));
   NOR3_X1 i_0_0_23 (.A1(Rst), .A2(SFD), .A3(n_0_0_18), .ZN(n_0_0_17));
   AOI22_X1 i_0_0_24 (.A1(n_0_0_40), .A2(n_0_0_19), .B1(cooler), .B2(SRD), 
      .ZN(n_0_0_18));
   OAI22_X1 i_0_0_25 (.A1(display[1]), .A2(n_0_0_22), .B1(n_0_0_20), .B2(
      n_0_0_30), .ZN(n_0_0_19));
   AOI21_X1 i_0_0_26 (.A(n_0_0_42), .B1(n_0_0_43), .B2(n_0_0_46), .ZN(n_0_0_20));
   NOR3_X1 i_0_0_27 (.A1(n_0_0_43), .A2(n_0_0_42), .A3(display[0]), .ZN(cooler));
   NOR2_X1 i_0_0_28 (.A1(n_0_0_42), .A2(display[0]), .ZN(rdoor));
   OAI221_X1 i_0_0_29 (.A(n_0_0_23), .B1(n_0_0_21), .B2(n_0_0_27), .C1(n_0_0_25), 
      .C2(n_0_0_40), .ZN(n_0_1));
   AOI22_X1 i_0_0_30 (.A1(display[2]), .A2(n_0_0_34), .B1(n_0_0_30), .B2(
      n_0_0_22), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_31 (.A1(n_0_0_43), .A2(display[0]), .ZN(n_0_0_22));
   OAI211_X1 i_0_0_32 (.A(n_0_0_28), .B(n_0_0_24), .C1(n_0_0_45), .C2(display[0]), 
      .ZN(n_0_0_23));
   NOR2_X1 i_0_0_33 (.A1(n_0_0_42), .A2(display[2]), .ZN(n_0_0_24));
   AOI21_X1 i_0_0_34 (.A(n_0_0_26), .B1(n_0_0_28), .B2(n_0_0_38), .ZN(n_0_0_25));
   NOR3_X1 i_0_0_35 (.A1(SFD), .A2(n_0_0_29), .A3(n_0_0_27), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_36 (.A1(n_0_0_48), .A2(n_0_0_42), .ZN(n_0_0_27));
   AOI21_X1 i_0_0_37 (.A(Rst), .B1(n_0_0_29), .B2(n_0_0_33), .ZN(n_0_0_28));
   NOR2_X1 i_0_0_38 (.A1(SW), .A2(n_0_0_30), .ZN(n_0_0_29));
   AOI21_X1 i_0_0_39 (.A(ST[6]), .B1(n_0_0_32), .B2(n_0_0_31), .ZN(n_0_0_30));
   AND2_X1 i_0_0_40 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_31));
   OR3_X1 i_0_0_41 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_32));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_35), .A2(ST[6]), .ZN(n_0_0_33));
   AOI21_X1 i_0_0_43 (.A(n_0_0_47), .B1(n_0_0_36), .B2(n_0_0_37), .ZN(n_0_0_34));
   NAND2_X1 i_0_0_44 (.A1(n_0_0_36), .A2(n_0_0_37), .ZN(n_0_0_35));
   NOR3_X1 i_0_0_45 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_36));
   NAND3_X1 i_0_0_46 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_37));
   OAI21_X1 i_0_0_47 (.A(n_0_0_39), .B1(display[0]), .B2(SFD), .ZN(n_0_0_38));
   NAND2_X1 i_0_0_48 (.A1(n_0_0_43), .A2(display[0]), .ZN(n_0_0_39));
   NAND2_X1 i_0_0_49 (.A1(n_0_0_45), .A2(n_0_0_44), .ZN(n_0_0_40));
   INV_X1 i_0_0_50 (.A(display[0]), .ZN(n_0_0_41));
   INV_X1 i_0_0_51 (.A(display[1]), .ZN(n_0_0_42));
   INV_X1 i_0_0_52 (.A(display[2]), .ZN(n_0_0_43));
   INV_X1 i_0_0_53 (.A(SRD), .ZN(n_0_0_44));
   INV_X1 i_0_0_54 (.A(SFA), .ZN(n_0_0_45));
   INV_X1 i_0_0_55 (.A(SW), .ZN(n_0_0_46));
   INV_X1 i_0_0_56 (.A(ST[6]), .ZN(n_0_0_47));
   INV_X1 i_0_0_57 (.A(Rst), .ZN(n_0_0_48));
endmodule
