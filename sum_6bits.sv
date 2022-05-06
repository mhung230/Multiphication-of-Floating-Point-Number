module sum_6bits(
  input logic [5:0] i_data,
  input logic       i_carry,
  
  output logic [5:0] o_sum,
  output logic       o_carry
);
  
  logic [5:1] carry;

  half_adder ha_0(
    .i_add_one (i_carry),
    .i_add_two (i_data[0]),
    .o_add     (o_sum[0]),
    .o_carry   (carry[1])
  );
  
  half_adder ha_1(
    .i_add_one (carry[1]),
    .i_add_two (i_data[1]),
    .o_add     (o_sum[1]),
    .o_carry   (carry[2])
  );
  
  half_adder ha_2(
    .i_add_one (carry[2]),
    .i_add_two (i_data[2]),
    .o_add     (o_sum[2]),
    .o_carry   (carry[3])
  );
  
  half_adder ha_3(
    .i_add_one (carry[3]),
    .i_add_two (i_data[3]),
    .o_add     (o_sum[3]),
    .o_carry   (carry[4])
  );
  
  half_adder ha_4(
    .i_add_one (carry[4]),
    .i_add_two (i_data[4]),
    .o_add     (o_sum[4]),
    .o_carry   (carry[5])
  );
  
  half_adder ha_5(
    .i_add_one (carry[5]),
    .i_add_two (i_data[5]),
    .o_add     (o_sum[5]),
    .o_carry   (o_carry)
  );
  
endmodule