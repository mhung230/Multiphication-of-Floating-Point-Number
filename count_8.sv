module count_8(
  input logic  [7:0] i_data,
  
  output logic [5:0] o_count
);

  logic [5:0] count_low;
  logic [5:0] count_high;
  logic [5:0] haiany;
  
  logic [1:0] sel_low;
  logic [1:0] sel_high;
   
  always_comb begin
    
    // Select signal for counting 0 1 2 3
    sel_high[1] = ~(i_data[7] | i_data[6]);
    sel_high[0] = ~i_data[7] & (i_data[6] | (~i_data[5] & i_data[4]));
    
    case (sel_high)
      2'b00: count_high = 4'h0;
      2'b01: count_high = 4'h1;
      2'b10: count_high = 4'h2;
      2'b11: count_high = 4'h3;
    endcase
    
    // Select signal for counting 4 5 6 7
    sel_low[1] = ~(i_data[3] | i_data[2]);
    sel_low[0] = ~i_data[3] & (i_data[2] | (~i_data[1] & i_data[0]));
    
    case (sel_low)
      2'b00: count_low = 4'h4;
      2'b01: count_low = 4'h5;
      2'b10: count_low = 4'h6;
      2'b11: count_low = 4'h7;
    endcase

    haiany = |i_data[7:4] ? count_high : count_low;
  end
  
  assign o_count = |i_data[7:0] ? haiany : 4'h8;
  
endmodule
