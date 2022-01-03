/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 13:25:10 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3781226781 */

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
   wire n_0_0_9;
   wire n_0_4;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_5;
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

   DFF_X1 \current_state_reg[2]  (.D(n_0_5), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_4), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_3), .CK(Clk), .Q(display[0]), .QN());
   DLH_X1 cooler_reg (.D(n_0_2), .G(n_0_1), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_0), .G(n_0_1), .Q(heater));
   NOR3_X1 i_0_0_0 (.A1(n_0_0_40), .A2(display[1]), .A3(n_0_0_38), .ZN(n_0_0));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_27), .A2(n_0_0_5), .ZN(n_0_1));
   NOR3_X1 i_0_0_2 (.A1(n_0_0_39), .A2(display[0]), .A3(n_0_0_40), .ZN(n_0_2));
   NOR2_X1 i_0_0_3 (.A1(n_0_0_39), .A2(display[0]), .ZN(rdoor));
   NOR2_X1 i_0_0_4 (.A1(Rst), .A2(n_0_0_0), .ZN(n_0_3));
   AOI22_X1 i_0_0_5 (.A1(n_0_0_9), .A2(n_0_0_7), .B1(n_0_0_6), .B2(n_0_0_1), 
      .ZN(n_0_0_0));
   OAI33_X1 i_0_0_6 (.A1(winbuzz), .A2(n_0_0_3), .A3(n_0_0_5), .B1(n_0_0_19), 
      .B2(n_0_0_2), .B3(n_0_0_29), .ZN(n_0_0_1));
   NOR2_X1 i_0_0_7 (.A1(winbuzz), .A2(alarmbuzz), .ZN(n_0_0_2));
   NOR2_X1 i_0_0_8 (.A1(n_0_0_39), .A2(n_0_0_26), .ZN(alarmbuzz));
   NOR2_X1 i_0_0_9 (.A1(SFD), .A2(n_0_0_4), .ZN(n_0_0_3));
   AOI21_X1 i_0_0_10 (.A(SRD), .B1(n_0_0_37), .B2(SW), .ZN(n_0_0_4));
   OAI221_X1 i_0_0_11 (.A(n_0_0_26), .B1(n_0_0_39), .B2(n_0_0_38), .C1(
      display[2]), .C2(n_0_0_39), .ZN(n_0_0_5));
   OAI21_X1 i_0_0_12 (.A(n_0_0_15), .B1(SRD), .B2(n_0_0_37), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_13 (.A(n_0_0_12), .B1(SRD), .B2(n_0_0_8), .ZN(n_0_0_7));
   INV_X1 i_0_0_14 (.A(fdoor), .ZN(n_0_0_8));
   NOR2_X1 i_0_0_15 (.A1(display[1]), .A2(n_0_0_26), .ZN(fdoor));
   OAI21_X1 i_0_0_16 (.A(n_0_0_37), .B1(SW), .B2(n_0_0_41), .ZN(n_0_0_9));
   NOR2_X1 i_0_0_17 (.A1(Rst), .A2(n_0_0_10), .ZN(n_0_4));
   INV_X1 i_0_0_18 (.A(n_0_0_11), .ZN(n_0_0_10));
   OAI22_X1 i_0_0_19 (.A1(n_0_0_17), .A2(n_0_0_13), .B1(n_0_0_37), .B2(n_0_0_12), 
      .ZN(n_0_0_11));
   NAND2_X1 i_0_0_20 (.A1(n_0_0_38), .A2(n_0_0_22), .ZN(n_0_0_12));
   AOI22_X1 i_0_0_21 (.A1(n_0_0_24), .A2(n_0_0_16), .B1(n_0_0_41), .B2(n_0_0_14), 
      .ZN(n_0_0_13));
   NOR2_X1 i_0_0_22 (.A1(n_0_0_19), .A2(n_0_0_16), .ZN(n_0_0_14));
   NOR2_X1 i_0_0_23 (.A1(SFD), .A2(n_0_0_33), .ZN(n_0_0_15));
   NOR2_X1 i_0_0_24 (.A1(winbuzz), .A2(n_0_0_22), .ZN(n_0_0_16));
   INV_X1 i_0_0_25 (.A(n_0_0_18), .ZN(n_0_0_17));
   OAI21_X1 i_0_0_26 (.A(n_0_0_23), .B1(n_0_0_30), .B2(n_0_0_19), .ZN(n_0_0_18));
   NOR2_X1 i_0_0_27 (.A1(n_0_0_36), .A2(winbuzz), .ZN(n_0_0_19));
   AOI211_X1 i_0_0_28 (.A(Rst), .B(n_0_0_20), .C1(n_0_0_36), .C2(n_0_0_28), 
      .ZN(n_0_5));
   AOI211_X1 i_0_0_29 (.A(n_0_0_21), .B(n_0_0_27), .C1(n_0_0_24), .C2(n_0_0_23), 
      .ZN(n_0_0_20));
   AOI211_X1 i_0_0_30 (.A(display[2]), .B(n_0_0_39), .C1(n_0_0_38), .C2(SFA), 
      .ZN(n_0_0_21));
   NOR2_X1 i_0_0_31 (.A1(display[2]), .A2(n_0_0_39), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_32 (.A1(SRD), .A2(SFA), .ZN(n_0_0_23));
   OAI21_X1 i_0_0_33 (.A(n_0_0_26), .B1(SFD), .B2(n_0_0_25), .ZN(n_0_0_24));
   NOR2_X1 i_0_0_34 (.A1(n_0_0_39), .A2(n_0_0_38), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_35 (.A1(n_0_0_40), .A2(display[0]), .ZN(n_0_0_26));
   NOR4_X1 i_0_0_36 (.A1(n_0_0_40), .A2(display[1]), .A3(display[0]), .A4(
      n_0_0_28), .ZN(n_0_0_27));
   NOR3_X1 i_0_0_37 (.A1(n_0_0_40), .A2(display[1]), .A3(display[0]), .ZN(
      winbuzz));
   NOR2_X1 i_0_0_38 (.A1(n_0_0_33), .A2(n_0_0_29), .ZN(n_0_0_28));
   INV_X1 i_0_0_39 (.A(n_0_0_30), .ZN(n_0_0_29));
   OAI21_X1 i_0_0_40 (.A(ST[6]), .B1(n_0_0_32), .B2(n_0_0_31), .ZN(n_0_0_30));
   OR3_X1 i_0_0_41 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_31));
   AND3_X1 i_0_0_42 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_32));
   NOR2_X1 i_0_0_43 (.A1(ST[6]), .A2(n_0_0_34), .ZN(n_0_0_33));
   AND3_X1 i_0_0_44 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_35), .ZN(n_0_0_34));
   OR3_X1 i_0_0_45 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_35));
   INV_X1 i_0_0_46 (.A(SW), .ZN(n_0_0_36));
   INV_X1 i_0_0_47 (.A(SFA), .ZN(n_0_0_37));
   INV_X1 i_0_0_48 (.A(display[0]), .ZN(n_0_0_38));
   INV_X1 i_0_0_49 (.A(display[1]), .ZN(n_0_0_39));
   INV_X1 i_0_0_50 (.A(display[2]), .ZN(n_0_0_40));
   AOI21_X1 i_0_0_51 (.A(n_0_0_33), .B1(SFD), .B2(n_0_0_30), .ZN(n_0_0_41));
endmodule
