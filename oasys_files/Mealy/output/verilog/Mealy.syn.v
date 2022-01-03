/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sun Jan  2 23:45:08 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 271876468 */

module Mealy(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, alarmbuzz, 
      heater, cooler, display);
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
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_1;
   wire n_0_0_16;
   wire n_0_0_17;
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
   wire n_0_2;
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
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;

   DFF_X1 \state_reg[2]  (.D(n_0_2), .CK(clk), .Q(state[2]), .QN());
   DFF_X1 \state_reg[1]  (.D(n_0_1), .CK(clk), .Q(state[1]), .QN());
   DFF_X1 \state_reg[0]  (.D(n_0_0), .CK(clk), .Q(state[0]), .QN());
   AOI211_X1 i_0_0_0 (.A(n_0_0_34), .B(n_0_0_27), .C1(n_0_0_41), .C2(n_0_0_40), 
      .ZN(heater));
   AOI211_X1 i_0_0_1 (.A(n_0_0_30), .B(n_0_0_27), .C1(n_0_0_41), .C2(n_0_0_40), 
      .ZN(cooler));
   OAI21_X1 i_0_0_2 (.A(n_0_0_22), .B1(n_0_0_1), .B2(n_0_0_0), .ZN(fdoor));
   NAND2_X1 i_0_0_3 (.A1(n_0_0_28), .A2(n_0_0_14), .ZN(n_0_0_0));
   AOI21_X1 i_0_0_4 (.A(n_0_0_4), .B1(n_0_0_50), .B2(n_0_0_49), .ZN(n_0_0_1));
   OAI33_X1 i_0_0_5 (.A1(n_0_0_42), .A2(n_0_0_26), .A3(n_0_0_45), .B1(n_0_0_29), 
      .B2(n_0_0_2), .B3(n_0_0_3), .ZN(rdoor));
   NAND2_X1 i_0_0_6 (.A1(SRD), .A2(n_0_0_52), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_7 (.A(n_0_0_50), .B1(n_0_0_20), .B2(n_0_0_4), .ZN(n_0_0_3));
   AND2_X1 i_0_0_8 (.A1(n_0_0_54), .A2(n_0_0_43), .ZN(n_0_0_4));
   AOI21_X1 i_0_0_9 (.A(n_0_0_38), .B1(n_0_0_39), .B2(n_0_0_29), .ZN(winbuzz));
   AND2_X1 i_0_0_10 (.A1(SFA), .A2(n_0_0_5), .ZN(alarmbuzz));
   OAI21_X1 i_0_0_11 (.A(n_0_0_6), .B1(state[0]), .B2(n_0_0_48), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_12 (.A1(n_0_0_53), .A2(n_0_0_7), .ZN(n_0_0_6));
   OAI22_X1 i_0_0_13 (.A1(state[1]), .A2(n_0_0_46), .B1(SFD), .B2(n_0_0_8), 
      .ZN(n_0_0_7));
   AOI21_X1 i_0_0_14 (.A(n_0_0_25), .B1(n_0_0_28), .B2(n_0_0_20), .ZN(n_0_0_8));
   AOI21_X1 i_0_0_15 (.A(Rst), .B1(n_0_0_10), .B2(n_0_0_9), .ZN(n_0_0));
   NAND2_X1 i_0_0_16 (.A1(n_0_0_10), .A2(n_0_0_9), .ZN(display[0]));
   AOI211_X1 i_0_0_17 (.A(n_0_0_21), .B(n_0_0_11), .C1(n_0_0_30), .C2(n_0_0_12), 
      .ZN(n_0_0_9));
   NAND3_X1 i_0_0_18 (.A1(SFA), .A2(n_0_0_25), .A3(n_0_0_42), .ZN(n_0_0_10));
   AOI21_X1 i_0_0_19 (.A(n_0_0_34), .B1(n_0_0_40), .B2(n_0_0_15), .ZN(n_0_0_11));
   INV_X1 i_0_0_20 (.A(n_0_0_13), .ZN(n_0_0_12));
   AOI22_X1 i_0_0_21 (.A1(n_0_0_53), .A2(n_0_0_19), .B1(n_0_0_18), .B2(n_0_0_14), 
      .ZN(n_0_0_13));
   AOI21_X1 i_0_0_22 (.A(n_0_0_52), .B1(state[0]), .B2(n_0_0_15), .ZN(n_0_0_14));
   OAI211_X1 i_0_0_23 (.A(n_0_0_54), .B(n_0_0_42), .C1(n_0_0_51), .C2(n_0_0_47), 
      .ZN(n_0_0_15));
   AND2_X1 i_0_0_24 (.A1(n_0_0_55), .A2(display[1]), .ZN(n_0_1));
   OAI222_X1 i_0_0_25 (.A1(n_0_0_23), .A2(n_0_0_21), .B1(n_0_0_17), .B2(n_0_0_16), 
      .C1(n_0_0_30), .C2(n_0_0_27), .ZN(display[1]));
   NAND2_X1 i_0_0_26 (.A1(n_0_0_52), .A2(n_0_0_34), .ZN(n_0_0_16));
   AOI21_X1 i_0_0_27 (.A(n_0_0_19), .B1(SRD), .B2(n_0_0_18), .ZN(n_0_0_17));
   OAI21_X1 i_0_0_28 (.A(state[1]), .B1(SW), .B2(state[2]), .ZN(n_0_0_18));
   AND2_X1 i_0_0_29 (.A1(SFA), .A2(n_0_0_20), .ZN(n_0_0_19));
   OAI21_X1 i_0_0_30 (.A(state[0]), .B1(SW), .B2(state[2]), .ZN(n_0_0_20));
   INV_X1 i_0_0_31 (.A(n_0_0_22), .ZN(n_0_0_21));
   NAND4_X1 i_0_0_32 (.A1(n_0_0_48), .A2(n_0_0_25), .A3(n_0_0_46), .A4(SFD), 
      .ZN(n_0_0_22));
   AOI21_X1 i_0_0_33 (.A(n_0_0_24), .B1(SFA), .B2(n_0_0_25), .ZN(n_0_0_23));
   NOR2_X1 i_0_0_34 (.A1(n_0_0_42), .A2(n_0_0_26), .ZN(n_0_0_24));
   INV_X1 i_0_0_35 (.A(n_0_0_26), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_36 (.A1(n_0_0_47), .A2(n_0_0_40), .ZN(n_0_0_26));
   AOI21_X1 i_0_0_37 (.A(n_0_0_39), .B1(n_0_0_54), .B2(n_0_0_44), .ZN(n_0_0_27));
   AND2_X1 i_0_0_38 (.A1(n_0_0_55), .A2(display[2]), .ZN(n_0_2));
   AOI22_X1 i_0_0_39 (.A1(n_0_0_41), .A2(n_0_0_40), .B1(n_0_0_38), .B2(n_0_0_28), 
      .ZN(display[2]));
   INV_X1 i_0_0_40 (.A(n_0_0_29), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_41 (.A1(n_0_0_34), .A2(n_0_0_30), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_42 (.A1(ST[6]), .A2(n_0_0_31), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_43 (.A1(n_0_0_33), .A2(n_0_0_32), .ZN(n_0_0_31));
   NOR3_X1 i_0_0_44 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_32));
   NAND3_X1 i_0_0_45 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_33));
   INV_X1 i_0_0_46 (.A(n_0_0_35), .ZN(n_0_0_34));
   AOI21_X1 i_0_0_47 (.A(ST[6]), .B1(n_0_0_37), .B2(n_0_0_36), .ZN(n_0_0_35));
   AND2_X1 i_0_0_48 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_36));
   OR3_X1 i_0_0_49 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_37));
   OR2_X1 i_0_0_50 (.A1(n_0_0_54), .A2(n_0_0_41), .ZN(n_0_0_38));
   INV_X1 i_0_0_51 (.A(n_0_0_40), .ZN(n_0_0_39));
   NAND3_X1 i_0_0_52 (.A1(n_0_0_50), .A2(n_0_0_49), .A3(state[2]), .ZN(n_0_0_40));
   NAND3_X1 i_0_0_53 (.A1(n_0_0_43), .A2(n_0_0_42), .A3(n_0_0_44), .ZN(n_0_0_41));
   NAND2_X1 i_0_0_54 (.A1(SRD), .A2(n_0_0_48), .ZN(n_0_0_42));
   OAI21_X1 i_0_0_55 (.A(SFA), .B1(state[2]), .B2(n_0_0_47), .ZN(n_0_0_43));
   NAND2_X1 i_0_0_56 (.A1(n_0_0_48), .A2(n_0_0_45), .ZN(n_0_0_44));
   AOI22_X1 i_0_0_57 (.A1(n_0_0_52), .A2(n_0_0_47), .B1(n_0_0_51), .B2(state[0]), 
      .ZN(n_0_0_45));
   NAND2_X1 i_0_0_58 (.A1(n_0_0_51), .A2(state[0]), .ZN(n_0_0_46));
   NAND2_X1 i_0_0_59 (.A1(state[1]), .A2(state[0]), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_60 (.A1(n_0_0_51), .A2(state[1]), .ZN(n_0_0_48));
   INV_X1 i_0_0_61 (.A(state[0]), .ZN(n_0_0_49));
   INV_X1 i_0_0_62 (.A(state[1]), .ZN(n_0_0_50));
   INV_X1 i_0_0_63 (.A(state[2]), .ZN(n_0_0_51));
   INV_X1 i_0_0_64 (.A(SFD), .ZN(n_0_0_52));
   INV_X1 i_0_0_65 (.A(SRD), .ZN(n_0_0_53));
   INV_X1 i_0_0_66 (.A(SW), .ZN(n_0_0_54));
   INV_X1 i_0_0_67 (.A(Rst), .ZN(n_0_0_55));
endmodule
