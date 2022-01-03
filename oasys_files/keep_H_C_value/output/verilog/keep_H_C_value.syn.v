/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 11:31:37 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1039312218 */

module keep_H_C_value(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_4;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_5;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
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

   DFF_X1 \current_state_reg[2]  (.D(n_0_5), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_4), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_3), .CK(Clk), .Q(display[0]), .QN());
   DLH_X1 cooler_reg (.D(n_0_2), .G(n_0_1), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_0), .G(n_0_1), .Q(heater));
   AND3_X1 i_0_0_0 (.A1(n_0_0_41), .A2(display[0]), .A3(display[2]), .ZN(n_0_0));
   AOI211_X1 i_0_0_1 (.A(n_0_0_42), .B(n_0_0_29), .C1(display[0]), .C2(
      display[1]), .ZN(n_0_1));
   NOR3_X1 i_0_0_2 (.A1(n_0_0_42), .A2(n_0_0_41), .A3(display[0]), .ZN(n_0_2));
   NOR2_X1 i_0_0_3 (.A1(n_0_0_24), .A2(display[1]), .ZN(fdoor));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_25), .A2(display[2]), .ZN(alarmbuzz));
   NOR2_X1 i_0_0_5 (.A1(Rst), .A2(n_0_0_0), .ZN(n_0_3));
   AOI21_X1 i_0_0_6 (.A(n_0_0_5), .B1(n_0_0_4), .B2(n_0_0_1), .ZN(n_0_0_0));
   OAI33_X1 i_0_0_7 (.A1(n_0_0_12), .A2(rdoor), .A3(n_0_0_35), .B1(n_0_0_2), 
      .B2(n_0_0_16), .B3(n_0_0_23), .ZN(n_0_0_1));
   NOR2_X1 i_0_0_8 (.A1(SFD), .A2(n_0_0_3), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_9 (.A(SRD), .B1(n_0_0_39), .B2(SW), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_10 (.A(n_0_0_14), .B1(n_0_0_39), .B2(SRD), .ZN(n_0_0_4));
   NOR3_X1 i_0_0_11 (.A1(display[2]), .A2(n_0_0_8), .A3(n_0_0_6), .ZN(n_0_0_5));
   AOI21_X1 i_0_0_12 (.A(rdoor), .B1(n_0_0_7), .B2(display[0]), .ZN(n_0_0_6));
   NOR2_X1 i_0_0_13 (.A1(display[1]), .A2(SRD), .ZN(n_0_0_7));
   NOR2_X1 i_0_0_14 (.A1(n_0_0_41), .A2(display[0]), .ZN(rdoor));
   AOI21_X1 i_0_0_15 (.A(SFA), .B1(n_0_0_13), .B2(n_0_0_38), .ZN(n_0_0_8));
   NOR2_X1 i_0_0_16 (.A1(Rst), .A2(n_0_0_9), .ZN(n_0_4));
   AOI22_X1 i_0_0_17 (.A1(n_0_0_11), .A2(n_0_0_10), .B1(n_0_0_28), .B2(n_0_0_26), 
      .ZN(n_0_0_9));
   OR3_X1 i_0_0_18 (.A1(SRD), .A2(SFA), .A3(n_0_0_35), .ZN(n_0_0_10));
   OAI22_X1 i_0_0_19 (.A1(n_0_0_12), .A2(n_0_0_13), .B1(n_0_0_15), .B2(n_0_0_16), 
      .ZN(n_0_0_11));
   AOI21_X1 i_0_0_20 (.A(winbuzz), .B1(n_0_0_26), .B2(n_0_0_38), .ZN(n_0_0_12));
   NOR2_X1 i_0_0_21 (.A1(n_0_0_35), .A2(n_0_0_14), .ZN(n_0_0_13));
   NOR2_X1 i_0_0_22 (.A1(SFD), .A2(n_0_0_32), .ZN(n_0_0_14));
   NAND2_X1 i_0_0_23 (.A1(n_0_0_22), .A2(n_0_0_17), .ZN(n_0_0_15));
   OAI211_X1 i_0_0_24 (.A(n_0_0_27), .B(n_0_0_25), .C1(n_0_0_30), .C2(display[0]), 
      .ZN(n_0_0_16));
   OAI21_X1 i_0_0_25 (.A(n_0_0_21), .B1(n_0_0_32), .B2(SW), .ZN(n_0_0_17));
   AOI211_X1 i_0_0_26 (.A(Rst), .B(n_0_0_18), .C1(n_0_0_31), .C2(n_0_0_38), 
      .ZN(n_0_5));
   AOI21_X1 i_0_0_27 (.A(n_0_0_19), .B1(n_0_0_29), .B2(display[2]), .ZN(n_0_0_18));
   OAI21_X1 i_0_0_28 (.A(n_0_0_20), .B1(n_0_0_27), .B2(n_0_0_28), .ZN(n_0_0_19));
   OAI211_X1 i_0_0_29 (.A(n_0_0_22), .B(n_0_0_21), .C1(n_0_0_42), .C2(n_0_0_25), 
      .ZN(n_0_0_20));
   NOR2_X1 i_0_0_30 (.A1(SRD), .A2(SFA), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_31 (.A1(n_0_0_24), .A2(SFD), .ZN(n_0_0_22));
   INV_X1 i_0_0_32 (.A(n_0_0_24), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_33 (.A1(n_0_0_42), .A2(display[0]), .ZN(n_0_0_24));
   NAND2_X1 i_0_0_34 (.A1(display[1]), .A2(display[0]), .ZN(n_0_0_25));
   INV_X1 i_0_0_35 (.A(n_0_0_27), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_36 (.A1(n_0_0_42), .A2(display[1]), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_37 (.A1(n_0_0_39), .A2(display[0]), .ZN(n_0_0_28));
   NOR3_X1 i_0_0_38 (.A1(display[1]), .A2(display[0]), .A3(n_0_0_31), .ZN(
      n_0_0_29));
   NOR2_X1 i_0_0_39 (.A1(n_0_0_30), .A2(display[0]), .ZN(winbuzz));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_41), .A2(display[2]), .ZN(n_0_0_30));
   NOR2_X1 i_0_0_41 (.A1(n_0_0_35), .A2(n_0_0_32), .ZN(n_0_0_31));
   AOI21_X1 i_0_0_42 (.A(ST[6]), .B1(n_0_0_34), .B2(n_0_0_33), .ZN(n_0_0_32));
   AND2_X1 i_0_0_43 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_33));
   OR3_X1 i_0_0_44 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_34));
   AOI21_X1 i_0_0_45 (.A(n_0_0_40), .B1(n_0_0_36), .B2(n_0_0_37), .ZN(n_0_0_35));
   NOR3_X1 i_0_0_46 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_36));
   NAND3_X1 i_0_0_47 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_37));
   INV_X1 i_0_0_48 (.A(SW), .ZN(n_0_0_38));
   INV_X1 i_0_0_49 (.A(SFA), .ZN(n_0_0_39));
   INV_X1 i_0_0_50 (.A(ST[6]), .ZN(n_0_0_40));
   INV_X1 i_0_0_51 (.A(display[1]), .ZN(n_0_0_41));
   INV_X1 i_0_0_52 (.A(display[2]), .ZN(n_0_0_42));
endmodule
