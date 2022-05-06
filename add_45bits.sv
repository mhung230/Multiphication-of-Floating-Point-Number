module add_45bits(
  input logic  [44:0] i_data_one,
  input logic  [44:0] i_data_two,
  input logic         i_carry,
  
  output logic [44:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_44bits add_44_0(
    .i_data_one (i_data_one[43:0]),
    .i_data_two (i_data_two[43:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[43:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_44_0(
    .i_add_one (i_data_one[44]),
    .i_add_two (i_data_two[44]),
    .i_carry   (carry),
    .o_add     (o_data[44]),
    .o_carry   (o_carry)
  );

endmodule