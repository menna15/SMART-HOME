/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 00:09:22 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1707016292 */

module Combined56_v1(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_1;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_2;
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

   DFF_X1 \current_state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(display[0]), .QN());
   NOR3_X1 i_0_0_0 (.A1(display[1]), .A2(n_0_0_24), .A3(n_0_0_37), .ZN(fdoor));
   AOI211_X1 i_0_0_1 (.A(n_0_0_41), .B(display[0]), .C1(n_0_0_42), .C2(n_0_0_38), 
      .ZN(rdoor));
   AND2_X1 i_0_0_2 (.A1(SW), .A2(n_0_0_35), .ZN(winbuzz));
   NOR4_X1 i_0_0_3 (.A1(n_0_0_41), .A2(n_0_0_40), .A3(display[2]), .A4(n_0_0_39), 
      .ZN(alarmbuzz));
   NOR3_X1 i_0_0_4 (.A1(n_0_0_42), .A2(display[1]), .A3(n_0_0_40), .ZN(heater));
   NOR2_X1 i_0_0_5 (.A1(Rst), .A2(n_0_0_0), .ZN(n_0_0));
   AOI22_X1 i_0_0_6 (.A1(n_0_0_7), .A2(n_0_0_6), .B1(n_0_0_5), .B2(n_0_0_1), 
      .ZN(n_0_0_0));
   OAI33_X1 i_0_0_7 (.A1(n_0_0_14), .A2(n_0_0_4), .A3(n_0_0_28), .B1(n_0_0_25), 
      .B2(n_0_0_13), .B3(n_0_0_2), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_8 (.A(SFD), .B1(n_0_0_38), .B2(n_0_0_3), .ZN(n_0_0_2));
   NAND2_X1 i_0_0_9 (.A1(n_0_0_39), .A2(SW), .ZN(n_0_0_3));
   AOI21_X1 i_0_0_10 (.A(display[0]), .B1(display[2]), .B2(n_0_0_41), .ZN(
      n_0_0_4));
   OAI221_X1 i_0_0_11 (.A(n_0_0_37), .B1(ST[6]), .B2(n_0_0_33), .C1(n_0_0_39), 
      .C2(SRD), .ZN(n_0_0_5));
   OAI33_X1 i_0_0_12 (.A1(display[2]), .A2(n_0_0_41), .A3(display[0]), .B1(
      display[1]), .B2(n_0_0_24), .B3(SRD), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_13 (.A(n_0_0_39), .B1(SW), .B2(n_0_0_17), .ZN(n_0_0_7));
   AOI21_X1 i_0_0_14 (.A(Rst), .B1(n_0_0_9), .B2(n_0_0_8), .ZN(n_0_1));
   NAND4_X1 i_0_0_15 (.A1(n_0_0_42), .A2(display[1]), .A3(n_0_0_40), .A4(SFA), 
      .ZN(n_0_0_8));
   OAI21_X1 i_0_0_16 (.A(n_0_0_10), .B1(n_0_0_28), .B2(n_0_0_22), .ZN(n_0_0_9));
   OAI21_X1 i_0_0_17 (.A(n_0_0_11), .B1(n_0_0_16), .B2(n_0_0_14), .ZN(n_0_0_10));
   OAI21_X1 i_0_0_18 (.A(n_0_0_12), .B1(n_0_0_22), .B2(n_0_0_18), .ZN(n_0_0_11));
   NOR2_X1 i_0_0_19 (.A1(n_0_0_21), .A2(n_0_0_13), .ZN(n_0_0_12));
   AOI21_X1 i_0_0_20 (.A(cooler), .B1(n_0_0_41), .B2(n_0_0_36), .ZN(n_0_0_13));
   NOR2_X1 i_0_0_21 (.A1(n_0_0_41), .A2(n_0_0_36), .ZN(cooler));
   NOR2_X1 i_0_0_22 (.A1(n_0_0_35), .A2(n_0_0_15), .ZN(n_0_0_14));
   NOR3_X1 i_0_0_23 (.A1(display[2]), .A2(n_0_0_41), .A3(SW), .ZN(n_0_0_15));
   INV_X1 i_0_0_24 (.A(n_0_0_17), .ZN(n_0_0_16));
   OAI21_X1 i_0_0_25 (.A(n_0_0_29), .B1(SFD), .B2(n_0_0_32), .ZN(n_0_0_17));
   AOI221_X1 i_0_0_26 (.A(Rst), .B1(n_0_0_29), .B2(n_0_0_18), .C1(n_0_0_27), 
      .C2(n_0_0_19), .ZN(n_0_2));
   NOR2_X1 i_0_0_27 (.A1(SW), .A2(n_0_0_32), .ZN(n_0_0_18));
   INV_X1 i_0_0_28 (.A(n_0_0_20), .ZN(n_0_0_19));
   OAI33_X1 i_0_0_29 (.A1(display[2]), .A2(n_0_0_41), .A3(n_0_0_26), .B1(
      n_0_0_22), .B2(n_0_0_21), .B3(n_0_0_23), .ZN(n_0_0_20));
   NOR2_X1 i_0_0_30 (.A1(n_0_0_37), .A2(n_0_0_25), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_31 (.A1(n_0_0_39), .A2(n_0_0_38), .ZN(n_0_0_22));
   NOR3_X1 i_0_0_32 (.A1(n_0_0_41), .A2(n_0_0_40), .A3(n_0_0_25), .ZN(n_0_0_23));
   INV_X1 i_0_0_33 (.A(n_0_0_25), .ZN(n_0_0_24));
   NOR2_X1 i_0_0_34 (.A1(display[2]), .A2(n_0_0_40), .ZN(n_0_0_25));
   NOR2_X1 i_0_0_35 (.A1(display[0]), .A2(n_0_0_39), .ZN(n_0_0_26));
   OAI21_X1 i_0_0_36 (.A(n_0_0_35), .B1(n_0_0_32), .B2(n_0_0_28), .ZN(n_0_0_27));
   INV_X1 i_0_0_37 (.A(n_0_0_29), .ZN(n_0_0_28));
   OAI21_X1 i_0_0_38 (.A(ST[6]), .B1(n_0_0_31), .B2(n_0_0_30), .ZN(n_0_0_29));
   OR3_X1 i_0_0_39 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_30));
   AND3_X1 i_0_0_40 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_31));
   NOR2_X1 i_0_0_41 (.A1(ST[6]), .A2(n_0_0_33), .ZN(n_0_0_32));
   AND3_X1 i_0_0_42 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_34), .ZN(n_0_0_33));
   OR3_X1 i_0_0_43 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_34));
   NOR2_X1 i_0_0_44 (.A1(display[1]), .A2(n_0_0_36), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_45 (.A1(display[2]), .A2(n_0_0_40), .ZN(n_0_0_36));
   INV_X1 i_0_0_46 (.A(SFD), .ZN(n_0_0_37));
   INV_X1 i_0_0_47 (.A(SRD), .ZN(n_0_0_38));
   INV_X1 i_0_0_48 (.A(SFA), .ZN(n_0_0_39));
   INV_X1 i_0_0_49 (.A(display[0]), .ZN(n_0_0_40));
   INV_X1 i_0_0_50 (.A(display[1]), .ZN(n_0_0_41));
   INV_X1 i_0_0_51 (.A(display[2]), .ZN(n_0_0_42));
endmodule
