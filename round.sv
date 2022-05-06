module round(
  input logic [47:0] i_data,
  
  output logic [23:0] o_round,
  output logic        o_check
);
  logic [23:0] register[1:0];
  
  logic [23:0] data;
  
  assign register[1] = i_data[47:24];
  assign register[0] = i_data[23:0];
  
  sum_24bits sum_24_0(
    .i_data  (register[1]),
    .i_carry (register[0][23]),
    .o_sum   (o_round),
    .o_carry (o_check)
  );
  
  //assign o_round = data[23:1];

endmodule