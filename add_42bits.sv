module add_42bits(
  input logic  [41:0] i_data_one,
  input logic  [41:0] i_data_two,
  input logic         i_carry,
  
  output logic [41:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_41bits add_41_0(
    .i_data_one (i_data_one[40:0]),
    .i_data_two (i_data_two[40:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[40:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_41_0(
    .i_add_one (i_data_one[41]),
    .i_add_two (i_data_two[41]),
    .i_carry   (carry),
    .o_add     (o_data[41]),
    .o_carry   (o_carry)
  );

endmodule