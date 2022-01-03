/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 13:22:52 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4272543488 */

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
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_4;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_5;
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

   DFF_X1 \state_reg[2]  (.D(n_0_5), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_4), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_3), .CK(Clk), .Q(state[0]), .QN());
   DLH_X1 cooler_reg (.D(n_0_2), .G(n_0_1), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_0), .G(n_0_1), .Q(heater));
   NOR3_X1 i_0_0_0 (.A1(n_0_0_45), .A2(n_0_0_43), .A3(display[1]), .ZN(n_0_0));
   AOI221_X1 i_0_0_1 (.A(n_0_0_25), .B1(n_0_0_45), .B2(display[1]), .C1(n_0_0_34), 
      .C2(winbuzz), .ZN(n_0_1));
   NAND2_X1 i_0_0_2 (.A1(n_0_0_44), .A2(n_0_0_24), .ZN(n_0_2));
   NOR2_X1 i_0_0_3 (.A1(n_0_0_24), .A2(display[1]), .ZN(fdoor));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_28), .A2(state[0]), .ZN(rdoor));
   AOI21_X1 i_0_0_5 (.A(n_0_0_43), .B1(display[1]), .B2(display[2]), .ZN(
      display[0]));
   NOR2_X1 i_0_0_6 (.A1(Rst), .A2(n_0_0_0), .ZN(n_0_3));
   AOI222_X1 i_0_0_7 (.A1(n_0_0_45), .A2(n_0_0_8), .B1(n_0_0_4), .B2(n_0_0_1), 
      .C1(n_0_0_6), .C2(n_0_0_38), .ZN(n_0_0_0));
   OAI21_X1 i_0_0_8 (.A(n_0_0_2), .B1(n_0_0_41), .B2(SRD), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_9 (.A(SFD), .B1(n_0_0_3), .B2(display[2]), .ZN(n_0_0_2));
   NOR3_X1 i_0_0_10 (.A1(n_0_0_35), .A2(n_0_0_44), .A3(SW), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_11 (.A(n_0_0_19), .B1(n_0_0_5), .B2(n_0_0_35), .ZN(n_0_0_4));
   AND2_X1 i_0_0_12 (.A1(n_0_0_45), .A2(SW), .ZN(n_0_0_5));
   OR2_X1 i_0_0_13 (.A1(n_0_0_15), .A2(n_0_0_7), .ZN(n_0_0_6));
   NOR2_X1 i_0_0_14 (.A1(SRD), .A2(SW), .ZN(n_0_0_7));
   OAI33_X1 i_0_0_15 (.A1(display[1]), .A2(SRD), .A3(n_0_0_10), .B1(n_0_0_9), 
      .B2(n_0_0_27), .B3(state[0]), .ZN(n_0_0_8));
   NOR2_X1 i_0_0_16 (.A1(display[1]), .A2(SFD), .ZN(n_0_0_9));
   NOR2_X1 i_0_0_17 (.A1(SFA), .A2(n_0_0_11), .ZN(n_0_0_10));
   NOR2_X1 i_0_0_18 (.A1(SW), .A2(n_0_0_12), .ZN(n_0_0_11));
   AOI21_X1 i_0_0_19 (.A(SFD), .B1(n_0_0_35), .B2(state[0]), .ZN(n_0_0_12));
   AOI21_X1 i_0_0_20 (.A(Rst), .B1(n_0_0_17), .B2(n_0_0_13), .ZN(n_0_4));
   OAI21_X1 i_0_0_21 (.A(n_0_0_35), .B1(n_0_0_15), .B2(n_0_0_14), .ZN(n_0_0_13));
   NOR3_X1 i_0_0_22 (.A1(SFD), .A2(SW), .A3(n_0_0_25), .ZN(n_0_0_14));
   OAI21_X1 i_0_0_23 (.A(n_0_0_16), .B1(n_0_0_28), .B2(SW), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_24 (.A1(n_0_0_19), .A2(display[2]), .ZN(n_0_0_16));
   OAI22_X1 i_0_0_25 (.A1(SRD), .A2(SFA), .B1(n_0_0_20), .B2(n_0_0_18), .ZN(
      n_0_0_17));
   NOR3_X1 i_0_0_26 (.A1(n_0_0_19), .A2(n_0_0_27), .A3(display[2]), .ZN(n_0_0_18));
   OR2_X1 i_0_0_27 (.A1(n_0_0_32), .A2(n_0_0_31), .ZN(n_0_0_19));
   AOI221_X1 i_0_0_28 (.A(SFD), .B1(SW), .B2(n_0_0_26), .C1(n_0_0_38), .C2(
      n_0_0_21), .ZN(n_0_0_20));
   OAI211_X1 i_0_0_29 (.A(n_0_0_33), .B(n_0_0_30), .C1(n_0_0_28), .C2(SFA), 
      .ZN(n_0_0_21));
   AOI21_X1 i_0_0_30 (.A(Rst), .B1(n_0_0_29), .B2(n_0_0_22), .ZN(n_0_5));
   OAI22_X1 i_0_0_31 (.A1(SW), .A2(n_0_0_34), .B1(n_0_0_26), .B2(n_0_0_23), 
      .ZN(n_0_0_22));
   AOI211_X1 i_0_0_32 (.A(SRD), .B(SFA), .C1(n_0_0_24), .C2(SFD), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_33 (.A1(n_0_0_45), .A2(state[0]), .ZN(n_0_0_24));
   NOR2_X1 i_0_0_34 (.A1(n_0_0_43), .A2(display[2]), .ZN(n_0_0_25));
   AOI21_X1 i_0_0_35 (.A(n_0_0_28), .B1(SFA), .B2(n_0_0_43), .ZN(n_0_0_26));
   NOR2_X1 i_0_0_36 (.A1(n_0_0_33), .A2(display[2]), .ZN(alarmbuzz));
   NOR2_X1 i_0_0_37 (.A1(n_0_0_44), .A2(SFA), .ZN(n_0_0_27));
   NAND2_X1 i_0_0_38 (.A1(n_0_0_45), .A2(display[1]), .ZN(n_0_0_28));
   OAI21_X1 i_0_0_39 (.A(n_0_0_34), .B1(n_0_0_32), .B2(winbuzz), .ZN(n_0_0_29));
   INV_X1 i_0_0_40 (.A(n_0_0_30), .ZN(winbuzz));
   NAND2_X1 i_0_0_41 (.A1(display[2]), .A2(n_0_0_31), .ZN(n_0_0_30));
   NOR2_X1 i_0_0_42 (.A1(display[1]), .A2(state[0]), .ZN(n_0_0_31));
   INV_X1 i_0_0_43 (.A(n_0_0_33), .ZN(n_0_0_32));
   NAND2_X1 i_0_0_44 (.A1(display[1]), .A2(state[0]), .ZN(n_0_0_33));
   OR2_X1 i_0_0_45 (.A1(n_0_0_38), .A2(n_0_0_35), .ZN(n_0_0_34));
   AOI21_X1 i_0_0_46 (.A(n_0_0_42), .B1(n_0_0_36), .B2(n_0_0_37), .ZN(n_0_0_35));
   NOR3_X1 i_0_0_47 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_36));
   NAND3_X1 i_0_0_48 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_37));
   AOI21_X1 i_0_0_49 (.A(ST[6]), .B1(n_0_0_40), .B2(n_0_0_39), .ZN(n_0_0_38));
   AND2_X1 i_0_0_50 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_39));
   OR3_X1 i_0_0_51 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_40));
   INV_X1 i_0_0_52 (.A(SFA), .ZN(n_0_0_41));
   INV_X1 i_0_0_53 (.A(ST[6]), .ZN(n_0_0_42));
   INV_X1 i_0_0_54 (.A(state[0]), .ZN(n_0_0_43));
   INV_X1 i_0_0_55 (.A(display[1]), .ZN(n_0_0_44));
   INV_X1 i_0_0_56 (.A(display[2]), .ZN(n_0_0_45));
endmodule
