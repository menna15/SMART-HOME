/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 06:18:52 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 386047450 */

module keep_H_C_value_ifelse(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, 
      winbuzz, alarmbuzz, heater, cooler, display);
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

   wire [2:0]state;
   wire n_0_0;
   wire n_0_1;
   wire n_0_3;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_4;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_5;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_2;
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

   DFF_X1 \state_reg[2]  (.D(n_0_5), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_4), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_3), .CK(Clk), .Q(state[0]), .QN());
   DLH_X1 cooler_reg (.D(n_0_2), .G(n_0_1), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_0), .G(n_0_1), .Q(heater));
   NOR2_X1 i_0_0_0 (.A1(n_0_0_37), .A2(n_0_2), .ZN(n_0_0));
   AOI21_X1 i_0_0_1 (.A(n_0_0_39), .B1(n_0_0_27), .B2(n_0_0_19), .ZN(n_0_1));
   NOR2_X1 i_0_0_2 (.A1(n_0_0_22), .A2(state[0]), .ZN(rdoor));
   AOI21_X1 i_0_0_3 (.A(n_0_0_37), .B1(display[1]), .B2(display[2]), .ZN(
      display[0]));
   AOI21_X1 i_0_0_4 (.A(Rst), .B1(n_0_0_0), .B2(n_0_0_6), .ZN(n_0_3));
   AOI211_X1 i_0_0_5 (.A(n_0_0_3), .B(n_0_0_1), .C1(n_0_0_28), .C2(n_0_0_14), 
      .ZN(n_0_0_0));
   AOI221_X1 i_0_0_6 (.A(n_0_0_32), .B1(n_0_0_5), .B2(n_0_0_2), .C1(SW), 
      .C2(n_0_0_39), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_7 (.A(SFD), .B1(display[1]), .B2(display[2]), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_8 (.A(n_0_0_10), .B1(n_0_0_5), .B2(n_0_0_4), .ZN(n_0_0_3));
   OAI22_X1 i_0_0_9 (.A1(n_0_0_26), .A2(n_0_0_7), .B1(n_0_0_23), .B2(SFD), 
      .ZN(n_0_0_4));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_35), .A2(SFA), .ZN(n_0_0_5));
   OAI211_X1 i_0_0_11 (.A(n_0_0_27), .B(n_0_0_7), .C1(fdoor), .C2(n_0_0_28), 
      .ZN(n_0_0_6));
   NOR2_X1 i_0_0_12 (.A1(SRD), .A2(SW), .ZN(n_0_0_7));
   NOR2_X1 i_0_0_13 (.A1(n_0_0_26), .A2(display[1]), .ZN(fdoor));
   AOI21_X1 i_0_0_14 (.A(Rst), .B1(n_0_0_12), .B2(n_0_0_8), .ZN(n_0_4));
   OAI22_X1 i_0_0_15 (.A1(SRD), .A2(SFA), .B1(n_0_0_11), .B2(n_0_0_9), .ZN(
      n_0_0_8));
   AOI21_X1 i_0_0_16 (.A(n_0_0_10), .B1(n_0_0_22), .B2(n_0_0_25), .ZN(n_0_0_9));
   OAI221_X1 i_0_0_17 (.A(n_0_0_21), .B1(n_0_2), .B2(state[0]), .C1(SFA), 
      .C2(n_0_0_22), .ZN(n_0_0_10));
   AOI211_X1 i_0_0_18 (.A(SFD), .B(n_0_0_28), .C1(n_0_0_23), .C2(SW), .ZN(
      n_0_0_11));
   OAI21_X1 i_0_0_19 (.A(n_0_0_32), .B1(n_0_0_14), .B2(n_0_0_13), .ZN(n_0_0_12));
   AOI211_X1 i_0_0_20 (.A(SFD), .B(SW), .C1(n_0_0_39), .C2(state[0]), .ZN(
      n_0_0_13));
   OAI21_X1 i_0_0_21 (.A(n_0_0_15), .B1(n_0_0_22), .B2(SW), .ZN(n_0_0_14));
   OAI21_X1 i_0_0_22 (.A(display[2]), .B1(n_0_0_20), .B2(n_0_0_19), .ZN(n_0_0_15));
   AOI21_X1 i_0_0_23 (.A(Rst), .B1(n_0_0_17), .B2(n_0_0_16), .ZN(n_0_5));
   OAI21_X1 i_0_0_24 (.A(n_0_0_27), .B1(n_0_0_20), .B2(winbuzz), .ZN(n_0_0_16));
   OAI22_X1 i_0_0_25 (.A1(n_0_0_27), .A2(SW), .B1(n_0_0_18), .B2(n_0_0_24), 
      .ZN(n_0_0_17));
   AOI21_X1 i_0_0_26 (.A(n_0_0_22), .B1(SFA), .B2(n_0_0_37), .ZN(n_0_0_18));
   NOR2_X1 i_0_0_27 (.A1(n_0_0_21), .A2(display[2]), .ZN(alarmbuzz));
   NOR2_X1 i_0_0_28 (.A1(n_0_2), .A2(state[0]), .ZN(winbuzz));
   NAND2_X1 i_0_0_29 (.A1(n_0_0_38), .A2(display[2]), .ZN(n_0_2));
   NOR2_X1 i_0_0_30 (.A1(display[1]), .A2(state[0]), .ZN(n_0_0_19));
   INV_X1 i_0_0_31 (.A(n_0_0_21), .ZN(n_0_0_20));
   NAND2_X1 i_0_0_32 (.A1(display[1]), .A2(state[0]), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_33 (.A1(n_0_0_39), .A2(display[1]), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_34 (.A1(n_0_0_38), .A2(display[2]), .ZN(n_0_0_23));
   NOR3_X1 i_0_0_35 (.A1(SRD), .A2(SFA), .A3(n_0_0_25), .ZN(n_0_0_24));
   AND2_X1 i_0_0_36 (.A1(n_0_0_26), .A2(SFD), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_37 (.A1(n_0_0_39), .A2(state[0]), .ZN(n_0_0_26));
   OR2_X1 i_0_0_38 (.A1(n_0_0_32), .A2(n_0_0_28), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_39 (.A1(ST[6]), .A2(n_0_0_29), .ZN(n_0_0_28));
   NOR2_X1 i_0_0_40 (.A1(n_0_0_31), .A2(n_0_0_30), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_41 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_30));
   NOR3_X1 i_0_0_42 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_31));
   AOI21_X1 i_0_0_43 (.A(n_0_0_36), .B1(n_0_0_33), .B2(n_0_0_34), .ZN(n_0_0_32));
   NOR3_X1 i_0_0_44 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_33));
   NAND3_X1 i_0_0_45 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_34));
   INV_X1 i_0_0_46 (.A(SRD), .ZN(n_0_0_35));
   INV_X1 i_0_0_47 (.A(ST[6]), .ZN(n_0_0_36));
   INV_X1 i_0_0_48 (.A(state[0]), .ZN(n_0_0_37));
   INV_X1 i_0_0_49 (.A(display[1]), .ZN(n_0_0_38));
   INV_X1 i_0_0_50 (.A(display[2]), .ZN(n_0_0_39));
endmodule
