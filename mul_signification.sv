module mul_24bits(
  input logic  [23:0] i_data_one,
  input logic  [23:0] i_data_two,
  
  output logic [47:0] o_data 
);

  logic [47:1] carry;

  logic [23:0] and_data[23:0];
  
  genvar i;
  generate
    for (i = 0; i < 48; i++) begin : and_data_one
      assign and_data[i] = i_data_one & {23{i_data_two[i]}};
    end
  endgenerate
  
  assign o_data[0] = and_data[0][0];
  
  half_adder (
    .i_add_one (and_data[0][1]),
    .i_add_two (and_data[1][0]),
    .o_add     (o_data[1]),
    .o_carry   (carry[1])
);