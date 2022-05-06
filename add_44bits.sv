module add_44bits(
  input logic  [43:0] i_data_one,
  input logic  [43:0] i_data_two,
  input logic         i_carry,
  
  output logic [43:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_43bits add_43_0(
    .i_data_one (i_data_one[42:0]),
    .i_data_two (i_data_two[42:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[42:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_43_0(
    .i_add_one (i_data_one[43]),
    .i_add_two (i_data_two[43]),
    .i_carry   (carry),
    .o_add     (o_data[43]),
    .o_carry   (o_carry)
  );

endmodule