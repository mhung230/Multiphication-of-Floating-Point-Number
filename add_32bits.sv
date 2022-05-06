module add_32bits(
  input logic  [31:0] i_data_one,
  input logic  [31:0] i_data_two,
  input logic         i_carry,
  
  output logic [31:0] o_data,
  output logic        o_carry
);

  logic carry;

  add_31bits add_31_0(
    .i_data_one (i_data_one[30:0]),
    .i_data_two (i_data_two[30:0]),
    .i_carry    (i_carry),
    .o_data     (o_data[30:0]),
    .o_carry    (carry)
  );
  
  full_adder fa_31_0(
    .i_add_one (i_data_one[31]),
    .i_add_two (i_data_two[31]),
    .i_carry   (carry),
    .o_add     (o_data[31]),
    .o_carry   (o_carry)
  );

endmodule