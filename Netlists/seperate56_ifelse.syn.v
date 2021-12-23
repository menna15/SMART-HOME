/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:26:04 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1302478215 */

module seperate56_ifelse(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire n_0_0_0;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire n_0_1;
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
   wire n_0_2;
   wire n_0_7_10;
   wire n_0_7_11;
   wire n_0_7_12;
   wire n_0_7_13;
   wire n_0_7_14;
   wire n_0_7_15;
   wire n_0_7_16;
   wire n_0_7_17;
   wire n_0_7_18;
   wire n_0_3;
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
   wire n_0_0;
   wire n_0_7_46;
   wire n_0_7_47;
   wire n_0_7_48;
   wire n_0_7_49;
   wire n_0_7_50;
   wire n_0_7_51;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire [2:0]state;

   DFFR_X2 \state_reg[2]  (.D(n_0_3), .RN(n_0_0), .CK(clk), .Q(display[2]), 
      .QN());
   AOI21_X1 i_0_0_0 (.A(n_0_0_0), .B1(display[2]), .B2(display[1]), .ZN(
      display[0]));
   INV_X1 i_0_0_1 (.A(state[0]), .ZN(n_0_0_0));
   AND2_X1 i_0_1_0 (.A1(display[2]), .A2(display[1]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(display[2]), .A2(state[0]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(state[0]), .A2(display[1]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_4_0 (.A(n_0_4_0), .ZN(winbuzz));
   NAND2_X1 i_0_4_1 (.A1(display[2]), .A2(n_0_4_1), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_2 (.A1(display[1]), .A2(state[0]), .ZN(n_0_4_1));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(rdoor));
   NAND3_X1 i_0_5_1 (.A1(display[1]), .A2(n_0_5_2), .A3(n_0_5_1), .ZN(n_0_5_0));
   INV_X1 i_0_5_2 (.A(state[0]), .ZN(n_0_5_1));
   INV_X1 i_0_5_3 (.A(display[2]), .ZN(n_0_5_2));
   INV_X1 i_0_6_0 (.A(display[2]), .ZN(n_0_6_0));
   INV_X1 i_0_6_1 (.A(display[1]), .ZN(n_0_6_1));
   NAND3_X1 i_0_6_2 (.A1(state[0]), .A2(n_0_6_0), .A3(n_0_6_1), .ZN(n_0_6_2));
   INV_X1 i_0_6_3 (.A(n_0_6_2), .ZN(fdoor));
   OAI221_X1 i_0_7_0 (.A(n_0_7_6), .B1(n_0_7_26), .B2(n_0_7_4), .C1(n_0_7_3), 
      .C2(n_0_7_0), .ZN(n_0_1));
   INV_X1 i_0_7_1 (.A(n_0_7_1), .ZN(n_0_7_0));
   OAI22_X1 i_0_7_2 (.A1(n_0_7_38), .A2(n_0_7_12), .B1(n_0_7_31), .B2(n_0_7_2), 
      .ZN(n_0_7_1));
   OAI21_X1 i_0_7_3 (.A(n_0_7_47), .B1(n_0_7_48), .B2(SFA), .ZN(n_0_7_2));
   AOI211_X1 i_0_7_4 (.A(SFD), .B(n_0_7_34), .C1(SFA), .C2(n_0_7_47), .ZN(
      n_0_7_3));
   AOI21_X1 i_0_7_5 (.A(n_0_7_8), .B1(n_0_7_48), .B2(n_0_7_5), .ZN(n_0_7_4));
   NOR2_X1 i_0_7_6 (.A1(n_0_7_46), .A2(n_0_7_38), .ZN(n_0_7_5));
   OAI221_X1 i_0_7_7 (.A(n_0_7_7), .B1(n_0_7_47), .B2(SFD), .C1(SFD), .C2(
      n_0_7_8), .ZN(n_0_7_6));
   OAI21_X1 i_0_7_8 (.A(n_0_7_28), .B1(n_0_7_38), .B2(n_0_7_24), .ZN(n_0_7_7));
   INV_X1 i_0_7_9 (.A(n_0_7_9), .ZN(n_0_7_8));
   AOI21_X1 i_0_7_10 (.A(SFA), .B1(n_0_7_48), .B2(n_0_7_42), .ZN(n_0_7_9));
   OAI21_X1 i_0_7_11 (.A(n_0_7_10), .B1(n_0_7_26), .B2(n_0_7_17), .ZN(n_0_2));
   AOI222_X1 i_0_7_12 (.A1(n_0_7_25), .A2(n_0_7_14), .B1(n_0_7_14), .B2(n_0_7_11), 
      .C1(n_0_7_16), .C2(n_0_7_15), .ZN(n_0_7_10));
   NOR2_X1 i_0_7_13 (.A1(n_0_7_42), .A2(n_0_7_12), .ZN(n_0_7_11));
   INV_X1 i_0_7_14 (.A(n_0_7_13), .ZN(n_0_7_12));
   OAI21_X1 i_0_7_15 (.A(n_0_7_45), .B1(SW), .B2(n_0_7_27), .ZN(n_0_7_13));
   OAI21_X1 i_0_7_16 (.A(n_0_7_39), .B1(SFD), .B2(n_0_7_37), .ZN(n_0_7_14));
   OAI22_X1 i_0_7_17 (.A1(n_0_7_37), .A2(n_0_7_31), .B1(SFD), .B2(n_0_7_28), 
      .ZN(n_0_7_15));
   OAI21_X1 i_0_7_18 (.A(n_0_7_37), .B1(SW), .B2(n_0_7_39), .ZN(n_0_7_16));
   AOI211_X1 i_0_7_19 (.A(SFA), .B(n_0_7_18), .C1(n_0_7_48), .C2(n_0_7_38), 
      .ZN(n_0_7_17));
   NOR4_X1 i_0_7_20 (.A1(SW), .A2(n_0_7_42), .A3(n_0_7_47), .A4(SFD), .ZN(
      n_0_7_18));
   OAI21_X1 i_0_7_21 (.A(n_0_7_19), .B1(n_0_7_45), .B2(n_0_7_33), .ZN(n_0_3));
   OAI22_X1 i_0_7_22 (.A1(SW), .A2(n_0_7_34), .B1(n_0_7_23), .B2(n_0_7_20), 
      .ZN(n_0_7_19));
   OAI21_X1 i_0_7_23 (.A(n_0_7_21), .B1(n_0_7_36), .B2(n_0_7_28), .ZN(n_0_7_20));
   AOI21_X1 i_0_7_24 (.A(n_0_7_22), .B1(n_0_7_37), .B2(n_0_7_32), .ZN(n_0_7_21));
   OAI21_X1 i_0_7_25 (.A(n_0_7_27), .B1(SFA), .B2(n_0_7_30), .ZN(n_0_7_22));
   AOI21_X1 i_0_7_26 (.A(n_0_7_24), .B1(n_0_7_39), .B2(n_0_7_36), .ZN(n_0_7_23));
   INV_X1 i_0_7_27 (.A(n_0_7_25), .ZN(n_0_7_24));
   NOR3_X1 i_0_7_28 (.A1(n_0_7_49), .A2(n_0_7_32), .A3(n_0_7_29), .ZN(n_0_7_25));
   NAND2_X1 i_0_7_29 (.A1(n_0_7_49), .A2(n_0_7_29), .ZN(n_0_7_26));
   NAND2_X1 i_0_7_30 (.A1(n_0_6), .A2(n_0_7_29), .ZN(n_0_7_27));
   OAI211_X1 i_0_7_31 (.A(n_0_7_30), .B(n_0_7_49), .C1(n_0_7_50), .C2(n_0_5), 
      .ZN(n_0_7_28));
   INV_X1 i_0_7_32 (.A(n_0_7_30), .ZN(n_0_7_29));
   NAND2_X1 i_0_7_33 (.A1(n_0_7_50), .A2(n_0_5), .ZN(n_0_7_30));
   INV_X1 i_0_7_34 (.A(n_0_7_32), .ZN(n_0_7_31));
   NOR3_X1 i_0_7_35 (.A1(n_0_4), .A2(n_0_5), .A3(n_0_7_49), .ZN(n_0_7_32));
   AOI21_X1 i_0_7_36 (.A(n_0_7_34), .B1(SW), .B2(n_0_7_35), .ZN(n_0_7_33));
   OR2_X1 i_0_7_37 (.A1(n_0_7_42), .A2(n_0_7_38), .ZN(n_0_7_34));
   INV_X1 i_0_7_38 (.A(n_0_7_36), .ZN(n_0_7_35));
   NAND2_X1 i_0_7_39 (.A1(n_0_7_46), .A2(n_0_7_37), .ZN(n_0_7_36));
   NOR2_X1 i_0_7_40 (.A1(SFA), .A2(SRD), .ZN(n_0_7_37));
   INV_X1 i_0_7_41 (.A(n_0_7_39), .ZN(n_0_7_38));
   OAI21_X1 i_0_7_42 (.A(ST[6]), .B1(n_0_7_41), .B2(n_0_7_40), .ZN(n_0_7_39));
   OR3_X1 i_0_7_43 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_7_40));
   AND3_X1 i_0_7_44 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_7_41));
   AOI21_X1 i_0_7_45 (.A(ST[6]), .B1(ST[5]), .B2(n_0_7_43), .ZN(n_0_7_42));
   NOR2_X1 i_0_7_46 (.A1(n_0_7_51), .A2(n_0_7_44), .ZN(n_0_7_43));
   NOR3_X1 i_0_7_47 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_7_44));
   OR3_X1 i_0_7_48 (.A1(n_0_7_50), .A2(n_0_6), .A3(n_0_5), .ZN(n_0_7_45));
   INV_X1 i_0_7_49 (.A(Rst), .ZN(n_0_0));
   INV_X1 i_0_7_50 (.A(SFD), .ZN(n_0_7_46));
   INV_X1 i_0_7_51 (.A(SRD), .ZN(n_0_7_47));
   INV_X1 i_0_7_52 (.A(SW), .ZN(n_0_7_48));
   INV_X1 i_0_7_53 (.A(n_0_6), .ZN(n_0_7_49));
   INV_X1 i_0_7_54 (.A(n_0_4), .ZN(n_0_7_50));
   INV_X1 i_0_7_55 (.A(ST[4]), .ZN(n_0_7_51));
   DFFR_X2 \state_reg[1]  (.D(n_0_2), .RN(n_0_0), .CK(clk), .Q(display[1]), 
      .QN());
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_5));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_6));
   DFFR_X2 \state_reg[0]  (.D(n_0_1), .RN(n_0_0), .CK(clk), .Q(state[0]), .QN());
endmodule
