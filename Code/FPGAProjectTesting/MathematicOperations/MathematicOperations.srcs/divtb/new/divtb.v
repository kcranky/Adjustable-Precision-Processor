`timescale 1ns / 1ps


module divTB;
    parameter WORD_MSB = 15;

    // Inputs
    reg [WORD_MSB:0] A_INPUT = 0;
    reg [WORD_MSB:0] B_INPUT = 0;
    reg A_STB = 1;
    reg B_STB = 1;
    reg Z_ACK = 0;
    reg CLK = 1;
    
    // Outputs
    wire A_ACK;
    wire B_ACK;

    wire Z_STB;
    wire [WORD_MSB:0] RESULT;
     //Parameters
       //40 bit: 39, 7, 30
       //32 bit: 31, 7, 22
       //24 bit: 23, 6, 15
       //20 bit: 19, 5, 12
       //16 bit: 15, 4, 9
       //8 bit: 7, 2, 3
    //adder #(.WORD_MSB(15), .EXPONENT_MSB(4), .MANTISSA_MSB(9)) divtest (
    //multiplier #(.WORD_MSB(15), .EXPONENT_MSB(4), .MANTISSA_MSB(9)) divtest (    
    divider #(.WORD_MSB(15), .EXPONENT_MSB(4), .MANTISSA_MSB(9)) divtest (    
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
    
    //Define the task      
    task domaths;
    input [WORD_MSB:0] valA;
    input [WORD_MSB:0] valB;
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
    end
    endtask 
                         
    initial begin
        domaths(16'h4A2D, 16'hC540);
        domaths(16'h609A , 16'h3A66);
        domaths(16'h0 , 16'h705f);
        domaths(16'h5520 , 16'hADC3);
        domaths(16'hFFFF , 16'h2E66);
        domaths(16'h4A2D , 16'h7C00);
//        domaths(32'h4145999A, 32'hC0A80000); //0x40E33334 0xC281ACCD 0xC0168D69
//        domaths(32'h44134000, 32'h3F4CCCCD); // A: 0x44137333 M: 0x43EB999A D: 0x44381000
//        domaths(32'h0, 32'h460BD800); // 0x460BD800 0x00000000 0x00000000
//        domaths(32'h42A40000, 32'hBDB851EC); // 0x42A3D1EC 0xC0EC28F6 0xC463C71C
//        domaths(32'hFFFFFFFF, 32'h3DCCCCCD); // 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF
//        domaths(32'h4145999A, 32'h7F800000); //0x7F800000 0x7F800000 0x0

            
        $finish;
    end
    
    //Control the clock
    always begin
        #1 CLK = ~CLK;
    end
   
   
endmodule