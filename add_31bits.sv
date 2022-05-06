module add_31bits(
  input logic  [30:0] i_data_one,
  input logic  [30:0] i_data_two,
  input logic         i_carry,
  
  output logic [30:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_30bits add_30_0(
    .i_data_one (i_data_one[29:0]),
    .i_data_two (i_data_two[29:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[29:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_30_0(
    .i_add_one (i_data_one[30]),
    .i_add_two (i_data_two[30]),
    .i_carry   (carry),
    .o_add     (o_data[30]),
    .o_carry   (o_carry)
  );

endmodule