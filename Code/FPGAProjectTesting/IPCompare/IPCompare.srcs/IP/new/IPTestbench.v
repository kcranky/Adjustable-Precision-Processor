`timescale 1ns / 1ps

module tb(

);

// Memory IO
reg wea = 0;
reg web = 0;
reg [3:0] addra = 0;
reg [3:0] addrb = 1;
reg [15:0] dina=0; //We're not putting data in, so we can leave this unassigned
reg [15:0] dinb=0; //We're not putting data in, so we can leave this unassigned
wire [15:0] douta;
wire [15:0] doutb;

reg clk=0;

always begin
     #1 clk = ~clk;
end


// Maths IO         
reg s_axis_a_tvalid = 0;                 // input wire s_axis_a_tvalid
wire s_axis_a_tready;                // output wire s_axis_a_tready
reg [15:0] s_axis_a_tdata = 0;          // input wire [15 : 0] s_axis_a_tdata

reg s_axis_b_tvalid = 0;                // input wire s_axis_b_tvalid
wire s_axis_b_tready;               // output wire s_axis_b_tready
reg [15:0] s_axis_b_tdata = 0;          // input wire [15 : 0] s_axis_b_tdata

wire m_axis_result_tvalid;           // output wire m_axis_result_tvalid
reg m_axis_result_tready =0;            // input wire m_axis_result_tready
wire [15:0] m_axis_result_tdata;      // output wire [15 : 0] m_axis_result_tdata

reg result = 0;

reg [3:0] clkcnt = 0;
     
// State machine
reg [3:0] state = 0;
parameter fetch = 4'd0, 
          put = 4'd1,
          getRes = 4'd2,
          endex = 4'd3,
          fetch2 = 4'd4;

always @(posedge clk) begin

    
    case (state)
    
    fetch:
    begin
        if(clkcnt == 2) begin
            s_axis_a_tdata <= douta;
            s_axis_b_tdata <= doutb;
            state <= put; 
        end 
        else
            clkcnt <= clkcnt+1;
    end
    
    put:
    begin
        if (s_axis_a_tready==1 && s_axis_b_tready==1) begin
            s_axis_a_tdata <= douta;
            s_axis_b_tdata <= doutb;
            
            s_axis_a_tvalid <= 1;
            s_axis_b_tvalid <= 1;
            
            addra <= addra + 2;
            addrb <= addrb + 2;
            m_axis_result_tready <= 1;
            state <= getRes;           
        end
    end
        
    getRes: //Get the result!
    begin  
        if (m_axis_result_tvalid==1 && result==0) begin         
            s_axis_a_tvalid <= 0;
            s_axis_b_tvalid <= 0;
            result = 1;
            state <= endex; 
        end
        else
            result <= m_axis_result_tvalid;
    end
    
    endex:
    begin
        if (addrb == 5'hf)
            $finish;
        else
            state <= put;
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

floating_point_0 your_instance_name (
  .aclk(clk),                                        // input wire aclk
  .s_axis_a_tvalid(s_axis_a_tvalid),                  // input wire s_axis_a_tvalid
  .s_axis_a_tready(s_axis_a_tready),                  // output wire s_axis_a_tready
  .s_axis_a_tdata(s_axis_a_tdata),                    // input wire [15 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(s_axis_b_tvalid),                  // input wire s_axis_b_tvalid
  .s_axis_b_tready(s_axis_b_tready),                  // output wire s_axis_b_tready
  .s_axis_b_tdata(s_axis_b_tdata),                    // input wire [15 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(m_axis_result_tvalid),        // output wire m_axis_result_tvalid
  .m_axis_result_tready(m_axis_result_tready),        // input wire m_axis_result_tready
  .m_axis_result_tdata(m_axis_result_tdata)          // output wire [15 : 0] m_axis_result_tdata
);


endmodule
