module count_24(
  input logic  [23:0] i_data,
  
  output logic [5:0] o_count
);
  logic [5:0] count_low;
  logic [5:0] count_medium;
  logic [5:0] count_high;
  
  logic [5:0] count_one;
  logic [5:0] count_two;
  
  count_8 count_8_0 (
    .i_data  (i_data[7:0]),
    .o_count (count_low)
  );
  
  count_8 count_8_1 (
    .i_data (i_data[15:8]),
    .o_count (count_medium)
  );
  
  count_8 count_8_2 (
    .i_data  (i_data[23:16]),
    .o_count (count_high)
  );
  
  add_6bits add_6_0(
    .i_data_one (6'd8),
    .i_data_two (count_medium),
    .i_carry   (1'b0),
    .o_data      (count_one),
    .o_carry   ()
  );
  
  add_6bits add_6_1(
    .i_data_one (6'd16),
    .i_data_two (count_low),
    .i_carry   (1'b0),
    .o_data     (count_two),
    .o_carry   ()
  );
  
  // Select signal for counting 0 -> 15
  assign o_count = ~count_high[3] ? count_high :
                  (~count_medium[3] ? count_one : count_two);
  
endmodule