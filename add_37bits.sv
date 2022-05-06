module add_37bits(
  input logic  [36:0] i_data_one,
  input logic  [36:0] i_data_two,
  input logic         i_carry,
  
  output logic [36:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_36bits add_36_0(
    .i_data_one (i_data_one[35:0]),
    .i_data_two (i_data_two[35:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[35:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_36_0(
    .i_add_one (i_data_one[36]),
    .i_add_two (i_data_two[36]),
    .i_carry   (carry),
    .o_add     (o_data[36]),
    .o_carry   (o_carry)
  );

endmodule