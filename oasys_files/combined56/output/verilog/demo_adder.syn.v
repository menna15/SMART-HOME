/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Tue Dec 28 19:37:46 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4196556358 */

module Combined56(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, 
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

   wire n_0_1_0;
   wire n_0_2_0;
   wire n_0_3_0;
   wire n_0_4_0;
   wire n_0_4_1;
   wire n_0_5_0;
   wire n_0_5_1;
   wire n_0_0;
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
   wire n_0_1;
   wire n_0_6_10;
   wire n_0_6_11;
   wire n_0_6_12;
   wire n_0_6_13;
   wire n_0_6_14;
   wire n_0_6_15;
   wire n_0_6_16;
   wire n_0_6_17;
   wire n_0_2;
   wire n_0_6_18;
   wire n_0_6_19;
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
   wire n_0_3;

   DFF_X2 \current_state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X2 \current_state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X2 \current_state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(display[0]), .QN());
   NAND2_X1 i_0_1_0 (.A1(display[1]), .A2(display[2]), .ZN(n_0_1_0));
   NOR2_X1 i_0_1_1 (.A1(n_0_1_0), .A2(display[0]), .ZN(cooler));
   NAND2_X1 i_0_2_0 (.A1(display[0]), .A2(display[2]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(display[1]), .ZN(heater));
   NAND2_X1 i_0_3_0 (.A1(display[0]), .A2(display[1]), .ZN(n_0_3_0));
   NOR2_X1 i_0_3_1 (.A1(n_0_3_0), .A2(display[2]), .ZN(alarmbuzz));
   NOR2_X1 i_0_4_0 (.A1(display[0]), .A2(display[1]), .ZN(n_0_4_0));
   NAND2_X1 i_0_4_1 (.A1(n_0_4_0), .A2(display[2]), .ZN(n_0_4_1));
   INV_X1 i_0_4_2 (.A(n_0_4_1), .ZN(winbuzz));
   INV_X1 i_0_5_0 (.A(n_0_5_0), .ZN(fdoor));
   NAND2_X1 i_0_5_1 (.A1(display[0]), .A2(n_0_5_1), .ZN(n_0_5_0));
   NOR2_X1 i_0_5_2 (.A1(display[2]), .A2(display[1]), .ZN(n_0_5_1));
   NOR2_X1 i_0_6_0 (.A1(Rst), .A2(n_0_6_0), .ZN(n_0_0));
   AOI222_X1 i_0_6_1 (.A1(n_0_6_15), .A2(n_0_6_6), .B1(n_0_6_13), .B2(n_0_6_4), 
      .C1(n_0_6_2), .C2(n_0_6_1), .ZN(n_0_6_0));
   OAI21_X1 i_0_6_2 (.A(n_0_6_45), .B1(SW), .B2(n_0_6_12), .ZN(n_0_6_1));
   OAI22_X1 i_0_6_3 (.A1(display[0]), .A2(n_0_6_35), .B1(SRD), .B2(n_0_6_3), 
      .ZN(n_0_6_2));
   NAND2_X1 i_0_6_4 (.A1(n_0_6_42), .A2(n_0_6_31), .ZN(n_0_6_3));
   AOI21_X1 i_0_6_5 (.A(n_0_6_5), .B1(n_0_6_41), .B2(n_0_6_20), .ZN(n_0_6_4));
   AOI21_X1 i_0_6_6 (.A(n_0_6_38), .B1(n_0_6_25), .B2(n_0_6_9), .ZN(n_0_6_5));
   NOR2_X1 i_0_6_7 (.A1(n_0_6_31), .A2(n_0_6_7), .ZN(n_0_6_6));
   AOI21_X1 i_0_6_8 (.A(n_0_6_9), .B1(n_0_6_38), .B2(n_0_6_8), .ZN(n_0_6_7));
   NOR2_X1 i_0_6_9 (.A1(SW), .A2(SRD), .ZN(n_0_6_8));
   OAI21_X1 i_0_6_10 (.A(n_0_6_44), .B1(n_0_6_45), .B2(SRD), .ZN(n_0_6_9));
   NOR3_X1 i_0_6_11 (.A1(n_0_6_11), .A2(n_0_6_10), .A3(Rst), .ZN(n_0_1));
   NOR3_X1 i_0_6_12 (.A1(SRD), .A2(n_0_6_24), .A3(SFA), .ZN(n_0_6_10));
   AOI221_X1 i_0_6_13 (.A(n_0_6_14), .B1(n_0_6_36), .B2(n_0_6_34), .C1(n_0_6_13), 
      .C2(n_0_6_12), .ZN(n_0_6_11));
   AOI21_X1 i_0_6_14 (.A(n_0_6_38), .B1(SFD), .B2(n_0_6_25), .ZN(n_0_6_12));
   OAI21_X1 i_0_6_15 (.A(n_0_6_20), .B1(SW), .B2(n_0_6_35), .ZN(n_0_6_13));
   NOR2_X1 i_0_6_16 (.A1(n_0_6_42), .A2(display[0]), .ZN(rdoor));
   NOR3_X1 i_0_6_17 (.A1(n_0_6_30), .A2(n_0_6_17), .A3(n_0_6_16), .ZN(n_0_6_14));
   INV_X1 i_0_6_18 (.A(n_0_6_16), .ZN(n_0_6_15));
   OAI21_X1 i_0_6_19 (.A(n_0_6_20), .B1(n_0_6_42), .B2(n_0_6_21), .ZN(n_0_6_16));
   NOR3_X1 i_0_6_20 (.A1(SRD), .A2(n_0_6_37), .A3(SFA), .ZN(n_0_6_17));
   AOI211_X1 i_0_6_21 (.A(n_0_6_18), .B(Rst), .C1(n_0_6_37), .C2(n_0_6_23), 
      .ZN(n_0_2));
   INV_X1 i_0_6_22 (.A(n_0_6_19), .ZN(n_0_6_18));
   OAI21_X1 i_0_6_23 (.A(n_0_6_28), .B1(n_0_6_22), .B2(n_0_6_20), .ZN(n_0_6_19));
   NAND2_X1 i_0_6_24 (.A1(n_0_6_42), .A2(n_0_6_21), .ZN(n_0_6_20));
   NOR2_X1 i_0_6_25 (.A1(n_0_6_43), .A2(display[0]), .ZN(n_0_6_21));
   NOR2_X1 i_0_6_26 (.A1(n_0_6_38), .A2(n_0_6_24), .ZN(n_0_6_22));
   NOR2_X1 i_0_6_27 (.A1(n_0_6_28), .A2(n_0_6_24), .ZN(n_0_6_23));
   INV_X1 i_0_6_28 (.A(n_0_6_25), .ZN(n_0_6_24));
   OAI21_X1 i_0_6_29 (.A(ST[6]), .B1(n_0_6_27), .B2(n_0_6_26), .ZN(n_0_6_25));
   OR3_X1 i_0_6_30 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .ZN(n_0_6_26));
   AND3_X1 i_0_6_31 (.A1(ST[1]), .A2(ST[0]), .A3(ST[2]), .ZN(n_0_6_27));
   AOI22_X1 i_0_6_32 (.A1(n_0_6_36), .A2(n_0_6_33), .B1(n_0_6_45), .B2(n_0_6_29), 
      .ZN(n_0_6_28));
   NOR3_X1 i_0_6_33 (.A1(n_0_6_32), .A2(n_0_6_30), .A3(SRD), .ZN(n_0_6_29));
   NOR2_X1 i_0_6_34 (.A1(n_0_6_44), .A2(n_0_6_31), .ZN(n_0_6_30));
   NOR2_X1 i_0_6_35 (.A1(n_0_3), .A2(n_0_6_41), .ZN(n_0_6_31));
   NOR3_X1 i_0_6_36 (.A1(n_0_6_43), .A2(n_0_6_41), .A3(n_0_6_42), .ZN(n_0_6_32));
   INV_X1 i_0_6_37 (.A(n_0_6_34), .ZN(n_0_6_33));
   NOR2_X1 i_0_6_38 (.A1(n_0_6_45), .A2(display[0]), .ZN(n_0_6_34));
   INV_X1 i_0_6_39 (.A(n_0_6_36), .ZN(n_0_6_35));
   NOR2_X1 i_0_6_40 (.A1(n_0_3), .A2(n_0_6_42), .ZN(n_0_6_36));
   NOR2_X1 i_0_6_41 (.A1(SW), .A2(n_0_6_38), .ZN(n_0_6_37));
   AOI21_X1 i_0_6_42 (.A(ST[6]), .B1(ST[5]), .B2(n_0_6_39), .ZN(n_0_6_38));
   NOR2_X1 i_0_6_43 (.A1(n_0_6_46), .A2(n_0_6_40), .ZN(n_0_6_39));
   NOR3_X1 i_0_6_44 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_6_40));
   INV_X1 i_0_6_45 (.A(display[0]), .ZN(n_0_6_41));
   INV_X1 i_0_6_46 (.A(display[1]), .ZN(n_0_6_42));
   INV_X1 i_0_6_47 (.A(n_0_3), .ZN(n_0_6_43));
   INV_X1 i_0_6_48 (.A(SFD), .ZN(n_0_6_44));
   INV_X1 i_0_6_49 (.A(SFA), .ZN(n_0_6_45));
   INV_X1 i_0_6_50 (.A(ST[4]), .ZN(n_0_6_46));
   BUF_X1 rt_shieldBuf__1 (.A(display[2]), .Z(n_0_3));
endmodule
