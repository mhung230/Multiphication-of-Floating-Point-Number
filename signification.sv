module mul_24bits(
  input logic  [23:0] i_data_one,
  input logic  [23:0] i_data_two,
  
  output logic [47:0] o_data
);

  logic [23:0] and_data[23:0];
  
  logic [25:0] add_data_0;
  logic [26:0] add_data_1;
  logic [27:0] add_data_2;
  logic [28:0] add_data_3;
  logic [29:0] add_data_4;
  logic [30:0] add_data_5;
  logic [31:0] add_data_6;
  logic [32:0] add_data_7;
  logic [33:0] add_data_8;
  logic [34:0] add_data_9;
  logic [35:0] add_data_10;
  logic [36:0] add_data_11;
  logic [37:0] add_data_12;
  logic [38:0] add_data_13;
  logic [39:0] add_data_14;
  logic [40:0] add_data_15;
  logic [41:0] add_data_16;
  logic [42:0] add_data_17;
  logic [43:0] add_data_18;
  logic [44:0] add_data_19;
  logic [45:0] add_data_20;
  logic [46:0] add_data_21;
  logic [47:0] add_data_22;
  
  genvar i;
  generate
    for (i = 0; i < 24; i++) begin : and_data_two
      assign and_data[i] = i_data_one & {24{i_data_two[i]}};
    end
  endgenerate

  add_25bits add_25(
    .i_data_one ({{1'b0},and_data[0]}),
    .i_data_two ({and_data[1],{1'b0}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_0[24:0]),
    .o_carry    (add_data_0[25])
  );
  
  add_26bits add_26(
    .i_data_one (add_data_0),
    .i_data_two ({and_data[2],{2{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_1[25:0]),
    .o_carry    (add_data_1[26])
  );
  
  add_27bits add_27(
    .i_data_one (add_data_1),
    .i_data_two ({and_data[3],{3{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_2[26:0]),
    .o_carry    (add_data_2[27])
  );
  
  add_28bits add_28(
    .i_data_one (add_data_2),
    .i_data_two ({and_data[4],{4{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_3[27:0]),
    .o_carry    (add_data_3[28])
  );
  
  add_29bits add_29(
    .i_data_one (add_data_3),
    .i_data_two ({and_data[5],{5{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_4[28:0]),
    .o_carry    (add_data_4[29])
  );
  
  add_30bits add_30(
    .i_data_one (add_data_4),
    .i_data_two ({and_data[6],{6{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_5[29:0]),
    .o_carry    (add_data_5[30])
  );
  
  add_31bits add_31(
    .i_data_one (add_data_5),
    .i_data_two ({and_data[7],{7{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_6[30:0]),
    .o_carry    (add_data_6[31])
  );
  
  add_32bits add_32(
    .i_data_one (add_data_6),
    .i_data_two ({and_data[8],{8{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_7[31:0]),
    .o_carry    (add_data_7[32])
  );
  
  add_33bits add_33(
    .i_data_one (add_data_7),
    .i_data_two ({and_data[9],{9{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_8[32:0]),
    .o_carry    (add_data_8[33])
  );
  
  add_34bits add_34(
    .i_data_one (add_data_8),
    .i_data_two ({and_data[10],{10{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_9[33:0]),
    .o_carry    (add_data_9[34])
  );
  
  add_35bits add_35(
    .i_data_one (add_data_9),
    .i_data_two ({and_data[11],{11{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_10[34:0]),
    .o_carry    (add_data_10[35])
  );
  
  add_36bits add_36(
    .i_data_one (add_data_10),
    .i_data_two ({and_data[12],{12{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_11[35:0]),
    .o_carry    (add_data_11[36])
  );
  
  add_37bits add_37(
    .i_data_one (add_data_11),
    .i_data_two ({and_data[13],{13{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_12[36:0]),
    .o_carry    (add_data_12[37])
  );
  
  add_38bits add_38(
    .i_data_one (add_data_12),
    .i_data_two ({and_data[14],{14{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_13[37:0]),
    .o_carry    (add_data_13[38])
  );
  
  add_39bits add_39(
    .i_data_one (add_data_13),
    .i_data_two ({and_data[15],{15{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_14[38:0]),
    .o_carry    (add_data_14[39])
  );
  
  add_40bits add_40(
    .i_data_one (add_data_14),
    .i_data_two ({and_data[16],{16{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_15[39:0]),
    .o_carry    (add_data_15[40])
  );
  
  add_41bits add_41(
    .i_data_one (add_data_15),
    .i_data_two ({and_data[17],{17{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_16[40:0]),
    .o_carry    (add_data_16[41])
  );
  
  add_42bits add_42(
    .i_data_one (add_data_16),
    .i_data_two ({and_data[18],{18{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_17[41:0]),
    .o_carry    (add_data_17[42])
  );
  
  add_43bits add_43(
    .i_data_one (add_data_17),
    .i_data_two ({and_data[19],{19{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_18[42:0]),
    .o_carry    (add_data_18[43])
  );
  
  add_44bits add_44(
    .i_data_one (add_data_18),
    .i_data_two ({and_data[20],{20{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_19[43:0]),
    .o_carry    (add_data_19[44])
  );
  
  add_45bits add_45(
    .i_data_one (add_data_19),
    .i_data_two ({and_data[21],{21{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_20[44:0]),
    .o_carry    (add_data_20[45])
  );
  
  add_46bits add_46(
    .i_data_one (add_data_20),
    .i_data_two ({and_data[22],{22{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_21[45:0]),
    .o_carry    (add_data_21[46])
  );
  
  add_47bits add_47(
    .i_data_one (add_data_21),
    .i_data_two ({and_data[23],{23{1'b0}}}),
    .i_carry    (1'b0),  
    .o_data     (add_data_22[46:0]),
    .o_carry    (add_data_22[47])
  );

  assign o_data = add_data_22;

endmodule