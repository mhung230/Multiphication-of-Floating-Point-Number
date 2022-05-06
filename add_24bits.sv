module add_24bits(
  input logic  [23:0] i_data_one,
  input logic  [23:0] i_data_two,
  input logic         i_carry,
  
  output logic [23:0] o_data,
  output logic        o_carry
);

  logic [2:0] carry;

  add_6bits add6_0(
    .i_data_one (i_data_one[5:0]),
    .i_data_two (i_data_two[5:0]),
    .i_carry    (i_carry),  
    .o_data     (o_data[5:0]),
    .o_carry    (carry[0])
  );

  add_6bits add6_1(
    .i_data_one (i_data_one[11:6]),
    .i_data_two (i_data_two[11:6]),
    .i_carry    (carry[0]),  
    .o_data     (o_data[11:6]),
    .o_carry    (carry[1])
  );
  
  add_6bits add6_2(
    .i_data_one (i_data_one[17:12]),
    .i_data_two (i_data_two[17:12]),
    .i_carry    (carry[1]),  
    .o_data     (o_data[17:12]),
    .o_carry    (carry[2])
  );
  
  add_6bits add6_3(
    .i_data_one (i_data_one[23:18]),
    .i_data_two (i_data_two[23:18]),
    .i_carry    (carry[2]),  
    .o_data     (o_data[23:18]),
    .o_carry    (o_carry)
  );
  
endmodule