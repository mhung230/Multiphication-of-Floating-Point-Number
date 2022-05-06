module add_47bits(
  input logic  [46:0] i_data_one,
  input logic  [46:0] i_data_two,
  input logic         i_carry,
  
  output logic [46:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_46bits add_46_0(
    .i_data_one (i_data_one[45:0]),
    .i_data_two (i_data_two[45:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[45:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_46_0(
    .i_add_one (i_data_one[46]),
    .i_add_two (i_data_two[46]),
    .i_carry   (carry),
    .o_add     (o_data[46]),
    .o_carry   (o_carry)
  );

endmodule