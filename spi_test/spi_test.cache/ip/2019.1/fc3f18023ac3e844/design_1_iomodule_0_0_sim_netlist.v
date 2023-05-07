// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May  6 02:33:24 2023
// Host        : DESKTOP-1P4LGSG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iomodule_0_0_sim_netlist.v
// Design      : design_1_iomodule_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part
   (Clk_En_I_2,
    Clk);
  output Clk_En_I_2;
  input Clk;

  wire Clk;
  wire Clk_En_I_2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14 \One_SRL16.SRL16E_I 
       (.Clk(Clk),
        .Clk_En_I_2(Clk_En_I_2));
endmodule

(* ORIG_REF_NAME = "Divide_part" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0
   (Clk_En_I_1,
    Clk_En_I_2,
    Clk);
  output Clk_En_I_1;
  input Clk_En_I_2;
  input Clk;

  wire Clk;
  wire Clk_En_I_1;
  wire Clk_En_I_2;
  wire Out1;
  wire loop_Bit;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13 \One_SRL16.SRL16E_I 
       (.Clk(Clk),
        .Clk_En_I_2(Clk_En_I_2),
        .loop_Bit(loop_Bit));
  FDRE #(
    .INIT(1'b0)) 
    \not_First.Clk_En_Out_i_reg 
       (.C(Clk),
        .CE(Out1),
        .D(Clk_En_I_2),
        .Q(Clk_En_I_1),
        .R(1'b0));
  FDRE \not_First.Out1_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(loop_Bit),
        .Q(Out1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Divide_part" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1
   (en_16x_baud,
    Clk_En_I_1,
    Clk);
  output en_16x_baud;
  input Clk_En_I_1;
  input Clk;

  wire Clk;
  wire Clk_En_I_1;
  wire en_16x_baud;
  wire loop_Bit;
  wire \not_First.Clk_En_Out_i_i_1_n_0 ;
  wire \not_First.Out1_reg_n_0 ;
  wire shift;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12 \Two_SRL16.SRL16E_2 
       (.Clk(Clk),
        .Clk_En_I_1(Clk_En_I_1),
        .loop_Bit(loop_Bit),
        .lopt(loop_Bit),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E \Two_SRL16.SRLC16E_1 
       (.Clk(Clk),
        .Clk_En_I_1(Clk_En_I_1),
        .loop_Bit(loop_Bit),
        .shift(shift));
  LUT3 #(
    .INIT(8'hB8)) 
    \not_First.Clk_En_Out_i_i_1 
       (.I0(Clk_En_I_1),
        .I1(\not_First.Out1_reg_n_0 ),
        .I2(en_16x_baud),
        .O(\not_First.Clk_En_Out_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \not_First.Clk_En_Out_i_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\not_First.Clk_En_Out_i_i_1_n_0 ),
        .Q(en_16x_baud),
        .R(1'b0));
  FDRE \not_First.Out1_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(loop_Bit),
        .Q(\not_First.Out1_reg_n_0 ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module
   (en_16x_baud,
    Clk);
  output en_16x_baud;
  input Clk;

  wire Clk;
  wire Clk_En_I_1;
  wire Clk_En_I_2;
  wire en_16x_baud;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part \Implement_FIT.Using_SRL16s.SRL16s[1].Divide_I 
       (.Clk(Clk),
        .Clk_En_I_2(Clk_En_I_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized0 \Implement_FIT.Using_SRL16s.SRL16s[2].Divide_I 
       (.Clk(Clk),
        .Clk_En_I_1(Clk_En_I_1),
        .Clk_En_I_2(Clk_En_I_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divide_part__parameterized1 \Implement_FIT.Using_SRL16s.SRL16s[3].Divide_I 
       (.Clk(Clk),
        .Clk_En_I_1(Clk_En_I_1),
        .en_16x_baud(en_16x_baud));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core
   (UART_Tx,
    UART_Interrupt,
    Sl_DBus,
    Clk,
    Rst,
    UART_Rx,
    \TMR_No.RX_Data_reg[0] ,
    Q,
    E,
    D);
  output UART_Tx;
  output UART_Interrupt;
  output [7:0]Sl_DBus;
  input Clk;
  input Rst;
  input UART_Rx;
  input \TMR_No.RX_Data_reg[0] ;
  input [4:0]Q;
  input [0:0]E;
  input [7:0]D;

  wire Clk;
  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [6:0]RX_Data;
  wire Rst;
  wire [7:0]Sl_DBus;
  wire \TMR_No.RX_Data_reg[0] ;
  wire UART_Interrupt;
  wire UART_Rx;
  wire [6:0]UART_Status;
  wire UART_Tx;
  wire \Using_UART.Uart_Control_Status_I1_n_2 ;
  wire \Using_UART_RX.UART_RX_I1_n_3 ;
  wire \Using_UART_RX.UART_RX_I1_n_4 ;
  wire en_16x_baud;
  wire frame_error;
  wire overrun_error;
  wire [3:3]p_0_out;
  wire rx_data_exists;
  wire rx_data_received;
  wire rx_frame_error;
  wire tx_data_transmitted;

  LUT2 #(
    .INIT(4'hE)) 
    \Sl_DBus[25]_INST_0 
       (.I0(RX_Data[6]),
        .I1(UART_Status[6]),
        .O(Sl_DBus[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \Sl_DBus[26]_INST_0 
       (.I0(RX_Data[5]),
        .I1(UART_Status[5]),
        .O(Sl_DBus[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \Sl_DBus[28]_INST_0 
       (.I0(RX_Data[3]),
        .I1(UART_Status[3]),
        .O(Sl_DBus[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \Sl_DBus[31]_INST_0 
       (.I0(RX_Data[0]),
        .I1(UART_Status[0]),
        .O(Sl_DBus[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIT_Module \Using_UART.No_Dynamic_BaudRate.UART_FIT_I 
       (.Clk(Clk),
        .en_16x_baud(en_16x_baud));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status \Using_UART.Uart_Control_Status_I1 
       (.Clk(Clk),
        .D({frame_error,overrun_error}),
        .Q(Q),
        .Rst(Rst),
        .SR(\Using_UART.Uart_Control_Status_I1_n_2 ),
        .\TMR_No.error_interrupt_reg_0 (rx_frame_error),
        .\TMR_No.frame_error_reg_0 (\Using_UART_RX.UART_RX_I1_n_4 ),
        .\TMR_No.overrun_error_reg_0 (\Using_UART_RX.UART_RX_I1_n_3 ),
        .UART_Interrupt(UART_Interrupt),
        .\UART_Status_reg[3]_0 ({p_0_out,rx_data_exists}),
        .\UART_Status_reg[6]_0 ({UART_Status[6:5],UART_Status[3],UART_Status[0]}),
        .\UART_Status_reg[6]_1 (\TMR_No.RX_Data_reg[0] ),
        .out(rx_data_received),
        .tx_data_transmitted(tx_data_transmitted));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive \Using_UART_RX.UART_RX_I1 
       (.Clk(Clk),
        .D({frame_error,overrun_error}),
        .Q(Q),
        .Rst(Rst),
        .SR(\Using_UART.Uart_Control_Status_I1_n_2 ),
        .\TMR_No.RX_Data_reg[0]_0 (\TMR_No.RX_Data_reg[0] ),
        .\TMR_No.RX_Data_reg[7]_0 ({Sl_DBus[7],RX_Data[6:5],Sl_DBus[4],RX_Data[3],Sl_DBus[2:1],RX_Data[0]}),
        .\TMR_No.frame_error_reg (\Using_UART_RX.UART_RX_I1_n_4 ),
        .\TMR_No.new_rx_data_write_reg_0 (\Using_UART_RX.UART_RX_I1_n_3 ),
        .\TMR_No.rx_data_exists_i_reg_0 (rx_data_exists),
        .UART_Rx(UART_Rx),
        .en_16x_baud(en_16x_baud),
        .\not_First.Clk_En_Out_i_reg (rx_frame_error),
        .out(rx_data_received));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit \Using_UART_TX.UART_TX_I1 
       (.Clk(Clk),
        .D(D),
        .E(E),
        .Rst(Rst),
        .\TMR_No.tx_buffer_empty_i_reg_0 (p_0_out),
        .UART_Tx(UART_Tx),
        .en_16x_baud(en_16x_baud),
        .tx_data_transmitted(tx_data_transmitted));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE
   (tx_Data_Enable,
    p_3_out,
    p_7_out,
    \TMR_No.tx_DataBits_reg ,
    en_16x_baud,
    div16,
    Clk,
    Q,
    tx_Start,
    tx_DataBits,
    tx_data_transmitted,
    out);
  output tx_Data_Enable;
  output p_3_out;
  output p_7_out;
  output \TMR_No.tx_DataBits_reg ;
  input en_16x_baud;
  input div16;
  input Clk;
  input [2:0]Q;
  input tx_Start;
  input tx_DataBits;
  input tx_data_transmitted;
  input out;

  wire Clk;
  wire [2:0]Q;
  wire \TMR_No.tx_DataBits_reg ;
  wire div16;
  wire en_16x_baud;
  wire out;
  wire p_3_out;
  wire p_7_out;
  wire tx_DataBits;
  wire tx_Data_Enable;
  wire tx_Start;
  wire tx_data_transmitted;

  LUT4 #(
    .INIT(16'h0004)) 
    \TMR_No.data_is_sent_i_1 
       (.I0(Q[0]),
        .I1(tx_Data_Enable),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \TMR_No.tx_DataBits_i_1 
       (.I0(tx_Data_Enable),
        .I1(tx_Start),
        .I2(tx_DataBits),
        .I3(tx_data_transmitted),
        .O(p_7_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \TMR_No.tx_Start_i_1 
       (.I0(tx_DataBits),
        .I1(tx_Data_Enable),
        .I2(out),
        .I3(tx_Start),
        .O(\TMR_No.tx_DataBits_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(div16),
        .Q(tx_Data_Enable),
        .R(tx_Data_Enable));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "MB_FDRE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ;
  input Clk;

  wire Clk;
  wire \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ),
        .Q(in0),
        .R(mid_Start_Bit));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE
   (in0,
    mid_Start_Bit,
    en_16x_baud,
    D_0,
    Clk);
  output [0:0]in0;
  input mid_Start_Bit;
  input en_16x_baud;
  input D_0;
  input Clk;

  wire Clk;
  wire D_0;
  wire en_16x_baud;
  wire [0:0]in0;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \Using_FPGA.Native 
       (.C(Clk),
        .CE(en_16x_baud),
        .D(D_0),
        .Q(in0),
        .S(mid_Start_Bit));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY
   (cnt_cy_2,
    LI,
    Q,
    cnt_cy_1,
    lopt);
  output cnt_cy_2;
  output LI;
  input [0:0]Q;
  input cnt_cy_1;
  input lopt;

  wire LI;
  wire [0:0]Q;
  wire cnt_cy_1;
  wire cnt_cy_2;

  assign cnt_cy_2 = lopt;
  LUT1 #(
    .INIT(2'h1)) 
    \Using_FPGA.Native_i_1 
       (.I0(Q),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "MB_MUXCY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1
   (cnt_cy_1,
    \TMR_No.Counter[2].h_Cnt_reg ,
    CI,
    Q,
    tx_DataBits,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output cnt_cy_1;
  output \TMR_No.Counter[2].h_Cnt_reg ;
  output CI;
  input [0:0]Q;
  input tx_DataBits;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;
  input lopt_4;

  wire CI;
  wire [0:0]Q;
  wire \TMR_No.Counter[2].h_Cnt_reg ;
  wire cnt_cy_1;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire lopt_5;
  wire tx_DataBits;
  wire [3:2]\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED ;

  assign \^lopt_2  = lopt_1;
  assign \^lopt_3  = lopt_2;
  assign lopt = \^lopt_1 ;
  assign lopt_3 = \^lopt_4 ;
  assign lopt_5 = lopt_4;
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_FPGA.Native_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED [3:2],\^lopt_1 ,cnt_cy_1}),
        .CYINIT(CI),
        .DI({\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED [3:2],\^lopt_2 ,Q}),
        .O({\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED [3],\^lopt_4 ,\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED [3],lopt_5,\^lopt_3 ,\TMR_No.Counter[2].h_Cnt_reg }));
  LUT1 #(
    .INIT(2'h1)) 
    \Using_FPGA.Native_i_1__3 
       (.I0(Q),
        .O(\TMR_No.Counter[2].h_Cnt_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    \Using_FPGA.Native_i_2__1 
       (.I0(tx_DataBits),
        .O(CI));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5
   (mux_0123,
    Q,
    \Using_FPGA.Native_0 );
  output mux_0123;
  input [1:0]Q;
  input [3:0]\Using_FPGA.Native_0 ;

  wire I0;
  wire I1;
  wire [1:0]Q;
  wire [3:0]\Using_FPGA.Native_0 ;
  wire mux_0123;

  (* XILINX_LEGACY_PRIM = "MUXF5" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:I2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Using_FPGA.Native 
       (.I0(I0),
        .I1(I1),
        .I2(Q[1]),
        .O(mux_0123));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_FPGA.Native_i_1__1 
       (.I0(\Using_FPGA.Native_0 [2]),
        .I1(Q[0]),
        .I2(\Using_FPGA.Native_0 [3]),
        .O(I0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_FPGA.Native_i_2 
       (.I0(\Using_FPGA.Native_0 [0]),
        .I1(Q[0]),
        .I2(\Using_FPGA.Native_0 [1]),
        .O(I1));
endmodule

(* ORIG_REF_NAME = "MB_MUXF5" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3
   (mux_4567,
    Q,
    \Using_FPGA.Native_0 );
  output mux_4567;
  input [1:0]Q;
  input [3:0]\Using_FPGA.Native_0 ;

  wire [1:0]Q;
  wire [3:0]\Using_FPGA.Native_0 ;
  wire \Using_FPGA.Native_i_1__2_n_0 ;
  wire \Using_FPGA.Native_i_2__0_n_0 ;
  wire mux_4567;

  (* XILINX_LEGACY_PRIM = "MUXF5" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:I2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Using_FPGA.Native 
       (.I0(\Using_FPGA.Native_i_1__2_n_0 ),
        .I1(\Using_FPGA.Native_i_2__0_n_0 ),
        .I2(Q[1]),
        .O(mux_4567));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_FPGA.Native_i_1__2 
       (.I0(\Using_FPGA.Native_0 [2]),
        .I1(Q[0]),
        .I2(\Using_FPGA.Native_0 [3]),
        .O(\Using_FPGA.Native_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_FPGA.Native_i_2__0 
       (.I0(\Using_FPGA.Native_0 [0]),
        .I1(Q[0]),
        .I2(\Using_FPGA.Native_0 [1]),
        .O(\Using_FPGA.Native_i_2__0_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6
   (mux_Out,
    Q,
    mux_0123,
    mux_4567);
  output mux_Out;
  input [0:0]Q;
  input mux_0123;
  input mux_4567;

  wire [0:0]Q;
  wire mux_0123;
  wire mux_4567;
  wire mux_Out;

  (* XILINX_LEGACY_PRIM = "MUXF6" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:I2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Using_FPGA.Native 
       (.I0(mux_0123),
        .I1(mux_4567),
        .I2(Q),
        .O(mux_Out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY
   (D,
    cnt_cy_2,
    Q,
    lopt,
    lopt_1);
  output [0:0]D;
  input cnt_cy_2;
  input [0:0]Q;
  input lopt;
  output lopt_1;

  wire [0:0]D;
  wire [0:0]Q;
  wire \TMR_No.Counter[0].h_Cnt_reg ;
  wire cnt_cy_2;

  assign D = lopt;
  assign lopt_1 = \TMR_No.Counter[0].h_Cnt_reg ;
  LUT1 #(
    .INIT(2'h1)) 
    \Using_FPGA.Native_i_1__0 
       (.I0(Q),
        .O(\TMR_No.Counter[0].h_Cnt_reg ));
endmodule

(* ORIG_REF_NAME = "MB_XORCY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0
   (D,
    LI,
    cnt_cy_1);
  output [0:0]D;
  input LI;
  input cnt_cy_1;

  wire [0:0]D;
  wire LI;
  wire cnt_cy_1;
  wire [3:0]\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_FPGA.Native_CARRY4 
       (.CI(1'b0),
        .CO(\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(cnt_cy_1),
        .DI(\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED [3:1],D}),
        .S({\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED [3:1],LI}));
endmodule

(* ORIG_REF_NAME = "MB_XORCY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2
   (D,
    \TMR_No.Counter[2].h_Cnt_reg ,
    CI);
  output [0:0]D;
  input \TMR_No.Counter[2].h_Cnt_reg ;
  input CI;

  wire CI;
  wire [0:0]D;
  wire \TMR_No.Counter[2].h_Cnt_reg ;
  wire [3:0]\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_FPGA.Native_CARRY4 
       (.CI(1'b0),
        .CO(\NLW_Using_FPGA.Native_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(CI),
        .DI(\NLW_Using_FPGA.Native_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_Using_FPGA.Native_CARRY4_O_UNCONNECTED [3:1],D}),
        .S({\NLW_Using_FPGA.Native_CARRY4_S_UNCONNECTED [3:1],\TMR_No.Counter[2].h_Cnt_reg }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Receive
   (out,
    \not_First.Clk_En_Out_i_reg ,
    \TMR_No.rx_data_exists_i_reg_0 ,
    \TMR_No.new_rx_data_write_reg_0 ,
    \TMR_No.frame_error_reg ,
    \TMR_No.RX_Data_reg[7]_0 ,
    en_16x_baud,
    Clk,
    Rst,
    UART_Rx,
    \TMR_No.RX_Data_reg[0]_0 ,
    Q,
    SR,
    D);
  output out;
  output \not_First.Clk_En_Out_i_reg ;
  output [0:0]\TMR_No.rx_data_exists_i_reg_0 ;
  output \TMR_No.new_rx_data_write_reg_0 ;
  output \TMR_No.frame_error_reg ;
  output [7:0]\TMR_No.RX_Data_reg[7]_0 ;
  input en_16x_baud;
  input Clk;
  input Rst;
  input UART_Rx;
  input \TMR_No.RX_Data_reg[0]_0 ;
  input [4:0]Q;
  input [0:0]SR;
  input [1:0]D;

  wire Clk;
  wire [1:0]D;
  wire D_0;
  wire [4:0]Q;
  wire Rst;
  wire [0:0]SR;
  wire \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ;
  wire \TMR_No.Delay_16_n_1 ;
  wire \TMR_No.Delay_16_n_2 ;
  wire \TMR_No.RX_Data_reg[0]_0 ;
  wire [7:0]\TMR_No.RX_Data_reg[7]_0 ;
  wire \TMR_No.frame_error_reg ;
  wire \TMR_No.new_rx_data_write_reg_0 ;
  wire \TMR_No.previous_RX_i_1_n_0 ;
  wire \TMR_No.running_reg_n_0 ;
  wire \TMR_No.rx_data_exists_i_i_1_n_0 ;
  wire [0:0]\TMR_No.rx_data_exists_i_reg_0 ;
  wire \TMR_No.start_Edge_Detected_i_1_n_0 ;
  wire \TMR_No.start_Edge_Detected_reg_n_0 ;
  wire \TMR_No.stop_Bit_Position_reg_n_0 ;
  wire UART_Rx;
  wire en_16x_baud;
  wire mid_Start_Bit;
  (* RTL_KEEP = "true" *) wire [0:8]new_rx_data;
  (* RTL_KEEP = "true" *) wire new_rx_data_write;
  wire p_0_in__0;
  wire p_4_out__0;
  wire previous_RX;
  wire rx_1;
  wire [7:0]rx_data_i;
  (* RTL_KEEP = "true" *) wire rx_frame_error_i;
  (* RTL_KEEP = "true" *) wire rx_parity_error_i;
  wire sample_Point;

  assign \not_First.Clk_En_Out_i_reg  = rx_frame_error_i;
  assign out = new_rx_data_write;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDSE \TMR_No.Convert_Serial_To_Parallel[1].First_Bit.First_Bit_I 
       (.Clk(Clk),
        .D_0(D_0),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[1]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_4 \TMR_No.Convert_Serial_To_Parallel[2].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[2]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_5 \TMR_No.Convert_Serial_To_Parallel[3].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[3]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_6 \TMR_No.Convert_Serial_To_Parallel[4].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[4]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_7 \TMR_No.Convert_Serial_To_Parallel[5].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[5]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_8 \TMR_No.Convert_Serial_To_Parallel[6].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[6]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_9 \TMR_No.Convert_Serial_To_Parallel[7].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[7]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE_10 \TMR_No.Convert_Serial_To_Parallel[8].Rest_Bits.Others_I 
       (.Clk(Clk),
        .\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ),
        .en_16x_baud(en_16x_baud),
        .in0(new_rx_data[8]),
        .mid_Start_Bit(mid_Start_Bit));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1 \TMR_No.Delay_16 
       (.Clk(Clk),
        .D_0(D_0),
        .\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ),
        .\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg (\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ),
        .\TMR_No.running_reg (\TMR_No.start_Edge_Detected_reg_n_0 ),
        .\TMR_No.running_reg_0 (\TMR_No.running_reg_n_0 ),
        .\TMR_No.stop_Bit_Position_reg (\TMR_No.Delay_16_n_2 ),
        .\TMR_No.stop_Bit_Position_reg_0 (\TMR_No.stop_Bit_Position_reg_n_0 ),
        .\Using_FPGA.Native (\TMR_No.Delay_16_n_1 ),
        .en_16x_baud(en_16x_baud),
        .mid_Start_Bit(mid_Start_Bit),
        .out({new_rx_data[0],new_rx_data[1],new_rx_data[2],new_rx_data[3],new_rx_data[4],new_rx_data[5],new_rx_data[6],new_rx_data[7],new_rx_data[8]}),
        .sample_Point(sample_Point));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11 \TMR_No.Mid_Start_Bit_SRL16 
       (.Clk(Clk),
        .\Using_FPGA.Native (\TMR_No.start_Edge_Detected_reg_n_0 ),
        .en_16x_baud(en_16x_baud),
        .mid_Start_Bit(mid_Start_Bit));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \TMR_No.RX_Data[7]_i_1 
       (.I0(\TMR_No.RX_Data_reg[0]_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[0]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [0]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[1]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [1]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[2]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [2]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[3]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [3]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[4]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [4]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[5]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [5]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[6]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [6]),
        .R(p_0_in__0));
  FDRE \TMR_No.RX_Data_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_data_i[7]),
        .Q(\TMR_No.RX_Data_reg[7]_0 [7]),
        .R(p_0_in__0));
  LUT3 #(
    .INIT(8'hEA)) 
    \TMR_No.frame_error_i_1 
       (.I0(rx_frame_error_i),
        .I1(SR),
        .I2(D[1]),
        .O(\TMR_No.frame_error_reg ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \TMR_No.new_rx_data_write_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(p_4_out__0),
        .Q(new_rx_data_write),
        .R(Rst));
  LUT4 #(
    .INIT(16'hF888)) 
    \TMR_No.overrun_error_i_1 
       (.I0(new_rx_data_write),
        .I1(\TMR_No.rx_data_exists_i_reg_0 ),
        .I2(SR),
        .I3(D[0]),
        .O(\TMR_No.new_rx_data_write_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TMR_No.previous_RX_i_1 
       (.I0(new_rx_data[0]),
        .I1(en_16x_baud),
        .I2(previous_RX),
        .O(\TMR_No.previous_RX_i_1_n_0 ));
  FDRE \TMR_No.previous_RX_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.previous_RX_i_1_n_0 ),
        .Q(previous_RX),
        .R(Rst));
  FDRE \TMR_No.running_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.Delay_16_n_2 ),
        .Q(\TMR_No.running_reg_n_0 ),
        .R(Rst));
  FDSE \TMR_No.rx_1_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_Rx),
        .Q(rx_1),
        .S(Rst));
  FDSE \TMR_No.rx_2_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(rx_1),
        .Q(new_rx_data[0]),
        .S(Rst));
  LUT4 #(
    .INIT(16'h00A8)) 
    \TMR_No.rx_data_exists_i_i_1 
       (.I0(p_0_in__0),
        .I1(new_rx_data_write),
        .I2(\TMR_No.rx_data_exists_i_reg_0 ),
        .I3(Rst),
        .O(\TMR_No.rx_data_exists_i_i_1_n_0 ));
  FDRE \TMR_No.rx_data_exists_i_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.rx_data_exists_i_i_1_n_0 ),
        .Q(\TMR_No.rx_data_exists_i_reg_0 ),
        .R(1'b0));
  FDRE \TMR_No.rx_data_i_reg[0] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[8]),
        .Q(rx_data_i[0]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[1] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[7]),
        .Q(rx_data_i[1]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[2] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[6]),
        .Q(rx_data_i[2]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[3] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[5]),
        .Q(rx_data_i[3]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[4] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[4]),
        .Q(rx_data_i[4]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[5] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[3]),
        .Q(rx_data_i[5]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[6] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[2]),
        .Q(rx_data_i[6]),
        .R(Rst));
  FDRE \TMR_No.rx_data_i_reg[7] 
       (.C(Clk),
        .CE(new_rx_data_write),
        .D(new_rx_data[1]),
        .Q(rx_data_i[7]),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \TMR_No.start_Edge_Detected_i_1 
       (.I0(previous_RX),
        .I1(new_rx_data[0]),
        .I2(\TMR_No.running_reg_n_0 ),
        .I3(en_16x_baud),
        .I4(\TMR_No.start_Edge_Detected_reg_n_0 ),
        .O(\TMR_No.start_Edge_Detected_i_1_n_0 ));
  FDRE \TMR_No.start_Edge_Detected_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.start_Edge_Detected_i_1_n_0 ),
        .Q(\TMR_No.start_Edge_Detected_reg_n_0 ),
        .R(Rst));
  FDRE \TMR_No.stop_Bit_Position_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.Delay_16_n_1 ),
        .Q(\TMR_No.stop_Bit_Position_reg_n_0 ),
        .R(Rst));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(rx_parity_error_i));
  LUT4 #(
    .INIT(16'h0080)) 
    in00
       (.I0(en_16x_baud),
        .I1(sample_Point),
        .I2(\TMR_No.stop_Bit_Position_reg_n_0 ),
        .I3(new_rx_data[0]),
        .O(rx_frame_error_i));
  LUT4 #(
    .INIT(16'h8000)) 
    p_4_out
       (.I0(\TMR_No.stop_Bit_Position_reg_n_0 ),
        .I1(sample_Point),
        .I2(new_rx_data[0]),
        .I3(en_16x_baud),
        .O(p_4_out__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Transmit
   (UART_Tx,
    tx_data_transmitted,
    \TMR_No.tx_buffer_empty_i_reg_0 ,
    en_16x_baud,
    Clk,
    Rst,
    E,
    D);
  output UART_Tx;
  output tx_data_transmitted;
  output [0:0]\TMR_No.tx_buffer_empty_i_reg_0 ;
  input en_16x_baud;
  input Clk;
  input Rst;
  input [0:0]E;
  input [7:0]D;

  wire CI;
  wire Clk;
  wire [7:0]D;
  wire [0:0]E;
  wire LI;
  wire Rst;
  wire S;
  wire \TMR_No.Counter[2].h_Cnt_reg ;
  wire \TMR_No.FDRE_I_n_3 ;
  wire \TMR_No.fifo_DOut_reg_n_0_[1] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[2] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[3] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[4] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[5] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[6] ;
  wire \TMR_No.fifo_DOut_reg_n_0_[7] ;
  wire \TMR_No.mux_sel_reg_n_0_[0] ;
  wire \TMR_No.mux_sel_reg_n_0_[2] ;
  wire \TMR_No.tx_buffer_empty_i_i_1_n_0 ;
  wire [0:0]\TMR_No.tx_buffer_empty_i_reg_0 ;
  wire \TMR_No.tx_i_i_1_n_0 ;
  wire cnt_cy_1;
  wire cnt_cy_2;
  wire div16;
  wire en_16x_baud;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire mux_0123;
  wire mux_4567;
  wire mux_Out;
  wire p_0_in;
  wire p_3_out;
  wire p_7_out;
  wire serial_Data;
  wire [0:2]sum_cnt;
  wire tx_DataBits;
  wire tx_Data_Enable;
  wire tx_Start;
  (* RTL_KEEP = "true" *) wire tx_buffer_empty_i;
  wire tx_data_transmitted;
  (* RTL_KEEP = "true" *) wire tx_i;

  assign UART_Tx = tx_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY \TMR_No.Counter[0].XORCY_I 
       (.D(sum_cnt[0]),
        .Q(\TMR_No.mux_sel_reg_n_0_[0] ),
        .cnt_cy_2(cnt_cy_2),
        .lopt(lopt_1),
        .lopt_1(lopt_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY \TMR_No.Counter[1].Used_MuxCY.MUXCY_L_I 
       (.LI(LI),
        .Q(S),
        .cnt_cy_1(cnt_cy_1),
        .cnt_cy_2(cnt_cy_2),
        .lopt(lopt));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_0 \TMR_No.Counter[1].XORCY_I 
       (.D(sum_cnt[1]),
        .LI(LI),
        .cnt_cy_1(cnt_cy_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXCY_1 \TMR_No.Counter[2].Used_MuxCY.MUXCY_L_I 
       (.CI(CI),
        .Q(\TMR_No.mux_sel_reg_n_0_[2] ),
        .\TMR_No.Counter[2].h_Cnt_reg (\TMR_No.Counter[2].h_Cnt_reg ),
        .cnt_cy_1(cnt_cy_1),
        .lopt(lopt),
        .lopt_1(S),
        .lopt_2(LI),
        .lopt_3(lopt_1),
        .lopt_4(lopt_2),
        .tx_DataBits(tx_DataBits));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_XORCY_2 \TMR_No.Counter[2].XORCY_I 
       (.CI(CI),
        .D(sum_cnt[2]),
        .\TMR_No.Counter[2].h_Cnt_reg (\TMR_No.Counter[2].h_Cnt_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E \TMR_No.DIV16_SRL16E 
       (.Clk(Clk),
        .div16(div16),
        .en_16x_baud(en_16x_baud));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_FDRE \TMR_No.FDRE_I 
       (.Clk(Clk),
        .Q({\TMR_No.mux_sel_reg_n_0_[0] ,S,\TMR_No.mux_sel_reg_n_0_[2] }),
        .\TMR_No.tx_DataBits_reg (\TMR_No.FDRE_I_n_3 ),
        .div16(div16),
        .en_16x_baud(en_16x_baud),
        .out(tx_buffer_empty_i),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out),
        .tx_DataBits(tx_DataBits),
        .tx_Data_Enable(tx_Data_Enable),
        .tx_Start(tx_Start),
        .tx_data_transmitted(tx_data_transmitted));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF6 \TMR_No.MUXF6_I 
       (.Q(\TMR_No.mux_sel_reg_n_0_[0] ),
        .mux_0123(mux_0123),
        .mux_4567(mux_4567),
        .mux_Out(mux_Out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5 \TMR_No.MUX_F5_1 
       (.Q({S,\TMR_No.mux_sel_reg_n_0_[2] }),
        .\Using_FPGA.Native_0 ({p_0_in,\TMR_No.fifo_DOut_reg_n_0_[1] ,\TMR_No.fifo_DOut_reg_n_0_[2] ,\TMR_No.fifo_DOut_reg_n_0_[3] }),
        .mux_0123(mux_0123));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MB_MUXF5_3 \TMR_No.MUX_F5_2 
       (.Q({S,\TMR_No.mux_sel_reg_n_0_[2] }),
        .\Using_FPGA.Native_0 ({\TMR_No.fifo_DOut_reg_n_0_[4] ,\TMR_No.fifo_DOut_reg_n_0_[5] ,\TMR_No.fifo_DOut_reg_n_0_[6] ,\TMR_No.fifo_DOut_reg_n_0_[7] }),
        .mux_4567(mux_4567));
  FDRE \TMR_No.data_is_sent_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(tx_data_transmitted),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[0] 
       (.C(Clk),
        .CE(E),
        .D(D[7]),
        .Q(p_0_in),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(D[6]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[1] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[2] 
       (.C(Clk),
        .CE(E),
        .D(D[5]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[2] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[3] 
       (.C(Clk),
        .CE(E),
        .D(D[4]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[3] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[4] 
       (.C(Clk),
        .CE(E),
        .D(D[3]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[4] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[5] 
       (.C(Clk),
        .CE(E),
        .D(D[2]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[5] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[6] 
       (.C(Clk),
        .CE(E),
        .D(D[1]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[6] ),
        .R(Rst));
  FDRE \TMR_No.fifo_DOut_reg[7] 
       (.C(Clk),
        .CE(E),
        .D(D[0]),
        .Q(\TMR_No.fifo_DOut_reg_n_0_[7] ),
        .R(Rst));
  FDSE \TMR_No.mux_sel_reg[0] 
       (.C(Clk),
        .CE(tx_Data_Enable),
        .D(sum_cnt[0]),
        .Q(\TMR_No.mux_sel_reg_n_0_[0] ),
        .S(Rst));
  FDSE \TMR_No.mux_sel_reg[1] 
       (.C(Clk),
        .CE(tx_Data_Enable),
        .D(sum_cnt[1]),
        .Q(S),
        .S(Rst));
  FDSE \TMR_No.mux_sel_reg[2] 
       (.C(Clk),
        .CE(tx_Data_Enable),
        .D(sum_cnt[2]),
        .Q(\TMR_No.mux_sel_reg_n_0_[2] ),
        .S(Rst));
  FDRE \TMR_No.serial_Data_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(mux_Out),
        .Q(serial_Data),
        .R(Rst));
  FDRE \TMR_No.tx_DataBits_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(p_7_out),
        .Q(tx_DataBits),
        .R(Rst));
  FDRE \TMR_No.tx_Start_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.FDRE_I_n_3 ),
        .Q(tx_Start),
        .R(Rst));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \TMR_No.tx_buffer_empty_i_i_1 
       (.I0(E),
        .I1(tx_buffer_empty_i),
        .I2(Rst),
        .I3(tx_data_transmitted),
        .O(\TMR_No.tx_buffer_empty_i_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \TMR_No.tx_buffer_empty_i_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.tx_buffer_empty_i_i_1_n_0 ),
        .Q(tx_buffer_empty_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \TMR_No.tx_i_i_1 
       (.I0(tx_Start),
        .I1(serial_Data),
        .I2(tx_DataBits),
        .O(\TMR_No.tx_i_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \TMR_No.tx_i_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.tx_i_i_1_n_0 ),
        .Q(tx_i),
        .S(Rst));
  LUT1 #(
    .INIT(2'h1)) 
    \UART_Status[3]_i_1 
       (.I0(tx_buffer_empty_i),
        .O(\TMR_No.tx_buffer_empty_i_reg_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Uart_Control_Status
   (D,
    SR,
    UART_Interrupt,
    \UART_Status_reg[6]_0 ,
    Rst,
    \TMR_No.overrun_error_reg_0 ,
    Clk,
    \TMR_No.frame_error_reg_0 ,
    \UART_Status_reg[6]_1 ,
    Q,
    out,
    tx_data_transmitted,
    \UART_Status_reg[3]_0 ,
    \TMR_No.error_interrupt_reg_0 );
  output [1:0]D;
  output [0:0]SR;
  output UART_Interrupt;
  output [3:0]\UART_Status_reg[6]_0 ;
  input Rst;
  input \TMR_No.overrun_error_reg_0 ;
  input Clk;
  input \TMR_No.frame_error_reg_0 ;
  input \UART_Status_reg[6]_1 ;
  input [4:0]Q;
  input out;
  input tx_data_transmitted;
  input [1:0]\UART_Status_reg[3]_0 ;
  input \TMR_No.error_interrupt_reg_0 ;

  wire Clk;
  wire [1:0]D;
  wire [4:0]Q;
  wire Rst;
  wire [0:0]SR;
  wire \TMR_No.error_interrupt_i_1_n_0 ;
  wire \TMR_No.error_interrupt_reg_0 ;
  wire \TMR_No.frame_error_reg_0 ;
  wire \TMR_No.overrun_error_reg_0 ;
  wire UART_Error_Interrupt;
  wire UART_Interrupt;
  wire [1:0]\UART_Status_reg[3]_0 ;
  wire [3:0]\UART_Status_reg[6]_0 ;
  wire \UART_Status_reg[6]_1 ;
  wire out;
  wire tx_data_transmitted;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \TMR_No.error_interrupt_i_1 
       (.I0(\TMR_No.error_interrupt_reg_0 ),
        .I1(out),
        .I2(\UART_Status_reg[3]_0 [0]),
        .O(\TMR_No.error_interrupt_i_1_n_0 ));
  FDRE \TMR_No.error_interrupt_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.error_interrupt_i_1_n_0 ),
        .Q(UART_Error_Interrupt),
        .R(Rst));
  FDRE \TMR_No.frame_error_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.frame_error_reg_0 ),
        .Q(D[1]),
        .R(Rst));
  FDRE \TMR_No.overrun_error_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\TMR_No.overrun_error_reg_0 ),
        .Q(D[0]),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    UART_Interrupt_INST_0
       (.I0(UART_Error_Interrupt),
        .I1(out),
        .I2(tx_data_transmitted),
        .O(UART_Interrupt));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \UART_Status[6]_i_1 
       (.I0(\UART_Status_reg[6]_1 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(SR));
  FDRE \UART_Status_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\UART_Status_reg[3]_0 [0]),
        .Q(\UART_Status_reg[6]_0 [0]),
        .R(SR));
  FDRE \UART_Status_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\UART_Status_reg[3]_0 [1]),
        .Q(\UART_Status_reg[6]_0 [1]),
        .R(SR));
  FDRE \UART_Status_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\UART_Status_reg[6]_0 [2]),
        .R(SR));
  FDRE \UART_Status_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\UART_Status_reg[6]_0 [3]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E
   (div16,
    en_16x_baud,
    Clk);
  output div16;
  input en_16x_baud;
  input Clk;

  wire Clk;
  wire div16;
  wire en_16x_baud;

  (* box_type = "PRIMITIVE" *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART_TX.UART_TX_I1/TMR_No.DIV16_SRL16E/Use_unisim.XIL_SRL16E_I1 " *) 
  SRL16E #(
    .INIT(16'h0001),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16E_I1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_baud),
        .CLK(Clk),
        .D(div16),
        .Q(div16));
endmodule

(* ORIG_REF_NAME = "XIL_SRL16E" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_13
   (loop_Bit,
    Clk_En_I_2,
    Clk);
  output loop_Bit;
  input Clk_En_I_2;
  input Clk;

  wire Clk;
  wire Clk_En_I_2;
  wire loop_Bit;

  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s " *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[2].Divide_I/One_SRL16.SRL16E_I/Use_unisim.XIL_SRL16E_I1 " *) 
  SRL16E #(
    .INIT(16'h0001),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16E_I1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(Clk_En_I_2),
        .CLK(Clk),
        .D(loop_Bit),
        .Q(loop_Bit));
endmodule

(* ORIG_REF_NAME = "XIL_SRL16E" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E_14
   (Clk_En_I_2,
    Clk);
  output Clk_En_I_2;
  input Clk;

  wire Clk;
  wire Clk_En_I_2;

  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s " *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[1].Divide_I/One_SRL16.SRL16E_I/Use_unisim.XIL_SRL16E_I1 " *) 
  SRL16E #(
    .INIT(16'h0001),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16E_I1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk),
        .D(Clk_En_I_2),
        .Q(Clk_En_I_2));
endmodule

(* ORIG_REF_NAME = "XIL_SRL16E" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1
   (sample_Point,
    \Using_FPGA.Native ,
    \TMR_No.stop_Bit_Position_reg ,
    \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ,
    \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ,
    D_0,
    en_16x_baud,
    Clk,
    out,
    \TMR_No.stop_Bit_Position_reg_0 ,
    \TMR_No.running_reg ,
    \TMR_No.running_reg_0 ,
    mid_Start_Bit);
  output sample_Point;
  output \Using_FPGA.Native ;
  output \TMR_No.stop_Bit_Position_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ;
  output \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ;
  output D_0;
  input en_16x_baud;
  input Clk;
  input [8:0]out;
  input \TMR_No.stop_Bit_Position_reg_0 ;
  input \TMR_No.running_reg ;
  input \TMR_No.running_reg_0 ;
  input mid_Start_Bit;

  wire Clk;
  wire D_0;
  wire \TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ;
  wire \TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ;
  wire \TMR_No.running_reg ;
  wire \TMR_No.running_reg_0 ;
  wire \TMR_No.stop_Bit_Position_reg ;
  wire \TMR_No.stop_Bit_Position_reg_0 ;
  wire \Use_unisim.XIL_SRL16E_I1_i_1_n_0 ;
  wire \Using_FPGA.Native ;
  wire en_16x_baud;
  wire mid_Start_Bit;
  wire [8:0]out;
  wire sample_Point;

  LUT5 #(
    .INIT(32'hF7FFF000)) 
    \TMR_No.running_i_1 
       (.I0(sample_Point),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(\TMR_No.running_reg ),
        .I3(en_16x_baud),
        .I4(\TMR_No.running_reg_0 ),
        .O(\TMR_No.stop_Bit_Position_reg ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2CCC)) 
    \TMR_No.stop_Bit_Position_i_1 
       (.I0(out[0]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(en_16x_baud),
        .O(\Using_FPGA.Native ));
  (* box_type = "PRIMITIVE" *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART_RX.UART_RX_I1/TMR_No.Delay_16/Use_unisim.XIL_SRL16E_I1 " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16E_I1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_baud),
        .CLK(Clk),
        .D(\Use_unisim.XIL_SRL16E_I1_i_1_n_0 ),
        .Q(sample_Point));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \Use_unisim.XIL_SRL16E_I1_i_1 
       (.I0(sample_Point),
        .I1(mid_Start_Bit),
        .I2(\TMR_No.stop_Bit_Position_reg_0 ),
        .O(\Use_unisim.XIL_SRL16E_I1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__10 
       (.I0(out[6]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[7]),
        .O(\TMR_No.Convert_Serial_To_Parallel[2].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__11 
       (.I0(out[7]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[8]),
        .O(D_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__4 
       (.I0(out[0]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[1]),
        .O(\TMR_No.Convert_Serial_To_Parallel[8].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__5 
       (.I0(out[1]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[2]),
        .O(\TMR_No.Convert_Serial_To_Parallel[7].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__6 
       (.I0(out[2]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[3]),
        .O(\TMR_No.Convert_Serial_To_Parallel[6].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__7 
       (.I0(out[3]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[4]),
        .O(\TMR_No.Convert_Serial_To_Parallel[5].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__8 
       (.I0(out[4]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[5]),
        .O(\TMR_No.Convert_Serial_To_Parallel[4].serial_to_parallel_reg ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Using_FPGA.Native_i_1__9 
       (.I0(out[5]),
        .I1(\TMR_No.stop_Bit_Position_reg_0 ),
        .I2(sample_Point),
        .I3(out[6]),
        .O(\TMR_No.Convert_Serial_To_Parallel[3].serial_to_parallel_reg ));
endmodule

(* ORIG_REF_NAME = "XIL_SRL16E" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_11
   (mid_Start_Bit,
    en_16x_baud,
    \Using_FPGA.Native ,
    Clk);
  output mid_Start_Bit;
  input en_16x_baud;
  input \Using_FPGA.Native ;
  input Clk;

  wire Clk;
  wire \Using_FPGA.Native ;
  wire en_16x_baud;
  wire mid_Start_Bit;

  (* box_type = "PRIMITIVE" *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART_RX.UART_RX_I1/TMR_No.Mid_Start_Bit_SRL16/Use_unisim.XIL_SRL16E_I1 " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16E_I1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(en_16x_baud),
        .CLK(Clk),
        .D(\Using_FPGA.Native ),
        .Q(mid_Start_Bit));
endmodule

(* ORIG_REF_NAME = "XIL_SRL16E" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRL16E__parameterized1_12
   (loop_Bit,
    Clk_En_I_1,
    shift,
    Clk,
    lopt);
  output loop_Bit;
  input Clk_En_I_1;
  input shift;
  input Clk;
  input lopt;

  wire Clk;
  wire Clk_En_I_1;
  wire loop_Bit;
  wire lopt;
  wire shift;
  wire \NLW_Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1_Q31_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s " *) 
  (* srl_name = "U0/\IOModule_Core_I1/Using_UART.No_Dynamic_BaudRate.UART_FIT_I/Implement_FIT.Using_SRL16s.SRL16s[3].Divide_I/Two_SRL16.SRL16E_2/Use_unisim.XIL_SRL16E_I1 " *) 
  SRLC32E #(
    .INIT(32'h00000001),
    .IS_CLK_INVERTED(1'b0)) 
    \Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(Clk_En_I_1),
        .CLK(Clk),
        .D(lopt),
        .Q(loop_Bit),
        .Q31(\NLW_Use_unisim.XIL_SRL16CE_I1Use_unisim.XIL_SRL16E_I1_Q31_UNCONNECTED ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_XIL_SRLC16E
   (shift,
    Clk_En_I_1,
    loop_Bit,
    Clk);
  output shift;
  input Clk_En_I_1;
  input loop_Bit;
  input Clk;

  wire Clk;
  wire Clk_En_I_1;
  wire loop_Bit;
  wire shift;

endmodule

(* CHECK_LICENSE_TYPE = "design_1_iomodule_0_0,iomodule,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "iomodule,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Clk,
    Rst,
    UART_Rx,
    UART_Tx,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLMB, ASSOCIATED_RESET Rst:TMR_Rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.Rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.Rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) input Rst;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) input UART_Rx;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_Tx;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ABUS" *) (* x_interface_parameter = "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE" *) input [0:31]LMB_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS" *) input [0:31]LMB_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE" *) input LMB_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READSTROBE" *) input LMB_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE" *) input LMB_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB BE" *) input [0:3]LMB_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READDBUS" *) output [0:31]Sl_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READY" *) output Sl_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WAIT" *) output Sl_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB UE" *) output Sl_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB CE" *) output Sl_CE;

  wire Clk;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_ReadStrobe;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire Rst;
  wire Sl_CE;
  wire [0:31]Sl_DBus;
  wire Sl_Ready;
  wire Sl_UE;
  wire Sl_Wait;
  wire UART_Rx;
  wire UART_Tx;
  wire NLW_U0_FIT1_Interrupt_UNCONNECTED;
  wire NLW_U0_FIT1_Toggle_UNCONNECTED;
  wire NLW_U0_FIT2_Interrupt_UNCONNECTED;
  wire NLW_U0_FIT2_Toggle_UNCONNECTED;
  wire NLW_U0_FIT3_Interrupt_UNCONNECTED;
  wire NLW_U0_FIT3_Toggle_UNCONNECTED;
  wire NLW_U0_FIT4_Interrupt_UNCONNECTED;
  wire NLW_U0_FIT4_Toggle_UNCONNECTED;
  wire NLW_U0_GPI1_Interrupt_UNCONNECTED;
  wire NLW_U0_GPI2_Interrupt_UNCONNECTED;
  wire NLW_U0_GPI3_Interrupt_UNCONNECTED;
  wire NLW_U0_GPI4_Interrupt_UNCONNECTED;
  wire NLW_U0_INTC_IRQ_UNCONNECTED;
  wire NLW_U0_INTC_IRQ_OUT_UNCONNECTED;
  wire NLW_U0_IO_Addr_Strobe_UNCONNECTED;
  wire NLW_U0_IO_Read_Strobe_UNCONNECTED;
  wire NLW_U0_IO_Write_Strobe_UNCONNECTED;
  wire NLW_U0_PIT1_Interrupt_UNCONNECTED;
  wire NLW_U0_PIT1_Toggle_UNCONNECTED;
  wire NLW_U0_PIT2_Interrupt_UNCONNECTED;
  wire NLW_U0_PIT2_Toggle_UNCONNECTED;
  wire NLW_U0_PIT3_Interrupt_UNCONNECTED;
  wire NLW_U0_PIT3_Toggle_UNCONNECTED;
  wire NLW_U0_PIT4_Interrupt_UNCONNECTED;
  wire NLW_U0_PIT4_Toggle_UNCONNECTED;
  wire NLW_U0_UART_Interrupt_UNCONNECTED;
  wire [31:0]NLW_U0_GPO1_UNCONNECTED;
  wire [31:0]NLW_U0_GPO2_UNCONNECTED;
  wire [31:0]NLW_U0_GPO3_UNCONNECTED;
  wire [31:0]NLW_U0_GPO4_UNCONNECTED;
  wire [31:0]NLW_U0_INTC_Interrupt_Address_UNCONNECTED;
  wire [31:0]NLW_U0_IO_Address_UNCONNECTED;
  wire [3:0]NLW_U0_IO_Byte_Enable_UNCONNECTED;
  wire [31:0]NLW_U0_IO_Write_Data_UNCONNECTED;
  wire [1023:0]NLW_U0_ToVote_UNCONNECTED;

  (* C_AVOID_PRIMITIVES = "0" *) 
  (* C_BASEADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIT1_INTERRUPT = "0" *) 
  (* C_FIT1_No_CLOCKS = "6216" *) 
  (* C_FIT2_INTERRUPT = "0" *) 
  (* C_FIT2_No_CLOCKS = "6216" *) 
  (* C_FIT3_INTERRUPT = "0" *) 
  (* C_FIT3_No_CLOCKS = "6216" *) 
  (* C_FIT4_INTERRUPT = "0" *) 
  (* C_FIT4_No_CLOCKS = "6216" *) 
  (* C_FREQ = "100000000" *) 
  (* C_GPI1_INTERRUPT = "0" *) 
  (* C_GPI1_SIZE = "32" *) 
  (* C_GPI2_INTERRUPT = "0" *) 
  (* C_GPI2_SIZE = "32" *) 
  (* C_GPI3_INTERRUPT = "0" *) 
  (* C_GPI3_SIZE = "32" *) 
  (* C_GPI4_INTERRUPT = "0" *) 
  (* C_GPI4_SIZE = "32" *) 
  (* C_GPO1_INIT = "0" *) 
  (* C_GPO1_SIZE = "32" *) 
  (* C_GPO2_INIT = "0" *) 
  (* C_GPO2_SIZE = "32" *) 
  (* C_GPO3_INIT = "0" *) 
  (* C_GPO3_SIZE = "32" *) 
  (* C_GPO4_INIT = "0" *) 
  (* C_GPO4_SIZE = "32" *) 
  (* C_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_INSTANCE = "iomodule_0" *) 
  (* C_INTC_ADDR_WIDTH = "32" *) 
  (* C_INTC_ASYNC_INTR = "16'b1111111111111111" *) 
  (* C_INTC_BASE_VECTORS = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_INTC_HAS_FAST = "0" *) 
  (* C_INTC_INTR_SIZE = "1" *) 
  (* C_INTC_LEVEL_EDGE = "16'b0000000000000000" *) 
  (* C_INTC_NUM_SYNC_FF = "2" *) 
  (* C_INTC_POSITIVE = "16'b1111111111111111" *) 
  (* C_INTC_USE_EXT_INTR = "0" *) 
  (* C_IO_BASEADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_IO_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_IO_MASK = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_LMB_AWIDTH = "32" *) 
  (* C_LMB_DWIDTH = "32" *) 
  (* C_MASK = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_PIT1_INTERRUPT = "0" *) 
  (* C_PIT1_PRESCALER = "0" *) 
  (* C_PIT1_READABLE = "1" *) 
  (* C_PIT1_SIZE = "32" *) 
  (* C_PIT2_INTERRUPT = "0" *) 
  (* C_PIT2_PRESCALER = "0" *) 
  (* C_PIT2_READABLE = "1" *) 
  (* C_PIT2_SIZE = "32" *) 
  (* C_PIT3_INTERRUPT = "0" *) 
  (* C_PIT3_PRESCALER = "0" *) 
  (* C_PIT3_READABLE = "1" *) 
  (* C_PIT3_SIZE = "32" *) 
  (* C_PIT4_INTERRUPT = "0" *) 
  (* C_PIT4_PRESCALER = "0" *) 
  (* C_PIT4_READABLE = "1" *) 
  (* C_PIT4_SIZE = "32" *) 
  (* C_TMR = "0" *) 
  (* C_UART_BAUDRATE = "9600" *) 
  (* C_UART_DATA_BITS = "8" *) 
  (* C_UART_ERROR_INTERRUPT = "0" *) 
  (* C_UART_ODD_PARITY = "0" *) 
  (* C_UART_PROG_BAUDRATE = "0" *) 
  (* C_UART_RX_INTERRUPT = "0" *) 
  (* C_UART_TX_INTERRUPT = "0" *) 
  (* C_UART_USE_PARITY = "0" *) 
  (* C_USE_CONFIG_RESET = "0" *) 
  (* C_USE_FIT1 = "0" *) 
  (* C_USE_FIT2 = "0" *) 
  (* C_USE_FIT3 = "0" *) 
  (* C_USE_FIT4 = "0" *) 
  (* C_USE_GPI1 = "0" *) 
  (* C_USE_GPI2 = "0" *) 
  (* C_USE_GPI3 = "0" *) 
  (* C_USE_GPI4 = "0" *) 
  (* C_USE_GPO1 = "0" *) 
  (* C_USE_GPO2 = "0" *) 
  (* C_USE_GPO3 = "0" *) 
  (* C_USE_GPO4 = "0" *) 
  (* C_USE_IO_BUS = "0" *) 
  (* C_USE_PIT1 = "0" *) 
  (* C_USE_PIT2 = "0" *) 
  (* C_USE_PIT3 = "0" *) 
  (* C_USE_PIT4 = "0" *) 
  (* C_USE_TMR_DISABLE = "0" *) 
  (* C_USE_UART_RX = "1" *) 
  (* C_USE_UART_TX = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule U0
       (.Clk(Clk),
        .Config_Reset(1'b0),
        .FIT1_Interrupt(NLW_U0_FIT1_Interrupt_UNCONNECTED),
        .FIT1_Toggle(NLW_U0_FIT1_Toggle_UNCONNECTED),
        .FIT2_Interrupt(NLW_U0_FIT2_Interrupt_UNCONNECTED),
        .FIT2_Toggle(NLW_U0_FIT2_Toggle_UNCONNECTED),
        .FIT3_Interrupt(NLW_U0_FIT3_Interrupt_UNCONNECTED),
        .FIT3_Toggle(NLW_U0_FIT3_Toggle_UNCONNECTED),
        .FIT4_Interrupt(NLW_U0_FIT4_Interrupt_UNCONNECTED),
        .FIT4_Toggle(NLW_U0_FIT4_Toggle_UNCONNECTED),
        .FromAVote({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .FromBVote({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI1_Interrupt(NLW_U0_GPI1_Interrupt_UNCONNECTED),
        .GPI2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI2_Interrupt(NLW_U0_GPI2_Interrupt_UNCONNECTED),
        .GPI3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI3_Interrupt(NLW_U0_GPI3_Interrupt_UNCONNECTED),
        .GPI4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI4_Interrupt(NLW_U0_GPI4_Interrupt_UNCONNECTED),
        .GPO1(NLW_U0_GPO1_UNCONNECTED[31:0]),
        .GPO2(NLW_U0_GPO2_UNCONNECTED[31:0]),
        .GPO3(NLW_U0_GPO3_UNCONNECTED[31:0]),
        .GPO4(NLW_U0_GPO4_UNCONNECTED[31:0]),
        .INTC_IRQ(NLW_U0_INTC_IRQ_UNCONNECTED),
        .INTC_IRQ_OUT(NLW_U0_INTC_IRQ_OUT_UNCONNECTED),
        .INTC_Interrupt(1'b0),
        .INTC_Interrupt_Address(NLW_U0_INTC_Interrupt_Address_UNCONNECTED[31:0]),
        .INTC_Processor_Ack({1'b0,1'b0}),
        .IO_Addr_Strobe(NLW_U0_IO_Addr_Strobe_UNCONNECTED),
        .IO_Address(NLW_U0_IO_Address_UNCONNECTED[31:0]),
        .IO_Byte_Enable(NLW_U0_IO_Byte_Enable_UNCONNECTED[3:0]),
        .IO_Read_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO_Read_Strobe(NLW_U0_IO_Read_Strobe_UNCONNECTED),
        .IO_Ready(1'b0),
        .IO_Write_Data(NLW_U0_IO_Write_Data_UNCONNECTED[31:0]),
        .IO_Write_Strobe(NLW_U0_IO_Write_Strobe_UNCONNECTED),
        .LMB_ABus(LMB_ABus),
        .LMB_AddrStrobe(LMB_AddrStrobe),
        .LMB_BE(LMB_BE),
        .LMB_ReadStrobe(LMB_ReadStrobe),
        .LMB_WriteDBus(LMB_WriteDBus),
        .LMB_WriteStrobe(LMB_WriteStrobe),
        .PIT1_Enable(1'b0),
        .PIT1_Interrupt(NLW_U0_PIT1_Interrupt_UNCONNECTED),
        .PIT1_Toggle(NLW_U0_PIT1_Toggle_UNCONNECTED),
        .PIT2_Enable(1'b0),
        .PIT2_Interrupt(NLW_U0_PIT2_Interrupt_UNCONNECTED),
        .PIT2_Toggle(NLW_U0_PIT2_Toggle_UNCONNECTED),
        .PIT3_Enable(1'b0),
        .PIT3_Interrupt(NLW_U0_PIT3_Interrupt_UNCONNECTED),
        .PIT3_Toggle(NLW_U0_PIT3_Toggle_UNCONNECTED),
        .PIT4_Enable(1'b0),
        .PIT4_Interrupt(NLW_U0_PIT4_Interrupt_UNCONNECTED),
        .PIT4_Toggle(NLW_U0_PIT4_Toggle_UNCONNECTED),
        .Rst(Rst),
        .Sl_CE(Sl_CE),
        .Sl_DBus(Sl_DBus),
        .Sl_Ready(Sl_Ready),
        .Sl_UE(Sl_UE),
        .Sl_Wait(Sl_Wait),
        .TMR_Disable(1'b0),
        .TMR_Rst(1'b0),
        .ToVote(NLW_U0_ToVote_UNCONNECTED[1023:0]),
        .UART_Interrupt(NLW_U0_UART_Interrupt_UNCONNECTED),
        .UART_Rx(UART_Rx),
        .UART_Tx(UART_Tx));
endmodule

(* C_AVOID_PRIMITIVES = "0" *) (* C_BASEADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_FAMILY = "artix7" *) 
(* C_FIT1_INTERRUPT = "0" *) (* C_FIT1_No_CLOCKS = "6216" *) (* C_FIT2_INTERRUPT = "0" *) 
(* C_FIT2_No_CLOCKS = "6216" *) (* C_FIT3_INTERRUPT = "0" *) (* C_FIT3_No_CLOCKS = "6216" *) 
(* C_FIT4_INTERRUPT = "0" *) (* C_FIT4_No_CLOCKS = "6216" *) (* C_FREQ = "100000000" *) 
(* C_GPI1_INTERRUPT = "0" *) (* C_GPI1_SIZE = "32" *) (* C_GPI2_INTERRUPT = "0" *) 
(* C_GPI2_SIZE = "32" *) (* C_GPI3_INTERRUPT = "0" *) (* C_GPI3_SIZE = "32" *) 
(* C_GPI4_INTERRUPT = "0" *) (* C_GPI4_SIZE = "32" *) (* C_GPO1_INIT = "0" *) 
(* C_GPO1_SIZE = "32" *) (* C_GPO2_INIT = "0" *) (* C_GPO2_SIZE = "32" *) 
(* C_GPO3_INIT = "0" *) (* C_GPO3_SIZE = "32" *) (* C_GPO4_INIT = "0" *) 
(* C_GPO4_SIZE = "32" *) (* C_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_INSTANCE = "iomodule_0" *) 
(* C_INTC_ADDR_WIDTH = "32" *) (* C_INTC_ASYNC_INTR = "16'b1111111111111111" *) (* C_INTC_BASE_VECTORS = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_INTC_HAS_FAST = "0" *) (* C_INTC_INTR_SIZE = "1" *) (* C_INTC_LEVEL_EDGE = "16'b0000000000000000" *) 
(* C_INTC_NUM_SYNC_FF = "2" *) (* C_INTC_POSITIVE = "16'b1111111111111111" *) (* C_INTC_USE_EXT_INTR = "0" *) 
(* C_IO_BASEADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_IO_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_IO_MASK = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
(* C_LMB_AWIDTH = "32" *) (* C_LMB_DWIDTH = "32" *) (* C_MASK = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_PIT1_INTERRUPT = "0" *) (* C_PIT1_PRESCALER = "0" *) (* C_PIT1_READABLE = "1" *) 
(* C_PIT1_SIZE = "32" *) (* C_PIT2_INTERRUPT = "0" *) (* C_PIT2_PRESCALER = "0" *) 
(* C_PIT2_READABLE = "1" *) (* C_PIT2_SIZE = "32" *) (* C_PIT3_INTERRUPT = "0" *) 
(* C_PIT3_PRESCALER = "0" *) (* C_PIT3_READABLE = "1" *) (* C_PIT3_SIZE = "32" *) 
(* C_PIT4_INTERRUPT = "0" *) (* C_PIT4_PRESCALER = "0" *) (* C_PIT4_READABLE = "1" *) 
(* C_PIT4_SIZE = "32" *) (* C_TMR = "0" *) (* C_UART_BAUDRATE = "9600" *) 
(* C_UART_DATA_BITS = "8" *) (* C_UART_ERROR_INTERRUPT = "0" *) (* C_UART_ODD_PARITY = "0" *) 
(* C_UART_PROG_BAUDRATE = "0" *) (* C_UART_RX_INTERRUPT = "0" *) (* C_UART_TX_INTERRUPT = "0" *) 
(* C_UART_USE_PARITY = "0" *) (* C_USE_CONFIG_RESET = "0" *) (* C_USE_FIT1 = "0" *) 
(* C_USE_FIT2 = "0" *) (* C_USE_FIT3 = "0" *) (* C_USE_FIT4 = "0" *) 
(* C_USE_GPI1 = "0" *) (* C_USE_GPI2 = "0" *) (* C_USE_GPI3 = "0" *) 
(* C_USE_GPI4 = "0" *) (* C_USE_GPO1 = "0" *) (* C_USE_GPO2 = "0" *) 
(* C_USE_GPO3 = "0" *) (* C_USE_GPO4 = "0" *) (* C_USE_IO_BUS = "0" *) 
(* C_USE_PIT1 = "0" *) (* C_USE_PIT2 = "0" *) (* C_USE_PIT3 = "0" *) 
(* C_USE_PIT4 = "0" *) (* C_USE_TMR_DISABLE = "0" *) (* C_USE_UART_RX = "1" *) 
(* C_USE_UART_TX = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iomodule
   (Clk,
    Rst,
    Config_Reset,
    TMR_Rst,
    TMR_Disable,
    ToVote,
    FromAVote,
    FromBVote,
    IO_Addr_Strobe,
    IO_Read_Strobe,
    IO_Write_Strobe,
    IO_Address,
    IO_Byte_Enable,
    IO_Write_Data,
    IO_Read_Data,
    IO_Ready,
    UART_Rx,
    UART_Tx,
    UART_Interrupt,
    FIT1_Interrupt,
    FIT1_Toggle,
    FIT2_Interrupt,
    FIT2_Toggle,
    FIT3_Interrupt,
    FIT3_Toggle,
    FIT4_Interrupt,
    FIT4_Toggle,
    PIT1_Enable,
    PIT1_Interrupt,
    PIT1_Toggle,
    PIT2_Enable,
    PIT2_Interrupt,
    PIT2_Toggle,
    PIT3_Enable,
    PIT3_Interrupt,
    PIT3_Toggle,
    PIT4_Enable,
    PIT4_Interrupt,
    PIT4_Toggle,
    GPO1,
    GPO2,
    GPO3,
    GPO4,
    GPI1,
    GPI1_Interrupt,
    GPI2,
    GPI2_Interrupt,
    GPI3,
    GPI3_Interrupt,
    GPI4,
    GPI4_Interrupt,
    INTC_Interrupt,
    INTC_IRQ,
    INTC_Processor_Ack,
    INTC_Interrupt_Address,
    INTC_IRQ_OUT,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE);
  input Clk;
  input Rst;
  input Config_Reset;
  input TMR_Rst;
  input TMR_Disable;
  output [1023:0]ToVote;
  input [1023:0]FromAVote;
  input [1023:0]FromBVote;
  output IO_Addr_Strobe;
  output IO_Read_Strobe;
  output IO_Write_Strobe;
  output [31:0]IO_Address;
  output [3:0]IO_Byte_Enable;
  output [31:0]IO_Write_Data;
  input [31:0]IO_Read_Data;
  input IO_Ready;
  input UART_Rx;
  output UART_Tx;
  output UART_Interrupt;
  output FIT1_Interrupt;
  output FIT1_Toggle;
  output FIT2_Interrupt;
  output FIT2_Toggle;
  output FIT3_Interrupt;
  output FIT3_Toggle;
  output FIT4_Interrupt;
  output FIT4_Toggle;
  input PIT1_Enable;
  output PIT1_Interrupt;
  output PIT1_Toggle;
  input PIT2_Enable;
  output PIT2_Interrupt;
  output PIT2_Toggle;
  input PIT3_Enable;
  output PIT3_Interrupt;
  output PIT3_Toggle;
  input PIT4_Enable;
  output PIT4_Interrupt;
  output PIT4_Toggle;
  output [31:0]GPO1;
  output [31:0]GPO2;
  output [31:0]GPO3;
  output [31:0]GPO4;
  input [31:0]GPI1;
  output GPI1_Interrupt;
  input [31:0]GPI2;
  output GPI2_Interrupt;
  input [31:0]GPI3;
  output GPI3_Interrupt;
  input [31:0]GPI4;
  output GPI4_Interrupt;
  input [0:0]INTC_Interrupt;
  output INTC_IRQ;
  input [1:0]INTC_Processor_Ack;
  output [31:0]INTC_Interrupt_Address;
  output INTC_IRQ_OUT;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;

  wire \<const0> ;
  wire \<const1> ;
  wire Clk;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire LMB_ReadStrobe;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire Rst;
  wire [24:31]\^Sl_DBus ;
  wire Sl_Ready;
  wire Sl_Wait;
  wire UART_Interrupt;
  wire UART_Rx;
  wire UART_Tx;
  wire [2:6]lmb_abus_Q;
  wire lmb_reg_read0;
  wire lmb_reg_read_Q;
  wire lmb_reg_write;
  wire lmb_reg_write0;
  (* RTL_KEEP = "true" *) wire uart_tx_write;
  (* RTL_KEEP = "true" *) wire [31:0]write_data;

  assign FIT1_Interrupt = \<const0> ;
  assign FIT1_Toggle = \<const0> ;
  assign FIT2_Interrupt = \<const0> ;
  assign FIT2_Toggle = \<const0> ;
  assign FIT3_Interrupt = \<const0> ;
  assign FIT3_Toggle = \<const0> ;
  assign FIT4_Interrupt = \<const0> ;
  assign FIT4_Toggle = \<const0> ;
  assign GPI1_Interrupt = \<const0> ;
  assign GPI2_Interrupt = \<const0> ;
  assign GPI3_Interrupt = \<const0> ;
  assign GPI4_Interrupt = \<const0> ;
  assign GPO1[31] = \<const0> ;
  assign GPO1[30] = \<const0> ;
  assign GPO1[29] = \<const0> ;
  assign GPO1[28] = \<const0> ;
  assign GPO1[27] = \<const0> ;
  assign GPO1[26] = \<const0> ;
  assign GPO1[25] = \<const0> ;
  assign GPO1[24] = \<const0> ;
  assign GPO1[23] = \<const0> ;
  assign GPO1[22] = \<const0> ;
  assign GPO1[21] = \<const0> ;
  assign GPO1[20] = \<const0> ;
  assign GPO1[19] = \<const0> ;
  assign GPO1[18] = \<const0> ;
  assign GPO1[17] = \<const0> ;
  assign GPO1[16] = \<const0> ;
  assign GPO1[15] = \<const0> ;
  assign GPO1[14] = \<const0> ;
  assign GPO1[13] = \<const0> ;
  assign GPO1[12] = \<const0> ;
  assign GPO1[11] = \<const0> ;
  assign GPO1[10] = \<const0> ;
  assign GPO1[9] = \<const0> ;
  assign GPO1[8] = \<const0> ;
  assign GPO1[7] = \<const0> ;
  assign GPO1[6] = \<const0> ;
  assign GPO1[5] = \<const0> ;
  assign GPO1[4] = \<const0> ;
  assign GPO1[3] = \<const0> ;
  assign GPO1[2] = \<const0> ;
  assign GPO1[1] = \<const0> ;
  assign GPO1[0] = \<const0> ;
  assign GPO2[31] = \<const0> ;
  assign GPO2[30] = \<const0> ;
  assign GPO2[29] = \<const0> ;
  assign GPO2[28] = \<const0> ;
  assign GPO2[27] = \<const0> ;
  assign GPO2[26] = \<const0> ;
  assign GPO2[25] = \<const0> ;
  assign GPO2[24] = \<const0> ;
  assign GPO2[23] = \<const0> ;
  assign GPO2[22] = \<const0> ;
  assign GPO2[21] = \<const0> ;
  assign GPO2[20] = \<const0> ;
  assign GPO2[19] = \<const0> ;
  assign GPO2[18] = \<const0> ;
  assign GPO2[17] = \<const0> ;
  assign GPO2[16] = \<const0> ;
  assign GPO2[15] = \<const0> ;
  assign GPO2[14] = \<const0> ;
  assign GPO2[13] = \<const0> ;
  assign GPO2[12] = \<const0> ;
  assign GPO2[11] = \<const0> ;
  assign GPO2[10] = \<const0> ;
  assign GPO2[9] = \<const0> ;
  assign GPO2[8] = \<const0> ;
  assign GPO2[7] = \<const0> ;
  assign GPO2[6] = \<const0> ;
  assign GPO2[5] = \<const0> ;
  assign GPO2[4] = \<const0> ;
  assign GPO2[3] = \<const0> ;
  assign GPO2[2] = \<const0> ;
  assign GPO2[1] = \<const0> ;
  assign GPO2[0] = \<const0> ;
  assign GPO3[31] = \<const0> ;
  assign GPO3[30] = \<const0> ;
  assign GPO3[29] = \<const0> ;
  assign GPO3[28] = \<const0> ;
  assign GPO3[27] = \<const0> ;
  assign GPO3[26] = \<const0> ;
  assign GPO3[25] = \<const0> ;
  assign GPO3[24] = \<const0> ;
  assign GPO3[23] = \<const0> ;
  assign GPO3[22] = \<const0> ;
  assign GPO3[21] = \<const0> ;
  assign GPO3[20] = \<const0> ;
  assign GPO3[19] = \<const0> ;
  assign GPO3[18] = \<const0> ;
  assign GPO3[17] = \<const0> ;
  assign GPO3[16] = \<const0> ;
  assign GPO3[15] = \<const0> ;
  assign GPO3[14] = \<const0> ;
  assign GPO3[13] = \<const0> ;
  assign GPO3[12] = \<const0> ;
  assign GPO3[11] = \<const0> ;
  assign GPO3[10] = \<const0> ;
  assign GPO3[9] = \<const0> ;
  assign GPO3[8] = \<const0> ;
  assign GPO3[7] = \<const0> ;
  assign GPO3[6] = \<const0> ;
  assign GPO3[5] = \<const0> ;
  assign GPO3[4] = \<const0> ;
  assign GPO3[3] = \<const0> ;
  assign GPO3[2] = \<const0> ;
  assign GPO3[1] = \<const0> ;
  assign GPO3[0] = \<const0> ;
  assign GPO4[31] = \<const0> ;
  assign GPO4[30] = \<const0> ;
  assign GPO4[29] = \<const0> ;
  assign GPO4[28] = \<const0> ;
  assign GPO4[27] = \<const0> ;
  assign GPO4[26] = \<const0> ;
  assign GPO4[25] = \<const0> ;
  assign GPO4[24] = \<const0> ;
  assign GPO4[23] = \<const0> ;
  assign GPO4[22] = \<const0> ;
  assign GPO4[21] = \<const0> ;
  assign GPO4[20] = \<const0> ;
  assign GPO4[19] = \<const0> ;
  assign GPO4[18] = \<const0> ;
  assign GPO4[17] = \<const0> ;
  assign GPO4[16] = \<const0> ;
  assign GPO4[15] = \<const0> ;
  assign GPO4[14] = \<const0> ;
  assign GPO4[13] = \<const0> ;
  assign GPO4[12] = \<const0> ;
  assign GPO4[11] = \<const0> ;
  assign GPO4[10] = \<const0> ;
  assign GPO4[9] = \<const0> ;
  assign GPO4[8] = \<const0> ;
  assign GPO4[7] = \<const0> ;
  assign GPO4[6] = \<const0> ;
  assign GPO4[5] = \<const0> ;
  assign GPO4[4] = \<const0> ;
  assign GPO4[3] = \<const0> ;
  assign GPO4[2] = \<const0> ;
  assign GPO4[1] = \<const0> ;
  assign GPO4[0] = \<const0> ;
  assign INTC_IRQ = \<const0> ;
  assign INTC_IRQ_OUT = \<const0> ;
  assign INTC_Interrupt_Address[31] = \<const0> ;
  assign INTC_Interrupt_Address[30] = \<const0> ;
  assign INTC_Interrupt_Address[29] = \<const0> ;
  assign INTC_Interrupt_Address[28] = \<const0> ;
  assign INTC_Interrupt_Address[27] = \<const0> ;
  assign INTC_Interrupt_Address[26] = \<const0> ;
  assign INTC_Interrupt_Address[25] = \<const0> ;
  assign INTC_Interrupt_Address[24] = \<const0> ;
  assign INTC_Interrupt_Address[23] = \<const0> ;
  assign INTC_Interrupt_Address[22] = \<const0> ;
  assign INTC_Interrupt_Address[21] = \<const0> ;
  assign INTC_Interrupt_Address[20] = \<const0> ;
  assign INTC_Interrupt_Address[19] = \<const0> ;
  assign INTC_Interrupt_Address[18] = \<const0> ;
  assign INTC_Interrupt_Address[17] = \<const0> ;
  assign INTC_Interrupt_Address[16] = \<const0> ;
  assign INTC_Interrupt_Address[15] = \<const0> ;
  assign INTC_Interrupt_Address[14] = \<const0> ;
  assign INTC_Interrupt_Address[13] = \<const0> ;
  assign INTC_Interrupt_Address[12] = \<const0> ;
  assign INTC_Interrupt_Address[11] = \<const0> ;
  assign INTC_Interrupt_Address[10] = \<const0> ;
  assign INTC_Interrupt_Address[9] = \<const0> ;
  assign INTC_Interrupt_Address[8] = \<const0> ;
  assign INTC_Interrupt_Address[7] = \<const0> ;
  assign INTC_Interrupt_Address[6] = \<const0> ;
  assign INTC_Interrupt_Address[5] = \<const0> ;
  assign INTC_Interrupt_Address[4] = \<const1> ;
  assign INTC_Interrupt_Address[3] = \<const0> ;
  assign INTC_Interrupt_Address[2] = \<const0> ;
  assign INTC_Interrupt_Address[1] = \<const0> ;
  assign INTC_Interrupt_Address[0] = \<const0> ;
  assign IO_Addr_Strobe = \<const0> ;
  assign IO_Address[31] = \<const0> ;
  assign IO_Address[30] = \<const0> ;
  assign IO_Address[29] = \<const0> ;
  assign IO_Address[28] = \<const0> ;
  assign IO_Address[27] = \<const0> ;
  assign IO_Address[26] = \<const0> ;
  assign IO_Address[25] = \<const0> ;
  assign IO_Address[24] = \<const0> ;
  assign IO_Address[23] = \<const0> ;
  assign IO_Address[22] = \<const0> ;
  assign IO_Address[21] = \<const0> ;
  assign IO_Address[20] = \<const0> ;
  assign IO_Address[19] = \<const0> ;
  assign IO_Address[18] = \<const0> ;
  assign IO_Address[17] = \<const0> ;
  assign IO_Address[16] = \<const0> ;
  assign IO_Address[15] = \<const0> ;
  assign IO_Address[14] = \<const0> ;
  assign IO_Address[13] = \<const0> ;
  assign IO_Address[12] = \<const0> ;
  assign IO_Address[11] = \<const0> ;
  assign IO_Address[10] = \<const0> ;
  assign IO_Address[9] = \<const0> ;
  assign IO_Address[8] = \<const0> ;
  assign IO_Address[7] = \<const0> ;
  assign IO_Address[6] = \<const0> ;
  assign IO_Address[5] = \<const0> ;
  assign IO_Address[4] = \<const0> ;
  assign IO_Address[3] = \<const0> ;
  assign IO_Address[2] = \<const0> ;
  assign IO_Address[1] = \<const0> ;
  assign IO_Address[0] = \<const0> ;
  assign IO_Byte_Enable[3] = \<const0> ;
  assign IO_Byte_Enable[2] = \<const0> ;
  assign IO_Byte_Enable[1] = \<const0> ;
  assign IO_Byte_Enable[0] = \<const0> ;
  assign IO_Read_Strobe = \<const0> ;
  assign IO_Write_Data[31] = \<const0> ;
  assign IO_Write_Data[30] = \<const0> ;
  assign IO_Write_Data[29] = \<const0> ;
  assign IO_Write_Data[28] = \<const0> ;
  assign IO_Write_Data[27] = \<const0> ;
  assign IO_Write_Data[26] = \<const0> ;
  assign IO_Write_Data[25] = \<const0> ;
  assign IO_Write_Data[24] = \<const0> ;
  assign IO_Write_Data[23] = \<const0> ;
  assign IO_Write_Data[22] = \<const0> ;
  assign IO_Write_Data[21] = \<const0> ;
  assign IO_Write_Data[20] = \<const0> ;
  assign IO_Write_Data[19] = \<const0> ;
  assign IO_Write_Data[18] = \<const0> ;
  assign IO_Write_Data[17] = \<const0> ;
  assign IO_Write_Data[16] = \<const0> ;
  assign IO_Write_Data[15] = \<const0> ;
  assign IO_Write_Data[14] = \<const0> ;
  assign IO_Write_Data[13] = \<const0> ;
  assign IO_Write_Data[12] = \<const0> ;
  assign IO_Write_Data[11] = \<const0> ;
  assign IO_Write_Data[10] = \<const0> ;
  assign IO_Write_Data[9] = \<const0> ;
  assign IO_Write_Data[8] = \<const0> ;
  assign IO_Write_Data[7] = \<const0> ;
  assign IO_Write_Data[6] = \<const0> ;
  assign IO_Write_Data[5] = \<const0> ;
  assign IO_Write_Data[4] = \<const0> ;
  assign IO_Write_Data[3] = \<const0> ;
  assign IO_Write_Data[2] = \<const0> ;
  assign IO_Write_Data[1] = \<const0> ;
  assign IO_Write_Data[0] = \<const0> ;
  assign IO_Write_Strobe = \<const0> ;
  assign PIT1_Interrupt = \<const0> ;
  assign PIT1_Toggle = \<const0> ;
  assign PIT2_Interrupt = \<const0> ;
  assign PIT2_Toggle = \<const0> ;
  assign PIT3_Interrupt = \<const0> ;
  assign PIT3_Toggle = \<const0> ;
  assign PIT4_Interrupt = \<const0> ;
  assign PIT4_Toggle = \<const0> ;
  assign Sl_CE = \<const0> ;
  assign Sl_DBus[0] = \<const0> ;
  assign Sl_DBus[1] = \<const0> ;
  assign Sl_DBus[2] = \<const0> ;
  assign Sl_DBus[3] = \<const0> ;
  assign Sl_DBus[4] = \<const0> ;
  assign Sl_DBus[5] = \<const0> ;
  assign Sl_DBus[6] = \<const0> ;
  assign Sl_DBus[7] = \<const0> ;
  assign Sl_DBus[8] = \<const0> ;
  assign Sl_DBus[9] = \<const0> ;
  assign Sl_DBus[10] = \<const0> ;
  assign Sl_DBus[11] = \<const0> ;
  assign Sl_DBus[12] = \<const0> ;
  assign Sl_DBus[13] = \<const0> ;
  assign Sl_DBus[14] = \<const0> ;
  assign Sl_DBus[15] = \<const0> ;
  assign Sl_DBus[16] = \<const0> ;
  assign Sl_DBus[17] = \<const0> ;
  assign Sl_DBus[18] = \<const0> ;
  assign Sl_DBus[19] = \<const0> ;
  assign Sl_DBus[20] = \<const0> ;
  assign Sl_DBus[21] = \<const0> ;
  assign Sl_DBus[22] = \<const0> ;
  assign Sl_DBus[23] = \<const0> ;
  assign Sl_DBus[24:31] = \^Sl_DBus [24:31];
  assign Sl_UE = \<const0> ;
  assign ToVote[1023] = \<const0> ;
  assign ToVote[1022] = \<const0> ;
  assign ToVote[1021] = \<const0> ;
  assign ToVote[1020] = \<const0> ;
  assign ToVote[1019] = \<const0> ;
  assign ToVote[1018] = \<const0> ;
  assign ToVote[1017] = \<const0> ;
  assign ToVote[1016] = \<const0> ;
  assign ToVote[1015] = \<const0> ;
  assign ToVote[1014] = \<const0> ;
  assign ToVote[1013] = \<const0> ;
  assign ToVote[1012] = \<const0> ;
  assign ToVote[1011] = \<const0> ;
  assign ToVote[1010] = \<const0> ;
  assign ToVote[1009] = \<const0> ;
  assign ToVote[1008] = \<const0> ;
  assign ToVote[1007] = \<const0> ;
  assign ToVote[1006] = \<const0> ;
  assign ToVote[1005] = \<const0> ;
  assign ToVote[1004] = \<const0> ;
  assign ToVote[1003] = \<const0> ;
  assign ToVote[1002] = \<const0> ;
  assign ToVote[1001] = \<const0> ;
  assign ToVote[1000] = \<const0> ;
  assign ToVote[999] = \<const0> ;
  assign ToVote[998] = \<const0> ;
  assign ToVote[997] = \<const0> ;
  assign ToVote[996] = \<const0> ;
  assign ToVote[995] = \<const0> ;
  assign ToVote[994] = \<const0> ;
  assign ToVote[993] = \<const0> ;
  assign ToVote[992] = \<const0> ;
  assign ToVote[991] = \<const0> ;
  assign ToVote[990] = \<const0> ;
  assign ToVote[989] = \<const0> ;
  assign ToVote[988] = \<const0> ;
  assign ToVote[987] = \<const0> ;
  assign ToVote[986] = \<const0> ;
  assign ToVote[985] = \<const0> ;
  assign ToVote[984] = \<const0> ;
  assign ToVote[983] = \<const0> ;
  assign ToVote[982] = \<const0> ;
  assign ToVote[981] = \<const0> ;
  assign ToVote[980] = \<const0> ;
  assign ToVote[979] = \<const0> ;
  assign ToVote[978] = \<const0> ;
  assign ToVote[977] = \<const0> ;
  assign ToVote[976] = \<const0> ;
  assign ToVote[975] = \<const0> ;
  assign ToVote[974] = \<const0> ;
  assign ToVote[973] = \<const0> ;
  assign ToVote[972] = \<const0> ;
  assign ToVote[971] = \<const0> ;
  assign ToVote[970] = \<const0> ;
  assign ToVote[969] = \<const0> ;
  assign ToVote[968] = \<const0> ;
  assign ToVote[967] = \<const0> ;
  assign ToVote[966] = \<const0> ;
  assign ToVote[965] = \<const0> ;
  assign ToVote[964] = \<const0> ;
  assign ToVote[963] = \<const0> ;
  assign ToVote[962] = \<const0> ;
  assign ToVote[961] = \<const0> ;
  assign ToVote[960] = \<const0> ;
  assign ToVote[959] = \<const0> ;
  assign ToVote[958] = \<const0> ;
  assign ToVote[957] = \<const0> ;
  assign ToVote[956] = \<const0> ;
  assign ToVote[955] = \<const0> ;
  assign ToVote[954] = \<const0> ;
  assign ToVote[953] = \<const0> ;
  assign ToVote[952] = \<const0> ;
  assign ToVote[951] = \<const0> ;
  assign ToVote[950] = \<const0> ;
  assign ToVote[949] = \<const0> ;
  assign ToVote[948] = \<const0> ;
  assign ToVote[947] = \<const0> ;
  assign ToVote[946] = \<const0> ;
  assign ToVote[945] = \<const0> ;
  assign ToVote[944] = \<const0> ;
  assign ToVote[943] = \<const0> ;
  assign ToVote[942] = \<const0> ;
  assign ToVote[941] = \<const0> ;
  assign ToVote[940] = \<const0> ;
  assign ToVote[939] = \<const0> ;
  assign ToVote[938] = \<const0> ;
  assign ToVote[937] = \<const0> ;
  assign ToVote[936] = \<const0> ;
  assign ToVote[935] = \<const0> ;
  assign ToVote[934] = \<const0> ;
  assign ToVote[933] = \<const0> ;
  assign ToVote[932] = \<const0> ;
  assign ToVote[931] = \<const0> ;
  assign ToVote[930] = \<const0> ;
  assign ToVote[929] = \<const0> ;
  assign ToVote[928] = \<const0> ;
  assign ToVote[927] = \<const0> ;
  assign ToVote[926] = \<const0> ;
  assign ToVote[925] = \<const0> ;
  assign ToVote[924] = \<const0> ;
  assign ToVote[923] = \<const0> ;
  assign ToVote[922] = \<const0> ;
  assign ToVote[921] = \<const0> ;
  assign ToVote[920] = \<const0> ;
  assign ToVote[919] = \<const0> ;
  assign ToVote[918] = \<const0> ;
  assign ToVote[917] = \<const0> ;
  assign ToVote[916] = \<const0> ;
  assign ToVote[915] = \<const0> ;
  assign ToVote[914] = \<const0> ;
  assign ToVote[913] = \<const0> ;
  assign ToVote[912] = \<const0> ;
  assign ToVote[911] = \<const0> ;
  assign ToVote[910] = \<const0> ;
  assign ToVote[909] = \<const0> ;
  assign ToVote[908] = \<const0> ;
  assign ToVote[907] = \<const0> ;
  assign ToVote[906] = \<const0> ;
  assign ToVote[905] = \<const0> ;
  assign ToVote[904] = \<const0> ;
  assign ToVote[903] = \<const0> ;
  assign ToVote[902] = \<const0> ;
  assign ToVote[901] = \<const0> ;
  assign ToVote[900] = \<const0> ;
  assign ToVote[899] = \<const0> ;
  assign ToVote[898] = \<const0> ;
  assign ToVote[897] = \<const0> ;
  assign ToVote[896] = \<const0> ;
  assign ToVote[895] = \<const0> ;
  assign ToVote[894] = \<const0> ;
  assign ToVote[893] = \<const0> ;
  assign ToVote[892] = \<const0> ;
  assign ToVote[891] = \<const0> ;
  assign ToVote[890] = \<const0> ;
  assign ToVote[889] = \<const0> ;
  assign ToVote[888] = \<const0> ;
  assign ToVote[887] = \<const0> ;
  assign ToVote[886] = \<const0> ;
  assign ToVote[885] = \<const0> ;
  assign ToVote[884] = \<const0> ;
  assign ToVote[883] = \<const0> ;
  assign ToVote[882] = \<const0> ;
  assign ToVote[881] = \<const0> ;
  assign ToVote[880] = \<const0> ;
  assign ToVote[879] = \<const0> ;
  assign ToVote[878] = \<const0> ;
  assign ToVote[877] = \<const0> ;
  assign ToVote[876] = \<const0> ;
  assign ToVote[875] = \<const0> ;
  assign ToVote[874] = \<const0> ;
  assign ToVote[873] = \<const0> ;
  assign ToVote[872] = \<const0> ;
  assign ToVote[871] = \<const0> ;
  assign ToVote[870] = \<const0> ;
  assign ToVote[869] = \<const0> ;
  assign ToVote[868] = \<const0> ;
  assign ToVote[867] = \<const0> ;
  assign ToVote[866] = \<const0> ;
  assign ToVote[865] = \<const0> ;
  assign ToVote[864] = \<const0> ;
  assign ToVote[863] = \<const0> ;
  assign ToVote[862] = \<const0> ;
  assign ToVote[861] = \<const0> ;
  assign ToVote[860] = \<const0> ;
  assign ToVote[859] = \<const0> ;
  assign ToVote[858] = \<const0> ;
  assign ToVote[857] = \<const0> ;
  assign ToVote[856] = \<const0> ;
  assign ToVote[855] = \<const0> ;
  assign ToVote[854] = \<const0> ;
  assign ToVote[853] = \<const0> ;
  assign ToVote[852] = \<const0> ;
  assign ToVote[851] = \<const0> ;
  assign ToVote[850] = \<const0> ;
  assign ToVote[849] = \<const0> ;
  assign ToVote[848] = \<const0> ;
  assign ToVote[847] = \<const0> ;
  assign ToVote[846] = \<const0> ;
  assign ToVote[845] = \<const0> ;
  assign ToVote[844] = \<const0> ;
  assign ToVote[843] = \<const0> ;
  assign ToVote[842] = \<const0> ;
  assign ToVote[841] = \<const0> ;
  assign ToVote[840] = \<const0> ;
  assign ToVote[839] = \<const0> ;
  assign ToVote[838] = \<const0> ;
  assign ToVote[837] = \<const0> ;
  assign ToVote[836] = \<const0> ;
  assign ToVote[835] = \<const0> ;
  assign ToVote[834] = \<const0> ;
  assign ToVote[833] = \<const0> ;
  assign ToVote[832] = \<const0> ;
  assign ToVote[831] = \<const0> ;
  assign ToVote[830] = \<const0> ;
  assign ToVote[829] = \<const0> ;
  assign ToVote[828] = \<const0> ;
  assign ToVote[827] = \<const0> ;
  assign ToVote[826] = \<const0> ;
  assign ToVote[825] = \<const0> ;
  assign ToVote[824] = \<const0> ;
  assign ToVote[823] = \<const0> ;
  assign ToVote[822] = \<const0> ;
  assign ToVote[821] = \<const0> ;
  assign ToVote[820] = \<const0> ;
  assign ToVote[819] = \<const0> ;
  assign ToVote[818] = \<const0> ;
  assign ToVote[817] = \<const0> ;
  assign ToVote[816] = \<const0> ;
  assign ToVote[815] = \<const0> ;
  assign ToVote[814] = \<const0> ;
  assign ToVote[813] = \<const0> ;
  assign ToVote[812] = \<const0> ;
  assign ToVote[811] = \<const0> ;
  assign ToVote[810] = \<const0> ;
  assign ToVote[809] = \<const0> ;
  assign ToVote[808] = \<const0> ;
  assign ToVote[807] = \<const0> ;
  assign ToVote[806] = \<const0> ;
  assign ToVote[805] = \<const0> ;
  assign ToVote[804] = \<const0> ;
  assign ToVote[803] = \<const0> ;
  assign ToVote[802] = \<const0> ;
  assign ToVote[801] = \<const0> ;
  assign ToVote[800] = \<const0> ;
  assign ToVote[799] = \<const0> ;
  assign ToVote[798] = \<const0> ;
  assign ToVote[797] = \<const0> ;
  assign ToVote[796] = \<const0> ;
  assign ToVote[795] = \<const0> ;
  assign ToVote[794] = \<const0> ;
  assign ToVote[793] = \<const0> ;
  assign ToVote[792] = \<const0> ;
  assign ToVote[791] = \<const0> ;
  assign ToVote[790] = \<const0> ;
  assign ToVote[789] = \<const0> ;
  assign ToVote[788] = \<const0> ;
  assign ToVote[787] = \<const0> ;
  assign ToVote[786] = \<const0> ;
  assign ToVote[785] = \<const0> ;
  assign ToVote[784] = \<const0> ;
  assign ToVote[783] = \<const0> ;
  assign ToVote[782] = \<const0> ;
  assign ToVote[781] = \<const0> ;
  assign ToVote[780] = \<const0> ;
  assign ToVote[779] = \<const0> ;
  assign ToVote[778] = \<const0> ;
  assign ToVote[777] = \<const0> ;
  assign ToVote[776] = \<const0> ;
  assign ToVote[775] = \<const0> ;
  assign ToVote[774] = \<const0> ;
  assign ToVote[773] = \<const0> ;
  assign ToVote[772] = \<const0> ;
  assign ToVote[771] = \<const0> ;
  assign ToVote[770] = \<const0> ;
  assign ToVote[769] = \<const0> ;
  assign ToVote[768] = \<const0> ;
  assign ToVote[767] = \<const0> ;
  assign ToVote[766] = \<const0> ;
  assign ToVote[765] = \<const0> ;
  assign ToVote[764] = \<const0> ;
  assign ToVote[763] = \<const0> ;
  assign ToVote[762] = \<const0> ;
  assign ToVote[761] = \<const0> ;
  assign ToVote[760] = \<const0> ;
  assign ToVote[759] = \<const0> ;
  assign ToVote[758] = \<const0> ;
  assign ToVote[757] = \<const0> ;
  assign ToVote[756] = \<const0> ;
  assign ToVote[755] = \<const0> ;
  assign ToVote[754] = \<const0> ;
  assign ToVote[753] = \<const0> ;
  assign ToVote[752] = \<const0> ;
  assign ToVote[751] = \<const0> ;
  assign ToVote[750] = \<const0> ;
  assign ToVote[749] = \<const0> ;
  assign ToVote[748] = \<const0> ;
  assign ToVote[747] = \<const0> ;
  assign ToVote[746] = \<const0> ;
  assign ToVote[745] = \<const0> ;
  assign ToVote[744] = \<const0> ;
  assign ToVote[743] = \<const0> ;
  assign ToVote[742] = \<const0> ;
  assign ToVote[741] = \<const0> ;
  assign ToVote[740] = \<const0> ;
  assign ToVote[739] = \<const0> ;
  assign ToVote[738] = \<const0> ;
  assign ToVote[737] = \<const0> ;
  assign ToVote[736] = \<const0> ;
  assign ToVote[735] = \<const0> ;
  assign ToVote[734] = \<const0> ;
  assign ToVote[733] = \<const0> ;
  assign ToVote[732] = \<const0> ;
  assign ToVote[731] = \<const0> ;
  assign ToVote[730] = \<const0> ;
  assign ToVote[729] = \<const0> ;
  assign ToVote[728] = \<const0> ;
  assign ToVote[727] = \<const0> ;
  assign ToVote[726] = \<const0> ;
  assign ToVote[725] = \<const0> ;
  assign ToVote[724] = \<const0> ;
  assign ToVote[723] = \<const0> ;
  assign ToVote[722] = \<const0> ;
  assign ToVote[721] = \<const0> ;
  assign ToVote[720] = \<const0> ;
  assign ToVote[719] = \<const0> ;
  assign ToVote[718] = \<const0> ;
  assign ToVote[717] = \<const0> ;
  assign ToVote[716] = \<const0> ;
  assign ToVote[715] = \<const0> ;
  assign ToVote[714] = \<const0> ;
  assign ToVote[713] = \<const0> ;
  assign ToVote[712] = \<const0> ;
  assign ToVote[711] = \<const0> ;
  assign ToVote[710] = \<const0> ;
  assign ToVote[709] = \<const0> ;
  assign ToVote[708] = \<const0> ;
  assign ToVote[707] = \<const0> ;
  assign ToVote[706] = \<const0> ;
  assign ToVote[705] = \<const0> ;
  assign ToVote[704] = \<const0> ;
  assign ToVote[703] = \<const0> ;
  assign ToVote[702] = \<const0> ;
  assign ToVote[701] = \<const0> ;
  assign ToVote[700] = \<const0> ;
  assign ToVote[699] = \<const0> ;
  assign ToVote[698] = \<const0> ;
  assign ToVote[697] = \<const0> ;
  assign ToVote[696] = \<const0> ;
  assign ToVote[695] = \<const0> ;
  assign ToVote[694] = \<const0> ;
  assign ToVote[693] = \<const0> ;
  assign ToVote[692] = \<const0> ;
  assign ToVote[691] = \<const0> ;
  assign ToVote[690] = \<const0> ;
  assign ToVote[689] = \<const0> ;
  assign ToVote[688] = \<const0> ;
  assign ToVote[687] = \<const0> ;
  assign ToVote[686] = \<const0> ;
  assign ToVote[685] = \<const0> ;
  assign ToVote[684] = \<const0> ;
  assign ToVote[683] = \<const0> ;
  assign ToVote[682] = \<const0> ;
  assign ToVote[681] = \<const0> ;
  assign ToVote[680] = \<const0> ;
  assign ToVote[679] = \<const0> ;
  assign ToVote[678] = \<const0> ;
  assign ToVote[677] = \<const0> ;
  assign ToVote[676] = \<const0> ;
  assign ToVote[675] = \<const0> ;
  assign ToVote[674] = \<const0> ;
  assign ToVote[673] = \<const0> ;
  assign ToVote[672] = \<const0> ;
  assign ToVote[671] = \<const0> ;
  assign ToVote[670] = \<const0> ;
  assign ToVote[669] = \<const0> ;
  assign ToVote[668] = \<const0> ;
  assign ToVote[667] = \<const0> ;
  assign ToVote[666] = \<const0> ;
  assign ToVote[665] = \<const0> ;
  assign ToVote[664] = \<const0> ;
  assign ToVote[663] = \<const0> ;
  assign ToVote[662] = \<const0> ;
  assign ToVote[661] = \<const0> ;
  assign ToVote[660] = \<const0> ;
  assign ToVote[659] = \<const0> ;
  assign ToVote[658] = \<const0> ;
  assign ToVote[657] = \<const0> ;
  assign ToVote[656] = \<const0> ;
  assign ToVote[655] = \<const0> ;
  assign ToVote[654] = \<const0> ;
  assign ToVote[653] = \<const0> ;
  assign ToVote[652] = \<const0> ;
  assign ToVote[651] = \<const0> ;
  assign ToVote[650] = \<const0> ;
  assign ToVote[649] = \<const0> ;
  assign ToVote[648] = \<const0> ;
  assign ToVote[647] = \<const0> ;
  assign ToVote[646] = \<const0> ;
  assign ToVote[645] = \<const0> ;
  assign ToVote[644] = \<const0> ;
  assign ToVote[643] = \<const0> ;
  assign ToVote[642] = \<const0> ;
  assign ToVote[641] = \<const0> ;
  assign ToVote[640] = \<const0> ;
  assign ToVote[639] = \<const0> ;
  assign ToVote[638] = \<const0> ;
  assign ToVote[637] = \<const0> ;
  assign ToVote[636] = \<const0> ;
  assign ToVote[635] = \<const0> ;
  assign ToVote[634] = \<const0> ;
  assign ToVote[633] = \<const0> ;
  assign ToVote[632] = \<const0> ;
  assign ToVote[631] = \<const0> ;
  assign ToVote[630] = \<const0> ;
  assign ToVote[629] = \<const0> ;
  assign ToVote[628] = \<const0> ;
  assign ToVote[627] = \<const0> ;
  assign ToVote[626] = \<const0> ;
  assign ToVote[625] = \<const0> ;
  assign ToVote[624] = \<const0> ;
  assign ToVote[623] = \<const0> ;
  assign ToVote[622] = \<const0> ;
  assign ToVote[621] = \<const0> ;
  assign ToVote[620] = \<const0> ;
  assign ToVote[619] = \<const0> ;
  assign ToVote[618] = \<const0> ;
  assign ToVote[617] = \<const0> ;
  assign ToVote[616] = \<const0> ;
  assign ToVote[615] = \<const0> ;
  assign ToVote[614] = \<const0> ;
  assign ToVote[613] = \<const0> ;
  assign ToVote[612] = \<const0> ;
  assign ToVote[611] = \<const0> ;
  assign ToVote[610] = \<const0> ;
  assign ToVote[609] = \<const0> ;
  assign ToVote[608] = \<const0> ;
  assign ToVote[607] = \<const0> ;
  assign ToVote[606] = \<const0> ;
  assign ToVote[605] = \<const0> ;
  assign ToVote[604] = \<const0> ;
  assign ToVote[603] = \<const0> ;
  assign ToVote[602] = \<const0> ;
  assign ToVote[601] = \<const0> ;
  assign ToVote[600] = \<const0> ;
  assign ToVote[599] = \<const0> ;
  assign ToVote[598] = \<const0> ;
  assign ToVote[597] = \<const0> ;
  assign ToVote[596] = \<const0> ;
  assign ToVote[595] = \<const0> ;
  assign ToVote[594] = \<const0> ;
  assign ToVote[593] = \<const0> ;
  assign ToVote[592] = \<const0> ;
  assign ToVote[591] = \<const0> ;
  assign ToVote[590] = \<const0> ;
  assign ToVote[589] = \<const0> ;
  assign ToVote[588] = \<const0> ;
  assign ToVote[587] = \<const0> ;
  assign ToVote[586] = \<const0> ;
  assign ToVote[585] = \<const0> ;
  assign ToVote[584] = \<const0> ;
  assign ToVote[583] = \<const0> ;
  assign ToVote[582] = \<const0> ;
  assign ToVote[581] = \<const0> ;
  assign ToVote[580] = \<const0> ;
  assign ToVote[579] = \<const0> ;
  assign ToVote[578] = \<const0> ;
  assign ToVote[577] = \<const0> ;
  assign ToVote[576] = \<const0> ;
  assign ToVote[575] = \<const0> ;
  assign ToVote[574] = \<const0> ;
  assign ToVote[573] = \<const0> ;
  assign ToVote[572] = \<const0> ;
  assign ToVote[571] = \<const0> ;
  assign ToVote[570] = \<const0> ;
  assign ToVote[569] = \<const0> ;
  assign ToVote[568] = \<const0> ;
  assign ToVote[567] = \<const0> ;
  assign ToVote[566] = \<const0> ;
  assign ToVote[565] = \<const0> ;
  assign ToVote[564] = \<const0> ;
  assign ToVote[563] = \<const0> ;
  assign ToVote[562] = \<const0> ;
  assign ToVote[561] = \<const0> ;
  assign ToVote[560] = \<const0> ;
  assign ToVote[559] = \<const0> ;
  assign ToVote[558] = \<const0> ;
  assign ToVote[557] = \<const0> ;
  assign ToVote[556] = \<const0> ;
  assign ToVote[555] = \<const0> ;
  assign ToVote[554] = \<const0> ;
  assign ToVote[553] = \<const0> ;
  assign ToVote[552] = \<const0> ;
  assign ToVote[551] = \<const0> ;
  assign ToVote[550] = \<const0> ;
  assign ToVote[549] = \<const0> ;
  assign ToVote[548] = \<const0> ;
  assign ToVote[547] = \<const0> ;
  assign ToVote[546] = \<const0> ;
  assign ToVote[545] = \<const0> ;
  assign ToVote[544] = \<const0> ;
  assign ToVote[543] = \<const0> ;
  assign ToVote[542] = \<const0> ;
  assign ToVote[541] = \<const0> ;
  assign ToVote[540] = \<const0> ;
  assign ToVote[539] = \<const0> ;
  assign ToVote[538] = \<const0> ;
  assign ToVote[537] = \<const0> ;
  assign ToVote[536] = \<const0> ;
  assign ToVote[535] = \<const0> ;
  assign ToVote[534] = \<const0> ;
  assign ToVote[533] = \<const0> ;
  assign ToVote[532] = \<const0> ;
  assign ToVote[531] = \<const0> ;
  assign ToVote[530] = \<const0> ;
  assign ToVote[529] = \<const0> ;
  assign ToVote[528] = \<const0> ;
  assign ToVote[527] = \<const0> ;
  assign ToVote[526] = \<const0> ;
  assign ToVote[525] = \<const0> ;
  assign ToVote[524] = \<const0> ;
  assign ToVote[523] = \<const0> ;
  assign ToVote[522] = \<const0> ;
  assign ToVote[521] = \<const0> ;
  assign ToVote[520] = \<const0> ;
  assign ToVote[519] = \<const0> ;
  assign ToVote[518] = \<const0> ;
  assign ToVote[517] = \<const0> ;
  assign ToVote[516] = \<const0> ;
  assign ToVote[515] = \<const0> ;
  assign ToVote[514] = \<const0> ;
  assign ToVote[513] = \<const0> ;
  assign ToVote[512] = \<const0> ;
  assign ToVote[511] = \<const0> ;
  assign ToVote[510] = \<const0> ;
  assign ToVote[509] = \<const0> ;
  assign ToVote[508] = \<const0> ;
  assign ToVote[507] = \<const0> ;
  assign ToVote[506] = \<const0> ;
  assign ToVote[505] = \<const0> ;
  assign ToVote[504] = \<const0> ;
  assign ToVote[503] = \<const0> ;
  assign ToVote[502] = \<const0> ;
  assign ToVote[501] = \<const0> ;
  assign ToVote[500] = \<const0> ;
  assign ToVote[499] = \<const0> ;
  assign ToVote[498] = \<const0> ;
  assign ToVote[497] = \<const0> ;
  assign ToVote[496] = \<const0> ;
  assign ToVote[495] = \<const0> ;
  assign ToVote[494] = \<const0> ;
  assign ToVote[493] = \<const0> ;
  assign ToVote[492] = \<const0> ;
  assign ToVote[491] = \<const0> ;
  assign ToVote[490] = \<const0> ;
  assign ToVote[489] = \<const0> ;
  assign ToVote[488] = \<const0> ;
  assign ToVote[487] = \<const0> ;
  assign ToVote[486] = \<const0> ;
  assign ToVote[485] = \<const0> ;
  assign ToVote[484] = \<const0> ;
  assign ToVote[483] = \<const0> ;
  assign ToVote[482] = \<const0> ;
  assign ToVote[481] = \<const0> ;
  assign ToVote[480] = \<const0> ;
  assign ToVote[479] = \<const0> ;
  assign ToVote[478] = \<const0> ;
  assign ToVote[477] = \<const0> ;
  assign ToVote[476] = \<const0> ;
  assign ToVote[475] = \<const0> ;
  assign ToVote[474] = \<const0> ;
  assign ToVote[473] = \<const0> ;
  assign ToVote[472] = \<const0> ;
  assign ToVote[471] = \<const0> ;
  assign ToVote[470] = \<const0> ;
  assign ToVote[469] = \<const0> ;
  assign ToVote[468] = \<const0> ;
  assign ToVote[467] = \<const0> ;
  assign ToVote[466] = \<const0> ;
  assign ToVote[465] = \<const0> ;
  assign ToVote[464] = \<const0> ;
  assign ToVote[463] = \<const0> ;
  assign ToVote[462] = \<const0> ;
  assign ToVote[461] = \<const0> ;
  assign ToVote[460] = \<const0> ;
  assign ToVote[459] = \<const0> ;
  assign ToVote[458] = \<const0> ;
  assign ToVote[457] = \<const0> ;
  assign ToVote[456] = \<const0> ;
  assign ToVote[455] = \<const0> ;
  assign ToVote[454] = \<const0> ;
  assign ToVote[453] = \<const0> ;
  assign ToVote[452] = \<const0> ;
  assign ToVote[451] = \<const0> ;
  assign ToVote[450] = \<const0> ;
  assign ToVote[449] = \<const0> ;
  assign ToVote[448] = \<const0> ;
  assign ToVote[447] = \<const0> ;
  assign ToVote[446] = \<const0> ;
  assign ToVote[445] = \<const0> ;
  assign ToVote[444] = \<const0> ;
  assign ToVote[443] = \<const0> ;
  assign ToVote[442] = \<const0> ;
  assign ToVote[441] = \<const0> ;
  assign ToVote[440] = \<const0> ;
  assign ToVote[439] = \<const0> ;
  assign ToVote[438] = \<const0> ;
  assign ToVote[437] = \<const0> ;
  assign ToVote[436] = \<const0> ;
  assign ToVote[435] = \<const0> ;
  assign ToVote[434] = \<const0> ;
  assign ToVote[433] = \<const0> ;
  assign ToVote[432] = \<const0> ;
  assign ToVote[431] = \<const0> ;
  assign ToVote[430] = \<const0> ;
  assign ToVote[429] = \<const0> ;
  assign ToVote[428] = \<const0> ;
  assign ToVote[427] = \<const0> ;
  assign ToVote[426] = \<const0> ;
  assign ToVote[425] = \<const0> ;
  assign ToVote[424] = \<const0> ;
  assign ToVote[423] = \<const0> ;
  assign ToVote[422] = \<const0> ;
  assign ToVote[421] = \<const0> ;
  assign ToVote[420] = \<const0> ;
  assign ToVote[419] = \<const0> ;
  assign ToVote[418] = \<const0> ;
  assign ToVote[417] = \<const0> ;
  assign ToVote[416] = \<const0> ;
  assign ToVote[415] = \<const0> ;
  assign ToVote[414] = \<const0> ;
  assign ToVote[413] = \<const0> ;
  assign ToVote[412] = \<const0> ;
  assign ToVote[411] = \<const0> ;
  assign ToVote[410] = \<const0> ;
  assign ToVote[409] = \<const0> ;
  assign ToVote[408] = \<const0> ;
  assign ToVote[407] = \<const0> ;
  assign ToVote[406] = \<const0> ;
  assign ToVote[405] = \<const0> ;
  assign ToVote[404] = \<const0> ;
  assign ToVote[403] = \<const0> ;
  assign ToVote[402] = \<const0> ;
  assign ToVote[401] = \<const0> ;
  assign ToVote[400] = \<const0> ;
  assign ToVote[399] = \<const0> ;
  assign ToVote[398] = \<const0> ;
  assign ToVote[397] = \<const0> ;
  assign ToVote[396] = \<const0> ;
  assign ToVote[395] = \<const0> ;
  assign ToVote[394] = \<const0> ;
  assign ToVote[393] = \<const0> ;
  assign ToVote[392] = \<const0> ;
  assign ToVote[391] = \<const0> ;
  assign ToVote[390] = \<const0> ;
  assign ToVote[389] = \<const0> ;
  assign ToVote[388] = \<const0> ;
  assign ToVote[387] = \<const0> ;
  assign ToVote[386] = \<const0> ;
  assign ToVote[385] = \<const0> ;
  assign ToVote[384] = \<const0> ;
  assign ToVote[383] = \<const0> ;
  assign ToVote[382] = \<const0> ;
  assign ToVote[381] = \<const0> ;
  assign ToVote[380] = \<const0> ;
  assign ToVote[379] = \<const0> ;
  assign ToVote[378] = \<const0> ;
  assign ToVote[377] = \<const0> ;
  assign ToVote[376] = \<const0> ;
  assign ToVote[375] = \<const0> ;
  assign ToVote[374] = \<const0> ;
  assign ToVote[373] = \<const0> ;
  assign ToVote[372] = \<const0> ;
  assign ToVote[371] = \<const0> ;
  assign ToVote[370] = \<const0> ;
  assign ToVote[369] = \<const0> ;
  assign ToVote[368] = \<const0> ;
  assign ToVote[367] = \<const0> ;
  assign ToVote[366] = \<const0> ;
  assign ToVote[365] = \<const0> ;
  assign ToVote[364] = \<const0> ;
  assign ToVote[363] = \<const0> ;
  assign ToVote[362] = \<const0> ;
  assign ToVote[361] = \<const0> ;
  assign ToVote[360] = \<const0> ;
  assign ToVote[359] = \<const0> ;
  assign ToVote[358] = \<const0> ;
  assign ToVote[357] = \<const0> ;
  assign ToVote[356] = \<const0> ;
  assign ToVote[355] = \<const0> ;
  assign ToVote[354] = \<const0> ;
  assign ToVote[353] = \<const0> ;
  assign ToVote[352] = \<const0> ;
  assign ToVote[351] = \<const0> ;
  assign ToVote[350] = \<const0> ;
  assign ToVote[349] = \<const0> ;
  assign ToVote[348] = \<const0> ;
  assign ToVote[347] = \<const0> ;
  assign ToVote[346] = \<const0> ;
  assign ToVote[345] = \<const0> ;
  assign ToVote[344] = \<const0> ;
  assign ToVote[343] = \<const0> ;
  assign ToVote[342] = \<const0> ;
  assign ToVote[341] = \<const0> ;
  assign ToVote[340] = \<const0> ;
  assign ToVote[339] = \<const0> ;
  assign ToVote[338] = \<const0> ;
  assign ToVote[337] = \<const0> ;
  assign ToVote[336] = \<const0> ;
  assign ToVote[335] = \<const0> ;
  assign ToVote[334] = \<const0> ;
  assign ToVote[333] = \<const0> ;
  assign ToVote[332] = \<const0> ;
  assign ToVote[331] = \<const0> ;
  assign ToVote[330] = \<const0> ;
  assign ToVote[329] = \<const0> ;
  assign ToVote[328] = \<const0> ;
  assign ToVote[327] = \<const0> ;
  assign ToVote[326] = \<const0> ;
  assign ToVote[325] = \<const0> ;
  assign ToVote[324] = \<const0> ;
  assign ToVote[323] = \<const0> ;
  assign ToVote[322] = \<const0> ;
  assign ToVote[321] = \<const0> ;
  assign ToVote[320] = \<const0> ;
  assign ToVote[319] = \<const0> ;
  assign ToVote[318] = \<const0> ;
  assign ToVote[317] = \<const0> ;
  assign ToVote[316] = \<const0> ;
  assign ToVote[315] = \<const0> ;
  assign ToVote[314] = \<const0> ;
  assign ToVote[313] = \<const0> ;
  assign ToVote[312] = \<const0> ;
  assign ToVote[311] = \<const0> ;
  assign ToVote[310] = \<const0> ;
  assign ToVote[309] = \<const0> ;
  assign ToVote[308] = \<const0> ;
  assign ToVote[307] = \<const0> ;
  assign ToVote[306] = \<const0> ;
  assign ToVote[305] = \<const0> ;
  assign ToVote[304] = \<const0> ;
  assign ToVote[303] = \<const0> ;
  assign ToVote[302] = \<const0> ;
  assign ToVote[301] = \<const0> ;
  assign ToVote[300] = \<const0> ;
  assign ToVote[299] = \<const0> ;
  assign ToVote[298] = \<const0> ;
  assign ToVote[297] = \<const0> ;
  assign ToVote[296] = \<const0> ;
  assign ToVote[295] = \<const0> ;
  assign ToVote[294] = \<const0> ;
  assign ToVote[293] = \<const0> ;
  assign ToVote[292] = \<const0> ;
  assign ToVote[291] = \<const0> ;
  assign ToVote[290] = \<const0> ;
  assign ToVote[289] = \<const0> ;
  assign ToVote[288] = \<const0> ;
  assign ToVote[287] = \<const0> ;
  assign ToVote[286] = \<const0> ;
  assign ToVote[285] = \<const0> ;
  assign ToVote[284] = \<const0> ;
  assign ToVote[283] = \<const0> ;
  assign ToVote[282] = \<const0> ;
  assign ToVote[281] = \<const0> ;
  assign ToVote[280] = \<const0> ;
  assign ToVote[279] = \<const0> ;
  assign ToVote[278] = \<const0> ;
  assign ToVote[277] = \<const0> ;
  assign ToVote[276] = \<const0> ;
  assign ToVote[275] = \<const0> ;
  assign ToVote[274] = \<const0> ;
  assign ToVote[273] = \<const0> ;
  assign ToVote[272] = \<const0> ;
  assign ToVote[271] = \<const0> ;
  assign ToVote[270] = \<const0> ;
  assign ToVote[269] = \<const0> ;
  assign ToVote[268] = \<const0> ;
  assign ToVote[267] = \<const0> ;
  assign ToVote[266] = \<const0> ;
  assign ToVote[265] = \<const0> ;
  assign ToVote[264] = \<const0> ;
  assign ToVote[263] = \<const0> ;
  assign ToVote[262] = \<const0> ;
  assign ToVote[261] = \<const0> ;
  assign ToVote[260] = \<const0> ;
  assign ToVote[259] = \<const0> ;
  assign ToVote[258] = \<const0> ;
  assign ToVote[257] = \<const0> ;
  assign ToVote[256] = \<const0> ;
  assign ToVote[255] = \<const0> ;
  assign ToVote[254] = \<const0> ;
  assign ToVote[253] = \<const0> ;
  assign ToVote[252] = \<const0> ;
  assign ToVote[251] = \<const0> ;
  assign ToVote[250] = \<const0> ;
  assign ToVote[249] = \<const0> ;
  assign ToVote[248] = \<const0> ;
  assign ToVote[247] = \<const0> ;
  assign ToVote[246] = \<const0> ;
  assign ToVote[245] = \<const0> ;
  assign ToVote[244] = \<const0> ;
  assign ToVote[243] = \<const0> ;
  assign ToVote[242] = \<const0> ;
  assign ToVote[241] = \<const0> ;
  assign ToVote[240] = \<const0> ;
  assign ToVote[239] = \<const0> ;
  assign ToVote[238] = \<const0> ;
  assign ToVote[237] = \<const0> ;
  assign ToVote[236] = \<const0> ;
  assign ToVote[235] = \<const0> ;
  assign ToVote[234] = \<const0> ;
  assign ToVote[233] = \<const0> ;
  assign ToVote[232] = \<const0> ;
  assign ToVote[231] = \<const0> ;
  assign ToVote[230] = \<const0> ;
  assign ToVote[229] = \<const0> ;
  assign ToVote[228] = \<const0> ;
  assign ToVote[227] = \<const0> ;
  assign ToVote[226] = \<const0> ;
  assign ToVote[225] = \<const0> ;
  assign ToVote[224] = \<const0> ;
  assign ToVote[223] = \<const0> ;
  assign ToVote[222] = \<const0> ;
  assign ToVote[221] = \<const0> ;
  assign ToVote[220] = \<const0> ;
  assign ToVote[219] = \<const0> ;
  assign ToVote[218] = \<const0> ;
  assign ToVote[217] = \<const0> ;
  assign ToVote[216] = \<const0> ;
  assign ToVote[215] = \<const0> ;
  assign ToVote[214] = \<const0> ;
  assign ToVote[213] = \<const0> ;
  assign ToVote[212] = \<const0> ;
  assign ToVote[211] = \<const0> ;
  assign ToVote[210] = \<const0> ;
  assign ToVote[209] = \<const0> ;
  assign ToVote[208] = \<const0> ;
  assign ToVote[207] = \<const0> ;
  assign ToVote[206] = \<const0> ;
  assign ToVote[205] = \<const0> ;
  assign ToVote[204] = \<const0> ;
  assign ToVote[203] = \<const0> ;
  assign ToVote[202] = \<const0> ;
  assign ToVote[201] = \<const0> ;
  assign ToVote[200] = \<const0> ;
  assign ToVote[199] = \<const0> ;
  assign ToVote[198] = \<const0> ;
  assign ToVote[197] = \<const0> ;
  assign ToVote[196] = \<const0> ;
  assign ToVote[195] = \<const0> ;
  assign ToVote[194] = \<const0> ;
  assign ToVote[193] = \<const0> ;
  assign ToVote[192] = \<const0> ;
  assign ToVote[191] = \<const0> ;
  assign ToVote[190] = \<const0> ;
  assign ToVote[189] = \<const0> ;
  assign ToVote[188] = \<const0> ;
  assign ToVote[187] = \<const0> ;
  assign ToVote[186] = \<const0> ;
  assign ToVote[185] = \<const0> ;
  assign ToVote[184] = \<const0> ;
  assign ToVote[183] = \<const0> ;
  assign ToVote[182] = \<const0> ;
  assign ToVote[181] = \<const0> ;
  assign ToVote[180] = \<const0> ;
  assign ToVote[179] = \<const0> ;
  assign ToVote[178] = \<const0> ;
  assign ToVote[177] = \<const0> ;
  assign ToVote[176] = \<const0> ;
  assign ToVote[175] = \<const0> ;
  assign ToVote[174] = \<const0> ;
  assign ToVote[173] = \<const0> ;
  assign ToVote[172] = \<const0> ;
  assign ToVote[171] = \<const0> ;
  assign ToVote[170] = \<const0> ;
  assign ToVote[169] = \<const0> ;
  assign ToVote[168] = \<const0> ;
  assign ToVote[167] = \<const0> ;
  assign ToVote[166] = \<const0> ;
  assign ToVote[165] = \<const0> ;
  assign ToVote[164] = \<const0> ;
  assign ToVote[163] = \<const0> ;
  assign ToVote[162] = \<const0> ;
  assign ToVote[161] = \<const0> ;
  assign ToVote[160] = \<const0> ;
  assign ToVote[159] = \<const0> ;
  assign ToVote[158] = \<const0> ;
  assign ToVote[157] = \<const0> ;
  assign ToVote[156] = \<const0> ;
  assign ToVote[155] = \<const0> ;
  assign ToVote[154] = \<const0> ;
  assign ToVote[153] = \<const0> ;
  assign ToVote[152] = \<const0> ;
  assign ToVote[151] = \<const0> ;
  assign ToVote[150] = \<const0> ;
  assign ToVote[149] = \<const0> ;
  assign ToVote[148] = \<const0> ;
  assign ToVote[147] = \<const0> ;
  assign ToVote[146] = \<const0> ;
  assign ToVote[145] = \<const0> ;
  assign ToVote[144] = \<const0> ;
  assign ToVote[143] = \<const0> ;
  assign ToVote[142] = \<const0> ;
  assign ToVote[141] = \<const0> ;
  assign ToVote[140] = \<const0> ;
  assign ToVote[139] = \<const0> ;
  assign ToVote[138] = \<const0> ;
  assign ToVote[137] = \<const0> ;
  assign ToVote[136] = \<const0> ;
  assign ToVote[135] = \<const0> ;
  assign ToVote[134] = \<const0> ;
  assign ToVote[133] = \<const0> ;
  assign ToVote[132] = \<const0> ;
  assign ToVote[131] = \<const0> ;
  assign ToVote[130] = \<const0> ;
  assign ToVote[129] = \<const0> ;
  assign ToVote[128] = \<const0> ;
  assign ToVote[127] = \<const0> ;
  assign ToVote[126] = \<const0> ;
  assign ToVote[125] = \<const0> ;
  assign ToVote[124] = \<const0> ;
  assign ToVote[123] = \<const0> ;
  assign ToVote[122] = \<const0> ;
  assign ToVote[121] = \<const0> ;
  assign ToVote[120] = \<const0> ;
  assign ToVote[119] = \<const0> ;
  assign ToVote[118] = \<const0> ;
  assign ToVote[117] = \<const0> ;
  assign ToVote[116] = \<const0> ;
  assign ToVote[115] = \<const0> ;
  assign ToVote[114] = \<const0> ;
  assign ToVote[113] = \<const0> ;
  assign ToVote[112] = \<const0> ;
  assign ToVote[111] = \<const0> ;
  assign ToVote[110] = \<const0> ;
  assign ToVote[109] = \<const0> ;
  assign ToVote[108] = \<const0> ;
  assign ToVote[107] = \<const0> ;
  assign ToVote[106] = \<const0> ;
  assign ToVote[105] = \<const0> ;
  assign ToVote[104] = \<const0> ;
  assign ToVote[103] = \<const0> ;
  assign ToVote[102] = \<const0> ;
  assign ToVote[101] = \<const0> ;
  assign ToVote[100] = \<const0> ;
  assign ToVote[99] = \<const0> ;
  assign ToVote[98] = \<const0> ;
  assign ToVote[97] = \<const0> ;
  assign ToVote[96] = \<const0> ;
  assign ToVote[95] = \<const0> ;
  assign ToVote[94] = \<const0> ;
  assign ToVote[93] = \<const0> ;
  assign ToVote[92] = \<const0> ;
  assign ToVote[91] = \<const0> ;
  assign ToVote[90] = \<const0> ;
  assign ToVote[89] = \<const0> ;
  assign ToVote[88] = \<const0> ;
  assign ToVote[87] = \<const0> ;
  assign ToVote[86] = \<const0> ;
  assign ToVote[85] = \<const0> ;
  assign ToVote[84] = \<const0> ;
  assign ToVote[83] = \<const0> ;
  assign ToVote[82] = \<const0> ;
  assign ToVote[81] = \<const0> ;
  assign ToVote[80] = \<const0> ;
  assign ToVote[79] = \<const0> ;
  assign ToVote[78] = \<const0> ;
  assign ToVote[77] = \<const0> ;
  assign ToVote[76] = \<const0> ;
  assign ToVote[75] = \<const0> ;
  assign ToVote[74] = \<const0> ;
  assign ToVote[73] = \<const0> ;
  assign ToVote[72] = \<const0> ;
  assign ToVote[71] = \<const0> ;
  assign ToVote[70] = \<const0> ;
  assign ToVote[69] = \<const0> ;
  assign ToVote[68] = \<const0> ;
  assign ToVote[67] = \<const0> ;
  assign ToVote[66] = \<const0> ;
  assign ToVote[65] = \<const0> ;
  assign ToVote[64] = \<const0> ;
  assign ToVote[63] = \<const0> ;
  assign ToVote[62] = \<const0> ;
  assign ToVote[61] = \<const0> ;
  assign ToVote[60] = \<const0> ;
  assign ToVote[59] = \<const0> ;
  assign ToVote[58] = \<const0> ;
  assign ToVote[57] = \<const0> ;
  assign ToVote[56] = \<const0> ;
  assign ToVote[55] = \<const0> ;
  assign ToVote[54] = \<const0> ;
  assign ToVote[53] = \<const0> ;
  assign ToVote[52] = \<const0> ;
  assign ToVote[51] = \<const0> ;
  assign ToVote[50] = \<const0> ;
  assign ToVote[49] = \<const0> ;
  assign ToVote[48] = \<const0> ;
  assign ToVote[47] = \<const0> ;
  assign ToVote[46] = \<const0> ;
  assign ToVote[45] = \<const0> ;
  assign ToVote[44] = \<const0> ;
  assign ToVote[43] = \<const0> ;
  assign ToVote[42] = \<const0> ;
  assign ToVote[41] = \<const0> ;
  assign ToVote[40] = \<const0> ;
  assign ToVote[39] = \<const0> ;
  assign ToVote[38] = \<const0> ;
  assign ToVote[37] = \<const0> ;
  assign ToVote[36] = \<const0> ;
  assign ToVote[35] = \<const0> ;
  assign ToVote[34] = \<const0> ;
  assign ToVote[33] = \<const0> ;
  assign ToVote[32] = \<const0> ;
  assign ToVote[31] = \<const0> ;
  assign ToVote[30] = \<const0> ;
  assign ToVote[29] = \<const0> ;
  assign ToVote[28] = \<const0> ;
  assign ToVote[27] = \<const0> ;
  assign ToVote[26] = \<const0> ;
  assign ToVote[25] = \<const0> ;
  assign ToVote[24] = \<const0> ;
  assign ToVote[23] = \<const0> ;
  assign ToVote[22] = \<const0> ;
  assign ToVote[21] = \<const0> ;
  assign ToVote[20] = \<const0> ;
  assign ToVote[19] = \<const0> ;
  assign ToVote[18] = \<const0> ;
  assign ToVote[17] = \<const0> ;
  assign ToVote[16] = \<const0> ;
  assign ToVote[15] = \<const0> ;
  assign ToVote[14] = \<const0> ;
  assign ToVote[13] = \<const0> ;
  assign ToVote[12] = \<const0> ;
  assign ToVote[11] = \<const0> ;
  assign ToVote[10] = \<const0> ;
  assign ToVote[9] = \<const0> ;
  assign ToVote[8] = \<const0> ;
  assign ToVote[7] = \<const0> ;
  assign ToVote[6] = \<const0> ;
  assign ToVote[5] = \<const0> ;
  assign ToVote[4] = \<const0> ;
  assign ToVote[3] = \<const0> ;
  assign ToVote[2] = \<const0> ;
  assign ToVote[1] = \<const0> ;
  assign ToVote[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Iomodule_core IOModule_Core_I1
       (.Clk(Clk),
        .D(write_data[7:0]),
        .E(uart_tx_write),
        .Q({lmb_abus_Q[2],lmb_abus_Q[3],lmb_abus_Q[4],lmb_abus_Q[5],lmb_abus_Q[6]}),
        .Rst(Rst),
        .Sl_DBus({\^Sl_DBus [24],\^Sl_DBus [25],\^Sl_DBus [26],\^Sl_DBus [27],\^Sl_DBus [28],\^Sl_DBus [29],\^Sl_DBus [30],\^Sl_DBus [31]}),
        .\TMR_No.RX_Data_reg[0] (Sl_Wait),
        .UART_Interrupt(UART_Interrupt),
        .UART_Rx(UART_Rx),
        .UART_Tx(UART_Tx));
  LUT2 #(
    .INIT(4'hE)) 
    Sl_Ready_INST_0
       (.I0(lmb_reg_read_Q),
        .I1(lmb_reg_write),
        .O(Sl_Ready));
  VCC VCC
       (.P(\<const1> ));
  FDRE \lmb_abus_Q_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_ABus[25]),
        .Q(lmb_abus_Q[2]),
        .R(1'b0));
  FDRE \lmb_abus_Q_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_ABus[26]),
        .Q(lmb_abus_Q[3]),
        .R(1'b0));
  FDRE \lmb_abus_Q_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_ABus[27]),
        .Q(lmb_abus_Q[4]),
        .R(1'b0));
  FDRE \lmb_abus_Q_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_ABus[28]),
        .Q(lmb_abus_Q[5]),
        .R(1'b0));
  FDRE \lmb_abus_Q_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_ABus[29]),
        .Q(lmb_abus_Q[6]),
        .R(1'b0));
  FDRE lmb_reg_read_Q_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Sl_Wait),
        .Q(lmb_reg_read_Q),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    lmb_reg_read_i_1
       (.I0(LMB_AddrStrobe),
        .I1(LMB_ReadStrobe),
        .O(lmb_reg_read0));
  FDRE lmb_reg_read_reg
       (.C(Clk),
        .CE(1'b1),
        .D(lmb_reg_read0),
        .Q(Sl_Wait),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    lmb_reg_write_i_1
       (.I0(LMB_AddrStrobe),
        .I1(LMB_WriteStrobe),
        .O(lmb_reg_write0));
  FDRE lmb_reg_write_reg
       (.C(Clk),
        .CE(1'b1),
        .D(lmb_reg_write0),
        .Q(lmb_reg_write),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    uart_tx_write_inferred_i_1
       (.I0(lmb_abus_Q[3]),
        .I1(lmb_abus_Q[2]),
        .I2(lmb_reg_write),
        .I3(lmb_abus_Q[6]),
        .I4(lmb_abus_Q[5]),
        .I5(lmb_abus_Q[4]),
        .O(uart_tx_write));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[31]),
        .Q(write_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[21]),
        .Q(write_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[20]),
        .Q(write_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[19]),
        .Q(write_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[18]),
        .Q(write_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[17]),
        .Q(write_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[16]),
        .Q(write_data[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[15]),
        .Q(write_data[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[14]),
        .Q(write_data[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[13]),
        .Q(write_data[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[12]),
        .Q(write_data[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[30]),
        .Q(write_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[20] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[11]),
        .Q(write_data[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[21] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[10]),
        .Q(write_data[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[22] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[9]),
        .Q(write_data[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[23] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[8]),
        .Q(write_data[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[24] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[7]),
        .Q(write_data[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[25] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[6]),
        .Q(write_data[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[26] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[5]),
        .Q(write_data[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[27] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[4]),
        .Q(write_data[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[28] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[3]),
        .Q(write_data[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[29] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[2]),
        .Q(write_data[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[29]),
        .Q(write_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[30] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[1]),
        .Q(write_data[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[31] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[0]),
        .Q(write_data[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[28]),
        .Q(write_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[27]),
        .Q(write_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[26]),
        .Q(write_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[25]),
        .Q(write_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[24]),
        .Q(write_data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[23]),
        .Q(write_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \write_data_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(LMB_WriteDBus[22]),
        .Q(write_data[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
