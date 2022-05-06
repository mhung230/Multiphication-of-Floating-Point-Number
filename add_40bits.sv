module add_40bits(
  input logic  [39:0] i_data_one,
  input logic  [39:0] i_data_two,
  input logic         i_carry,
  
  output logic [39:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_39bits add_39_0(
    .i_data_one (i_data_one[38:0]),
    .i_data_two (i_data_two[38:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[38:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_39_0(
    .i_add_one (i_data_one[39]),
    .i_add_two (i_data_two[39]),
    .i_carry   (carry),
    .o_add     (o_data[39]),
    .o_carry   (o_carry)
  );

endmodule