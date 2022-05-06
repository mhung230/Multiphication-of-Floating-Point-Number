module add_46bits(
  input logic  [45:0] i_data_one,
  input logic  [45:0] i_data_two,
  input logic         i_carry,
  
  output logic [45:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_45bits add_45_0(
    .i_data_one (i_data_one[44:0]),
    .i_data_two (i_data_two[44:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[44:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_45_0(
    .i_add_one (i_data_one[45]),
    .i_add_two (i_data_two[45]),
    .i_carry   (carry),
    .o_add     (o_data[45]),
    .o_carry   (o_carry)
  );

endmodule