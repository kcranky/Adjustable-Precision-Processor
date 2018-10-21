`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2018 21:23:30
// Design Name: 
// Module Name: AdderTB
// Project Name: 
// Target Devices: 
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


module AdderTB;
    parameter WORD_MSB = 15;
    parameter ZERO = 0;
    
    // Define a few numbers/special cases
    parameter NUM32_A = 32'b01000010101100111000000000000000; //89.75
    parameter NUM32_B = 32'b01000011010100100100000000000000; //210.25
    parameter NUM32_C = 32'b10111110100110011001100110011010; //-0.3
    parameter NUM32_D = 32'b01111111011111111111111111111111; // 3.4028235E38
    parameter NUM32_E = 32'b10110111011110111010100010000010; //-0.000015
    parameter NAN32 = 32'b01111111110100100100000001000000;
    parameter INF32 = 32'b01111111100000000000000000000000;

    parameter NUM16_A = 16'b0101010110011100; //89.75
    parameter NUM16_B = 16'b0101101010010010; //210.3
    parameter NUM16_C = 16'b1011010011001101; //-0.3
    parameter NUM16_D = 16'b0111101111111110; //6.547E4
    parameter NUM16_E = 16'b1000100011101010; //-0.000015
    parameter NAN16 = 16'b1111111111111111; 
    parameter INF16 = 16'b0111110000000000;
    
    
    // Inputs
    reg [WORD_MSB:0] A_INPUT = NUM16_A;
    reg [WORD_MSB:0] B_INPUT = NUM16_C;
    reg A_STB = 1;
    reg B_STB = 1;
    reg Z_ACK = 0;
    reg CLK = 1;
    
    // Outputs
    wire A_ACK;
    wire B_ACK;

    wire Z_STB;
    wire [WORD_MSB:0] RESULT;
    
    adder addtest (
                .input_a(A_INPUT),
                .input_b(B_INPUT),
                .input_a_stb(A_STB),
                .input_b_stb(B_STB),
                .output_z_ack(Z_ACK),
                .clk(CLK),
                .rst(),
                .output_z(RESULT),
                .output_z_stb(Z_STB),
                .input_a_ack(A_ACK),
                .input_b_ack(B_ACK)
                );
          
    task addition;
    input [WORD_MSB:0] valA;
    input [WORD_MSB:0] valB;
    //output [WORD_MSB:0] result;
    begin
        A_STB = 0;
        B_STB = 0;
        A_INPUT = valA;
        B_INPUT = valB;
        A_STB = 1;
        B_STB = 1;
        wait(A_ACK == 1);
        wait(B_ACK == 1);
        Z_ACK = 0;
        wait(Z_STB == 1);
        Z_ACK = 1;
        $display("Result: %h", RESULT);
    end
    endtask 
                         
    initial begin
        // Add two numbers
        addition(ZERO, ZERO); //test addition of zero
        addition(ZERO, NUM16_A); // addition test 1
        addition(NUM16_A, NUM16_B); //addition test 2
        addition(INF16, INF16); //infinity
        addition(NUM16_D, NUM16_D); //overflow
        addition(NUM16_C, NUM16_E); //small subtraction
        
        $finish;
    end
    
   always begin
    #5 CLK = ~CLK;
   end
   
   
endmodule
