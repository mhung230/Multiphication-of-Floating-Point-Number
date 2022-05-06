module normalized(
  input logic  [47:0] i_data,
  input logic         i_left,
  
  output logic [47:0] o_data,
  output logic [5:0]  o_count
);

  logic [47:0] data;
  //logic [5:0]  count;
 
  count_48 count_48_0(
    .i_data  (i_data),
    .o_count (o_count)
  );
  
  shifter shifter_0(
    .i_data (i_data),
    .i_amt  (o_count),
    .i_left (i_left),
    //.o_data (data)
    .o_data (o_data)
  );
  
  //assign o_data = {data[46:0],{1'b0}};
  
endmodule