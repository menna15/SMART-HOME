/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sun Jan  2 23:13:49 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1784704788 */

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
   wire n_0_1;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_2;
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

   DFF_X1 \current_state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(display[0]), .QN());
   AOI21_X1 i_0_0_0 (.A(Rst), .B1(n_0_0_6), .B2(n_0_0_0), .ZN(n_0_0));
   OAI21_X1 i_0_0_1 (.A(n_0_0_1), .B1(n_0_0_5), .B2(n_0_0_25), .ZN(n_0_0_0));
   OAI21_X1 i_0_0_2 (.A(n_0_0_2), .B1(n_0_0_3), .B2(n_0_0_13), .ZN(n_0_0_1));
   OAI211_X1 i_0_0_3 (.A(n_0_0_37), .B(n_0_0_11), .C1(winbuzz), .C2(display[0]), 
      .ZN(n_0_0_2));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_33), .A2(n_0_0_22), .ZN(alarmbuzz));
   OAI21_X1 i_0_0_5 (.A(n_0_0_22), .B1(n_0_0_5), .B2(n_0_0_4), .ZN(n_0_0_3));
   NOR3_X1 i_0_0_6 (.A1(n_0_0_34), .A2(n_0_0_32), .A3(display[1]), .ZN(heater));
   NOR2_X1 i_0_0_7 (.A1(SW), .A2(SRD), .ZN(n_0_0_4));
   OAI21_X1 i_0_0_8 (.A(n_0_0_35), .B1(n_0_0_36), .B2(SRD), .ZN(n_0_0_5));
   OAI21_X1 i_0_0_9 (.A(n_0_0_8), .B1(n_0_0_7), .B2(rdoor), .ZN(n_0_0_6));
   NOR3_X1 i_0_0_10 (.A1(n_0_0_22), .A2(display[1]), .A3(SRD), .ZN(n_0_0_7));
   NOR2_X1 i_0_0_11 (.A1(n_0_0_22), .A2(display[1]), .ZN(fdoor));
   OAI21_X1 i_0_0_12 (.A(n_0_0_36), .B1(n_0_0_10), .B2(SW), .ZN(n_0_0_8));
   AOI211_X1 i_0_0_13 (.A(Rst), .B(n_0_0_9), .C1(n_0_0_21), .C2(n_0_0_37), 
      .ZN(n_0_1));
   AOI221_X1 i_0_0_14 (.A(n_0_0_12), .B1(n_0_0_11), .B2(n_0_0_10), .C1(rdoor), 
      .C2(SFA), .ZN(n_0_0_9));
   NOR2_X1 i_0_0_15 (.A1(n_0_0_17), .A2(display[0]), .ZN(rdoor));
   AOI21_X1 i_0_0_16 (.A(n_0_0_25), .B1(n_0_0_37), .B2(SFD), .ZN(n_0_0_10));
   OAI22_X1 i_0_0_17 (.A1(display[1]), .A2(n_0_0_24), .B1(n_0_0_17), .B2(SW), 
      .ZN(n_0_0_11));
   AOI221_X1 i_0_0_18 (.A(n_0_0_13), .B1(SFD), .B2(n_0_0_22), .C1(n_0_0_15), 
      .C2(n_0_0_21), .ZN(n_0_0_12));
   XNOR2_X1 i_0_0_19 (.A(display[1]), .B(n_0_0_24), .ZN(n_0_0_13));
   NOR2_X1 i_0_0_20 (.A1(n_0_0_33), .A2(n_0_0_24), .ZN(cooler));
   AOI21_X1 i_0_0_21 (.A(Rst), .B1(n_0_0_23), .B2(n_0_0_14), .ZN(n_0_2));
   OAI22_X1 i_0_0_22 (.A1(n_0_0_15), .A2(n_0_0_28), .B1(n_0_0_18), .B2(n_0_0_16), 
      .ZN(n_0_0_14));
   OR2_X1 i_0_0_23 (.A1(SW), .A2(n_0_0_25), .ZN(n_0_0_15));
   AOI21_X1 i_0_0_24 (.A(n_0_0_17), .B1(n_0_0_32), .B2(SFA), .ZN(n_0_0_16));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_34), .A2(display[1]), .ZN(n_0_0_17));
   AOI21_X1 i_0_0_26 (.A(n_0_0_19), .B1(n_0_0_22), .B2(SFD), .ZN(n_0_0_18));
   NAND2_X1 i_0_0_27 (.A1(n_0_0_20), .A2(n_0_0_21), .ZN(n_0_0_19));
   NAND3_X1 i_0_0_28 (.A1(display[2]), .A2(display[1]), .A3(display[0]), 
      .ZN(n_0_0_20));
   NOR2_X1 i_0_0_29 (.A1(SFA), .A2(SRD), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_34), .A2(display[0]), .ZN(n_0_0_22));
   OAI21_X1 i_0_0_31 (.A(winbuzz), .B1(n_0_0_25), .B2(n_0_0_28), .ZN(n_0_0_23));
   NOR2_X1 i_0_0_32 (.A1(n_0_0_24), .A2(display[1]), .ZN(winbuzz));
   NAND2_X1 i_0_0_33 (.A1(n_0_0_32), .A2(display[2]), .ZN(n_0_0_24));
   AOI21_X1 i_0_0_34 (.A(ST[6]), .B1(n_0_0_27), .B2(n_0_0_26), .ZN(n_0_0_25));
   AND2_X1 i_0_0_35 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_26));
   OR3_X1 i_0_0_36 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_27));
   AND2_X1 i_0_0_37 (.A1(n_0_0_29), .A2(ST[6]), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_38 (.A1(n_0_0_30), .A2(n_0_0_31), .ZN(n_0_0_29));
   NOR3_X1 i_0_0_39 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_30));
   NAND3_X1 i_0_0_40 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_31));
   INV_X1 i_0_0_41 (.A(display[0]), .ZN(n_0_0_32));
   INV_X1 i_0_0_42 (.A(display[1]), .ZN(n_0_0_33));
   INV_X1 i_0_0_43 (.A(display[2]), .ZN(n_0_0_34));
   INV_X1 i_0_0_44 (.A(SFD), .ZN(n_0_0_35));
   INV_X1 i_0_0_45 (.A(SFA), .ZN(n_0_0_36));
   INV_X1 i_0_0_46 (.A(n_0_0_28), .ZN(n_0_0_37));
endmodule
