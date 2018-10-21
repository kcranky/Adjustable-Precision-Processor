`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2018 12:38:53
// Design Name: 
// Module Name: Debounce
// Project Name: 
// Target Devices: Nexys 4 DDR 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Debounce(
input Clk,		//input clock
input Button,  //input reset signal (external button)
output reg Flag //output reset signal (delayed)
    );
//--------------------------------------------
reg previous_state;
reg [21:0]Count; //assume count is null on FPGA configuration

//--------------------------------------------
always @(posedge Clk) begin  	//activates every clock edge
 //previous_state <= Button;		// localise the reset signal
   if (Button && Button != previous_state && &Count) begin		// reset block
    Flag <= 1'b1;					// reset the output to 1
	 Count <= 0;
	 previous_state <= 1;
  end 
  else if (Button && Button != previous_state) begin
	 Flag <= 1'b0;
	 Count <= Count + 1'b1;
  end 
  else begin
	 Flag <= 1'b0;
	 previous_state <= Button;
  end
end //always
 //--------------------------------------------
endmodule
//---------------------------------------------
