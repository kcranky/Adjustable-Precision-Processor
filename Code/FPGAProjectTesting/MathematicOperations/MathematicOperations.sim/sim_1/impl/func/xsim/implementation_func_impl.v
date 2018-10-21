// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug 30 21:29:44 2018
// Host        : DESKTOP-KKHALKC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               S:/Uni/EEE4022S/FPGAProjectTesting/MathematicOperations/MathematicOperations.sim/sim_1/impl/func/xsim/implementation_func_impl.v
// Design      : implementation
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Debounce
   (StartButton,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output StartButton;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire \Count[0]_i_3_n_0 ;
  wire [21:0]Count_reg;
  wire \Count_reg[0]_i_2_n_0 ;
  wire \Count_reg[0]_i_2_n_4 ;
  wire \Count_reg[0]_i_2_n_5 ;
  wire \Count_reg[0]_i_2_n_6 ;
  wire \Count_reg[0]_i_2_n_7 ;
  wire \Count_reg[12]_i_1_n_0 ;
  wire \Count_reg[12]_i_1_n_4 ;
  wire \Count_reg[12]_i_1_n_5 ;
  wire \Count_reg[12]_i_1_n_6 ;
  wire \Count_reg[12]_i_1_n_7 ;
  wire \Count_reg[16]_i_1_n_0 ;
  wire \Count_reg[16]_i_1_n_4 ;
  wire \Count_reg[16]_i_1_n_5 ;
  wire \Count_reg[16]_i_1_n_6 ;
  wire \Count_reg[16]_i_1_n_7 ;
  wire \Count_reg[20]_i_1_n_6 ;
  wire \Count_reg[20]_i_1_n_7 ;
  wire \Count_reg[4]_i_1_n_0 ;
  wire \Count_reg[4]_i_1_n_4 ;
  wire \Count_reg[4]_i_1_n_5 ;
  wire \Count_reg[4]_i_1_n_6 ;
  wire \Count_reg[4]_i_1_n_7 ;
  wire \Count_reg[8]_i_1_n_0 ;
  wire \Count_reg[8]_i_1_n_4 ;
  wire \Count_reg[8]_i_1_n_5 ;
  wire \Count_reg[8]_i_1_n_6 ;
  wire \Count_reg[8]_i_1_n_7 ;
  wire Flag0;
  wire StartButton;
  wire p_1_in;
  wire previous_state;
  wire previous_state_i_2_n_0;
  wire previous_state_i_3_n_0;
  wire previous_state_i_4_n_0;
  wire previous_state_i_5_n_0;
  wire previous_state_i_6_n_0;
  wire [2:0]\NLW_Count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Count_reg[20]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \Count[0]_i_1 
       (.I0(BTNC_IBUF),
        .I1(previous_state),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \Count[0]_i_3 
       (.I0(Count_reg[0]),
        .O(\Count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[0]_i_2_n_7 ),
        .Q(Count_reg[0]),
        .R(Flag0));
  CARRY4 \Count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Count_reg[0]_i_2_n_0 ,\NLW_Count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Count_reg[0]_i_2_n_4 ,\Count_reg[0]_i_2_n_5 ,\Count_reg[0]_i_2_n_6 ,\Count_reg[0]_i_2_n_7 }),
        .S({Count_reg[3:1],\Count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[8]_i_1_n_5 ),
        .Q(Count_reg[10]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[8]_i_1_n_4 ),
        .Q(Count_reg[11]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[12]_i_1_n_7 ),
        .Q(Count_reg[12]),
        .R(Flag0));
  CARRY4 \Count_reg[12]_i_1 
       (.CI(\Count_reg[8]_i_1_n_0 ),
        .CO({\Count_reg[12]_i_1_n_0 ,\NLW_Count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Count_reg[12]_i_1_n_4 ,\Count_reg[12]_i_1_n_5 ,\Count_reg[12]_i_1_n_6 ,\Count_reg[12]_i_1_n_7 }),
        .S(Count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[12]_i_1_n_6 ),
        .Q(Count_reg[13]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[12]_i_1_n_5 ),
        .Q(Count_reg[14]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[12]_i_1_n_4 ),
        .Q(Count_reg[15]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[16]_i_1_n_7 ),
        .Q(Count_reg[16]),
        .R(Flag0));
  CARRY4 \Count_reg[16]_i_1 
       (.CI(\Count_reg[12]_i_1_n_0 ),
        .CO({\Count_reg[16]_i_1_n_0 ,\NLW_Count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Count_reg[16]_i_1_n_4 ,\Count_reg[16]_i_1_n_5 ,\Count_reg[16]_i_1_n_6 ,\Count_reg[16]_i_1_n_7 }),
        .S(Count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[16]_i_1_n_6 ),
        .Q(Count_reg[17]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[16]_i_1_n_5 ),
        .Q(Count_reg[18]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[16]_i_1_n_4 ),
        .Q(Count_reg[19]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[0]_i_2_n_6 ),
        .Q(Count_reg[1]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[20]_i_1_n_7 ),
        .Q(Count_reg[20]),
        .R(Flag0));
  CARRY4 \Count_reg[20]_i_1 
       (.CI(\Count_reg[16]_i_1_n_0 ),
        .CO(\NLW_Count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Count_reg[20]_i_1_O_UNCONNECTED [3:2],\Count_reg[20]_i_1_n_6 ,\Count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,Count_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[20]_i_1_n_6 ),
        .Q(Count_reg[21]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[0]_i_2_n_5 ),
        .Q(Count_reg[2]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[0]_i_2_n_4 ),
        .Q(Count_reg[3]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[4]_i_1_n_7 ),
        .Q(Count_reg[4]),
        .R(Flag0));
  CARRY4 \Count_reg[4]_i_1 
       (.CI(\Count_reg[0]_i_2_n_0 ),
        .CO({\Count_reg[4]_i_1_n_0 ,\NLW_Count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Count_reg[4]_i_1_n_4 ,\Count_reg[4]_i_1_n_5 ,\Count_reg[4]_i_1_n_6 ,\Count_reg[4]_i_1_n_7 }),
        .S(Count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[4]_i_1_n_6 ),
        .Q(Count_reg[5]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[4]_i_1_n_5 ),
        .Q(Count_reg[6]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[4]_i_1_n_4 ),
        .Q(Count_reg[7]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[8]_i_1_n_7 ),
        .Q(Count_reg[8]),
        .R(Flag0));
  CARRY4 \Count_reg[8]_i_1 
       (.CI(\Count_reg[4]_i_1_n_0 ),
        .CO({\Count_reg[8]_i_1_n_0 ,\NLW_Count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Count_reg[8]_i_1_n_4 ,\Count_reg[8]_i_1_n_5 ,\Count_reg[8]_i_1_n_6 ,\Count_reg[8]_i_1_n_7 }),
        .S(Count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(p_1_in),
        .D(\Count_reg[8]_i_1_n_6 ),
        .Q(Count_reg[9]),
        .R(Flag0));
  FDRE #(
    .INIT(1'b0)) 
    Flag_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(Flag0),
        .Q(StartButton),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    previous_state_i_1
       (.I0(previous_state_i_3_n_0),
        .I1(previous_state_i_4_n_0),
        .I2(previous_state_i_5_n_0),
        .I3(previous_state_i_6_n_0),
        .O(Flag0));
  LUT2 #(
    .INIT(4'hB)) 
    previous_state_i_2
       (.I0(previous_state),
        .I1(BTNC_IBUF),
        .O(previous_state_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    previous_state_i_3
       (.I0(Count_reg[12]),
        .I1(Count_reg[13]),
        .I2(Count_reg[10]),
        .I3(Count_reg[11]),
        .I4(Count_reg[15]),
        .I5(Count_reg[14]),
        .O(previous_state_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    previous_state_i_4
       (.I0(Count_reg[18]),
        .I1(Count_reg[19]),
        .I2(Count_reg[16]),
        .I3(Count_reg[17]),
        .I4(Count_reg[21]),
        .I5(Count_reg[20]),
        .O(previous_state_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    previous_state_i_5
       (.I0(Count_reg[6]),
        .I1(Count_reg[7]),
        .I2(Count_reg[4]),
        .I3(Count_reg[5]),
        .I4(Count_reg[9]),
        .I5(Count_reg[8]),
        .O(previous_state_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    previous_state_i_6
       (.I0(Count_reg[2]),
        .I1(Count_reg[3]),
        .I2(Count_reg[0]),
        .I3(Count_reg[1]),
        .I4(BTNC_IBUF),
        .I5(previous_state),
        .O(previous_state_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    previous_state_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(previous_state_i_2_n_0),
        .D(BTNC_IBUF),
        .Q(previous_state),
        .S(Flag0));
endmodule

(* ECO_CHECKSUM = "c879840" *) 
(* NotValidForBitStream *)
module implementation
   (CLK100MHZ,
    swt,
    BTNC,
    led);
  input CLK100MHZ;
  input [1:0]swt;
  input BTNC;
  output [2:0]led;

  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire StartButton;
  wire [2:0]led;
  wire [0:0]led_OBUF;

  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  Debounce Start
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .StartButton(StartButton));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(StartButton),
        .D(StartButton),
        .Q(led_OBUF),
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
