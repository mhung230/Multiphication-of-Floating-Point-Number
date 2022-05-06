module add_28bits(
  input logic  [27:0] i_data_one,
  input logic  [27:0] i_data_two,
  input logic         i_carry,
  
  output logic [27:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_27bits add_27_0(
    .i_data_one (i_data_one[26:0]),
    .i_data_two (i_data_two[26:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[26:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_27_0(
    .i_add_one (i_data_one[27]),
    .i_add_two (i_data_two[27]),
    .i_carry   (carry),
    .o_add     (o_data[27]),
    .o_carry   (o_carry)
  );

endmodule