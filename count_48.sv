module count_48(
  input logic  [47:0] i_data,
  
  output logic [5:0] o_count
);
  logic [5:0] count_low;
  logic [5:0] count_high;
  
  logic [5:0] count_one;
  
  count_24 count24_0 (
    .i_data  (i_data[23:0]),
    .o_count (count_low)
  );
  
  count_24 count_24_1 (
    .i_data  (i_data[47:24]),
    .o_count (count_high)
  );
  
  add_6bits add_6_0(
    .i_data_one (6'd24),
    .i_data_two (count_low),
    .i_carry    (1'b0),
    .o_data     (count_one),
    .o_carry     ()
  );
  
  assign o_count = &count_high[4:3] ? count_one : count_high;
  
endmodule