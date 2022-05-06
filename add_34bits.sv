module add_34bits(
  input logic  [33:0] i_data_one,
  input logic  [33:0] i_data_two,
  input logic         i_carry,
  
  output logic [33:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_33bits add_33_0(
    .i_data_one (i_data_one[32:0]),
    .i_data_two (i_data_two[32:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[32:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_33_0(
    .i_add_one (i_data_one[33]),
    .i_add_two (i_data_two[33]),
    .i_carry   (carry),
    .o_add     (o_data[33]),
    .o_carry   (o_carry)
  );

endmodule