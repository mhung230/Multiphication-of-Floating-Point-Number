module add_48bits(
  input logic  [47:0] i_data_one,
  input logic  [47:0] i_data_two,
  input logic         i_carry,
  
  output logic [47:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_47bits add_47_0(
    .i_data_one (i_data_one[46:0]),
    .i_data_two (i_data_two[46:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[46:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_47_0(
    .i_add_one (i_data_one[47]),
    .i_add_two (i_data_two[47]),
    .i_carry   (carry),
    .o_add     (o_data[47]),
    .o_carry   (o_carry)
  );

endmodule