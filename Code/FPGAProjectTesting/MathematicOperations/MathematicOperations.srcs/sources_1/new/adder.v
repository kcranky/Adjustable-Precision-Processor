//IEEE Floating Point Adder (Single Precision)
//Copyright (C) Jonathan P Dawson 2013
//2013-12-12


module adder(
        input_a,
        input_b,
        input_a_stb,
        input_b_stb,
        output_z_ack,
        clk,
        rst,
        output_z,
        output_z_stb,
        input_a_ack,
        input_b_ack);
  
    //Parameters
    //40 bit: 39, 7, 30
    //32 bit: 31, 7, 22
    //24 bit: 23, 6, 15
    //20 bit: 19, 5, 12
    //16 bit: 15, 4, 9
    //8 bit: 7, 2, 3
    parameter WORD_MSB = 39;
    parameter EXPONENT_MSB = 7;
    parameter MANTISSA_MSB = 30;
    parameter EXPONENT_BIAS = (2**(EXPONENT_MSB+1))/2-1; 
    parameter MANTISSA_MAX = 2**(MANTISSA_MSB+2)-1;
    
    input     clk;
    input     rst;
    
    input     [WORD_MSB:0] input_a;
    input     input_a_stb;
    output    input_a_ack;
    
    input     [WORD_MSB:0] input_b;
    input     input_b_stb;
    output    input_b_ack;
    
    output    [WORD_MSB:0] output_z;
    output    output_z_stb;
    input     output_z_ack;
    
    reg       s_output_z_stb;
    reg       [WORD_MSB:0] s_output_z;
    reg       s_input_a_ack;
    reg       s_input_b_ack;
    
    // Store states for FSM
    reg       [3:0] state = 0;
    parameter get_a = 4'd0,
              get_b         = 4'd1,
              unpack        = 4'd2,
              special_cases = 4'd3,
              align         = 4'd4,
              add_0         = 4'd5,
              add_1         = 4'd6,
              normalise_1   = 4'd7,
              normalise_2   = 4'd8,
              round         = 4'd9,
              pack          = 4'd10,
              put_z         = 4'd11;

    reg       [WORD_MSB:0] a, b, z;
    reg       [MANTISSA_MSB+4:0] a_m, b_m;
    reg       [MANTISSA_MSB+1:0] z_m;
    reg       [EXPONENT_MSB+1:0] a_e, b_e, z_e;
    reg       a_s, b_s, z_s;
    reg       guard, round_bit, sticky;
    reg       [MANTISSA_MSB+5:0] sum;

    always @(posedge clk)
    begin

        case(state)

            get_a:
            begin
                s_input_a_ack <= 1;
                if (s_input_a_ack && input_a_stb) begin
                    a <= input_a;
                    s_input_a_ack <= 0;
                    state <= get_b;
                end
            end
    
            get_b:
            begin
                s_input_b_ack <= 1;
                if (s_input_b_ack && input_b_stb) begin
                    b <= input_b;
                    s_input_b_ack <= 0;
                    state <= unpack;
                end
            end
            
            unpack:
            begin
                a_m <= {a[MANTISSA_MSB : 0], 3'd0};
                b_m <= {b[MANTISSA_MSB : 0], 3'd0};
                a_e <= a[WORD_MSB-1 : MANTISSA_MSB+1] - EXPONENT_BIAS;
                b_e <= b[WORD_MSB-1 : MANTISSA_MSB+1] - EXPONENT_BIAS;
                a_s <= a[WORD_MSB];
                b_s <= b[WORD_MSB];
                state <= special_cases;
            end
    
            
            special_cases:
            begin
                //if a is NaN or b is NaN return NaN 
                if ((a_e == (EXPONENT_BIAS+1) && a_m != 0) || (b_e == (EXPONENT_BIAS+1) && b_m != 0)) begin
                    z[WORD_MSB] <= 1;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= 2**(EXPONENT_MSB+1) -1;
                    z[MANTISSA_MSB] <= 1;
                    z[MANTISSA_MSB-1:0] <= 0;
                    state <= put_z;
                    //if a is inf return inf
                end else if (a_e == (EXPONENT_BIAS+1)) begin
                    z[WORD_MSB] <= a_s;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= 2**(EXPONENT_MSB+1)-1;
                    z[MANTISSA_MSB:0] <= 0;
                    //if a is inf and signs don't match return nan
                    if ((b_e == (EXPONENT_BIAS+1)) && (a_s != b_s)) begin
                        z[WORD_MSB] <= b_s;
                        z[WORD_MSB-1:MANTISSA_MSB+1] <= 2**(EXPONENT_MSB+1) -1;
                        z[MANTISSA_MSB] <= 1;
                        z[MANTISSA_MSB-1:0] <= 0;
                    end
                    state <= put_z;
                //if b is inf return inf
                end else if (b_e == (EXPONENT_BIAS+1)) begin
                    z[WORD_MSB] <= b_s;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= 2**(EXPONENT_MSB+1) -1;
                    z[MANTISSA_MSB:0] <= 0;
                    state <= put_z;
                //if a is zero return b
                end else if ((($signed(a_e) == -EXPONENT_BIAS) && (a_m == 0)) && (($signed(b_e) == -EXPONENT_BIAS) && (b_m == 0))) begin
                    z[WORD_MSB] <= a_s & b_s;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= b_e[EXPONENT_MSB:0] + EXPONENT_BIAS;
                    z[MANTISSA_MSB:0] <= b_m[MANTISSA_MSB+4:3];
                    state <= put_z;
                //if a is zero return b
                end else if (($signed(a_e) == -EXPONENT_BIAS) && (a_m == 0)) begin
                    z[WORD_MSB] <= b_s;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= b_e[EXPONENT_MSB:0] + EXPONENT_BIAS;
                    z[MANTISSA_MSB:0] <= b_m[MANTISSA_MSB+4:3];
                    state <= put_z;
                //if b is zero return a
                end else if (($signed(b_e) == -EXPONENT_BIAS) && (b_m == 0)) begin
                    z[WORD_MSB] <= a_s;
                    z[WORD_MSB-1:MANTISSA_MSB+1] <= a_e[EXPONENT_MSB:0] + EXPONENT_BIAS;
                    z[MANTISSA_MSB:0] <= a_m[MANTISSA_MSB+4:3];
                    state <= put_z;
                end else begin
                    //Denormalised Number
                    if ($signed(a_e) == -EXPONENT_BIAS) begin
                        a_e <= -(EXPONENT_BIAS-1);
                    end else begin
                        a_m[MANTISSA_MSB+4] <= 1;
                    end
                    //Denormalised Number
                    if ($signed(b_e) == -EXPONENT_BIAS) begin
                        b_e <= -(EXPONENT_BIAS-1);
                    end else begin
                        b_m[MANTISSA_MSB+4] <= 1;
                    end
                    state <= align;
                end
    end 
            
            align:
            begin
                if ($signed(a_e) > $signed(b_e)) begin
                    b_e <= b_e + 1;
                    b_m <= b_m >> 1;
                    b_m[0] <= b_m[0] | b_m[1];
                end else if ($signed(a_e) < $signed(b_e)) begin
                    a_e <= a_e + 1;
                    a_m <= a_m >> 1;
                    a_m[0] <= a_m[0] | a_m[1];
                end else begin
                    state <= add_0;
                end
            end
            
            add_0:
            begin
                z_e <= a_e;
                if (a_s == b_s) begin
                    sum <= a_m + b_m;
                    z_s <= a_s;
                end else begin
                    if (a_m >= b_m) begin
                        sum <= a_m - b_m;
                        z_s <= a_s;
                    end else begin
                        sum <= b_m - a_m;
                        z_s <= b_s;
                    end
                end
                state <= add_1;
            end
            
            add_1:
            begin
                if (sum[MANTISSA_MSB+5]) begin
                    z_m <= sum[MANTISSA_MSB+5:4];
                    guard <= sum[3];
                    round_bit <= sum[2];
                    sticky <= sum[1] | sum[0];
                    z_e <= z_e + 1;
                end else begin
                    z_m <= sum[MANTISSA_MSB+4:3];
                    guard <= sum[2];
                    round_bit <= sum[1];
                    sticky <= sum[0];
                end
                state <= normalise_1;
            end
            
            normalise_1:
            begin
                if (z_m[MANTISSA_MSB+1] == 0 && $signed(z_e) > -(EXPONENT_BIAS-1)) begin
                    z_e <= z_e - 1;
                    z_m <= z_m << 1;
                    z_m[0] <= guard;
                    guard <= round_bit;
                    round_bit <= 0;
                end else begin
                    state <= normalise_2;
                end
            end
            
            normalise_2:
            begin
                if ($signed(z_e) < -(EXPONENT_BIAS-1)) begin
                    z_e <= z_e + 1;
                    z_m <= z_m >> 1;
                    guard <= z_m[0];
                    round_bit <= guard;
                    sticky <= sticky | round_bit;
                end else begin
                    state <= round;
                end
            end
            
            round:
            begin
                if (guard && (round_bit | sticky | z_m[0])) begin
                    z_m <= z_m + 1;
                    if (z_m == MANTISSA_MAX) begin
                        z_e <=z_e + 1;
                    end
                end
                state <= pack;
            end
            
            pack:
            begin
                z[MANTISSA_MSB : 0] <= z_m[MANTISSA_MSB:0];
                z[WORD_MSB-1 : MANTISSA_MSB+1] <= z_e[EXPONENT_MSB:0] + EXPONENT_BIAS;
                z[WORD_MSB] <= z_s;
                if ($signed(z_e) == -(EXPONENT_BIAS-1) && z_m[MANTISSA_MSB+1] == 0) begin
                        z[WORD_MSB-1 : MANTISSA_MSB+1] <= 0;
                end
                //if overflow occurs, return inf
                if ($signed(z_e) > EXPONENT_BIAS) begin
                    z[MANTISSA_MSB : 0] <= 0;
                    z[WORD_MSB-1 : MANTISSA_MSB+1] <= 2**(EXPONENT_MSB+1) -1;
                    z[WORD_MSB] <= z_s;
                end
                state <= put_z;
            end
            
            put_z:
            begin
                s_output_z_stb <= 1;
                s_output_z <= z;
                if (s_output_z_stb && output_z_ack) begin
                    s_output_z_stb <= 0;
                    state <= get_a;
                end
            end
        endcase

    if (rst == 1) begin
        state <= get_a;
        s_input_a_ack <= 0;
        s_input_b_ack <= 0;
        s_output_z_stb <= 0;
    end

end
assign input_a_ack = s_input_a_ack;
assign input_b_ack = s_input_b_ack;
assign output_z_stb = s_output_z_stb;
assign output_z = s_output_z;

endmodule
