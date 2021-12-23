/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:07:09 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4202811456 */

module combined56_ifelse(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire [2:0]state;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire n_0_6_0;
   wire n_0_6_1;
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
   wire n_0_7_10;
   wire n_0_2;
   wire n_0_7_11;
   wire n_0_7_12;
   wire n_0_7_13;
   wire n_0_7_14;
   wire n_0_7_15;
   wire n_0_7_16;
   wire n_0_7_17;
   wire n_0_7_18;
   wire n_0_7_19;
   wire n_0_7_20;
   wire n_0_3;
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
   wire n_0_0;
   wire n_0_7_45;
   wire n_0_7_46;
   wire n_0_7_47;
   wire n_0_7_48;
   wire n_0_7_49;
   wire n_0_7_50;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;

   DFFR_X2 \state_reg[1]  (.D(n_0_2), .RN(n_0_0), .CK(clk), .Q(display[1]), 
      .QN());
   DFFR_X2 \state_reg[0]  (.D(n_0_1), .RN(n_0_0), .CK(clk), .Q(state[0]), .QN());
   INV_X1 i_0_0_0 (.A(n_0_0_0), .ZN(display[0]));
   NAND2_X1 i_0_0_1 (.A1(n_0_0_1), .A2(state[0]), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_0_1));
   AND2_X1 i_0_1_0 (.A1(display[2]), .A2(display[1]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(state[0]), .A2(display[2]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(state[0]), .A2(display[1]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_4_0 (.A(n_0_4_0), .ZN(winbuzz));
   NAND2_X1 i_0_4_1 (.A1(display[2]), .A2(n_0_4_1), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_2 (.A1(state[0]), .A2(display[1]), .ZN(n_0_4_1));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(rdoor));
   NAND3_X1 i_0_5_1 (.A1(display[1]), .A2(n_0_5_2), .A3(n_0_5_1), .ZN(n_0_5_0));
   INV_X1 i_0_5_2 (.A(state[0]), .ZN(n_0_5_1));
   INV_X1 i_0_5_3 (.A(display[2]), .ZN(n_0_5_2));
   INV_X1 i_0_6_0 (.A(n_0_6_0), .ZN(fdoor));
   NAND2_X1 i_0_6_1 (.A1(state[0]), .A2(n_0_6_1), .ZN(n_0_6_0));
   NOR2_X1 i_0_6_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_6_1));
   OAI211_X1 i_0_7_0 (.A(n_0_7_0), .B(n_0_7_8), .C1(n_0_7_28), .C2(n_0_7_5), 
      .ZN(n_0_1));
   INV_X1 i_0_7_1 (.A(n_0_7_1), .ZN(n_0_7_0));
   AOI21_X1 i_0_7_2 (.A(n_0_7_2), .B1(n_0_7_37), .B2(n_0_7_4), .ZN(n_0_7_1));
   AOI22_X1 i_0_7_3 (.A1(n_0_7_42), .A2(n_0_7_14), .B1(n_0_7_22), .B2(n_0_7_3), 
      .ZN(n_0_7_2));
   OAI21_X1 i_0_7_4 (.A(n_0_7_4), .B1(SW), .B2(n_0_7_25), .ZN(n_0_7_3));
   NOR2_X1 i_0_7_5 (.A1(SFD), .A2(n_0_7_10), .ZN(n_0_7_4));
   INV_X1 i_0_7_6 (.A(n_0_7_6), .ZN(n_0_7_5));
   OAI21_X1 i_0_7_7 (.A(n_0_7_46), .B1(SW), .B2(n_0_7_7), .ZN(n_0_7_6));
   OAI21_X1 i_0_7_8 (.A(n_0_7_42), .B1(SFD), .B2(n_0_7_38), .ZN(n_0_7_7));
   OAI21_X1 i_0_7_9 (.A(n_0_7_31), .B1(n_0_7_10), .B2(n_0_7_9), .ZN(n_0_7_8));
   AOI211_X1 i_0_7_10 (.A(SW), .B(SRD), .C1(n_0_7_45), .C2(n_0_7_36), .ZN(
      n_0_7_9));
   NOR2_X1 i_0_7_11 (.A1(n_0_7_46), .A2(SRD), .ZN(n_0_7_10));
   OAI211_X1 i_0_7_12 (.A(n_0_7_15), .B(n_0_7_11), .C1(n_0_7_28), .C2(n_0_7_18), 
      .ZN(n_0_2));
   INV_X1 i_0_7_13 (.A(n_0_7_12), .ZN(n_0_7_11));
   OAI21_X1 i_0_7_14 (.A(n_0_7_13), .B1(n_0_7_32), .B2(n_0_7_30), .ZN(n_0_7_12));
   OAI211_X1 i_0_7_15 (.A(n_0_7_37), .B(n_0_7_14), .C1(n_0_7_41), .C2(n_0_7_16), 
      .ZN(n_0_7_13));
   OAI21_X1 i_0_7_16 (.A(n_0_7_34), .B1(SW), .B2(n_0_7_29), .ZN(n_0_7_14));
   NAND3_X1 i_0_7_17 (.A1(n_0_7_22), .A2(n_0_7_17), .A3(n_0_7_45), .ZN(n_0_7_15));
   NOR2_X1 i_0_7_18 (.A1(SFD), .A2(n_0_7_32), .ZN(n_0_7_16));
   OAI21_X1 i_0_7_19 (.A(n_0_7_32), .B1(SW), .B2(n_0_7_42), .ZN(n_0_7_17));
   NOR2_X1 i_0_7_20 (.A1(SFA), .A2(n_0_7_19), .ZN(n_0_7_18));
   NOR3_X1 i_0_7_21 (.A1(SW), .A2(n_0_7_38), .A3(n_0_7_20), .ZN(n_0_7_19));
   AOI21_X1 i_0_7_22 (.A(n_0_7_41), .B1(SRD), .B2(n_0_7_45), .ZN(n_0_7_20));
   INV_X1 i_0_7_23 (.A(n_0_7_21), .ZN(n_0_3));
   OAI21_X1 i_0_7_24 (.A(n_0_7_23), .B1(SW), .B2(n_0_7_35), .ZN(n_0_7_21));
   NOR2_X1 i_0_7_25 (.A1(n_0_7_33), .A2(n_0_7_24), .ZN(n_0_7_22));
   OAI221_X1 i_0_7_26 (.A(n_0_7_26), .B1(n_0_7_25), .B2(n_0_7_24), .C1(n_0_7_36), 
      .C2(n_0_7_34), .ZN(n_0_7_23));
   AOI21_X1 i_0_7_27 (.A(n_0_4), .B1(n_0_7_48), .B2(n_0_7_47), .ZN(n_0_7_24));
   NAND2_X1 i_0_7_28 (.A1(n_0_7_45), .A2(n_0_7_32), .ZN(n_0_7_25));
   AOI21_X1 i_0_7_29 (.A(n_0_7_27), .B1(n_0_7_32), .B2(n_0_7_31), .ZN(n_0_7_26));
   OAI21_X1 i_0_7_30 (.A(n_0_7_29), .B1(SFA), .B2(n_0_7_28), .ZN(n_0_7_27));
   NAND3_X1 i_0_7_31 (.A1(n_0_7_49), .A2(n_0_7_47), .A3(n_0_5), .ZN(n_0_7_28));
   NAND3_X1 i_0_7_32 (.A1(n_0_7_49), .A2(n_0_6), .A3(n_0_5), .ZN(n_0_7_29));
   INV_X1 i_0_7_33 (.A(n_0_7_31), .ZN(n_0_7_30));
   NOR3_X1 i_0_7_34 (.A1(n_0_5), .A2(n_0_7_47), .A3(n_0_4), .ZN(n_0_7_31));
   NOR2_X1 i_0_7_35 (.A1(SFA), .A2(SRD), .ZN(n_0_7_32));
   INV_X1 i_0_7_36 (.A(n_0_7_34), .ZN(n_0_7_33));
   OAI221_X1 i_0_7_37 (.A(n_0_4), .B1(n_0_7_48), .B2(n_0_6), .C1(n_0_5), 
      .C2(n_0_7_47), .ZN(n_0_7_34));
   INV_X1 i_0_7_38 (.A(n_0_7_36), .ZN(n_0_7_35));
   NOR2_X1 i_0_7_39 (.A1(n_0_7_41), .A2(n_0_7_38), .ZN(n_0_7_36));
   INV_X1 i_0_7_40 (.A(n_0_7_38), .ZN(n_0_7_37));
   AOI21_X1 i_0_7_41 (.A(ST[6]), .B1(ST[5]), .B2(n_0_7_39), .ZN(n_0_7_38));
   NOR2_X1 i_0_7_42 (.A1(n_0_7_50), .A2(n_0_7_40), .ZN(n_0_7_39));
   NOR3_X1 i_0_7_43 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_7_40));
   INV_X1 i_0_7_44 (.A(n_0_7_42), .ZN(n_0_7_41));
   OAI21_X1 i_0_7_45 (.A(ST[6]), .B1(n_0_7_44), .B2(n_0_7_43), .ZN(n_0_7_42));
   OR3_X1 i_0_7_46 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_7_43));
   AND3_X1 i_0_7_47 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_7_44));
   INV_X1 i_0_7_48 (.A(Rst), .ZN(n_0_0));
   INV_X1 i_0_7_49 (.A(SFD), .ZN(n_0_7_45));
   INV_X1 i_0_7_50 (.A(SFA), .ZN(n_0_7_46));
   INV_X1 i_0_7_51 (.A(n_0_6), .ZN(n_0_7_47));
   INV_X1 i_0_7_52 (.A(n_0_5), .ZN(n_0_7_48));
   INV_X1 i_0_7_53 (.A(n_0_4), .ZN(n_0_7_49));
   INV_X1 i_0_7_54 (.A(ST[4]), .ZN(n_0_7_50));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_5));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_6));
   DFFR_X2 \state_reg[2]  (.D(n_0_3), .RN(n_0_0), .CK(clk), .Q(display[2]), 
      .QN());
endmodule
