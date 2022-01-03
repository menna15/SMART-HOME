/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 13:31:08 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2118518694 */

module try_op1(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, alarmbuzz, 
      heater, cooler, display);
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

   wire [2:0]next_state;
   wire n_0_0_0;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_1_0;
   wire n_0_5;
   wire n_0_1_1;
   wire n_0_1_2;
   wire n_0_1_3;
   wire n_0_1_4;
   wire n_0_1_5;
   wire n_0_1_6;
   wire n_0_1_7;
   wire n_0_6;
   wire n_0_1_8;
   wire n_0_1_9;
   wire n_0_1_10;
   wire n_0_1_11;
   wire n_0_1_12;
   wire n_0_1_13;
   wire n_0_1_14;
   wire n_0_1_15;
   wire n_0_1_16;
   wire n_0_1_17;
   wire n_0_1_18;
   wire n_0_1_19;
   wire n_0_1_20;
   wire n_0_1_21;
   wire n_0_1_22;
   wire n_0_1_23;
   wire n_0_1_24;
   wire n_0_1_25;
   wire n_0_1_26;
   wire n_0_1_27;
   wire n_0_1_28;
   wire n_0_1_29;
   wire n_0_1_30;
   wire n_0_1_31;
   wire n_0_1_32;
   wire n_0_1_33;
   wire n_0_1_34;
   wire n_0_1_35;
   wire n_0_1_36;
   wire n_0_1_37;
   wire n_0_1_38;
   wire n_0_1_39;
   wire n_0_1_40;

   DLH_X1 \next_state_reg[2]  (.D(n_0_6), .G(n_0_3), .Q(next_state[2]));
   DLH_X1 \next_state_reg[1]  (.D(n_0_5), .G(n_0_3), .Q(next_state[1]));
   DLH_X1 \next_state_reg[0]  (.D(n_0_4), .G(n_0_3), .Q(next_state[0]));
   DFF_X1 \current_state_reg[2]  (.D(n_0_2), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_1), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_0), .CK(Clk), .Q(display[0]), .QN());
   INV_X1 i_0_0_0 (.A(Rst), .ZN(n_0_0_0));
   AND2_X1 i_0_0_1 (.A1(n_0_0_0), .A2(next_state[0]), .ZN(n_0_0));
   AND2_X1 i_0_0_2 (.A1(n_0_0_0), .A2(next_state[1]), .ZN(n_0_1));
   AND2_X1 i_0_0_3 (.A1(n_0_0_0), .A2(next_state[2]), .ZN(n_0_2));
   NOR3_X1 i_0_1_0 (.A1(n_0_1_40), .A2(display[1]), .A3(n_0_1_38), .ZN(heater));
   OAI211_X1 i_0_1_1 (.A(n_0_1_6), .B(n_0_6), .C1(n_0_1_30), .C2(n_0_1_2), 
      .ZN(n_0_3));
   OAI21_X1 i_0_1_2 (.A(n_0_1_19), .B1(n_0_1_13), .B2(n_0_1_0), .ZN(n_0_4));
   NOR2_X1 i_0_1_3 (.A1(n_0_1_8), .A2(n_0_1_1), .ZN(n_0_1_0));
   NOR3_X1 i_0_1_4 (.A1(n_0_1_17), .A2(n_0_1_1), .A3(n_0_1_5), .ZN(n_0_5));
   NOR2_X1 i_0_1_5 (.A1(n_0_1_32), .A2(n_0_1_2), .ZN(n_0_1_1));
   INV_X1 i_0_1_6 (.A(n_0_1_3), .ZN(n_0_1_2));
   OAI21_X1 i_0_1_7 (.A(n_0_1_24), .B1(n_0_1_21), .B2(n_0_1_4), .ZN(n_0_1_3));
   OR3_X1 i_0_1_8 (.A1(SFD), .A2(SW), .A3(n_0_1_26), .ZN(n_0_1_4));
   INV_X1 i_0_1_9 (.A(n_0_1_6), .ZN(n_0_1_5));
   OAI21_X1 i_0_1_10 (.A(SW), .B1(alarmbuzz), .B2(n_0_1_7), .ZN(n_0_1_6));
   NOR2_X1 i_0_1_11 (.A1(SFA), .A2(n_0_1_11), .ZN(n_0_1_7));
   NOR3_X1 i_0_1_12 (.A1(n_0_1_13), .A2(n_0_1_8), .A3(n_0_1_17), .ZN(n_0_6));
   AND2_X1 i_0_1_13 (.A1(SFA), .A2(n_0_1_9), .ZN(n_0_1_8));
   OAI21_X1 i_0_1_14 (.A(n_0_1_11), .B1(n_0_1_18), .B2(n_0_1_10), .ZN(n_0_1_9));
   INV_X1 i_0_1_15 (.A(alarmbuzz), .ZN(n_0_1_10));
   NOR2_X1 i_0_1_16 (.A1(n_0_1_39), .A2(n_0_1_27), .ZN(alarmbuzz));
   OAI22_X1 i_0_1_17 (.A1(n_0_1_30), .A2(n_0_1_29), .B1(rdoor), .B2(n_0_1_12), 
      .ZN(n_0_1_11));
   AOI211_X1 i_0_1_18 (.A(SRD), .B(n_0_1_15), .C1(display[1]), .C2(display[0]), 
      .ZN(n_0_1_12));
   NOR3_X1 i_0_1_19 (.A1(n_0_1_39), .A2(display[0]), .A3(display[2]), .ZN(rdoor));
   AOI21_X1 i_0_1_20 (.A(n_0_1_14), .B1(n_0_1_31), .B2(n_0_1_23), .ZN(n_0_1_13));
   OAI211_X1 i_0_1_21 (.A(SRD), .B(n_0_1_16), .C1(n_0_1_39), .C2(n_0_1_28), 
      .ZN(n_0_1_14));
   INV_X1 i_0_1_22 (.A(n_0_1_16), .ZN(n_0_1_15));
   OAI21_X1 i_0_1_23 (.A(SFD), .B1(display[1]), .B2(n_0_1_27), .ZN(n_0_1_16));
   NOR2_X1 i_0_1_24 (.A1(display[1]), .A2(n_0_1_27), .ZN(fdoor));
   OAI21_X1 i_0_1_25 (.A(n_0_1_19), .B1(n_0_1_26), .B2(n_0_1_18), .ZN(n_0_1_17));
   OR3_X1 i_0_1_26 (.A1(SFD), .A2(SW), .A3(n_0_1_31), .ZN(n_0_1_18));
   NAND2_X1 i_0_1_27 (.A1(SFD), .A2(n_0_1_20), .ZN(n_0_1_19));
   OAI21_X1 i_0_1_28 (.A(n_0_1_21), .B1(n_0_1_31), .B2(n_0_1_24), .ZN(n_0_1_20));
   AOI21_X1 i_0_1_29 (.A(cooler), .B1(n_0_1_27), .B2(n_0_1_22), .ZN(n_0_1_21));
   INV_X1 i_0_1_30 (.A(n_0_1_23), .ZN(n_0_1_22));
   OAI21_X1 i_0_1_31 (.A(n_0_1_39), .B1(n_0_1_40), .B2(display[0]), .ZN(n_0_1_23));
   NOR3_X1 i_0_1_32 (.A1(n_0_1_39), .A2(display[0]), .A3(n_0_1_40), .ZN(cooler));
   AOI21_X1 i_0_1_33 (.A(winbuzz), .B1(n_0_1_28), .B2(n_0_1_25), .ZN(n_0_1_24));
   OAI21_X1 i_0_1_34 (.A(n_0_1_39), .B1(n_0_1_27), .B2(n_0_1_26), .ZN(n_0_1_25));
   OR2_X1 i_0_1_35 (.A1(SFA), .A2(SRD), .ZN(n_0_1_26));
   NAND2_X1 i_0_1_36 (.A1(n_0_1_40), .A2(display[0]), .ZN(n_0_1_27));
   AOI211_X1 i_0_1_37 (.A(display[2]), .B(SW), .C1(n_0_1_38), .C2(SFA), .ZN(
      n_0_1_28));
   INV_X1 i_0_1_38 (.A(winbuzz), .ZN(n_0_1_29));
   NOR3_X1 i_0_1_39 (.A1(n_0_1_40), .A2(display[0]), .A3(display[1]), .ZN(
      winbuzz));
   INV_X1 i_0_1_40 (.A(n_0_1_31), .ZN(n_0_1_30));
   OAI21_X1 i_0_1_41 (.A(n_0_1_32), .B1(n_0_1_37), .B2(n_0_1_35), .ZN(n_0_1_31));
   OR2_X1 i_0_1_42 (.A1(ST[6]), .A2(n_0_1_33), .ZN(n_0_1_32));
   AND3_X1 i_0_1_43 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_1_34), .ZN(n_0_1_33));
   OR3_X1 i_0_1_44 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_1_34));
   NOR4_X1 i_0_1_45 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .A4(n_0_1_36), .ZN(
      n_0_1_35));
   AND3_X1 i_0_1_46 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_1_36));
   INV_X1 i_0_1_47 (.A(ST[6]), .ZN(n_0_1_37));
   INV_X1 i_0_1_48 (.A(display[0]), .ZN(n_0_1_38));
   INV_X1 i_0_1_49 (.A(display[1]), .ZN(n_0_1_39));
   INV_X1 i_0_1_50 (.A(display[2]), .ZN(n_0_1_40));
endmodule
