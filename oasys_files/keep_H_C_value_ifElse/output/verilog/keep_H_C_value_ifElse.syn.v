/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 11:35:05 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 111343342 */

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
   wire n_0_1;
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

   assign heater = 1'b0;
   assign cooler = 1'b0;

   DFF_X1 \state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(state[0]), .QN());
   NOR3_X1 i_0_0_0 (.A1(n_0_0_39), .A2(state[0]), .A3(display[2]), .ZN(rdoor));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_39), .A2(n_0_0_20), .ZN(alarmbuzz));
   AOI21_X1 i_0_0_2 (.A(n_0_0_38), .B1(display[1]), .B2(display[2]), .ZN(
      display[0]));
   AOI21_X1 i_0_0_3 (.A(Rst), .B1(n_0_0_0), .B2(n_0_0_7), .ZN(n_0_0));
   AOI211_X1 i_0_0_4 (.A(n_0_0_3), .B(n_0_0_1), .C1(n_0_0_31), .C2(n_0_0_16), 
      .ZN(n_0_0_0));
   AOI211_X1 i_0_0_5 (.A(n_0_0_34), .B(n_0_0_26), .C1(n_0_0_6), .C2(n_0_0_2), 
      .ZN(n_0_0_1));
   OAI21_X1 i_0_0_6 (.A(SFD), .B1(display[1]), .B2(display[2]), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_7 (.A(n_0_0_21), .B1(n_0_0_6), .B2(n_0_0_4), .ZN(n_0_0_3));
   OAI22_X1 i_0_0_8 (.A1(SFD), .A2(n_0_0_5), .B1(n_0_0_9), .B2(n_0_0_20), 
      .ZN(n_0_0_4));
   AND3_X1 i_0_0_9 (.A1(n_0_0_40), .A2(display[1]), .A3(SFA), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_36), .A2(SFA), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_11 (.A(n_0_0_9), .B1(n_0_0_8), .B2(n_0_0_31), .ZN(n_0_0_7));
   AND2_X1 i_0_0_12 (.A1(n_0_0_26), .A2(fdoor), .ZN(n_0_0_8));
   NOR2_X1 i_0_0_13 (.A1(SRD), .A2(SW), .ZN(n_0_0_9));
   AOI21_X1 i_0_0_14 (.A(Rst), .B1(n_0_0_14), .B2(n_0_0_10), .ZN(n_0_1));
   OAI22_X1 i_0_0_15 (.A1(SRD), .A2(SFA), .B1(n_0_0_13), .B2(n_0_0_11), .ZN(
      n_0_0_10));
   OR2_X1 i_0_0_16 (.A1(fdoor), .A2(n_0_0_12), .ZN(n_0_0_11));
   AOI21_X1 i_0_0_17 (.A(n_0_0_24), .B1(SFD), .B2(display[2]), .ZN(n_0_0_12));
   NOR2_X1 i_0_0_18 (.A1(n_0_0_20), .A2(display[1]), .ZN(fdoor));
   AOI21_X1 i_0_0_19 (.A(SFD), .B1(n_0_0_30), .B2(n_0_0_22), .ZN(n_0_0_13));
   OAI21_X1 i_0_0_20 (.A(n_0_0_26), .B1(n_0_0_15), .B2(n_0_0_16), .ZN(n_0_0_14));
   AOI211_X1 i_0_0_21 (.A(SFD), .B(SW), .C1(n_0_0_40), .C2(state[0]), .ZN(
      n_0_0_15));
   OAI21_X1 i_0_0_22 (.A(n_0_0_17), .B1(n_0_0_23), .B2(display[1]), .ZN(n_0_0_16));
   OAI211_X1 i_0_0_23 (.A(n_0_0_23), .B(display[1]), .C1(display[2]), .C2(
      n_0_0_35), .ZN(n_0_0_17));
   NOR2_X1 i_0_0_24 (.A1(n_0_0_23), .A2(display[1]), .ZN(winbuzz));
   NOR3_X1 i_0_0_25 (.A1(Rst), .A2(n_0_0_25), .A3(n_0_0_18), .ZN(n_0_2));
   AOI21_X1 i_0_0_26 (.A(n_0_0_21), .B1(n_0_0_19), .B2(n_0_0_36), .ZN(n_0_0_18));
   AOI21_X1 i_0_0_27 (.A(SFA), .B1(n_0_0_20), .B2(SFD), .ZN(n_0_0_19));
   NAND2_X1 i_0_0_28 (.A1(n_0_0_40), .A2(state[0]), .ZN(n_0_0_20));
   AND2_X1 i_0_0_29 (.A1(n_0_0_24), .A2(n_0_0_22), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_39), .A2(n_0_0_23), .ZN(n_0_0_22));
   NAND2_X1 i_0_0_31 (.A1(n_0_0_38), .A2(display[2]), .ZN(n_0_0_23));
   OAI211_X1 i_0_0_32 (.A(display[1]), .B(n_0_0_38), .C1(SFA), .C2(display[2]), 
      .ZN(n_0_0_24));
   NOR3_X1 i_0_0_33 (.A1(n_0_0_30), .A2(n_0_0_29), .A3(n_0_0_26), .ZN(n_0_0_25));
   AOI21_X1 i_0_0_34 (.A(n_0_0_37), .B1(n_0_0_27), .B2(n_0_0_28), .ZN(n_0_0_26));
   NOR3_X1 i_0_0_35 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_27));
   NAND3_X1 i_0_0_36 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_28));
   NOR4_X1 i_0_0_37 (.A1(SRD), .A2(n_0_0_35), .A3(SFA), .A4(SFD), .ZN(n_0_0_29));
   OR2_X1 i_0_0_38 (.A1(n_0_0_34), .A2(n_0_0_31), .ZN(n_0_0_30));
   AOI21_X1 i_0_0_39 (.A(ST[6]), .B1(n_0_0_33), .B2(n_0_0_32), .ZN(n_0_0_31));
   AND2_X1 i_0_0_40 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_32));
   OR3_X1 i_0_0_41 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_33));
   NOR2_X1 i_0_0_42 (.A1(n_0_0_35), .A2(display[2]), .ZN(n_0_0_34));
   INV_X1 i_0_0_43 (.A(SW), .ZN(n_0_0_35));
   INV_X1 i_0_0_44 (.A(SRD), .ZN(n_0_0_36));
   INV_X1 i_0_0_45 (.A(ST[6]), .ZN(n_0_0_37));
   INV_X1 i_0_0_46 (.A(state[0]), .ZN(n_0_0_38));
   INV_X1 i_0_0_47 (.A(display[1]), .ZN(n_0_0_39));
   INV_X1 i_0_0_48 (.A(display[2]), .ZN(n_0_0_40));
endmodule
