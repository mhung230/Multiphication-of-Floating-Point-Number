module add_43bits(
  input logic  [42:0] i_data_one,
  input logic  [42:0] i_data_two,
  input logic         i_carry,
  
  output logic [42:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_42bits add_42_0(
    .i_data_one (i_data_one[41:0]),
    .i_data_two (i_data_two[41:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[41:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_42_0(
    .i_add_one (i_data_one[42]),
    .i_add_two (i_data_two[42]),
    .i_carry   (carry),
    .o_add     (o_data[42]),
    .o_carry   (o_carry)
  );

endmodule