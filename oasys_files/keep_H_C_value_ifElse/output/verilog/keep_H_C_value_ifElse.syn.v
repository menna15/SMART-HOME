/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 24 14:49:48 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 312887686 */

module keep_H_C_value_ifelse(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, 
      winbuzz, alarmbuzz, heater, cooler, display);
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
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_3_1;
   wire n_0_3_2;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_4_2;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire n_0_6_3;
   wire n_0_6_4;
   wire n_0_6_5;
   wire n_0_6_6;
   wire n_0_6_7;
   wire n_0_6_8;
   wire n_0_6_9;
   wire n_0_4;
   wire n_0_6_10;
   wire n_0_6_11;
   wire n_0_6_12;
   wire n_0_6_13;
   wire n_0_6_14;
   wire n_0_6_15;
   wire n_0_6_16;
   wire n_0_6_17;
   wire n_0_6_18;
   wire n_0_6_19;
   wire n_0_5;
   wire n_0_6_20;
   wire n_0_6_21;
   wire n_0_6_22;
   wire n_0_6_23;
   wire n_0_6_24;
   wire n_0_6_25;
   wire n_0_6_26;
   wire n_0_6_27;
   wire n_0_6_28;
   wire n_0_6_29;
   wire n_0_6_30;
   wire n_0_6_31;
   wire n_0_6_32;
   wire n_0_6_33;
   wire n_0_6_34;
   wire n_0_6_35;
   wire n_0_6_36;
   wire n_0_6_37;
   wire n_0_6_38;
   wire n_0_6_39;
   wire n_0_6_40;
   wire n_0_6_41;
   wire n_0_6_42;
   wire n_0_6_43;
   wire n_0_6_44;
   wire n_0_6_45;
   wire n_0_6_46;
   wire n_0_6_47;
   wire n_0_6_48;
   wire n_0_6_49;
   wire n_0_6_50;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;

   DFF_X2 \state_reg[0]  (.D(n_0_3), .CK(clk), .Q(state[0]), .QN());
   DFF_X2 \state_reg[2]  (.D(n_0_5), .CK(clk), .Q(display[2]), .QN());
   DFF_X2 \state_reg[1]  (.D(n_0_4), .CK(clk), .Q(display[1]), .QN());
   DLH_X1 cooler_reg (.D(n_0_2), .G(n_0_1), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_0), .G(n_0_1), .Q(heater));
   INV_X1 i_0_1_0 (.A(n_0_1_0), .ZN(display[0]));
   NAND2_X1 i_0_1_1 (.A1(n_0_1_1), .A2(state[0]), .ZN(n_0_1_0));
   NAND2_X1 i_0_1_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_1_1));
   NAND2_X1 i_0_2_0 (.A1(state[0]), .A2(display[1]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_3_0 (.A(n_0_3_0), .ZN(winbuzz));
   NAND3_X1 i_0_3_1 (.A1(display[2]), .A2(n_0_3_2), .A3(n_0_3_1), .ZN(n_0_3_0));
   INV_X1 i_0_3_2 (.A(state[0]), .ZN(n_0_3_1));
   INV_X1 i_0_3_3 (.A(display[1]), .ZN(n_0_3_2));
   INV_X1 i_0_4_0 (.A(n_0_4_0), .ZN(rdoor));
   NAND3_X1 i_0_4_1 (.A1(display[1]), .A2(n_0_4_2), .A3(n_0_4_1), .ZN(n_0_4_0));
   INV_X1 i_0_4_2 (.A(state[0]), .ZN(n_0_4_1));
   INV_X1 i_0_4_3 (.A(display[2]), .ZN(n_0_4_2));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(fdoor));
   NAND2_X1 i_0_5_1 (.A1(state[0]), .A2(n_0_5_1), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_2 (.A1(display[1]), .A2(display[2]), .ZN(n_0_5_1));
   NOR2_X1 i_0_6_0 (.A1(n_0_6_49), .A2(n_0_6_45), .ZN(n_0_0));
   AOI21_X1 i_0_6_1 (.A(n_0_6_49), .B1(n_0_6_36), .B2(n_0_6_23), .ZN(n_0_1));
   NAND2_X1 i_0_6_2 (.A1(n_0_6), .A2(n_0_6_48), .ZN(n_0_2));
   NOR2_X1 i_0_6_3 (.A1(Rst), .A2(n_0_6_0), .ZN(n_0_3));
   AOI221_X1 i_0_6_4 (.A(n_0_6_1), .B1(n_0_6_26), .B2(n_0_6_6), .C1(n_0_6_9), 
      .C2(n_0_6_8), .ZN(n_0_6_0));
   OAI22_X1 i_0_6_5 (.A1(n_0_6_22), .A2(n_0_6_3), .B1(n_0_6_17), .B2(n_0_6_2), 
      .ZN(n_0_6_1));
   AOI21_X1 i_0_6_6 (.A(n_0_6_37), .B1(n_0_6_41), .B2(n_0_6_5), .ZN(n_0_6_2));
   AOI21_X1 i_0_6_7 (.A(n_0_6_5), .B1(n_0_6_37), .B2(n_0_6_4), .ZN(n_0_6_3));
   NOR2_X1 i_0_6_8 (.A1(SW), .A2(n_0_6_32), .ZN(n_0_6_4));
   OAI21_X1 i_0_6_9 (.A(n_0_6_47), .B1(SRD), .B2(n_0_6_46), .ZN(n_0_6_5));
   OAI21_X1 i_0_6_10 (.A(n_0_6_46), .B1(SW), .B2(n_0_6_7), .ZN(n_0_6_6));
   OAI21_X1 i_0_6_11 (.A(n_0_6_41), .B1(SFD), .B2(n_0_6_37), .ZN(n_0_6_7));
   NOR2_X1 i_0_6_12 (.A1(SRD), .A2(n_0_6_28), .ZN(n_0_6_8));
   OAI21_X1 i_0_6_13 (.A(n_0_6_46), .B1(SW), .B2(n_0_6_31), .ZN(n_0_6_9));
   AOI21_X1 i_0_6_14 (.A(Rst), .B1(n_0_6_16), .B2(n_0_6_10), .ZN(n_0_4));
   AOI211_X1 i_0_6_15 (.A(n_0_6_11), .B(n_0_6_13), .C1(n_0_6_34), .C2(n_0_6_12), 
      .ZN(n_0_6_10));
   NOR4_X1 i_0_6_16 (.A1(SFD), .A2(n_0_6_22), .A3(SW), .A4(n_0_6_41), .ZN(
      n_0_6_11));
   OAI21_X1 i_0_6_17 (.A(n_0_6_28), .B1(SFD), .B2(n_0_6_22), .ZN(n_0_6_12));
   AOI21_X1 i_0_6_18 (.A(n_0_6_25), .B1(n_0_6_46), .B2(n_0_6_14), .ZN(n_0_6_13));
   OR3_X1 i_0_6_19 (.A1(SW), .A2(n_0_6_37), .A3(n_0_6_15), .ZN(n_0_6_14));
   AOI21_X1 i_0_6_20 (.A(n_0_6_40), .B1(n_0_6_47), .B2(SRD), .ZN(n_0_6_15));
   OAI21_X1 i_0_6_21 (.A(n_0_6_18), .B1(n_0_6_40), .B2(n_0_6_19), .ZN(n_0_6_16));
   INV_X1 i_0_6_22 (.A(n_0_6_18), .ZN(n_0_6_17));
   OAI21_X1 i_0_6_23 (.A(n_0_6_44), .B1(SW), .B2(n_0_6_27), .ZN(n_0_6_18));
   NOR3_X1 i_0_6_24 (.A1(SFD), .A2(n_0_6_35), .A3(n_0_6_37), .ZN(n_0_6_19));
   AOI21_X1 i_0_6_25 (.A(Rst), .B1(n_0_6_29), .B2(n_0_6_20), .ZN(n_0_5));
   OAI22_X1 i_0_6_26 (.A1(SW), .A2(n_0_6_36), .B1(n_0_6_24), .B2(n_0_6_21), 
      .ZN(n_0_6_20));
   NOR2_X1 i_0_6_27 (.A1(n_0_6_32), .A2(n_0_6_22), .ZN(n_0_6_21));
   OAI21_X1 i_0_6_28 (.A(n_0_6_44), .B1(n_0_6), .B2(n_0_6_23), .ZN(n_0_6_22));
   NOR2_X1 i_0_6_29 (.A1(n_0_7), .A2(n_0_8), .ZN(n_0_6_23));
   OAI221_X1 i_0_6_30 (.A(n_0_6_27), .B1(SFA), .B2(n_0_6_25), .C1(n_0_6_34), 
      .C2(n_0_6_28), .ZN(n_0_6_24));
   INV_X1 i_0_6_31 (.A(n_0_6_26), .ZN(n_0_6_25));
   NOR3_X1 i_0_6_32 (.A1(n_0_6), .A2(n_0_8), .A3(n_0_6_48), .ZN(n_0_6_26));
   NAND3_X1 i_0_6_33 (.A1(n_0_6_49), .A2(n_0_8), .A3(n_0_7), .ZN(n_0_6_27));
   NAND3_X1 i_0_6_34 (.A1(n_0_6_48), .A2(n_0_8), .A3(n_0_6_49), .ZN(n_0_6_28));
   OR2_X1 i_0_6_35 (.A1(n_0_6_44), .A2(n_0_6_30), .ZN(n_0_6_29));
   AOI21_X1 i_0_6_36 (.A(n_0_6_36), .B1(SW), .B2(n_0_6_33), .ZN(n_0_6_30));
   NOR2_X1 i_0_6_37 (.A1(SFD), .A2(n_0_6_36), .ZN(n_0_6_31));
   INV_X1 i_0_6_38 (.A(n_0_6_33), .ZN(n_0_6_32));
   NOR2_X1 i_0_6_39 (.A1(SFD), .A2(n_0_6_34), .ZN(n_0_6_33));
   INV_X1 i_0_6_40 (.A(n_0_6_35), .ZN(n_0_6_34));
   NOR2_X1 i_0_6_41 (.A1(SRD), .A2(SFA), .ZN(n_0_6_35));
   OR2_X1 i_0_6_42 (.A1(n_0_6_40), .A2(n_0_6_37), .ZN(n_0_6_36));
   AOI21_X1 i_0_6_43 (.A(ST[6]), .B1(ST[5]), .B2(n_0_6_38), .ZN(n_0_6_37));
   NOR2_X1 i_0_6_44 (.A1(n_0_6_50), .A2(n_0_6_39), .ZN(n_0_6_38));
   NOR3_X1 i_0_6_45 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_6_39));
   INV_X1 i_0_6_46 (.A(n_0_6_41), .ZN(n_0_6_40));
   OAI21_X1 i_0_6_47 (.A(ST[6]), .B1(n_0_6_43), .B2(n_0_6_42), .ZN(n_0_6_41));
   OR3_X1 i_0_6_48 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_6_42));
   AND3_X1 i_0_6_49 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_6_43));
   OAI211_X1 i_0_6_50 (.A(n_0_6), .B(n_0_6_45), .C1(n_0_6_48), .C2(n_0_8), 
      .ZN(n_0_6_44));
   NAND2_X1 i_0_6_51 (.A1(n_0_6_48), .A2(n_0_8), .ZN(n_0_6_45));
   INV_X1 i_0_6_52 (.A(SFA), .ZN(n_0_6_46));
   INV_X1 i_0_6_53 (.A(SFD), .ZN(n_0_6_47));
   INV_X1 i_0_6_54 (.A(n_0_7), .ZN(n_0_6_48));
   INV_X1 i_0_6_55 (.A(n_0_6), .ZN(n_0_6_49));
   INV_X1 i_0_6_56 (.A(ST[4]), .ZN(n_0_6_50));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_6));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_7));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_8));
endmodule
