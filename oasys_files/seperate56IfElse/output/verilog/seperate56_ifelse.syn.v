/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 06:17:38 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 891652164 */

module seperate56_ifelse(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_1;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_2;
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

   DFF_X1 \state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(state[0]), .QN());
   NOR3_X1 i_0_0_0 (.A1(n_0_0_41), .A2(display[1]), .A3(display[2]), .ZN(fdoor));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_17), .A2(state[0]), .ZN(rdoor));
   NOR2_X1 i_0_0_2 (.A1(n_0_0_41), .A2(n_0_0_17), .ZN(alarmbuzz));
   NOR3_X1 i_0_0_3 (.A1(n_0_0_43), .A2(n_0_0_41), .A3(display[1]), .ZN(heater));
   NOR2_X1 i_0_0_4 (.A1(cooler), .A2(n_0_0_41), .ZN(display[0]));
   NOR2_X1 i_0_0_5 (.A1(Rst), .A2(n_0_0_0), .ZN(n_0_0));
   NOR2_X1 i_0_0_6 (.A1(n_0_0_5), .A2(n_0_0_1), .ZN(n_0_0_0));
   AOI211_X1 i_0_0_7 (.A(display[2]), .B(n_0_0_26), .C1(n_0_0_2), .C2(n_0_0_11), 
      .ZN(n_0_0_1));
   OAI21_X1 i_0_0_8 (.A(n_0_0_4), .B1(n_0_0_3), .B2(SFD), .ZN(n_0_0_2));
   AND2_X1 i_0_0_9 (.A1(state[0]), .A2(n_0_0_33), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_10 (.A(state[0]), .B1(SW), .B2(SRD), .ZN(n_0_0_4));
   OAI221_X1 i_0_0_11 (.A(n_0_0_7), .B1(n_0_0_6), .B2(n_0_0_31), .C1(n_0_0_9), 
      .C2(n_0_0_33), .ZN(n_0_0_5));
   AOI21_X1 i_0_0_12 (.A(n_0_0_12), .B1(SFD), .B2(display[2]), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_13 (.A(n_0_0_36), .B1(winbuzz), .B2(n_0_0_8), .ZN(n_0_0_7));
   AOI21_X1 i_0_0_14 (.A(SW), .B1(n_0_0_17), .B2(SRD), .ZN(n_0_0_8));
   NOR3_X1 i_0_0_15 (.A1(n_0_0_43), .A2(display[1]), .A3(state[0]), .ZN(winbuzz));
   OAI21_X1 i_0_0_16 (.A(n_0_0_10), .B1(n_0_0_12), .B2(SFD), .ZN(n_0_0_9));
   OAI21_X1 i_0_0_17 (.A(n_0_0_43), .B1(SW), .B2(n_0_0_11), .ZN(n_0_0_10));
   NOR2_X1 i_0_0_18 (.A1(display[1]), .A2(n_0_0_12), .ZN(n_0_0_11));
   NOR2_X1 i_0_0_19 (.A1(n_0_0_39), .A2(SRD), .ZN(n_0_0_12));
   NOR2_X1 i_0_0_20 (.A1(Rst), .A2(n_0_0_13), .ZN(n_0_1));
   AOI211_X1 i_0_0_21 (.A(n_0_0_22), .B(n_0_0_18), .C1(n_0_0_14), .C2(n_0_0_33), 
      .ZN(n_0_0_13));
   OAI21_X1 i_0_0_22 (.A(n_0_0_30), .B1(n_0_0_15), .B2(SW), .ZN(n_0_0_14));
   INV_X1 i_0_0_23 (.A(n_0_0_16), .ZN(n_0_0_15));
   OAI21_X1 i_0_0_24 (.A(n_0_0_17), .B1(SFD), .B2(state[0]), .ZN(n_0_0_16));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_43), .A2(display[1]), .ZN(n_0_0_17));
   NOR3_X1 i_0_0_26 (.A1(n_0_0_28), .A2(n_0_0_26), .A3(n_0_0_19), .ZN(n_0_0_18));
   NOR2_X1 i_0_0_27 (.A1(n_0_0_21), .A2(n_0_0_20), .ZN(n_0_0_19));
   AOI21_X1 i_0_0_28 (.A(display[2]), .B1(n_0_0_42), .B2(SFD), .ZN(n_0_0_20));
   AOI21_X1 i_0_0_29 (.A(n_0_0_41), .B1(SFD), .B2(display[2]), .ZN(n_0_0_21));
   NOR3_X1 i_0_0_30 (.A1(SFD), .A2(n_0_0_28), .A3(n_0_0_23), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_31 (.A1(cooler), .A2(n_0_0_24), .ZN(n_0_0_23));
   AOI21_X1 i_0_0_32 (.A(n_0_0_36), .B1(SW), .B2(display[1]), .ZN(n_0_0_24));
   NOR2_X1 i_0_0_33 (.A1(n_0_0_43), .A2(n_0_0_42), .ZN(cooler));
   AOI211_X1 i_0_0_34 (.A(Rst), .B(n_0_0_25), .C1(n_0_0_32), .C2(n_0_0_40), 
      .ZN(n_0_2));
   AOI221_X1 i_0_0_35 (.A(n_0_0_29), .B1(n_0_0_28), .B2(n_0_0_27), .C1(n_0_0_26), 
      .C2(n_0_0_43), .ZN(n_0_0_25));
   AOI21_X1 i_0_0_36 (.A(n_0_0_42), .B1(n_0_0_41), .B2(SFA), .ZN(n_0_0_26));
   OAI21_X1 i_0_0_37 (.A(SFD), .B1(n_0_0_41), .B2(display[2]), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_38 (.A1(SFA), .A2(SRD), .ZN(n_0_0_28));
   AOI211_X1 i_0_0_39 (.A(n_0_0_30), .B(n_0_0_32), .C1(state[0]), .C2(n_0_0_44), 
      .ZN(n_0_0_29));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_31), .A2(display[2]), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_41 (.A1(n_0_0_41), .A2(display[1]), .ZN(n_0_0_31));
   NOR2_X1 i_0_0_42 (.A1(n_0_0_36), .A2(n_0_0_33), .ZN(n_0_0_32));
   AOI21_X1 i_0_0_43 (.A(n_0_0_44), .B1(n_0_0_34), .B2(n_0_0_35), .ZN(n_0_0_33));
   NOR3_X1 i_0_0_44 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_34));
   NAND3_X1 i_0_0_45 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_35));
   AOI21_X1 i_0_0_46 (.A(ST[6]), .B1(n_0_0_38), .B2(n_0_0_37), .ZN(n_0_0_36));
   AND2_X1 i_0_0_47 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_37));
   OR3_X1 i_0_0_48 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_38));
   INV_X1 i_0_0_49 (.A(SFA), .ZN(n_0_0_39));
   INV_X1 i_0_0_50 (.A(SW), .ZN(n_0_0_40));
   INV_X1 i_0_0_51 (.A(state[0]), .ZN(n_0_0_41));
   INV_X1 i_0_0_52 (.A(display[1]), .ZN(n_0_0_42));
   INV_X1 i_0_0_53 (.A(display[2]), .ZN(n_0_0_43));
   INV_X1 i_0_0_54 (.A(ST[6]), .ZN(n_0_0_44));
endmodule
