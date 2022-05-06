module add_26bits(
  input logic  [25:0] i_data_one,
  input logic  [25:0] i_data_two,
  input logic         i_carry,
  
  output logic [25:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_25bits add_25_0(
    .i_data_one (i_data_one[24:0]),
    .i_data_two (i_data_two[24:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[24:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_25_0(
    .i_add_one (i_data_one[25]),
    .i_add_two (i_data_two[25]),
    .i_carry   (carry),
    .o_add     (o_data[25]),
    .o_carry   (o_carry)
  );

endmodule