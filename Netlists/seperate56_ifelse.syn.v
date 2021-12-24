/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 24 14:55:32 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 744055543 */

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

   wire [2:0]state;
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire n_0_6_0;
   wire n_0_6_1;
   wire n_0_6_2;
   wire n_0_7_0;
   wire n_0_7_1;
   wire n_0_7_2;
   wire n_0_8_0;
   wire n_0_8_1;
   wire n_0_8_2;
   wire n_0_8_3;
   wire n_0_8_4;
   wire n_0_8_5;
   wire n_0_8_6;
   wire n_0_8_7;
   wire n_0_8_8;
   wire n_0_8_9;
   wire n_0_8_10;
   wire n_0_8_11;
   wire n_0_8_12;
   wire n_0_8_13;
   wire n_0_8_14;
   wire n_0_8_15;
   wire n_0_8_16;
   wire n_0_8_17;
   wire n_0_8_18;
   wire n_0_8_19;
   wire n_0_8_20;
   wire n_0_8_21;
   wire n_0_8_22;
   wire n_0_8_23;
   wire n_0_8_24;
   wire n_0_8_25;
   wire n_0_8_26;
   wire n_0_8_27;
   wire n_0_8_28;
   wire n_0_8_29;
   wire n_0_8_30;
   wire n_0_8_31;
   wire n_0_8_32;
   wire n_0_8_33;
   wire n_0_8_34;
   wire n_0_8_35;
   wire n_0_8_36;
   wire n_0_8_37;
   wire n_0_8_38;
   wire n_0_8_39;
   wire n_0_8_40;
   wire n_0_8_41;
   wire n_0_8_42;
   wire n_0_0;
   wire n_0_8_43;
   wire n_0_8_44;
   wire n_0_8_45;
   wire n_0_8_46;
   wire n_0_8_47;
   wire n_0_8_48;
   wire n_0_8_49;
   wire n_0_8_50;
   wire n_0_8_51;
   wire n_0_8_52;
   wire n_0_8_53;
   wire n_0_8_54;
   wire n_0_8_55;
   wire n_0_8_56;
   wire n_0_1;
   wire n_0_8_57;
   wire n_0_8_58;
   wire n_0_8_59;
   wire n_0_8_60;
   wire n_0_8_61;
   wire n_0_8_62;
   wire n_0_8_63;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   DFF_X2 \state_reg[0]  (.D(n_0_0), .CK(clk), .Q(state[0]), .QN());
   DFF_X2 \state_reg[1]  (.D(n_0_1), .CK(clk), .Q(display[1]), .QN());
   DFF_X2 \state_reg[2]  (.D(n_0_2), .CK(clk), .Q(display[2]), .QN());
   INV_X1 i_0_1_0 (.A(n_0_1_0), .ZN(display[0]));
   NAND2_X1 i_0_1_1 (.A1(n_0_1_1), .A2(state[0]), .ZN(n_0_1_0));
   NAND2_X1 i_0_1_2 (.A1(display[1]), .A2(display[2]), .ZN(n_0_1_1));
   AND2_X1 i_0_2_0 (.A1(display[2]), .A2(display[1]), .ZN(cooler));
   NAND2_X1 i_0_3_0 (.A1(state[0]), .A2(display[2]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_4_0 (.A1(display[1]), .A2(state[0]), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_1 (.A1(n_0_4_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(winbuzz));
   NAND3_X1 i_0_5_1 (.A1(display[2]), .A2(n_0_5_2), .A3(n_0_5_1), .ZN(n_0_5_0));
   INV_X1 i_0_5_2 (.A(state[0]), .ZN(n_0_5_1));
   INV_X1 i_0_5_3 (.A(display[1]), .ZN(n_0_5_2));
   INV_X1 i_0_6_0 (.A(n_0_6_0), .ZN(rdoor));
   NAND3_X1 i_0_6_1 (.A1(display[1]), .A2(n_0_6_2), .A3(n_0_6_1), .ZN(n_0_6_0));
   INV_X1 i_0_6_2 (.A(state[0]), .ZN(n_0_6_1));
   INV_X1 i_0_6_3 (.A(display[2]), .ZN(n_0_6_2));
   INV_X1 i_0_7_0 (.A(display[1]), .ZN(n_0_7_0));
   INV_X1 i_0_7_1 (.A(display[2]), .ZN(n_0_7_1));
   NAND3_X1 i_0_7_2 (.A1(state[0]), .A2(n_0_7_0), .A3(n_0_7_1), .ZN(n_0_7_2));
   INV_X1 i_0_7_3 (.A(n_0_7_2), .ZN(fdoor));
   INV_X1 i_0_8_0 (.A(n_0_4), .ZN(n_0_8_0));
   NAND2_X1 i_0_8_1 (.A1(n_0_8_0), .A2(n_0_3), .ZN(n_0_8_1));
   OR2_X1 i_0_8_2 (.A1(n_0_8_0), .A2(n_0_3), .ZN(n_0_8_2));
   INV_X1 i_0_8_3 (.A(n_0_5), .ZN(n_0_8_3));
   NAND3_X1 i_0_8_4 (.A1(n_0_8_1), .A2(n_0_8_2), .A3(n_0_8_3), .ZN(n_0_8_4));
   INV_X1 i_0_8_5 (.A(SFD), .ZN(n_0_8_5));
   NAND2_X1 i_0_8_6 (.A1(n_0_8_5), .A2(SRD), .ZN(n_0_8_6));
   INV_X1 i_0_8_7 (.A(n_0_8_6), .ZN(n_0_8_7));
   NOR3_X1 i_0_8_8 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_8_8));
   INV_X1 i_0_8_9 (.A(ST[4]), .ZN(n_0_8_9));
   NOR2_X1 i_0_8_10 (.A1(n_0_8_8), .A2(n_0_8_9), .ZN(n_0_8_10));
   AOI21_X1 i_0_8_11 (.A(ST[6]), .B1(n_0_8_10), .B2(ST[5]), .ZN(n_0_8_11));
   INV_X1 i_0_8_12 (.A(SW), .ZN(n_0_8_12));
   NAND2_X1 i_0_8_13 (.A1(n_0_8_11), .A2(n_0_8_12), .ZN(n_0_8_13));
   NOR2_X1 i_0_8_14 (.A1(SFA), .A2(SFD), .ZN(n_0_8_14));
   AOI211_X1 i_0_8_15 (.A(n_0_8_4), .B(n_0_8_7), .C1(n_0_8_13), .C2(n_0_8_14), 
      .ZN(n_0_8_15));
   NOR3_X1 i_0_8_16 (.A1(n_0_8_3), .A2(n_0_3), .A3(n_0_4), .ZN(n_0_8_16));
   INV_X1 i_0_8_17 (.A(SFA), .ZN(n_0_8_17));
   AOI21_X1 i_0_8_18 (.A(SRD), .B1(n_0_8_17), .B2(SW), .ZN(n_0_8_18));
   INV_X1 i_0_8_19 (.A(n_0_8_11), .ZN(n_0_8_19));
   INV_X1 i_0_8_20 (.A(ST[6]), .ZN(n_0_8_20));
   NAND3_X1 i_0_8_21 (.A1(ST[0]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_8_21));
   NOR3_X1 i_0_8_22 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_8_22));
   AOI21_X1 i_0_8_23 (.A(n_0_8_20), .B1(n_0_8_21), .B2(n_0_8_22), .ZN(n_0_8_23));
   INV_X1 i_0_8_24 (.A(n_0_8_23), .ZN(n_0_8_24));
   NAND2_X1 i_0_8_25 (.A1(n_0_8_19), .A2(n_0_8_24), .ZN(n_0_8_25));
   NOR2_X1 i_0_8_26 (.A1(n_0_8_7), .A2(n_0_8_14), .ZN(n_0_8_26));
   OAI211_X1 i_0_8_27 (.A(n_0_8_16), .B(n_0_8_18), .C1(n_0_8_25), .C2(n_0_8_26), 
      .ZN(n_0_8_27));
   AOI21_X1 i_0_8_28 (.A(n_0_8_11), .B1(n_0_8_24), .B2(n_0_8_26), .ZN(n_0_8_28));
   NOR2_X1 i_0_8_29 (.A1(n_0_8_1), .A2(n_0_5), .ZN(n_0_8_29));
   OR2_X1 i_0_8_30 (.A1(n_0_8_2), .A2(n_0_8_3), .ZN(n_0_8_30));
   INV_X1 i_0_8_31 (.A(n_0_8_30), .ZN(n_0_8_31));
   AOI21_X1 i_0_8_32 (.A(n_0_8_29), .B1(n_0_8_31), .B2(n_0_8_12), .ZN(n_0_8_32));
   OAI21_X1 i_0_8_33 (.A(n_0_8_27), .B1(n_0_8_28), .B2(n_0_8_32), .ZN(n_0_8_33));
   NOR2_X1 i_0_8_34 (.A1(n_0_8_2), .A2(n_0_5), .ZN(n_0_8_34));
   NAND2_X1 i_0_8_35 (.A1(n_0_8_24), .A2(SFD), .ZN(n_0_8_35));
   OAI211_X1 i_0_8_36 (.A(n_0_8_13), .B(n_0_8_17), .C1(SW), .C2(n_0_8_35), 
      .ZN(n_0_8_36));
   AOI211_X1 i_0_8_37 (.A(n_0_8_15), .B(n_0_8_33), .C1(n_0_8_34), .C2(n_0_8_36), 
      .ZN(n_0_8_37));
   NAND2_X1 i_0_8_38 (.A1(n_0_3), .A2(n_0_5), .ZN(n_0_8_38));
   INV_X1 i_0_8_39 (.A(n_0_8_38), .ZN(n_0_8_39));
   AOI211_X1 i_0_8_40 (.A(SRD), .B(n_0_8_23), .C1(n_0_8_13), .C2(n_0_8_17), 
      .ZN(n_0_8_40));
   INV_X1 i_0_8_41 (.A(n_0_8_35), .ZN(n_0_8_41));
   OAI21_X1 i_0_8_42 (.A(n_0_8_39), .B1(n_0_8_40), .B2(n_0_8_41), .ZN(n_0_8_42));
   AOI21_X1 i_0_8_43 (.A(Rst), .B1(n_0_8_37), .B2(n_0_8_42), .ZN(n_0_0));
   INV_X1 i_0_8_44 (.A(n_0_8_29), .ZN(n_0_8_43));
   NAND2_X1 i_0_8_45 (.A1(n_0_8_19), .A2(n_0_8_12), .ZN(n_0_8_44));
   OAI221_X1 i_0_8_46 (.A(n_0_8_38), .B1(n_0_8_11), .B2(n_0_8_43), .C1(n_0_8_44), 
      .C2(n_0_8_30), .ZN(n_0_8_45));
   NOR2_X1 i_0_8_47 (.A1(SFA), .A2(SRD), .ZN(n_0_8_46));
   INV_X1 i_0_8_48 (.A(n_0_8_46), .ZN(n_0_8_47));
   OAI211_X1 i_0_8_49 (.A(n_0_8_45), .B(n_0_8_35), .C1(n_0_8_23), .C2(n_0_8_47), 
      .ZN(n_0_8_48));
   NOR2_X1 i_0_8_50 (.A1(n_0_8_4), .A2(SFD), .ZN(n_0_8_49));
   INV_X1 i_0_8_51 (.A(n_0_8_49), .ZN(n_0_8_50));
   INV_X1 i_0_8_52 (.A(n_0_8_16), .ZN(n_0_8_51));
   AOI21_X1 i_0_8_53 (.A(n_0_8_46), .B1(n_0_8_50), .B2(n_0_8_51), .ZN(n_0_8_52));
   NOR2_X1 i_0_8_54 (.A1(n_0_8_24), .A2(SW), .ZN(n_0_8_53));
   INV_X1 i_0_8_55 (.A(n_0_8_53), .ZN(n_0_8_54));
   OAI211_X1 i_0_8_56 (.A(n_0_8_17), .B(n_0_8_54), .C1(n_0_8_44), .C2(n_0_8_6), 
      .ZN(n_0_8_55));
   AOI221_X1 i_0_8_57 (.A(n_0_8_52), .B1(n_0_8_53), .B2(n_0_8_49), .C1(n_0_8_55), 
      .C2(n_0_8_34), .ZN(n_0_8_56));
   AOI21_X1 i_0_8_58 (.A(Rst), .B1(n_0_8_48), .B2(n_0_8_56), .ZN(n_0_1));
   OAI21_X1 i_0_8_59 (.A(n_0_8_30), .B1(SFA), .B2(n_0_8_2), .ZN(n_0_8_57));
   INV_X1 i_0_8_60 (.A(n_0_8_25), .ZN(n_0_8_58));
   NOR2_X1 i_0_8_61 (.A1(n_0_8_23), .A2(n_0_8_29), .ZN(n_0_8_59));
   AND2_X1 i_0_8_62 (.A1(n_0_8_1), .A2(n_0_8_38), .ZN(n_0_8_60));
   OAI33_X1 i_0_8_63 (.A1(n_0_8_58), .A2(n_0_8_59), .A3(n_0_8_60), .B1(SFA), 
      .B2(SRD), .B3(SFD), .ZN(n_0_8_61));
   NAND2_X1 i_0_8_64 (.A1(n_0_8_60), .A2(n_0_8_4), .ZN(n_0_8_62));
   AOI221_X1 i_0_8_65 (.A(n_0_8_57), .B1(n_0_8_16), .B2(n_0_8_46), .C1(n_0_8_61), 
      .C2(n_0_8_62), .ZN(n_0_8_63));
   AOI211_X1 i_0_8_66 (.A(Rst), .B(n_0_8_63), .C1(n_0_8_12), .C2(n_0_8_58), 
      .ZN(n_0_2));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_3));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_4));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_5));
endmodule
