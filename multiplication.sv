module multiplication(
  input logic  [31:0] i_mul_one,
  input logic  [31:0] i_mul_two,
  
  output logic [31:0] o_mul
);

  logic [47:0] sig_befor_norma;
  logic [47:0] sig_befor_round;
  
  logic [23:0] sig_after_round;
  logic [23:0] sig_result;

  logic [7:0]  exp_add_one;
  logic [7:0]  exp_one;
  logic [7:0]  exp_add_two;
  logic [7:0]  exp_two;
  logic [7:0]  exp_three;
  logic [7:0]  exp_add_three;
  logic [7:0]  exp_result;
  logic [7:0]  exp;
  logic [7:0]  nor_amt_add;
  logic [7:0]  round_amt_add;  
  
  logic [5:0]  nor_amt;
  logic [5:0]  nor_amt_result;
  logic [5:0]  nor_amt_sub_1;
  
  logic [1:0]  exp_sel;
  logic [1:0]  check;
  
  logic        round_check;

  // Multipling significant; 
  
  //assign check[0] = |i_data_one[22:0];
  //assign check[1] = |i_data_two[22:0];
  
  mul_24bits mul_sig(
    .i_data_one ({{{|i_mul_one[22:0]} | {|i_mul_one[30:23]}},i_mul_one[22:0]}),
    .i_data_two ({{{|i_mul_two[22:0]} | {|i_mul_two[30:23]}},i_mul_two[22:0]}),
    .o_data     (sig_befor_norma)
  );

  // Normalized after multipling  
  normalized nor_mul(
    .i_data  (sig_befor_norma),
    .i_left  (1'b1),
    .o_data  (sig_befor_round),
    .o_count (nor_amt)
  );
  
  add_6bits ant_sub_for_1(
    .i_data_one (nor_amt),
    .i_data_two (6'h01),
    .i_carry    (1'b1),
    .o_data     (nor_amt_sub_1),
    .o_carry    ()
);
  
  assign nor_amt_result = sig_befor_norma[47] ? nor_amt : nor_amt_sub_1;

  // Rounding after normalized
  round round_nor(
    .i_data  (sig_befor_round),
    .o_round (sig_after_round),
    .o_check (round_check)
  );

  // Normalized after rounding
  assign sig_result = round_check ? {{1'b1},sig_after_round[23:1]}
                    : sig_after_round;

  // Adding exponent
  add_sub_8bits add_0(
    .i_data_one (i_mul_one[30:23]),
    .i_data_two (i_mul_two[30:23]),
    .i_carry    (1'b0), 
    .o_data     (exp_add_one),
    .o_carry    ()
  );
  
  add_sub_8bits sub_0(
    .i_data_one (exp_add_one),
    .i_data_two (8'h7f),
    .i_carry    (1'b1), 
    .o_data     (exp_one),
    .o_carry    (exp_sel[1])
  );
  
  // Adding exponent first normalized
  add_sub_8bits add_1_0(
    .i_data_one (8'h7f),
    .i_data_two ({{2{1'b0}},nor_amt_result}),
    .i_carry    (1'b0), 
    .o_data     (nor_amt_add),
    .o_carry    ()
  );
  
  add_sub_8bits add_1_1(
    .i_data_one (exp_one),
    .i_data_two (nor_amt_add),
    .i_carry    (1'b0), 
    .o_data     (exp_add_two),
    .o_carry    ()
  );
  
  add_sub_8bits sub_1(
    .i_data_one (exp_add_two),
    .i_data_two (8'h7f),
    .i_carry    (1'b1), 
    .o_data     (exp_two),
    .o_carry    (exp_sel[0])
  );
  
  // Adding exponent second normalized
  
  add_sub_8bits add_2_0(
    .i_data_one (8'h7f),
    .i_data_two ({{7{1'b0}},round_check}),
    .i_carry    (1'b0), 
    .o_data     (round_amt_add),
    .o_carry    ()
  );
  
  add_sub_8bits add_2_1(
    .i_data_one (exp_two),
    .i_data_two (round_amt_add),
    .i_carry    (1'b0), 
    .o_data     (exp_add_three),
    .o_carry    ()
  );
  
  add_sub_8bits sub_2(
    .i_data_one (exp_add_three),
    .i_data_two (8'h7f),
    .i_carry (1'b1), 
    .o_data (exp_three),
    .o_carry ()
  );
  
  // Fraction
  assign o_mul[22:0] = sig_result[22:0];
  
  // Exponent
  always_comb begin
    case (exp_sel)
      2'b00   : exp_result = exp_three;
      2'b01   : exp_result = exp_two;
      default : exp_result = exp_one;
    endcase
  end
  
  assign exp = |sig_after_round ? exp_result : 8'h00;
  
  assign o_mul[30:23] = exp;
  // S
  assign o_mul[31] = i_mul_one[31] ^ i_mul_two[31];

endmodule