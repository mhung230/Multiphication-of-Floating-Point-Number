module shifter(
  input logic  [47:0] i_data,
  input logic  [5:0]  i_amt,
  input logic         i_left,
  
  output logic [47:0] o_data
);

  logic [47:0] data;
  logic [47:0] shift_32;
  logic [47:0] shift_16;
  logic [47:0] shift_8;
  logic [47:0] shift_4;
  logic [47:0] shift_2;
  logic [47:0] shift_1;
  
  logic [47:0] result;
  
  genvar i;
  generate
    for (i = 0; i < 48; i++) begin : reverse_for_right
      assign data[i] = i_left ? i_data[i] : i_data[47-i];
    end
  endgenerate

  // Shift 32
  assign shift_32 = i_amt[5] ? {data[15:0],{32{1'b0}}}     : data;
  // Shift 16
  assign shift_16 = i_amt[4] ? {shift_32[31:0],{16{1'b0}}} : shift_32;
  // Shift 8
  assign shift_8  = i_amt[3] ? {shift_16[39:0],{8{1'b0}}}  : shift_16;  
  // Shift 4
  assign shift_4  = i_amt[2] ? {shift_8[43:0],{4{1'b0}}}   : shift_8;
  // Shift 2
  assign shift_2  = i_amt[1] ? {shift_4[45:0],{2{1'b0}}}   : shift_4;
  // Shift 1
  assign shift_1  = i_amt[0] ? {shift_2[46:0],{1'b0}}      : shift_2;
  
  //genvar i;
  generate
    for (i = 0; i < 48; i++) begin : reverse_for_result
      assign result[i] = i_left ? shift_1[i] : shift_1[47-i];
    end
  endgenerate
  
  assign o_data = result;
  
endmodule