module add_39bits(
  input logic  [38:0] i_data_one,
  input logic  [38:0] i_data_two,
  input logic         i_carry,
  
  output logic [38:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_38bits add_38_0(
    .i_data_one (i_data_one[37:0]),
    .i_data_two (i_data_two[37:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[37:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_38_0(
    .i_add_one (i_data_one[38]),
    .i_add_two (i_data_two[38]),
    .i_carry   (carry),
    .o_add     (o_data[38]),
    .o_carry   (o_carry)
  );

endmodule