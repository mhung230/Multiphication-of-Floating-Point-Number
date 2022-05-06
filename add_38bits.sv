module add_38bits(
  input logic  [37:0] i_data_one,
  input logic  [37:0] i_data_two,
  input logic         i_carry,
  
  output logic [37:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_37bits add_37_0(
    .i_data_one (i_data_one[36:0]),
    .i_data_two (i_data_two[36:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[36:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_37_0(
    .i_add_one (i_data_one[37]),
    .i_add_two (i_data_two[37]),
    .i_carry   (carry),
    .o_add     (o_data[37]),
    .o_carry   (o_carry)
  );

endmodule