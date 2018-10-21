`timescale 1ns / 1ps

module dawsonjon(
);

reg clk=0;

always begin
     #1 clk = ~clk;
end

// Memory IO
reg wea = 0;
reg web = 0;
reg [5:0] addra = 0;
reg [5:0] addrb = 1;
reg [15:0] dina=0; //We're not putting data in, so we can leave this unassigned
reg [15:0] dinb=0; //We're not putting data in, so we can leave this unassigned
wire [15:0] douta;
wire [15:0] doutb;

// Maths IO
reg [15:0] mathina=0;
reg [15:0] mathinb=0;
reg A_STB = 0;
reg B_STB = 0;
reg Z_ACK = 0; 
wire [15:0] result;       
wire Z_STB;
wire A_ACK;
wire B_ACK;
          
// State machine
reg [3:0] state = 0;
parameter fetch = 4'd0, 
          waitAck = 4'd1,
          getRes = 4'd2,
          endex = 4'd3,
          fetch2 = 4'd4;
        
  
 reg [2:0] clkcnt = 0;
          
always @(posedge clk) begin
    clkcnt = clkcnt+1;
    
    case (state)
    
    fetch:
    begin
      if (clkcnt == 3) begin
        mathina <= douta;
        addra <= addra+2;
        
        mathinb <= doutb;
        addrb <= addrb+2;
        
        A_STB <= 1;
        B_STB <= 1; 
                 
        state <= waitAck;
      end  
    end
    
    fetch2:
    begin
       mathina = douta;
       addra = addra+2;
           
       mathinb = doutb;
       addrb = addrb+2;
           
       A_STB = 1;
       B_STB = 1; 
                    
       state = waitAck;
    end
    
    waitAck:
    begin
        if (B_ACK == 1) begin
            state = getRes;
        end
    end
        
    getRes:
    begin
        Z_ACK = 0;
        
        if (Z_STB == 1) begin
            Z_ACK = 1;
            state = endex;
        end
    end
        
    endex:
    begin
        if (addrb == 5'd13)
            $finish;
        else
            state = fetch2;
    end
    
    endcase;
end

 blk_mem_gen_0 memory (
  .clka(clk),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [4 : 0] addra
  .dina(dina),    // input wire [15 : 0] dina
  .douta(douta),  // output wire [15 : 0] douta
  .clkb(clk),    // input wire clkb
  .web(web),      // input wire [0 : 0] web
  .addrb(addrb),  // input wire [4 : 0] addrb
  .dinb(dinb),    // input wire [15 : 0] dinb
  .doutb(doutb)  // output wire [15 : 0] doutb
);


adder #(.WORD_MSB(15), .EXPONENT_MSB(4), .MANTISSA_MSB(9)) Add(
    .input_a(mathina),
    .input_b(mathinb),
    .input_a_stb(A_STB),
    .input_b_stb(B_STB),
    .output_z_ack(Z_ACK),
    .clk(clk),
    .rst(0),
    .output_z(result),
    .output_z_stb(Z_STB),
    .input_a_ack(A_ACK),
    .input_b_ack(B_ACK)
);

endmodule
