/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:10:47 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3925653259 */

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

   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_2_1;
   wire n_0_2_2;
   wire n_0_3_0;
   wire n_0_3_1;
   wire n_0_3_2;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_1;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_5_2;
   wire n_0_5_3;
   wire n_0_5_4;
   wire n_0_5_5;
   wire n_0_5_6;
   wire n_0_5_7;
   wire n_0_5_8;
   wire n_0_5_9;
   wire n_0_5_10;
   wire n_0_2;
   wire n_0_5_11;
   wire n_0_5_12;
   wire n_0_5_13;
   wire n_0_5_14;
   wire n_0_5_15;
   wire n_0_5_16;
   wire n_0_5_17;
   wire n_0_5_18;
   wire n_0_3;
   wire n_0_5_19;
   wire n_0_5_20;
   wire n_0_5_21;
   wire n_0_5_22;
   wire n_0_5_23;
   wire n_0_5_24;
   wire n_0_5_25;
   wire n_0_5_26;
   wire n_0_5_27;
   wire n_0_5_28;
   wire n_0_5_29;
   wire n_0_5_30;
   wire n_0_5_31;
   wire n_0_5_32;
   wire n_0_5_33;
   wire n_0_5_34;
   wire n_0_5_35;
   wire n_0_4;
   wire n_0_5_36;
   wire n_0_5;
   wire n_0_5_37;
   wire n_0_5_38;
   wire n_0_5_39;
   wire n_0_5_40;
   wire n_0_5_41;
   wire n_0_5_42;
   wire n_0_5_43;
   wire n_0_5_44;
   wire n_0_5_45;
   wire n_0_6;
   wire n_0_0;
   wire n_0_5_46;
   wire n_0_5_47;
   wire n_0_5_48;
   wire n_0_5_49;
   wire n_0_5_50;
   wire [2:0]state;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;

   DLH_X1 cooler_reg (.D(n_0_6), .G(n_0_5), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_4), .G(n_0_5), .Q(heater));
   INV_X1 i_0_0_0 (.A(n_0_0_0), .ZN(display[0]));
   NAND2_X1 i_0_0_1 (.A1(n_0_0_1), .A2(state[0]), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_0_1));
   NAND2_X1 i_0_1_0 (.A1(state[0]), .A2(display[1]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[2]), .ZN(alarmbuzz));
   INV_X1 i_0_2_0 (.A(n_0_2_0), .ZN(winbuzz));
   NAND3_X1 i_0_2_1 (.A1(display[2]), .A2(n_0_2_2), .A3(n_0_2_1), .ZN(n_0_2_0));
   INV_X1 i_0_2_2 (.A(state[0]), .ZN(n_0_2_1));
   INV_X1 i_0_2_3 (.A(display[1]), .ZN(n_0_2_2));
   INV_X1 i_0_3_0 (.A(n_0_3_0), .ZN(rdoor));
   NAND3_X1 i_0_3_1 (.A1(display[1]), .A2(n_0_3_2), .A3(n_0_3_1), .ZN(n_0_3_0));
   INV_X1 i_0_3_2 (.A(state[0]), .ZN(n_0_3_1));
   INV_X1 i_0_3_3 (.A(display[2]), .ZN(n_0_3_2));
   INV_X1 i_0_4_0 (.A(n_0_4_0), .ZN(fdoor));
   NAND2_X1 i_0_4_1 (.A1(state[0]), .A2(n_0_4_1), .ZN(n_0_4_0));
   NOR2_X1 i_0_4_2 (.A1(display[1]), .A2(display[2]), .ZN(n_0_4_1));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(n_0_1));
   AOI221_X1 i_0_5_1 (.A(n_0_5_1), .B1(n_0_5_10), .B2(n_0_5_9), .C1(n_0_5_25), 
      .C2(n_0_5_7), .ZN(n_0_5_0));
   OAI211_X1 i_0_5_2 (.A(n_0_5_2), .B(n_0_5_3), .C1(n_0_5_35), .C2(n_0_5_5), 
      .ZN(n_0_5_1));
   OR3_X1 i_0_5_3 (.A1(SW), .A2(n_0_5_26), .A3(n_0_5_5), .ZN(n_0_5_2));
   OAI21_X1 i_0_5_4 (.A(n_0_5_20), .B1(n_0_5_6), .B2(n_0_5_4), .ZN(n_0_5_3));
   NOR4_X1 i_0_5_5 (.A1(SFD), .A2(n_0_5_33), .A3(n_0_5_42), .A4(SW), .ZN(n_0_5_4));
   AOI21_X1 i_0_5_6 (.A(n_0_5_43), .B1(n_0_5_39), .B2(n_0_5_6), .ZN(n_0_5_5));
   OAI21_X1 i_0_5_7 (.A(n_0_5_47), .B1(SRD), .B2(n_0_5_46), .ZN(n_0_5_6));
   OAI21_X1 i_0_5_8 (.A(n_0_5_46), .B1(SW), .B2(n_0_5_8), .ZN(n_0_5_7));
   OAI21_X1 i_0_5_9 (.A(n_0_5_39), .B1(SFD), .B2(n_0_5_43), .ZN(n_0_5_8));
   NOR2_X1 i_0_5_10 (.A1(SRD), .A2(n_0_5_27), .ZN(n_0_5_9));
   OAI21_X1 i_0_5_11 (.A(n_0_5_46), .B1(SW), .B2(n_0_5_31), .ZN(n_0_5_10));
   OAI21_X1 i_0_5_12 (.A(n_0_5_11), .B1(n_0_5_24), .B2(n_0_5_16), .ZN(n_0_2));
   AOI22_X1 i_0_5_13 (.A1(n_0_5_15), .A2(n_0_5_14), .B1(n_0_5_13), .B2(n_0_5_12), 
      .ZN(n_0_5_11));
   OAI22_X1 i_0_5_14 (.A1(n_0_5_34), .A2(n_0_5_27), .B1(SFD), .B2(n_0_5_21), 
      .ZN(n_0_5_12));
   OAI21_X1 i_0_5_15 (.A(n_0_5_34), .B1(SW), .B2(n_0_5_39), .ZN(n_0_5_13));
   OAI21_X1 i_0_5_16 (.A(n_0_5_35), .B1(SW), .B2(n_0_5_26), .ZN(n_0_5_14));
   OAI21_X1 i_0_5_17 (.A(n_0_5_39), .B1(n_0_5_34), .B2(n_0_5_30), .ZN(n_0_5_15));
   NOR2_X1 i_0_5_18 (.A1(SFA), .A2(n_0_5_17), .ZN(n_0_5_16));
   AOI211_X1 i_0_5_19 (.A(SW), .B(n_0_5_43), .C1(n_0_5_39), .C2(n_0_5_18), 
      .ZN(n_0_5_17));
   NAND2_X1 i_0_5_20 (.A1(n_0_5_47), .A2(SRD), .ZN(n_0_5_18));
   OAI222_X1 i_0_5_21 (.A1(n_0_5_35), .A2(n_0_5_29), .B1(n_0_5_28), .B2(n_0_5_22), 
      .C1(n_0_5_28), .C2(n_0_5_19), .ZN(n_0_3));
   NAND2_X1 i_0_5_22 (.A1(n_0_5_32), .A2(n_0_5_20), .ZN(n_0_5_19));
   INV_X1 i_0_5_23 (.A(n_0_5_21), .ZN(n_0_5_20));
   OAI21_X1 i_0_5_24 (.A(n_0_5_35), .B1(n_0_7), .B2(n_0_5_37), .ZN(n_0_5_21));
   INV_X1 i_0_5_25 (.A(n_0_5_23), .ZN(n_0_5_22));
   OAI221_X1 i_0_5_26 (.A(n_0_5_26), .B1(SFA), .B2(n_0_5_24), .C1(n_0_5_33), 
      .C2(n_0_5_27), .ZN(n_0_5_23));
   INV_X1 i_0_5_27 (.A(n_0_5_25), .ZN(n_0_5_24));
   NOR3_X1 i_0_5_28 (.A1(n_0_7), .A2(n_0_9), .A3(n_0_5_49), .ZN(n_0_5_25));
   NAND3_X1 i_0_5_29 (.A1(n_0_5_50), .A2(n_0_9), .A3(n_0_8), .ZN(n_0_5_26));
   NAND3_X1 i_0_5_30 (.A1(n_0_5_49), .A2(n_0_9), .A3(n_0_5_50), .ZN(n_0_5_27));
   NOR2_X1 i_0_5_31 (.A1(SW), .A2(n_0_5_38), .ZN(n_0_5_28));
   AOI21_X1 i_0_5_32 (.A(n_0_5_38), .B1(SW), .B2(n_0_5_32), .ZN(n_0_5_29));
   INV_X1 i_0_5_33 (.A(n_0_5_31), .ZN(n_0_5_30));
   NOR2_X1 i_0_5_34 (.A1(SFD), .A2(n_0_5_38), .ZN(n_0_5_31));
   NOR2_X1 i_0_5_35 (.A1(SFD), .A2(n_0_5_33), .ZN(n_0_5_32));
   INV_X1 i_0_5_36 (.A(n_0_5_34), .ZN(n_0_5_33));
   NOR2_X1 i_0_5_37 (.A1(SRD), .A2(SFA), .ZN(n_0_5_34));
   OAI211_X1 i_0_5_38 (.A(n_0_7), .B(n_0_5_36), .C1(n_0_5_49), .C2(n_0_9), 
      .ZN(n_0_5_35));
   NOR2_X1 i_0_5_39 (.A1(n_0_5_50), .A2(n_0_5_36), .ZN(n_0_4));
   NAND2_X1 i_0_5_40 (.A1(n_0_5_49), .A2(n_0_9), .ZN(n_0_5_36));
   AOI21_X1 i_0_5_41 (.A(n_0_5_50), .B1(n_0_5_38), .B2(n_0_5_37), .ZN(n_0_5));
   NOR2_X1 i_0_5_42 (.A1(n_0_8), .A2(n_0_9), .ZN(n_0_5_37));
   NAND2_X1 i_0_5_43 (.A1(n_0_5_42), .A2(n_0_5_39), .ZN(n_0_5_38));
   OAI21_X1 i_0_5_44 (.A(ST[6]), .B1(n_0_5_41), .B2(n_0_5_40), .ZN(n_0_5_39));
   OR3_X1 i_0_5_45 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_5_40));
   AND3_X1 i_0_5_46 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_5_41));
   INV_X1 i_0_5_47 (.A(n_0_5_43), .ZN(n_0_5_42));
   AOI21_X1 i_0_5_48 (.A(ST[6]), .B1(ST[5]), .B2(n_0_5_44), .ZN(n_0_5_43));
   NOR2_X1 i_0_5_49 (.A1(n_0_5_48), .A2(n_0_5_45), .ZN(n_0_5_44));
   NOR3_X1 i_0_5_50 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_5_45));
   NAND2_X1 i_0_5_51 (.A1(n_0_7), .A2(n_0_5_49), .ZN(n_0_6));
   INV_X1 i_0_5_52 (.A(Rst), .ZN(n_0_0));
   INV_X1 i_0_5_53 (.A(SFA), .ZN(n_0_5_46));
   INV_X1 i_0_5_54 (.A(SFD), .ZN(n_0_5_47));
   INV_X1 i_0_5_55 (.A(ST[4]), .ZN(n_0_5_48));
   INV_X1 i_0_5_56 (.A(n_0_8), .ZN(n_0_5_49));
   INV_X1 i_0_5_57 (.A(n_0_7), .ZN(n_0_5_50));
   DFFR_X2 \state_reg[0]  (.D(n_0_1), .RN(n_0_0), .CK(clk), .Q(state[0]), .QN());
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_7));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(display[1]), .Z(n_0_8));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(state[0]), .Z(n_0_9));
   DFFR_X2 \state_reg[2]  (.D(n_0_3), .RN(n_0_0), .CK(clk), .Q(display[2]), 
      .QN());
   DFFR_X2 \state_reg[1]  (.D(n_0_2), .RN(n_0_0), .CK(clk), .Q(display[1]), 
      .QN());
endmodule
