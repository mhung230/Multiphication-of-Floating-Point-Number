module add_6bits(
  input logic  [5:0] i_data_one,
  input logic  [5:0] i_data_two,
  input logic        i_carry,
  
  output logic [5:0] o_data,
  output logic       o_carry
);
  
  logic [5:0] data;  
  logic [5:1] carry;
  
  assign data = i_data_two ^ {6{i_carry}};
  
  full_adder fa_0(
    .i_add_one (i_data_one[0]),
    .i_add_two (data[0]),
    .i_carry   (i_carry),
    .o_add     (o_data[0]),
    .o_carry   (carry[1])
  );
  
  full_adder fa_1(
    .i_add_one (i_data_one[1]),
    .i_add_two (data[1]),
    .i_carry   (carry[1]),
    .o_add     (o_data[1]),
    .o_carry   (carry[2])
  );
  
  full_adder fa_2(
    .i_add_one (i_data_one[2]),
    .i_add_two (data[2]),
    .i_carry   (carry[2]),
    .o_add     (o_data[2]),
    .o_carry   (carry[3])
  );
  
  full_adder fa_3(
    .i_add_one (i_data_one[3]),
    .i_add_two (data[3]),
    .i_carry   (carry[3]),
    .o_add     (o_data[3]),
    .o_carry   (carry[4])
  );
  
  full_adder fa_4(
    .i_add_one (i_data_one[4]),
    .i_add_two (data[4]),
    .i_carry   (carry[4]),
    .o_add     (o_data[4]),
    .o_carry   (carry[5])
  );
  
  full_adder fa_5(
    .i_add_one (i_data_one[5]),
    .i_add_two (data[5]),
    .i_carry   (carry[5]),
    .o_add     (o_data[5]),
    .o_carry   (o_carry)
  );
  
endmodule