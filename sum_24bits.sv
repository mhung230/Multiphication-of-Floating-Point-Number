module sum_24bits(
  input logic [23:0] i_data,
  input logic        i_carry,
  output logic [23:0] o_sum,
  output logic        o_carry
);
  
  logic [3:1] carry;
  
  sum_6bits sum_6_0(
    .i_data  (i_data[5:0]),
    .i_carry (i_carry),
    .o_sum   (o_sum[5:0]),
    .o_carry (carry[1])
  );
  
  sum_6bits sum_6_1(
    .i_data (i_data[11:6]),
    .i_carry (carry[1]),
    .o_sum (o_sum[11:6]),
    .o_carry (carry[2])
  );
  
  sum_6bits sum_6_2(
    .i_data  (i_data[17:12]),
    .i_carry (carry[2]),
    .o_sum   (o_sum[17:12]),
    .o_carry (carry[3])
  );
  
  sum_6bits sum_6_3(
    .i_data  (i_data[23:18]),
    .i_carry (carry[3]),
    .o_sum   (o_sum[23:18]),
    .o_carry (o_carry)
  );
  
endmodule