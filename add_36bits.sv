module add_36bits(
  input logic  [35:0] i_data_one,
  input logic  [35:0] i_data_two,
  input logic         i_carry,
  
  output logic [35:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_35bits add_35_0(
    .i_data_one (i_data_one[34:0]),
    .i_data_two (i_data_two[34:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[34:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_35_0(
    .i_add_one (i_data_one[35]),
    .i_add_two (i_data_two[35]),
    .i_carry   (carry),
    .o_add     (o_data[35]),
    .o_carry   (o_carry)
  );

endmodule