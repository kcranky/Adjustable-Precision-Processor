`timescale 1ns / 1ps

module implementation(
    input CLK100MHZ,
    output [7:0] led
);


reg       [2:0] state = 0;
parameter put = 4'd0,
          waitAck = 4'd1,
          waitRes = 4'd2,
          endex = 4'd3;
              
// Inputs
parameter WORD_MSB = 31;

reg [WORD_MSB:0] A_INPUT = 8'b01101111; //15.5
reg [WORD_MSB:0] B_INPUT = 8'b01101111; //15.5
reg A_STB = 1;
reg B_STB = 1;
reg Z_ACK = 0;
              
// Outputs
wire A_ACK;
wire B_ACK;

wire Z_STB;
wire [WORD_MSB:0] RESULT;
assign led[7:0] = RESULT[7:0];

divider #(.WORD_MSB(WORD_MSB), .EXPONENT_MSB(2), .MANTISSA_MSB(3)) multest (
    .input_a(A_INPUT),
    .input_b(B_INPUT),
    .input_a_stb(A_STB),
    .input_b_stb(B_STB),
    .output_z_ack(Z_ACK),
    .clk(CLK100MHZ),
    .rst(0),
    .output_z(RESULT),
    .output_z_stb(Z_STB),
    .input_a_ack(A_ACK),
    .input_b_ack(B_ACK)
);
    
always @(posedge CLK100MHZ) begin
    case (state)
        
        put: 
        begin
          A_STB = 1;
          B_STB = 1; 
          state = waitAck;
        end
        
        waitAck: 
        begin
            if (A_ACK == 1 && B_ACK == 1) begin
                A_STB = 0;
                B_STB = 0;
                state = waitRes;
            end
        end
        
        
        waitRes: 
        begin
            Z_ACK = 0;
            if (Z_STB == 1) begin
                Z_ACK = 1;
                state = endex;
            end
        end
        
        endex:
        begin
            //
        end
        
    endcase 
    

     
end;
    
endmodule
