module add_35bits(
  input logic  [34:0] i_data_one,
  input logic  [34:0] i_data_two,
  input logic         i_carry,
  
  output logic [34:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_34bits add_34_0(
    .i_data_one (i_data_one[33:0]),
    .i_data_two (i_data_two[33:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[33:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_34_0(
    .i_add_one (i_data_one[34]),
    .i_add_two (i_data_two[34]),
    .i_carry   (carry),
    .o_add     (o_data[34]),
    .o_carry   (o_carry)
  );

endmodule