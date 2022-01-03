/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sun Jan  2 23:56:03 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 965443904 */

module Combined56TriBuffer(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, 
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

   wire [2:0]base_state;
   wire [2:0]current_state;
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
   wire n_0_1;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_2;
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
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;

   TBUF_X1 i_3 (.A(1'b0), .EN(1'b1), .Z(base_state[0]));
   TBUF_X1 i_5 (.A(1'b0), .EN(1'b1), .Z(base_state[1]));
   TBUF_X1 i_7 (.A(1'b0), .EN(1'b1), .Z(base_state[2]));
   DFF_X1 \current_state_reg[2]  (.D(n_0_2), .CK(clk), .Q(current_state[2]), 
      .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0_1), .CK(clk), .Q(current_state[1]), 
      .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0_0), .CK(clk), .Q(current_state[0]), 
      .QN());
   NOR2_X1 i_0_0_0 (.A1(n_0_0_28), .A2(current_state[1]), .ZN(fdoor));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_26), .A2(current_state[0]), .ZN(rdoor));
   NOR3_X1 i_0_0_2 (.A1(n_0_0_43), .A2(n_0_0_41), .A3(current_state[1]), 
      .ZN(heater));
   NOR3_X1 i_0_0_3 (.A1(n_0_0_43), .A2(n_0_0_42), .A3(current_state[0]), 
      .ZN(cooler));
   AOI21_X1 i_0_0_4 (.A(n_0_0_41), .B1(current_state[1]), .B2(current_state[2]), 
      .ZN(display[0]));
   AOI21_X1 i_0_0_5 (.A(n_0_0_42), .B1(current_state[0]), .B2(current_state[2]), 
      .ZN(display[1]));
   AOI21_X1 i_0_0_6 (.A(n_0_0_43), .B1(current_state[1]), .B2(current_state[0]), 
      .ZN(display[2]));
   NOR3_X1 i_0_0_7 (.A1(Rst), .A2(n_0_0_2), .A3(n_0_0_0), .ZN(n_0_0));
   NOR3_X1 i_0_0_8 (.A1(n_0_0_1), .A2(winbuzz), .A3(SFD), .ZN(n_0_0_0));
   NAND3_X1 i_0_0_9 (.A1(n_0_0_28), .A2(n_0_0_26), .A3(SRD), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_10 (.A(n_0_0_3), .B1(n_0_0_13), .B2(base_state[0]), .ZN(
      n_0_0_2));
   AOI221_X1 i_0_0_11 (.A(n_0_0_5), .B1(n_0_0_4), .B2(n_0_0_10), .C1(n_0_0_6), 
      .C2(winbuzz), .ZN(n_0_0_3));
   AOI221_X1 i_0_0_12 (.A(winbuzz), .B1(n_0_0_26), .B2(SFD), .C1(n_0_0_43), 
      .C2(current_state[0]), .ZN(n_0_0_4));
   AOI211_X1 i_0_0_13 (.A(n_0_0_28), .B(n_0_0_9), .C1(n_0_0_7), .C2(n_0_0_15), 
      .ZN(n_0_0_5));
   INV_X1 i_0_0_14 (.A(n_0_0_7), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_15 (.A(n_0_0_17), .B1(n_0_0_8), .B2(SRD), .ZN(n_0_0_7));
   NAND2_X1 i_0_0_16 (.A1(n_0_0_31), .A2(SFA), .ZN(n_0_0_8));
   NOR3_X1 i_0_0_17 (.A1(SRD), .A2(current_state[1]), .A3(n_0_0_10), .ZN(n_0_0_9));
   NOR2_X1 i_0_0_18 (.A1(SFA), .A2(n_0_0_11), .ZN(n_0_0_10));
   NOR2_X1 i_0_0_19 (.A1(SW), .A2(n_0_0_17), .ZN(n_0_0_11));
   AOI21_X1 i_0_0_20 (.A(Rst), .B1(n_0_0_12), .B2(n_0_0_14), .ZN(n_0_1));
   AOI21_X1 i_0_0_21 (.A(n_0_0_18), .B1(n_0_0_13), .B2(base_state[1]), .ZN(
      n_0_0_12));
   NOR4_X1 i_0_0_22 (.A1(n_0_0_29), .A2(SFD), .A3(SRD), .A4(SFA), .ZN(n_0_0_13));
   OAI211_X1 i_0_0_23 (.A(n_0_0_17), .B(n_0_0_21), .C1(winbuzz), .C2(n_0_0_16), 
      .ZN(n_0_0_14));
   NOR2_X1 i_0_0_24 (.A1(n_0_0_42), .A2(SW), .ZN(n_0_0_15));
   NOR2_X1 i_0_0_25 (.A1(n_0_0_26), .A2(SW), .ZN(n_0_0_16));
   AOI21_X1 i_0_0_26 (.A(n_0_0_36), .B1(n_0_0_31), .B2(SFD), .ZN(n_0_0_17));
   AOI21_X1 i_0_0_27 (.A(n_0_0_25), .B1(n_0_0_19), .B2(n_0_0_26), .ZN(n_0_0_18));
   NAND2_X1 i_0_0_28 (.A1(n_0_0_20), .A2(n_0_0_21), .ZN(n_0_0_19));
   AOI221_X1 i_0_0_29 (.A(winbuzz), .B1(n_0_0_28), .B2(SFD), .C1(n_0_0_40), 
      .C2(SW), .ZN(n_0_0_20));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_31), .A2(n_0_0_40), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_31 (.A1(Rst), .A2(n_0_0_22), .ZN(n_0_2));
   AOI22_X1 i_0_0_32 (.A1(n_0_0_29), .A2(n_0_0_23), .B1(base_state[2]), .B2(
      n_0_0_39), .ZN(n_0_0_22));
   INV_X1 i_0_0_33 (.A(n_0_0_24), .ZN(n_0_0_23));
   AOI221_X1 i_0_0_34 (.A(n_0_0_25), .B1(n_0_0_27), .B2(n_0_0_40), .C1(n_0_0_30), 
      .C2(winbuzz), .ZN(n_0_0_24));
   AOI21_X1 i_0_0_35 (.A(n_0_0_26), .B1(n_0_0_41), .B2(SFA), .ZN(n_0_0_25));
   NOR2_X1 i_0_0_36 (.A1(n_0_0_41), .A2(n_0_0_26), .ZN(alarmbuzz));
   NAND2_X1 i_0_0_37 (.A1(n_0_0_43), .A2(current_state[1]), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_38 (.A1(n_0_0_28), .A2(SFD), .ZN(n_0_0_27));
   NAND2_X1 i_0_0_39 (.A1(n_0_0_43), .A2(current_state[0]), .ZN(n_0_0_28));
   NOR3_X1 i_0_0_40 (.A1(n_0_0_43), .A2(current_state[1]), .A3(current_state[0]), 
      .ZN(winbuzz));
   OR2_X1 i_0_0_41 (.A1(n_0_0_30), .A2(SW), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_35), .A2(n_0_0_31), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_43 (.A1(n_0_0_32), .A2(ST[6]), .ZN(n_0_0_31));
   NAND2_X1 i_0_0_44 (.A1(n_0_0_33), .A2(n_0_0_34), .ZN(n_0_0_32));
   NOR3_X1 i_0_0_45 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_33));
   NAND3_X1 i_0_0_46 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_34));
   INV_X1 i_0_0_47 (.A(n_0_0_36), .ZN(n_0_0_35));
   AOI21_X1 i_0_0_48 (.A(ST[6]), .B1(n_0_0_38), .B2(n_0_0_37), .ZN(n_0_0_36));
   AND2_X1 i_0_0_49 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_37));
   OR3_X1 i_0_0_50 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_38));
   NOR3_X1 i_0_0_51 (.A1(SFA), .A2(SRD), .A3(SFD), .ZN(n_0_0_39));
   NOR2_X1 i_0_0_52 (.A1(SFA), .A2(SRD), .ZN(n_0_0_40));
   INV_X1 i_0_0_53 (.A(current_state[0]), .ZN(n_0_0_41));
   INV_X1 i_0_0_54 (.A(current_state[1]), .ZN(n_0_0_42));
   INV_X1 i_0_0_55 (.A(current_state[2]), .ZN(n_0_0_43));
endmodule
