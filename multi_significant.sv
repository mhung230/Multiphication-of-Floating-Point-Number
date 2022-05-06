module multi_signi (
	input wire [23:0] i_mul_one,
	input wire [23:0] i_mul_two,

	output logic [47:0] o_mul
);
	logic [23:0] and_0;
	logic [23:0] and_1;
	logic [23:0] and_2;
	logic [23:0] and_3;
	logic [23:0] and_4;
	logic [23:0] and_5;
	logic [23:0] and_6;
	logic [23:0] and_7;
	logic [23:0] and_8;
	logic [23:0] and_9;
	logic [23:0] and_10;
	logic [23:0] and_11;
	logic [23:0] and_12;
	logic [23:0] and_13;
	logic [23:0] and_14;
	logic [23:0] and_15;
	logic [23:0] and_16;
	logic [23:0] and_17;
	logic [23:0] and_18;
	logic [23:0] and_19;
	logic [23:0] and_20;
	logic [23:0] and_21;
	logic [23:0] and_22;
	logic [23:0] and_23;

	logic [23:0] add_0;
	logic [23:0] add_1;
	logic [23:0] add_2;
	logic [23:0] add_3;
	logic [23:0] add_4;
	logic [23:0] add_5;
	logic [23:0] add_6;
	logic [23:0] add_7;
	logic [23:0] add_8;
	logic [23:0] add_9;
	logic [23:0] add_10;
	logic [23:0] add_11;
	logic [23:0] add_12;
	logic [23:0] add_13;
	logic [23:0] add_14;
	logic [23:0] add_15;
	logic [23:0] add_16;
	logic [23:0] add_17;
	logic [23:0] add_18;
	logic [23:0] add_19;
	logic [23:0] add_20;
	logic [23:0] add_21;
	logic [23:0] add_22;
	logic [23:0] add_23;

	logic [45:1] carry;

	logic [1:0] wires_2;
	logic [3:0] wires_3;
	logic [5:0] wires_4;
	logic [7:0] wires_5;
	logic [9:0] wires_6;
	logic [11:0] wires_7;
	logic [13:0] wires_8;
	logic [15:0] wires_9;
	logic [17:0] wires_10;
	logic [19:0] wires_11;
	logic [21:0] wires_12;
	logic [23:0] wires_13;
	logic [25:0] wires_14;
	logic [27:0] wires_15;
	logic [29:0] wires_16;
	logic [31:0] wires_17;
	logic [33:0] wires_18;
	logic [35:0] wires_19;
	logic [37:0] wires_20;
	logic [39:0] wires_21;
	logic [41:0] wires_22;
	logic [43:0] wires_23;
	logic [41:0] wires_24;
	logic [39:0] wires_25;
	logic [37:0] wires_26;
	logic [35:0] wires_27;
	logic [33:0] wires_28;
	logic [31:0] wires_29;
	logic [29:0] wires_30;
	logic [27:0] wires_31;
	logic [25:0] wires_32;
	logic [23:0] wires_33;
	logic [21:0] wires_34;
	logic [19:0] wires_35;
	logic [17:0] wires_36;
	logic [15:0] wires_37;
	logic [13:0] wires_38;
	logic [11:0] wires_39;
	logic [9:0] wires_40;
	logic [7:0] wires_41;
	logic [5:0] wires_42;
	logic [3:0] wires_43;
	logic [1:0] wires_44;

	assign and_0 = i_mul_one & {24{i_mul_two[0]}};
	assign and_1 = i_mul_one & {24{i_mul_two[1]}};
	assign and_2 = i_mul_one & {24{i_mul_two[2]}};
	assign and_3 = i_mul_one & {24{i_mul_two[3]}};
	assign and_4 = i_mul_one & {24{i_mul_two[4]}};
	assign and_5 = i_mul_one & {24{i_mul_two[5]}};
	assign and_6 = i_mul_one & {24{i_mul_two[6]}};
	assign and_7 = i_mul_one & {24{i_mul_two[7]}};
	assign and_8 = i_mul_one & {24{i_mul_two[8]}};
	assign and_9 = i_mul_one & {24{i_mul_two[9]}};
	assign and_10 = i_mul_one & {24{i_mul_two[10]}};
	assign and_11 = i_mul_one & {24{i_mul_two[11]}};
	assign and_12 = i_mul_one & {24{i_mul_two[12]}};
	assign and_13 = i_mul_one & {24{i_mul_two[13]}};
	assign and_14 = i_mul_one & {24{i_mul_two[14]}};
	assign and_15 = i_mul_one & {24{i_mul_two[15]}};
	assign and_16 = i_mul_one & {24{i_mul_two[16]}};
	assign and_17 = i_mul_one & {24{i_mul_two[17]}};
	assign and_18 = i_mul_one & {24{i_mul_two[18]}};
	assign and_19 = i_mul_one & {24{i_mul_two[19]}};
	assign and_20 = i_mul_one & {24{i_mul_two[20]}};
	assign and_21 = i_mul_one & {24{i_mul_two[21]}};
	assign and_22 = i_mul_one & {24{i_mul_two[22]}};
	assign and_23 = i_mul_one & {24{i_mul_two[23]}};
	
	//multiplication significant bit 0
	assign o_mul[0] = and_0[0];

	//multiplication significant bit 1
	half_adder sig_1 (
		.i_add_one (and_0[1]),
		.i_add_two (and_1[0]),
		.o_add (o_mul[1]),
		.o_carry (carry[1])
	);

	//multiplication significant bit 2
	full_adder sig_2_0 (
		.i_add_one (and_0[2]),
		.i_add_two (and_1[1]),
		.i_carry (carry[1]),
		.o_add (wires_2[0]),
		.o_carry (wires_2[1])
	);

	full_adder sig_2_1 (
		.i_add_one (wires_2[0]),
		.i_add_two (and_2[0]),
		.i_carry (wires_2[1]),
		.o_add (o_mul[2]),
		.o_carry (carry[2])
	);

	//multiplication significanr bit 3
	full_adder sig_3_0 (
		.i_add_one (and_0[3]),
		.i_add_two (and_1[2]),
		.i_carry (carry[2]),
		.o_add (wires_3[0]),
		.o_carry (wires_3[1])
	);

	full_adder sig_3_1 (
		.i_add_one (wires_3[0]),
		.i_add_two (and_2[1]),
		.i_carry (wires_3[1]),
		.o_add (wires_3[2]),
		.o_carry (wires_3[3])
	);

	full_adder sig_3_2 (
		.i_add_one (wires_3[2]),
		.i_add_two (and_3[0]),
		.i_carry (wires_3[3]),
		.o_add (o_mul[3]),
		.o_carry (carry[3])
	);
	//multiplication significant bit 4
	full_adder sig_4_0 (
		.i_add_one (and_0[4]),
		.i_add_two (and_1[3]),
		.i_carry (carry[3]),
		.o_add (wires_4[0]),
		.o_carry (wires_4[1])
	);

	full_adder sig_4_1 (
		.i_add_one (wires_4[0]),
		.i_add_two (and_2[2]),
		.i_carry (wires_4[1]),
		.o_add (wires_4[2]),
		.o_carry (wires_4[3])
	);

	full_adder sig_4_2 (
		.i_add_one (wires_4[2]),
		.i_add_two (and_3[1]),
		.i_carry (wires_4[3]),
		.o_add (wires_4[4]),
		.o_carry (wires_4[5])
	);

	full_adder sig_4_3 (
		.i_add_one (wires_4[4]),
		.i_add_two (and_4[0]),
		.i_carry (wires_4[5]),
		.o_add (o_mul[4]),
		.o_carry (carry[4])
	);

	//multiplication significant bit 5
	full_adder sig_5_0 (
		.i_add_one (and_0[5]),
		.i_add_two (and_1[4]),
		.i_carry (carry[4]),
		.o_add (wires_5[0]),
		.o_carry (wires_5[1])
	);

	full_adder sig_5_1 (
		.i_add_one (wires_5[0]),
		.i_add_two (and_2[3]),
		.i_carry (wires_5[1]),
		.o_add (wires_5[2]),
		.o_carry (wires_5[3])
	);

	full_adder sig_5_2 (
		.i_add_one (wires_5[2]),
		.i_add_two (and_3[2]),
		.i_carry (wires_5[3]),
		.o_add (wires_5[4]),
		.o_carry (wires_5[5])
	);

	full_adder sig_5_3 (
		.i_add_one (wires_5[4]),
		.i_add_two (and_4[1]),
		.i_carry (wires_5[5]),
		.o_add (wires_5[6]),
		.o_carry (wires_5[7])
	);

	full_adder sig_5_4 (
		.i_add_one (wires_5[6]),
		.i_add_two (and_5[0]),
		.i_carry (wires_5[7]),
		.o_add (o_mul[5]),
		.o_carry (carry[5])
	);

	//multiplication significant bit 6
	full_adder sig_6_0 (
		.i_add_one (and_0[6]),
		.i_add_two (and_1[5]),
		.i_carry (carry[5]),
		.o_add (wires_6[0]),
		.o_carry (wires_6[1])
	);

	full_adder sig_6_1 (
		.i_add_one (wires_6[0]),
		.i_add_two (and_2[4]),
		.i_carry (wires_6[1]),
		.o_add (wires_6[2]),
		.o_carry (wires_6[3])
	);

	full_adder sig_6_2 (
		.i_add_one (wires_6[2]),
		.i_add_two (and_3[3]),
		.i_carry (wires_6[3]),
		.o_add (wires_6[4]),
		.o_carry (wires_6[5])
	);

	full_adder sig_6_3 (
		.i_add_one (wires_6[4]),
		.i_add_two (and_4[2]),
		.i_carry (wires_6[5]),
		.o_add (wires_6[6]),
		.o_carry (wires_6[7])
	);

	full_adder sig_6_4 (
		.i_add_one (wires_6[6]),
		.i_add_two (and_5[1]),
		.i_carry (wires_6[7]),
		.o_add (wires_6[8]),
		.o_carry (wires_6[9])
	);

	full_adder sig_6_5 (
		.i_add_one (wires_6[8]),
		.i_add_two (and_6[0]),
		.i_carry (wires_6[9]),
		.o_add (o_mul[6]),
		.o_carry (carry[6])
	);

	//multiplication significant bit 7
	full_adder sig_7_0 (
		.i_add_one (and_0[7]),
		.i_add_two (and_1[6]),
		.i_carry (carry[6]),
		.o_add (wires_7[0]),
		.o_carry (wires_7[1])
	);

	full_adder sig_7_1 (
		.i_add_one (wires_7[0]),
		.i_add_two (and_2[5]),
		.i_carry (wires_7[1]),
		.o_add (wires_7[2]),
		.o_carry (wires_7[3])
	);

	full_adder sig_7_2 (
		.i_add_one (wires_7[2]),
		.i_add_two (and_3[4]),
		.i_carry (wires_7[3]),
		.o_add (wires_7[4]),
		.o_carry (wires_7[5])
	);

	full_adder sig_7_3 (
		.i_add_one (wires_7[4]),
		.i_add_two (and_4[3]),
		.i_carry (wires_7[5]),
		.o_add (wires_7[6]),
		.o_carry (wires_7[7])
	);

	full_adder sig_7_4 (
		.i_add_one (wires_7[6]),
		.i_add_two (and_5[2]),
		.i_carry (wires_7[7]),
		.o_add (wires_7[8]),
		.o_carry (wires_7[9])
	);

	full_adder sig_7_5 (
		.i_add_one (wires_7[8]),
		.i_add_two (and_6[1]),
		.i_carry (wires_7[9]),
		.o_add (wires_7[10]),
		.o_carry (wires_7[11])
	);

	full_adder sig_7_6 (
		.i_add_one (wires_7[10]),
		.i_add_two (and_7[0]),
		.i_carry (wires_7[11]),
		.o_add (o_mul[7]),
		.o_carry (carry[7])
	);

	//multiplication significant bit 8
	full_adder sig_8_0 (
		.i_add_one (and_0[8]),
		.i_add_two (and_1[7]),
		.i_carry (carry[7]),
		.o_add (wires_8[0]),
		.o_carry (wires_8[1])
	);

	full_adder sig_8_1 (
		.i_add_one (wires_8[0]),
		.i_add_two (and_2[6]),
		.i_carry (wires_8[1]),
		.o_add (wires_8[2]),
		.o_carry (wires_8[3])
	);

	full_adder sig_8_2 (
		.i_add_one (wires_8[2]),
		.i_add_two (and_3[5]),
		.i_carry (wires_8[3]),
		.o_add (wires_8[4]),
		.o_carry (wires_8[5])
	);

	full_adder sig_8_3 (
		.i_add_one (wires_8[4]),
		.i_add_two (and_4[4]),
		.i_carry (wires_8[5]),
		.o_add (wires_8[6]),
		.o_carry (wires_8[7])
	);

	full_adder sig_8_4 (
		.i_add_one (wires_8[6]),
		.i_add_two (and_5[3]),
		.i_carry (wires_8[7]),
		.o_add (wires_8[8]),
		.o_carry (wires_8[9])
	);

	full_adder sig_8_5 (
		.i_add_one (wires_8[8]),
		.i_add_two (and_6[2]),
		.i_carry (wires_8[9]),
		.o_add (wires_8[10]),
		.o_carry (wires_8[11])
	);

	full_adder sig_8_6 (
		.i_add_one (wires_8[10]),
		.i_add_two (and_7[1]),
		.i_carry (wires_8[11]),
		.o_add (wires_8[12]),
		.o_carry (wires_8[13])
	);

	full_adder sig_8_7 (
		.i_add_one (wires_8[12]),
		.i_add_two (and_8[0]),
		.i_carry (wires_8[13]),
		.o_add (o_mul[8]),
		.o_carry (carry[8])
	);

	//multiplication significant bit 9
	full_adder sig_9_0 (
		.i_add_one (and_0[9]),
		.i_add_two (and_1[8]),
		.i_carry (carry[8]),
		.o_add (wires_9[0]),
		.o_carry (wires_9[1])
	);

	full_adder sig_9_1 (
		.i_add_one (wires_9[0]),
		.i_add_two (and_2[7]),
		.i_carry (wires_9[1]),
		.o_add (wires_9[2]),
		.o_carry (wires_9[3])
	);

	full_adder sig_9_2 (
		.i_add_one (wires_9[2]),
		.i_add_two (and_3[6]),
		.i_carry (wires_9[3]),
		.o_add (wires_9[4]),
		.o_carry (wires_9[5])
	);

	full_adder sig_9_3 (
		.i_add_one (wires_9[4]),
		.i_add_two (and_4[5]),
		.i_carry (wires_9[5]),
		.o_add (wires_9[6]),
		.o_carry (wires_9[7])
	);

	full_adder sig_9_4 (
		.i_add_one (wires_9[6]),
		.i_add_two (and_5[4]),
		.i_carry (wires_9[7]),
		.o_add (wires_9[8]),
		.o_carry (wires_9[9])
	);

	full_adder sig_9_5 (
		.i_add_one (wires_9[8]),
		.i_add_two (and_6[3]),
		.i_carry (wires_9[9]),
		.o_add (wires_9[10]),
		.o_carry (wires_9[11])
	);

	full_adder sig_9_6 (
		.i_add_one (wires_9[10]),
		.i_add_two (and_7[2]),
		.i_carry (wires_9[11]),
		.o_add (wires_9[12]),
		.o_carry (wires_9[13])
	);

	full_adder sig_9_7 (
		.i_add_one (wires_9[12]),
		.i_add_two (and_8[1]),
		.i_carry (wires_9[13]),
		.o_add (wires_9[14]),
		.o_carry (wires_9[15])
	);

	full_adder sig_9_8 (
		.i_add_one (wires_9[14]),
		.i_add_two (and_9[0]),
		.i_carry (wires_9[15]),
		.o_add (o_mul[9]),
		.o_carry (carry[9])
	);

	//multiplication significant bit 10
	full_adder sig_10_0 (
		.i_add_one (and_0[10]),
		.i_add_two (and_1[9]),
		.i_carry (carry[9]),
		.o_add (wires_10[0]),
		.o_carry (wires_10[1])
	);

	full_adder sig_10_1 (
		.i_add_one (wires_10[0]),
		.i_add_two (and_2[8]),
		.i_carry (wires_10[1]),
		.o_add (wires_10[2]),
		.o_carry (wires_10[3])
	);

	full_adder sig_10_2 (
		.i_add_one (wires_10[2]),
		.i_add_two (and_3[7]),
		.i_carry (wires_10[3]),
		.o_add (wires_10[4]),
		.o_carry (wires_10[5])
	);

	full_adder sig_10_3 (
		.i_add_one (wires_10[4]),
		.i_add_two (and_4[6]),
		.i_carry (wires_10[5]),
		.o_add (wires_10[6]),
		.o_carry (wires_10[7])
	);

	full_adder sig_10_4 (
		.i_add_one (wires_10[6]),
		.i_add_two (and_5[5]),
		.i_carry (wires_10[7]),
		.o_add (wires_10[8]),
		.o_carry (wires_10[9])
	);

	full_adder sig_10_5 (
		.i_add_one (wires_10[8]),
		.i_add_two (and_6[4]),
		.i_carry (wires_10[9]),
		.o_add (wires_10[10]),
		.o_carry (wires_10[11])
	);

	full_adder sig_10_6 (
		.i_add_one (wires_10[10]),
		.i_add_two (and_7[3]),
		.i_carry (wires_10[11]),
		.o_add (wires_10[12]),
		.o_carry (wires_10[13])
	);

	full_adder sig_10_7 (
		.i_add_one (wires_10[12]),
		.i_add_two (and_8[2]),
		.i_carry (wires_10[13]),
		.o_add (wires_10[14]),
		.o_carry (wires_10[15])
	);

	full_adder sig_10_8 (
		.i_add_one (wires_10[14]),
		.i_add_two (and_9[1]),
		.i_carry (wires_10[15]),
		.o_add (wires_10[16]),
		.o_carry (wires_10[17])
	);

	full_adder sig_10_9 (
		.i_add_one (wires_10[16]),
		.i_add_two (and_10[0]),
		.i_carry (wires_10[17]),
		.o_add (o_mul[10]),
		.o_carry (carry[10])
	);

	//multiplication significant bit 11
	full_adder sig_11_0 (
		.i_add_one (and_0[11]),
		.i_add_two (and_1[10]),
		.i_carry (carry[10]),
		.o_add (wires_11[0]),
		.o_carry (wires_11[1])
	);

	full_adder sig_11_1 (
		.i_add_one (wires_11[0]),
		.i_add_two (and_2[9]),
		.i_carry (wires_11[1]),
		.o_add (wires_11[2]),
		.o_carry (wires_11[3])
	);

	full_adder sig_11_2 (
		.i_add_one (wires_11[2]),
		.i_add_two (and_3[8]),
		.i_carry (wires_11[3]),
		.o_add (wires_11[4]),
		.o_carry (wires_11[5])
	);

	full_adder sig_11_3 (
		.i_add_one (wires_11[4]),
		.i_add_two (and_4[7]),
		.i_carry (wires_11[5]),
		.o_add (wires_11[6]),
		.o_carry (wires_11[7])
	);

	full_adder sig_11_4 (
		.i_add_one (wires_11[6]),
		.i_add_two (and_5[6]),
		.i_carry (wires_11[7]),
		.o_add (wires_11[8]),
		.o_carry (wires_11[9])
	);

	full_adder sig_11_5 (
		.i_add_one (wires_11[8]),
		.i_add_two (and_6[5]),
		.i_carry (wires_11[9]),
		.o_add (wires_11[10]),
		.o_carry (wires_11[11])
	);

	full_adder sig_11_6 (
		.i_add_one (wires_11[10]),
		.i_add_two (and_7[4]),
		.i_carry (wires_11[11]),
		.o_add (wires_11[12]),
		.o_carry (wires_11[13])
	);

	full_adder sig_11_7 (
		.i_add_one (wires_11[12]),
		.i_add_two (and_8[3]),
		.i_carry (wires_11[13]),
		.o_add (wires_11[14]),
		.o_carry (wires_11[15])
	);

	full_adder sig_11_8 (
		.i_add_one (wires_11[14]),
		.i_add_two (and_9[2]),
		.i_carry (wires_11[15]),
		.o_add (wires_11[16]),
		.o_carry (wires_11[17])
	);

	full_adder sig_11_9 (
		.i_add_one (wires_11[16]),
		.i_add_two (and_10[1]),
		.i_carry (wires_11[17]),
		.o_add (wires_11[18]),
		.o_carry (wires_11[19])
	);

	full_adder sig_11_10 (
		.i_add_one (wires_11[18]),
		.i_add_two (and_11[0]),
		.i_carry (wires_11[19]),
		.o_add (o_mul[11]),
		.o_carry (carry[11])
	);

	//multiplication significant bit 12
	full_adder sig_12_0 (
		.i_add_one (and_0[12]),
		.i_add_two (and_1[11]),
		.i_carry (carry[11]),
		.o_add (wires_12[0]),
		.o_carry (wires_12[1])
	);

	full_adder sig_12_1 (
		.i_add_one (wires_12[0]),
		.i_add_two (and_2[10]),
		.i_carry (wires_12[1]),
		.o_add (wires_12[2]),
		.o_carry (wires_12[3])
	);

	full_adder sig_12_2 (
		.i_add_one (wires_12[2]),
		.i_add_two (and_3[9]),
		.i_carry (wires_12[3]),
		.o_add (wires_12[4]),
		.o_carry (wires_12[5])
	);

	full_adder sig_12_3 (
		.i_add_one (wires_12[4]),
		.i_add_two (and_4[8]),
		.i_carry (wires_12[5]),
		.o_add (wires_12[6]),
		.o_carry (wires_12[7])
	);

	full_adder sig_12_4 (
		.i_add_one (wires_12[6]),
		.i_add_two (and_5[7]),
		.i_carry (wires_12[7]),
		.o_add (wires_12[8]),
		.o_carry (wires_12[9])
	);

	full_adder sig_12_5 (
		.i_add_one (wires_12[8]),
		.i_add_two (and_6[6]),
		.i_carry (wires_12[9]),
		.o_add (wires_12[10]),
		.o_carry (wires_12[11])
	);

	full_adder sig_12_6 (
		.i_add_one (wires_12[10]),
		.i_add_two (and_7[5]),
		.i_carry (wires_12[11]),
		.o_add (wires_12[12]),
		.o_carry (wires_12[13])
	);

	full_adder sig_12_7 (
		.i_add_one (wires_12[12]),
		.i_add_two (and_8[4]),
		.i_carry (wires_12[13]),
		.o_add (wires_12[14]),
		.o_carry (wires_12[15])
	);

	full_adder sig_12_8 (
		.i_add_one (wires_12[14]),
		.i_add_two (and_9[3]),
		.i_carry (wires_12[15]),
		.o_add (wires_12[16]),
		.o_carry (wires_12[17])
	);

	full_adder sig_12_9 (
		.i_add_one (wires_12[16]),
		.i_add_two (and_10[2]),
		.i_carry (wires_12[17]),
		.o_add (wires_12[18]),
		.o_carry (wires_12[19])
	);

	full_adder sig_12_10 (
		.i_add_one (wires_12[18]),
		.i_add_two (and_11[1]),
		.i_carry (wires_12[19]),
		.o_add (wires_12[20]),
		.o_carry (wires_12[21])
	);

	full_adder sig_12_11 (
		.i_add_one (wires_12[20]),
		.i_add_two (and_12[0]),
		.i_carry (wires_12[21]),
		.o_add (o_mul[12]),
		.o_carry (carry[12])
	);

	//multiplication significant bit 13
	full_adder sig_13_0 (
		.i_add_one (and_0[13]),
		.i_add_two (and_1[12]),
		.i_carry (carry[12]),
		.o_add (wires_13[0]),
		.o_carry (wires_13[1])
	);

	full_adder sig_13_1 (
		.i_add_one (wires_13[0]),
		.i_add_two (and_2[11]),
		.i_carry (wires_13[1]),
		.o_add (wires_13[2]),
		.o_carry (wires_13[3])
	);

	full_adder sig_13_2 (
		.i_add_one (wires_13[2]),
		.i_add_two (and_3[10]),
		.i_carry (wires_13[3]),
		.o_add (wires_13[4]),
		.o_carry (wires_13[5])
	);

	full_adder sig_13_3 (
		.i_add_one (wires_13[4]),
		.i_add_two (and_4[9]),
		.i_carry (wires_13[5]),
		.o_add (wires_13[6]),
		.o_carry (wires_13[7])
	);

	full_adder sig_13_4 (
		.i_add_one (wires_13[6]),
		.i_add_two (and_5[8]),
		.i_carry (wires_13[7]),
		.o_add (wires_13[8]),
		.o_carry (wires_13[9])
	);

	full_adder sig_13_5 (
		.i_add_one (wires_13[8]),
		.i_add_two (and_6[7]),
		.i_carry (wires_13[9]),
		.o_add (wires_13[10]),
		.o_carry (wires_13[11])
	);

	full_adder sig_13_6 (
		.i_add_one (wires_13[10]),
		.i_add_two (and_7[6]),
		.i_carry (wires_13[11]),
		.o_add (wires_13[12]),
		.o_carry (wires_13[13])
	);

	full_adder sig_13_7 (
		.i_add_one (wires_13[12]),
		.i_add_two (and_8[5]),
		.i_carry (wires_13[13]),
		.o_add (wires_13[14]),
		.o_carry (wires_13[15])
	);

	full_adder sig_13_8 (
		.i_add_one (wires_13[14]),
		.i_add_two (and_9[4]),
		.i_carry (wires_13[15]),
		.o_add (wires_13[16]),
		.o_carry (wires_13[17])
	);

	full_adder sig_13_9 (
		.i_add_one (wires_13[16]),
		.i_add_two (and_10[3]),
		.i_carry (wires_13[17]),
		.o_add (wires_13[18]),
		.o_carry (wires_13[19])
	);

	full_adder sig_13_10 (
		.i_add_one (wires_13[18]),
		.i_add_two (and_11[2]),
		.i_carry (wires_13[19]),
		.o_add (wires_13[20]),
		.o_carry (wires_13[21])
	);

	full_adder sig_13_11 (
		.i_add_one (wires_13[20]),
		.i_add_two (and_12[1]),
		.i_carry (wires_13[21]),
		.o_add (wires_13[22]),
		.o_carry (wires_13[23])
	);

	full_adder sig_13_12 (
		.i_add_one (wires_13[22]),
		.i_add_two (and_13[0]),
		.i_carry (wires_13[23]),
		.o_add (o_mul[13]),
		.o_carry (carry[13])
	);

	//multiplication significant bit 14
	full_adder sig_14_0 (
		.i_add_one (and_0[14]),
		.i_add_two (and_1[13]),
		.i_carry (carry[13]),
		.o_add (wires_14[0]),
		.o_carry (wires_14[1])
	);

	full_adder sig_14_1 (
		.i_add_one (wires_14[0]),
		.i_add_two (and_2[12]),
		.i_carry (wires_14[1]),
		.o_add (wires_14[2]),
		.o_carry (wires_14[3])
	);

	full_adder sig_14_2 (
		.i_add_one (wires_14[2]),
		.i_add_two (and_3[11]),
		.i_carry (wires_14[3]),
		.o_add (wires_14[4]),
		.o_carry (wires_14[5])
	);

	full_adder sig_14_3 (
		.i_add_one (wires_14[4]),
		.i_add_two (and_4[10]),
		.i_carry (wires_14[5]),
		.o_add (wires_14[6]),
		.o_carry (wires_14[7])
	);

	full_adder sig_14_4 (
		.i_add_one (wires_14[6]),
		.i_add_two (and_5[9]),
		.i_carry (wires_14[7]),
		.o_add (wires_14[8]),
		.o_carry (wires_14[9])
	);

	full_adder sig_14_5 (
		.i_add_one (wires_14[8]),
		.i_add_two (and_6[8]),
		.i_carry (wires_14[9]),
		.o_add (wires_14[10]),
		.o_carry (wires_14[11])
	);

	full_adder sig_14_6 (
		.i_add_one (wires_14[10]),
		.i_add_two (and_7[7]),
		.i_carry (wires_14[11]),
		.o_add (wires_14[12]),
		.o_carry (wires_14[13])
	);

	full_adder sig_14_7 (
		.i_add_one (wires_14[12]),
		.i_add_two (and_8[6]),
		.i_carry (wires_14[13]),
		.o_add (wires_14[14]),
		.o_carry (wires_14[15])
	);

	full_adder sig_14_8 (
		.i_add_one (wires_14[14]),
		.i_add_two (and_9[5]),
		.i_carry (wires_14[15]),
		.o_add (wires_14[16]),
		.o_carry (wires_14[17])
	);

	full_adder sig_14_9 (
		.i_add_one (wires_14[16]),
		.i_add_two (and_10[4]),
		.i_carry (wires_14[17]),
		.o_add (wires_14[18]),
		.o_carry (wires_14[19])
	);

	full_adder sig_14_10 (
		.i_add_one (wires_14[18]),
		.i_add_two (and_11[3]),
		.i_carry (wires_14[19]),
		.o_add (wires_14[20]),
		.o_carry (wires_14[21])
	);

	full_adder sig_14_11 (
		.i_add_one (wires_14[20]),
		.i_add_two (and_12[2]),
		.i_carry (wires_14[21]),
		.o_add (wires_14[22]),
		.o_carry (wires_14[23])
	);

	full_adder sig_14_12 (
		.i_add_one (wires_14[22]),
		.i_add_two (and_13[1]),
		.i_carry (wires_14[23]),
		.o_add (wires_14[24]),
		.o_carry (wires_14[25])
	);

	full_adder sig_14_13 (
		.i_add_one (wires_14[24]),
		.i_add_two (and_14[0]),
		.i_carry (wires_14[25]),
		.o_add (o_mul[14]),
		.o_carry (carry[14])
	);
	
//multiplication significant bit 15
	full_adder sig_15_0 (
		.i_add_one (and_0[15]),
		.i_add_two (and_1[14]),
		.i_carry (carry[14]),
		.o_add (wires_15[0]),
		.o_carry (wires_15[1])
	);

	full_adder sig_15_1 (
		.i_add_one (wires_15[0]),
		.i_add_two (and_2[13]),
		.i_carry (wires_15[1]),
		.o_add (wires_15[2]),
		.o_carry (wires_15[3])
	);

	full_adder sig_15_2 (
		.i_add_one (wires_15[2]),
		.i_add_two (and_3[12]),
		.i_carry (wires_15[3]),
		.o_add (wires_15[4]),
		.o_carry (wires_15[5])
	);

	full_adder sig_15_3 (
		.i_add_one (wires_15[4]),
		.i_add_two (and_4[11]),
		.i_carry (wires_15[5]),
		.o_add (wires_15[6]),
		.o_carry (wires_15[7])
	);

	full_adder sig_15_4 (
		.i_add_one (wires_15[6]),
		.i_add_two (and_5[10]),
		.i_carry (wires_15[7]),
		.o_add (wires_15[8]),
		.o_carry (wires_15[9])
	);

	full_adder sig_15_5 (
		.i_add_one (wires_15[8]),
		.i_add_two (and_6[9]),
		.i_carry (wires_15[9]),
		.o_add (wires_15[10]),
		.o_carry (wires_15[11])
	);

	full_adder sig_15_6 (
		.i_add_one (wires_15[10]),
		.i_add_two (and_7[8]),
		.i_carry (wires_15[11]),
		.o_add (wires_15[12]),
		.o_carry (wires_15[13])
	);

	full_adder sig_15_7 (
		.i_add_one (wires_15[12]),
		.i_add_two (and_8[7]),
		.i_carry (wires_15[13]),
		.o_add (wires_15[14]),
		.o_carry (wires_15[15])
	);

	full_adder sig_15_8 (
		.i_add_one (wires_15[14]),
		.i_add_two (and_9[6]),
		.i_carry (wires_15[15]),
		.o_add (wires_15[16]),
		.o_carry (wires_15[17])
	);

	full_adder sig_15_9 (
		.i_add_one (wires_15[16]),
		.i_add_two (and_10[5]),
		.i_carry (wires_15[17]),
		.o_add (wires_15[18]),
		.o_carry (wires_15[19])
	);

	full_adder sig_15_10 (
		.i_add_one (wires_15[18]),
		.i_add_two (and_11[4]),
		.i_carry (wires_15[19]),
		.o_add (wires_15[20]),
		.o_carry (wires_15[21])
	);

	full_adder sig_15_11 (
		.i_add_one (wires_15[20]),
		.i_add_two (and_12[3]),
		.i_carry (wires_15[21]),
		.o_add (wires_15[22]),
		.o_carry (wires_15[23])
	);

	full_adder sig_15_12 (
		.i_add_one (wires_15[22]),
		.i_add_two (and_13[2]),
		.i_carry (wires_15[23]),
		.o_add (wires_15[24]),
		.o_carry (wires_15[25])
	);

	full_adder sig_15_13 (
		.i_add_one (wires_15[24]),
		.i_add_two (and_14[1]),
		.i_carry (wires_15[25]),
		.o_add (wires_15[26]),
		.o_carry (wires_15[27])
	);

	full_adder sig_15_14 (
		.i_add_one (wires_15[26]),
		.i_add_two (and_15[0]),
		.i_carry (wires_15[27]),
		.o_add (o_mul[15]),
		.o_carry (carry[15])
	);

	//multiplication significant bit 16
	full_adder sig_16_0 (
		.i_add_one (and_0[16]),
		.i_add_two (and_1[15]),
		.i_carry (carry[15]),
		.o_add (wires_16[0]),
		.o_carry (wires_16[1])
	);

	full_adder sig_16_1 (
		.i_add_one (wires_16[0]),
		.i_add_two (and_2[14]),
		.i_carry (wires_16[1]),
		.o_add (wires_16[2]),
		.o_carry (wires_16[3])
	);

	full_adder sig_16_2 (
		.i_add_one (wires_16[2]),
		.i_add_two (and_3[13]),
		.i_carry (wires_16[3]),
		.o_add (wires_16[4]),
		.o_carry (wires_16[5])
	);

	full_adder sig_16_3 (
		.i_add_one (wires_16[4]),
		.i_add_two (and_4[12]),
		.i_carry (wires_16[5]),
		.o_add (wires_16[6]),
		.o_carry (wires_16[7])
	);

	full_adder sig_16_4 (
		.i_add_one (wires_16[6]),
		.i_add_two (and_5[11]),
		.i_carry (wires_16[7]),
		.o_add (wires_16[8]),
		.o_carry (wires_16[9])
	);

	full_adder sig_16_5 (
		.i_add_one (wires_16[8]),
		.i_add_two (and_6[10]),
		.i_carry (wires_16[9]),
		.o_add (wires_16[10]),
		.o_carry (wires_16[11])
	);

	full_adder sig_16_6 (
		.i_add_one (wires_16[10]),
		.i_add_two (and_7[9]),
		.i_carry (wires_16[11]),
		.o_add (wires_16[12]),
		.o_carry (wires_16[13])
	);	

	full_adder sig_16_7 (
		.i_add_one (wires_16[12]),
		.i_add_two (and_8[8]),
		.i_carry (wires_16[13]),
		.o_add (wires_16[14]),
		.o_carry (wires_16[15])
	);

	full_adder sig_16_8 (
		.i_add_one (wires_16[14]),
		.i_add_two (and_9[7]),
		.i_carry (wires_16[15]),
		.o_add (wires_16[16]),
		.o_carry (wires_16[17])
	);

	full_adder sig_16_9 (
		.i_add_one (wires_16[16]),
		.i_add_two (and_10[6]),
		.i_carry (wires_16[17]),
		.o_add (wires_16[18]),
		.o_carry (wires_16[19])
	);

	full_adder sig_16_10 (
		.i_add_one (wires_16[18]),
		.i_add_two (and_11[5]),
		.i_carry (wires_16[19]),
		.o_add (wires_16[20]),
		.o_carry (wires_16[21])
	);

	full_adder sig_16_11 (
		.i_add_one (wires_16[20]),
		.i_add_two (and_12[4]),
		.i_carry (wires_16[21]),
		.o_add (wires_16[22]),
		.o_carry (wires_16[23])
	);

	full_adder sig_16_12 (
		.i_add_one (wires_16[22]),
		.i_add_two (and_13[3]),
		.i_carry (wires_16[23]),
		.o_add (wires_16[24]),
		.o_carry (wires_16[25])
	);

	full_adder sig_16_13 (
		.i_add_one (wires_16[24]),
		.i_add_two (and_14[2]),
		.i_carry (wires_16[25]),
		.o_add (wires_16[26]),
		.o_carry (wires_16[27])
	);

	full_adder sig_16_14 (
		.i_add_one (wires_16[26]),
		.i_add_two (and_15[1]),
		.i_carry (wires_16[27]),
		.o_add (wires_16[28]),
		.o_carry (wires_16[29])
	);

	full_adder sig_16_15 (
		.i_add_one (wires_16[28]),
		.i_add_two (and_16[0]),
		.i_carry (wires_16[29]),
		.o_add (o_mul[16]),
		.o_carry (carry[16])
	);

	//multiplication significant bit 17
	full_adder sig_17_0 (
		.i_add_one (and_0[17]),
		.i_add_two (and_1[16]),
		.i_carry (carry[16]),
		.o_add (wires_17[0]),
		.o_carry (wires_17[1])
	);

	full_adder sig_17_1 (
		.i_add_one (wires_17[0]),
		.i_add_two (and_2[15]),
		.i_carry (wires_17[1]),
		.o_add (wires_17[2]),
		.o_carry (wires_17[3])
	);

	full_adder sig_17_2 (
		.i_add_one (wires_17[2]),
		.i_add_two (and_3[14]),
		.i_carry (wires_17[3]),
		.o_add (wires_17[4]),
		.o_carry (wires_17[5])
	);

	full_adder sig_17_3 (
		.i_add_one (wires_17[4]),
		.i_add_two (and_4[13]),
		.i_carry (wires_17[5]),
		.o_add (wires_17[6]),
		.o_carry (wires_17[7])
	);

	full_adder sig_17_4 (
		.i_add_one (wires_17[6]),
		.i_add_two (and_5[12]),
		.i_carry (wires_17[7]),
		.o_add (wires_17[8]),
		.o_carry (wires_17[9])
	);

	full_adder sig_17_5 (
		.i_add_one (wires_17[8]),
		.i_add_two (and_6[11]),
		.i_carry (wires_17[9]),
		.o_add (wires_17[10]),
		.o_carry (wires_17[11])
	);

	full_adder sig_17_6 (
		.i_add_one (wires_17[10]),
		.i_add_two (and_7[10]),
		.i_carry (wires_17[11]),
		.o_add (wires_17[12]),
		.o_carry (wires_17[13])
	);	

	full_adder sig_17_7 (
		.i_add_one (wires_17[12]),
		.i_add_two (and_8[9]),
		.i_carry (wires_17[13]),
		.o_add (wires_17[14]),
		.o_carry (wires_17[15])
	);

	full_adder sig_17_8 (
		.i_add_one (wires_17[14]),
		.i_add_two (and_9[8]),
		.i_carry (wires_17[15]),
		.o_add (wires_17[16]),
		.o_carry (wires_17[17])
	);

	full_adder sig_17_9 (
		.i_add_one (wires_17[16]),
		.i_add_two (and_10[7]),
		.i_carry (wires_17[17]),
		.o_add (wires_17[18]),
		.o_carry (wires_17[19])
	);

	full_adder sig_17_10 (
		.i_add_one (wires_17[18]),
		.i_add_two (and_11[6]),
		.i_carry (wires_17[19]),
		.o_add (wires_17[20]),
		.o_carry (wires_17[21])
	);

	full_adder sig_17_11 (
		.i_add_one (wires_17[20]),
		.i_add_two (and_12[5]),
		.i_carry (wires_17[21]),
		.o_add (wires_17[22]),
		.o_carry (wires_17[23])
	);

	full_adder sig_17_12 (
		.i_add_one (wires_17[22]),
		.i_add_two (and_13[4]),
		.i_carry (wires_17[23]),
		.o_add (wires_17[24]),
		.o_carry (wires_17[25])
	);

	full_adder sig_17_13 (
		.i_add_one (wires_17[24]),
		.i_add_two (and_14[3]),
		.i_carry (wires_17[25]),
		.o_add (wires_17[26]),
		.o_carry (wires_17[27])
	);

	full_adder sig_17_14 (
		.i_add_one (wires_17[26]),
		.i_add_two (and_15[2]),
		.i_carry (wires_17[27]),
		.o_add (wires_17[28]),
		.o_carry (wires_17[29])
	);

	full_adder sig_17_15 (
		.i_add_one (wires_17[28]),
		.i_add_two (and_16[1]),
		.i_carry (wires_17[29]),
		.o_add (wires_17[30]),
		.o_carry (wires_17[31])
	);

	full_adder sig_17_16 (
		.i_add_one (wires_17[30]),
		.i_add_two (and_17[0]),
		.i_carry (wires_17[31]),
		.o_add (o_mul[17]),
		.o_carry (carry[17])
	);

	//multiplication significant bit 18
	full_adder sig_18_0 (
		.i_add_one (and_0[18]),
		.i_add_two (and_1[17]),
		.i_carry (carry[17]),
		.o_add (wires_18[0]),
		.o_carry (wires_18[1])
	);

	full_adder sig_18_1 (
		.i_add_one (wires_18[0]),
		.i_add_two (and_2[16]),
		.i_carry (wires_18[1]),
		.o_add (wires_18[2]),
		.o_carry (wires_18[3])
	);

	full_adder sig_18_2 (
		.i_add_one (wires_18[2]),
		.i_add_two (and_3[15]),
		.i_carry (wires_18[3]),
		.o_add (wires_18[4]),
		.o_carry (wires_18[5])
	);

	full_adder sig_18_3 (
		.i_add_one (wires_18[4]),
		.i_add_two (and_4[14]),
		.i_carry (wires_18[5]),
		.o_add (wires_18[6]),
		.o_carry (wires_18[7])
	);

	full_adder sig_18_4 (
		.i_add_one (wires_18[6]),
		.i_add_two (and_5[13]),
		.i_carry (wires_18[7]),
		.o_add (wires_18[8]),
		.o_carry (wires_18[9])
	);

	full_adder sig_18_5 (
		.i_add_one (wires_18[8]),
		.i_add_two (and_6[12]),
		.i_carry (wires_18[9]),
		.o_add (wires_18[10]),
		.o_carry (wires_18[11])
	);

	full_adder sig_18_6 (
		.i_add_one (wires_18[10]),
		.i_add_two (and_7[11]),
		.i_carry (wires_18[11]),
		.o_add (wires_18[12]),
		.o_carry (wires_18[13])
	);	

	full_adder sig_18_7 (
		.i_add_one (wires_18[12]),
		.i_add_two (and_8[10]),
		.i_carry (wires_18[13]),
		.o_add (wires_18[14]),
		.o_carry (wires_18[15])
	);

	full_adder sig_18_8 (
		.i_add_one (wires_18[14]),
		.i_add_two (and_9[9]),
		.i_carry (wires_18[15]),
		.o_add (wires_18[16]),
		.o_carry (wires_18[17])
	);

	full_adder sig_18_9 (
		.i_add_one (wires_18[16]),
		.i_add_two (and_10[8]),
		.i_carry (wires_18[17]),
		.o_add (wires_18[18]),
		.o_carry (wires_18[19])
	);

	full_adder sig_18_10 (
		.i_add_one (wires_18[18]),
		.i_add_two (and_11[7]),
		.i_carry (wires_18[19]),
		.o_add (wires_18[20]),
		.o_carry (wires_18[21])
	);

	full_adder sig_18_11 (
		.i_add_one (wires_18[20]),
		.i_add_two (and_12[6]),
		.i_carry (wires_18[21]),
		.o_add (wires_18[22]),
		.o_carry (wires_18[23])
	);

	full_adder sig_18_12 (
		.i_add_one (wires_18[22]),
		.i_add_two (and_13[5]),
		.i_carry (wires_18[23]),
		.o_add (wires_18[24]),
		.o_carry (wires_18[25])
	);

	full_adder sig_18_13 (
		.i_add_one (wires_18[24]),
		.i_add_two (and_14[4]),
		.i_carry (wires_18[25]),
		.o_add (wires_18[26]),
		.o_carry (wires_18[27])
	);

	full_adder sig_18_14 (
		.i_add_one (wires_18[26]),
		.i_add_two (and_15[3]),
		.i_carry (wires_18[27]),
		.o_add (wires_18[28]),
		.o_carry (wires_18[29])
	);

	full_adder sig_18_15 (
		.i_add_one (wires_18[28]),
		.i_add_two (and_16[2]),
		.i_carry (wires_18[29]),
		.o_add (wires_18[30]),
		.o_carry (wires_18[31])
	);

	full_adder sig_18_16 (
		.i_add_one (wires_18[30]),
		.i_add_two (and_17[1]),
		.i_carry (wires_18[31]),
		.o_add (wires_18[32]),
		.o_carry (wires_18[33])
	);

	full_adder sig_18_17 (
		.i_add_one (wires_18[32]),
		.i_add_two (and_18[0]),
		.i_carry (wires_18[33]),
		.o_add (o_mul[18]),
		.o_carry (carry[18])
	);

	//multiplication significant bit 19
	full_adder sig_19_0 (
		.i_add_one (and_0[19]),
		.i_add_two (and_1[18]),
		.i_carry (carry[18]),
		.o_add (wires_19[0]),
		.o_carry (wires_19[1])
	);

	full_adder sig_19_1 (
		.i_add_one (wires_19[0]),
		.i_add_two (and_2[17]),
		.i_carry (wires_19[1]),
		.o_add (wires_19[2]),
		.o_carry (wires_19[3])
	);

	full_adder sig_19_2 (
		.i_add_one (wires_19[2]),
		.i_add_two (and_3[16]),
		.i_carry (wires_19[3]),
		.o_add (wires_19[4]),
		.o_carry (wires_19[5])
	);

	full_adder sig_19_3 (
		.i_add_one (wires_19[4]),
		.i_add_two (and_4[15]),
		.i_carry (wires_19[5]),
		.o_add (wires_19[6]),
		.o_carry (wires_19[7])
	);

	full_adder sig_19_4 (
		.i_add_one (wires_19[6]),
		.i_add_two (and_5[14]),
		.i_carry (wires_19[7]),
		.o_add (wires_19[8]),
		.o_carry (wires_19[9])
	);

	full_adder sig_19_5 (
		.i_add_one (wires_19[8]),
		.i_add_two (and_6[13]),
		.i_carry (wires_19[9]),
		.o_add (wires_19[10]),
		.o_carry (wires_19[11])
	);

	full_adder sig_19_6 (
		.i_add_one (wires_19[10]),
		.i_add_two (and_7[12]),
		.i_carry (wires_19[11]),
		.o_add (wires_19[12]),
		.o_carry (wires_19[13])
	);	

	full_adder sig_19_7 (
		.i_add_one (wires_19[12]),
		.i_add_two (and_8[11]),
		.i_carry (wires_19[13]),
		.o_add (wires_19[14]),
		.o_carry (wires_19[15])
	);

	full_adder sig_19_8 (
		.i_add_one (wires_19[14]),
		.i_add_two (and_9[10]),
		.i_carry (wires_19[15]),
		.o_add (wires_19[16]),
		.o_carry (wires_19[17])
	);

	full_adder sig_19_9 (
		.i_add_one (wires_19[16]),
		.i_add_two (and_10[9]),
		.i_carry (wires_19[17]),
		.o_add (wires_19[18]),
		.o_carry (wires_19[19])
	);

	full_adder sig_19_10 (
		.i_add_one (wires_19[18]),
		.i_add_two (and_11[8]),
		.i_carry (wires_19[19]),
		.o_add (wires_19[20]),
		.o_carry (wires_19[21])
	);

	full_adder sig_19_11 (
		.i_add_one (wires_19[20]),
		.i_add_two (and_12[7]),
		.i_carry (wires_19[21]),
		.o_add (wires_19[22]),
		.o_carry (wires_19[23])
	);

	full_adder sig_19_12 (
		.i_add_one (wires_19[22]),
		.i_add_two (and_13[6]),
		.i_carry (wires_19[23]),
		.o_add (wires_19[24]),
		.o_carry (wires_19[25])
	);

	full_adder sig_19_13 (
		.i_add_one (wires_19[24]),
		.i_add_two (and_14[5]),
		.i_carry (wires_19[25]),
		.o_add (wires_19[26]),
		.o_carry (wires_19[27])
	);

	full_adder sig_19_14 (
		.i_add_one (wires_19[26]),
		.i_add_two (and_15[4]),
		.i_carry (wires_19[27]),
		.o_add (wires_19[28]),
		.o_carry (wires_19[29])
	);

	full_adder sig_19_15 (
		.i_add_one (wires_19[28]),
		.i_add_two (and_16[3]),
		.i_carry (wires_19[29]),
		.o_add (wires_19[30]),
		.o_carry (wires_19[31])
	);

	full_adder sig_19_16 (
		.i_add_one (wires_19[30]),
		.i_add_two (and_17[2]),
		.i_carry (wires_19[31]),
		.o_add (wires_19[32]),
		.o_carry (wires_19[33])
	);

	full_adder sig_19_17 (
		.i_add_one (wires_19[32]),
		.i_add_two (and_18[1]),
		.i_carry (wires_19[33]),
		.o_add (wires_19[34]),
		.o_carry (wires_19[35])
	);

	full_adder sig_19_18 (
		.i_add_one (wires_19[34]),
		.i_add_two (and_19[0]),
		.i_carry (wires_19[35]),
		.o_add (o_mul[19]),
		.o_carry (carry[19])
	);

	//multiplication significant bit 20
	full_adder sig_20_0 (
		.i_add_one (and_0[20]),
		.i_add_two (and_1[19]),
		.i_carry (carry[19]),
		.o_add (wires_20[0]),
		.o_carry (wires_20[1])
	);

	full_adder sig_20_1 (
		.i_add_one (wires_20[0]),
		.i_add_two (and_2[18]),
		.i_carry (wires_20[1]),
		.o_add (wires_20[2]),
		.o_carry (wires_20[3])
	);

	full_adder sig_20_2 (
		.i_add_one (wires_20[2]),
		.i_add_two (and_3[17]),
		.i_carry (wires_20[3]),
		.o_add (wires_20[4]),
		.o_carry (wires_20[5])
	);

	full_adder sig_20_3 (
		.i_add_one (wires_20[4]),
		.i_add_two (and_4[16]),
		.i_carry (wires_20[5]),
		.o_add (wires_20[6]),
		.o_carry (wires_20[7])
	);

	full_adder sig_20_4 (
		.i_add_one (wires_20[6]),
		.i_add_two (and_5[15]),
		.i_carry (wires_20[7]),
		.o_add (wires_20[8]),
		.o_carry (wires_20[9])
	);

	full_adder sig_20_5 (
		.i_add_one (wires_20[8]),
		.i_add_two (and_6[14]),
		.i_carry (wires_20[9]),
		.o_add (wires_20[10]),
		.o_carry (wires_20[11])
	);

	full_adder sig_20_6 (
		.i_add_one (wires_20[10]),
		.i_add_two (and_7[13]),
		.i_carry (wires_20[11]),
		.o_add (wires_20[12]),
		.o_carry (wires_20[13])
	);	

	full_adder sig_20_7 (
		.i_add_one (wires_20[12]),
		.i_add_two (and_8[12]),
		.i_carry (wires_20[13]),
		.o_add (wires_20[14]),
		.o_carry (wires_20[15])
	);

	full_adder sig_20_8 (
		.i_add_one (wires_20[14]),
		.i_add_two (and_9[11]),
		.i_carry (wires_20[15]),
		.o_add (wires_20[16]),
		.o_carry (wires_20[17])
	);

	full_adder sig_20_9 (
		.i_add_one (wires_20[16]),
		.i_add_two (and_10[10]),
		.i_carry (wires_20[17]),
		.o_add (wires_20[18]),
		.o_carry (wires_20[19])
	);

	full_adder sig_20_10 (
		.i_add_one (wires_20[18]),
		.i_add_two (and_11[9]),
		.i_carry (wires_20[19]),
		.o_add (wires_20[20]),
		.o_carry (wires_20[21])
	);

	full_adder sig_20_12 (
		.i_add_one (wires_20[20]),
		.i_add_two (and_13[7]),
		.i_carry (wires_20[21]),
		.o_add (wires_20[22]),
		.o_carry (wires_20[23])
	);

	full_adder sig_20_13 (
		.i_add_one (wires_20[23]),
		.i_add_two (and_14[6]),
		.i_carry (wires_20[24]),
		.o_add (wires_20[25]),
		.o_carry (wires_20[26])
	);

	full_adder sig_20_14 (
		.i_add_one (wires_20[26]),
		.i_add_two (and_15[5]),
		.i_carry (wires_20[27]),
		.o_add (wires_20[28]),
		.o_carry (wires_20[29])
	);

	full_adder sig_20_15 (
		.i_add_one (wires_20[28]),
		.i_add_two (and_16[4]),
		.i_carry (wires_20[29]),
		.o_add (wires_20[30]),
		.o_carry (wires_20[31])
	);

	full_adder sig_20_16 (
		.i_add_one (wires_20[30]),
		.i_add_two (and_17[3]),
		.i_carry (wires_20[31]),
		.o_add (wires_20[32]),
		.o_carry (wires_20[33])
	);

	full_adder sig_20_17 (
		.i_add_one (wires_20[32]),
		.i_add_two (and_18[2]),
		.i_carry (wires_20[33]),
		.o_add (wires_20[34]),
		.o_carry (wires_20[35])
	);

	full_adder sig_20_18 (
		.i_add_one (wires_20[34]),
		.i_add_two (and_19[1]),
		.i_carry (wires_20[35]),
		.o_add (wires_20[36]),
		.o_carry (wires_20[37])
	);

	full_adder sig_20_19 (
		.i_add_one (wires_20[36]),
		.i_add_two (and_20[0]),
		.i_carry (wires_20[37]),
		.o_add (o_mul[20]),
		.o_carry (carry[20])
	);

	//multiplication significant bit 21
	full_adder sig_21_0 (
		.i_add_one (and_0[21]),
		.i_add_two (and_1[20]),
		.i_carry (carry[20]),
		.o_add (wires_21[0]),
		.o_carry (wires_21[1])
	);

	full_adder sig_21_1 (
		.i_add_one (wires_21[0]),
		.i_add_two (and_2[19]),
		.i_carry (wires_21[1]),
		.o_add (wires_21[2]),
		.o_carry (wires_21[3])
	);

	full_adder sig_21_2 (
		.i_add_one (wires_21[2]),
		.i_add_two (and_3[18]),
		.i_carry (wires_21[3]),
		.o_add (wires_21[4]),
		.o_carry (wires_21[5])
	);

	full_adder sig_21_3 (
		.i_add_one (wires_21[4]),
		.i_add_two (and_4[17]),
		.i_carry (wires_21[5]),
		.o_add (wires_21[6]),
		.o_carry (wires_21[7])
	);

	full_adder sig_21_4 (
		.i_add_one (wires_21[6]),
		.i_add_two (and_5[16]),
		.i_carry (wires_21[7]),
		.o_add (wires_21[8]),
		.o_carry (wires_21[9])
	);

	full_adder sig_21_5 (
		.i_add_one (wires_21[8]),
		.i_add_two (and_6[15]),
		.i_carry (wires_21[9]),
		.o_add (wires_21[10]),
		.o_carry (wires_21[11])
	);

	full_adder sig_21_6 (
		.i_add_one (wires_21[10]),
		.i_add_two (and_7[14]),
		.i_carry (wires_21[11]),
		.o_add (wires_21[12]),
		.o_carry (wires_21[13])
	);	

	full_adder sig_21_7 (
		.i_add_one (wires_21[12]),
		.i_add_two (and_8[13]),
		.i_carry (wires_21[13]),
		.o_add (wires_21[14]),
		.o_carry (wires_21[15])
	);

	full_adder sig_21_8 (
		.i_add_one (wires_21[14]),
		.i_add_two (and_9[12]),
		.i_carry (wires_21[15]),
		.o_add (wires_21[16]),
		.o_carry (wires_21[17])
	);

	full_adder sig_21_9 (
		.i_add_one (wires_21[16]),
		.i_add_two (and_10[11]),
		.i_carry (wires_21[17]),
		.o_add (wires_21[18]),
		.o_carry (wires_21[19])
	);

	full_adder sig_21_10 (
		.i_add_one (wires_21[18]),
		.i_add_two (and_11[10]),
		.i_carry (wires_21[19]),
		.o_add (wires_21[20]),
		.o_carry (wires_21[21])
	);

	full_adder sig_21_11 (
		.i_add_one (wires_21[20]),
		.i_add_two (and_12[9]),
		.i_carry (wires_21[21]),
		.o_add (wires_21[22]),
		.o_carry (wires_21[23])
	);

	full_adder sig_21_12 (
		.i_add_one (wires_21[22]),
		.i_add_two (and_13[8]),
		.i_carry (wires_21[23]),
		.o_add (wires_21[24]),
		.o_carry (wires_21[25])
	);

	full_adder sig_21_13 (
		.i_add_one (wires_21[24]),
		.i_add_two (and_14[7]),
		.i_carry (wires_21[25]),
		.o_add (wires_21[26]),
		.o_carry (wires_21[27])
	);

	full_adder sig_21_14 (
		.i_add_one (wires_21[26]),
		.i_add_two (and_15[6]),
		.i_carry (wires_21[27]),
		.o_add (wires_21[28]),
		.o_carry (wires_21[29])
	);

	full_adder sig_21_15 (
		.i_add_one (wires_21[28]),
		.i_add_two (and_16[5]),
		.i_carry (wires_21[29]),
		.o_add (wires_21[30]),
		.o_carry (wires_21[31])
	);

	full_adder sig_21_16 (
		.i_add_one (wires_21[30]),
		.i_add_two (and_17[4]),
		.i_carry (wires_21[31]),
		.o_add (wires_21[32]),
		.o_carry (wires_21[33])
	);

	full_adder sig_21_17 (
		.i_add_one (wires_21[32]),
		.i_add_two (and_18[3]),
		.i_carry (wires_21[33]),
		.o_add (wires_21[34]),
		.o_carry (wires_21[35])
	);

	full_adder sig_21_18 (
		.i_add_one (wires_21[34]),
		.i_add_two (and_19[2]),
		.i_carry (wires_21[35]),
		.o_add (wires_21[36]),
		.o_carry (wires_21[37])
	);

	full_adder sig_21_19 (
		.i_add_one (wires_21[36]),
		.i_add_two (and_20[1]),
		.i_carry (wires_21[37]),
		.o_add (wires_21[38]),
		.o_carry (wires_21[39])
	);

	full_adder sig_21_20 (
		.i_add_one (wires_21[38]),
		.i_add_two (and_21[0]),
		.i_carry (wires_21[39]),
		.o_add (o_mul[21]),
		.o_carry (carry[21])
	);
	
	//multiplication significant bit 22
	full_adder sig_22_0 (
		.i_add_one (and_0[22]),
		.i_add_two (and_1[21]),
		.i_carry (carry[21]),
		.o_add (wires_22[0]),
		.o_carry (wires_22[1])
	);

	full_adder sig_22_1 (
		.i_add_one (wires_22[0]),
		.i_add_two (and_2[20]),
		.i_carry (wires_22[1]),
		.o_add (wires_22[2]),
		.o_carry (wires_22[3])
	);

	full_adder sig_22_2 (
		.i_add_one (wires_22[2]),
		.i_add_two (and_3[19]),
		.i_carry (wires_22[3]),
		.o_add (wires_22[4]),
		.o_carry (wires_22[5])
	);

	full_adder sig_22_3 (
		.i_add_one (wires_22[4]),
		.i_add_two (and_4[18]),
		.i_carry (wires_22[5]),
		.o_add (wires_22[6]),
		.o_carry (wires_22[7])
	);

	full_adder sig_22_4 (
		.i_add_one (wires_22[6]),
		.i_add_two (and_5[17]),
		.i_carry (wires_22[7]),
		.o_add (wires_22[8]),
		.o_carry (wires_22[9])
	);

	full_adder sig_22_5 (
		.i_add_one (wires_22[8]),
		.i_add_two (and_6[16]),
		.i_carry (wires_22[9]),
		.o_add (wires_22[10]),
		.o_carry (wires_22[11])
	);

	full_adder sig_22_6 (
		.i_add_one (wires_22[10]),
		.i_add_two (and_7[15]),
		.i_carry (wires_22[11]),
		.o_add (wires_22[12]),
		.o_carry (wires_22[13])
	);	

	full_adder sig_22_7 (
		.i_add_one (wires_22[12]),
		.i_add_two (and_8[14]),
		.i_carry (wires_22[13]),
		.o_add (wires_22[14]),
		.o_carry (wires_22[15])
	);

	full_adder sig_22_8 (
		.i_add_one (wires_22[14]),
		.i_add_two (and_9[13]),
		.i_carry (wires_22[15]),
		.o_add (wires_22[16]),
		.o_carry (wires_22[17])
	);

	full_adder sig_22_9 (
		.i_add_one (wires_22[16]),
		.i_add_two (and_10[12]),
		.i_carry (wires_22[17]),
		.o_add (wires_22[18]),
		.o_carry (wires_22[19])
	);

	full_adder sig_22_10 (
		.i_add_one (wires_22[18]),
		.i_add_two (and_11[11]),
		.i_carry (wires_22[19]),
		.o_add (wires_22[20]),
		.o_carry (wires_22[21])
	);

	full_adder sig_22_11 (
		.i_add_one (wires_22[20]),
		.i_add_two (and_12[10]),
		.i_carry (wires_22[21]),
		.o_add (wires_22[22]),
		.o_carry (wires_22[23])
	);

	full_adder sig_22_12 (
		.i_add_one (wires_22[22]),
		.i_add_two (and_13[9]),
		.i_carry (wires_22[23]),
		.o_add (wires_22[24]),
		.o_carry (wires_22[25])
	);

	full_adder sig_22_13 (
		.i_add_one (wires_22[24]),
		.i_add_two (and_14[8]),
		.i_carry (wires_22[25]),
		.o_add (wires_22[26]),
		.o_carry (wires_22[27])
	);

	full_adder sig_22_14 (
		.i_add_one (wires_22[26]),
		.i_add_two (and_15[7]),
		.i_carry (wires_22[27]),
		.o_add (wires_22[28]),
		.o_carry (wires_22[29])
	);

	full_adder sig_22_15 (
		.i_add_one (wires_22[28]),
		.i_add_two (and_16[6]),
		.i_carry (wires_22[29]),
		.o_add (wires_22[30]),
		.o_carry (wires_22[31])
	);

	full_adder sig_22_16 (
		.i_add_one (wires_22[30]),
		.i_add_two (and_17[5]),
		.i_carry (wires_22[31]),
		.o_add (wires_22[32]),
		.o_carry (wires_22[33])
	);

	full_adder sig_22_17 (
		.i_add_one (wires_22[32]),
		.i_add_two (and_18[4]),
		.i_carry (wires_22[33]),
		.o_add (wires_22[34]),
		.o_carry (wires_22[35])
	);

	full_adder sig_22_18 (
		.i_add_one (wires_22[34]),
		.i_add_two (and_19[3]),
		.i_carry (wires_22[35]),
		.o_add (wires_22[36]),
		.o_carry (wires_22[37])
	);

	full_adder sig_22_19 (
		.i_add_one (wires_22[36]),
		.i_add_two (and_20[2]),
		.i_carry (wires_22[37]),
		.o_add (wires_22[38]),
		.o_carry (wires_22[39])
	);

	full_adder sig_22_20 (
		.i_add_one (wires_22[38]),
		.i_add_two (and_21[1]),
		.i_carry (wires_22[39]),
		.o_add (wires_22[40]),
		.o_carry (wires_22[41])
	);

	full_adder sig_22_21 (
		.i_add_one (wires_22[40]),
		.i_add_two (and_22[0]),
		.i_carry (wires_22[41]),
		.o_add (o_mul[22]),
		.o_carry (carry[22])
	);

	//multiplication significant bit 23
	full_adder sig_23_0 (
		.i_add_one (and_0[23]),
		.i_add_two (and_1[22]),
		.i_carry (carry[22]),
		.o_add (wires_23[0]),
		.o_carry (wires_23[1])
	);

	full_adder sig_23_1 (
		.i_add_one (wires_23[0]),
		.i_add_two (and_2[21]),
		.i_carry (wires_23[1]),
		.o_add (wires_23[2]),
		.o_carry (wires_23[3])
	);

	full_adder sig_23_2 (
		.i_add_one (wires_23[2]),
		.i_add_two (and_3[20]),
		.i_carry (wires_23[3]),
		.o_add (wires_23[4]),
		.o_carry (wires_23[5])
	);

	full_adder sig_23_3 (
		.i_add_one (wires_23[4]),
		.i_add_two (and_4[19]),
		.i_carry (wires_23[5]),
		.o_add (wires_23[6]),
		.o_carry (wires_23[7])
	);

	full_adder sig_23_4 (
		.i_add_one (wires_23[6]),
		.i_add_two (and_5[18]),
		.i_carry (wires_23[7]),
		.o_add (wires_23[8]),
		.o_carry (wires_23[9])
	);

	full_adder sig_23_5 (
		.i_add_one (wires_23[8]),
		.i_add_two (and_6[17]),
		.i_carry (wires_23[9]),
		.o_add (wires_23[10]),
		.o_carry (wires_23[11])
	);

	full_adder sig_23_6 (
		.i_add_one (wires_23[10]),
		.i_add_two (and_7[16]),
		.i_carry (wires_23[11]),
		.o_add (wires_23[12]),
		.o_carry (wires_23[13])
	);	

	full_adder sig_23_7 (
		.i_add_one (wires_23[12]),
		.i_add_two (and_8[15]),
		.i_carry (wires_23[13]),
		.o_add (wires_23[14]),
		.o_carry (wires_23[15])
	);

	full_adder sig_23_8 (
		.i_add_one (wires_23[14]),
		.i_add_two (and_9[14]),
		.i_carry (wires_23[15]),
		.o_add (wires_23[16]),
		.o_carry (wires_23[17])
	);

	full_adder sig_23_9 (
		.i_add_one (wires_23[16]),
		.i_add_two (and_10[13]),
		.i_carry (wires_23[17]),
		.o_add (wires_23[18]),
		.o_carry (wires_23[19])
	);

	full_adder sig_23_10 (
		.i_add_one (wires_23[18]),
		.i_add_two (and_11[12]),
		.i_carry (wires_23[19]),
		.o_add (wires_23[20]),
		.o_carry (wires_23[21])
	);

	full_adder sig_23_11 (
		.i_add_one (wires_23[20]),
		.i_add_two (and_12[11]),
		.i_carry (wires_23[21]),
		.o_add (wires_23[22]),
		.o_carry (wires_23[23])
	);

	full_adder sig_23_12 (
		.i_add_one (wires_23[22]),
		.i_add_two (and_13[10]),
		.i_carry (wires_23[23]),
		.o_add (wires_23[24]),
		.o_carry (wires_23[25])
	);

	full_adder sig_23_13 (
		.i_add_one (wires_23[24]),
		.i_add_two (and_14[9]),
		.i_carry (wires_23[25]),
		.o_add (wires_23[26]),
		.o_carry (wires_23[27])
	);

	full_adder sig_23_14 (
		.i_add_one (wires_23[26]),
		.i_add_two (and_15[8]),
		.i_carry (wires_23[27]),
		.o_add (wires_23[28]),
		.o_carry (wires_23[29])
	);

	full_adder sig_23_15 (
		.i_add_one (wires_23[28]),
		.i_add_two (and_16[7]),
		.i_carry (wires_23[29]),
		.o_add (wires_23[30]),
		.o_carry (wires_23[31])
	);

	full_adder sig_23_16 (
		.i_add_one (wires_23[30]),
		.i_add_two (and_17[6]),
		.i_carry (wires_23[31]),
		.o_add (wires_23[32]),
		.o_carry (wires_23[33])
	);

	full_adder sig_23_17 (
		.i_add_one (wires_23[32]),
		.i_add_two (and_18[5]),
		.i_carry (wires_23[33]),
		.o_add (wires_23[34]),
		.o_carry (wires_23[35])
	);

	full_adder sig_23_18 (
		.i_add_one (wires_23[34]),
		.i_add_two (and_19[4]),
		.i_carry (wires_23[35]),
		.o_add (wires_23[36]),
		.o_carry (wires_23[37])
	);

	full_adder sig_23_19 (
		.i_add_one (wires_23[36]),
		.i_add_two (and_20[3]),
		.i_carry (wires_23[37]),
		.o_add (wires_23[38]),
		.o_carry (wires_23[39])
	);

	full_adder sig_23_20 (
		.i_add_one (wires_23[38]),
		.i_add_two (and_21[1]),
		.i_carry (wires_23[39]),
		.o_add (wires_23[40]),
		.o_carry (wires_23[41])
	);

	full_adder sig_23_21 (
		.i_add_one (wires_23[40]),
		.i_add_two (and_22[1]),
		.i_carry (wires_23[41]),
		.o_add (wires_23[42]),
		.o_carry (wires_23[43])
	);

	full_adder sig_23_22 (
		.i_add_one (wires_23[42]),
		.i_add_two (and_23[0]),
		.i_carry (wires_23[43]),
		.o_add (o_mul[23]),
		.o_carry (carry[23])
	);

	//multiplication significant bit 24
	full_adder sig_24_0 (
		.i_add_one (and_1[23]),
		.i_add_two (and_2[22]),
		.i_carry (carry[23]),
		.o_add (wires_24[0]),
		.o_carry (wires_24[1])
	);

	full_adder sig_24_1 (
		.i_add_one (wires_24[0]),
		.i_add_two (and_3[21]),
		.i_carry (wires_24[1]),
		.o_add (wires_24[2]),
		.o_carry (wires_24[3])
	);

	full_adder sig_24_2 (
		.i_add_one (wires_24[2]),
		.i_add_two (and_4[20]),
		.i_carry (wires_24[3]),
		.o_add (wires_24[4]),
		.o_carry (wires_24[5])
	);

	full_adder sig_24_3 (
		.i_add_one (wires_24[4]),
		.i_add_two (and_5[19]),
		.i_carry (wires_24[5]),
		.o_add (wires_24[6]),
		.o_carry (wires_24[7])
	);

	full_adder sig_24_4 (
		.i_add_one (wires_24[6]),
		.i_add_two (and_6[18]),
		.i_carry (wires_24[7]),
		.o_add (wires_24[8]),
		.o_carry (wires_24[9])
	);

	full_adder sig_24_5 (
		.i_add_one (wires_24[8]),
		.i_add_two (and_7[17]),
		.i_carry (wires_24[9]),
		.o_add (wires_24[10]),
		.o_carry (wires_24[11])
	);

	full_adder sig_24_6 (
		.i_add_one (wires_24[10]),
		.i_add_two (and_8[16]),
		.i_carry (wires_24[11]),
		.o_add (wires_24[12]),
		.o_carry (wires_24[13])
	);	

	full_adder sig_24_7 (
		.i_add_one (wires_24[12]),
		.i_add_two (and_9[15]),
		.i_carry (wires_24[13]),
		.o_add (wires_24[14]),
		.o_carry (wires_24[15])
	);

	full_adder sig_24_8 (
		.i_add_one (wires_24[14]),
		.i_add_two (and_10[14]),
		.i_carry (wires_24[15]),
		.o_add (wires_24[16]),
		.o_carry (wires_24[17])
	);

	full_adder sig_24_9 (
		.i_add_one (wires_24[16]),
		.i_add_two (and_11[13]),
		.i_carry (wires_24[17]),
		.o_add (wires_24[18]),
		.o_carry (wires_24[19])
	);

	full_adder sig_24_10 (
		.i_add_one (wires_24[18]),
		.i_add_two (and_12[12]),
		.i_carry (wires_24[19]),
		.o_add (wires_24[20]),
		.o_carry (wires_24[21])
	);

	full_adder sig_24_11 (
		.i_add_one (wires_24[20]),
		.i_add_two (and_13[11]),
		.i_carry (wires_24[21]),
		.o_add (wires_24[22]),
		.o_carry (wires_24[23])
	);

	full_adder sig_24_12 (
		.i_add_one (wires_24[22]),
		.i_add_two (and_14[10]),
		.i_carry (wires_24[23]),
		.o_add (wires_24[24]),
		.o_carry (wires_24[25])
	);

	full_adder sig_24_13 (
		.i_add_one (wires_24[24]),
		.i_add_two (and_15[9]),
		.i_carry (wires_24[25]),
		.o_add (wires_24[26]),
		.o_carry (wires_24[27])
	);

	full_adder sig_24_14 (
		.i_add_one (wires_24[26]),
		.i_add_two (and_16[8]),
		.i_carry (wires_24[27]),
		.o_add (wires_24[28]),
		.o_carry (wires_24[29])
	);

	full_adder sig_24_15 (
		.i_add_one (wires_24[28]),
		.i_add_two (and_17[7]),
		.i_carry (wires_24[29]),
		.o_add (wires_24[30]),
		.o_carry (wires_24[31])
	);

	full_adder sig_24_16 (
		.i_add_one (wires_24[30]),
		.i_add_two (and_18[6]),
		.i_carry (wires_24[31]),
		.o_add (wires_24[32]),
		.o_carry (wires_24[33])
	);

	full_adder sig_24_17 (
		.i_add_one (wires_24[32]),
		.i_add_two (and_19[5]),
		.i_carry (wires_24[33]),
		.o_add (wires_24[34]),
		.o_carry (wires_24[35])
	);

	full_adder sig_24_18 (
		.i_add_one (wires_24[34]),
		.i_add_two (and_20[4]),
		.i_carry (wires_24[35]),
		.o_add (wires_24[36]),
		.o_carry (wires_24[37])
	);

	full_adder sig_24_19 (
		.i_add_one (wires_24[36]),
		.i_add_two (and_21[3]),
		.i_carry (wires_24[37]),
		.o_add (wires_24[38]),
		.o_carry (wires_24[39])
	);

	full_adder sig_24_20 (
		.i_add_one (wires_24[38]),
		.i_add_two (and_22[2]),
		.i_carry (wires_24[39]),
		.o_add (wires_24[40]),
		.o_carry (wires_24[41])
	);

	full_adder sig_24_21 (
		.i_add_one (wires_24[40]),
		.i_add_two (and_23[1]),
		.i_carry (wires_24[41]),
		.o_add (o_mul[24]),
		.o_carry (carry[24])
	);

	//multiplication significant bit 25
	full_adder sig_25_0 (
		.i_add_one (and_2[23]),
		.i_add_two (and_3[22]),
		.i_carry (carry[24]),
		.o_add (wires_25[0]),
		.o_carry (wires_25[1])
	);

	full_adder sig_25_1 (
		.i_add_one (wires_25[0]),
		.i_add_two (and_4[21]),
		.i_carry (wires_25[1]),
		.o_add (wires_25[2]),
		.o_carry (wires_25[3])
	);

	full_adder sig_25_2 (
		.i_add_one (wires_25[2]),
		.i_add_two (and_5[20]),
		.i_carry (wires_25[3]),
		.o_add (wires_25[4]),
		.o_carry (wires_25[5])
	);

	full_adder sig_25_3 (
		.i_add_one (wires_25[4]),
		.i_add_two (and_6[19]),
		.i_carry (wires_25[5]),
		.o_add (wires_25[6]),
		.o_carry (wires_25[7])
	);

	full_adder sig_25_4 (
		.i_add_one (wires_25[6]),
		.i_add_two (and_7[18]),
		.i_carry (wires_25[7]),
		.o_add (wires_25[8]),
		.o_carry (wires_25[9])
	);

	full_adder sig_25_5 (
		.i_add_one (wires_25[8]),
		.i_add_two (and_8[17]),
		.i_carry (wires_25[9]),
		.o_add (wires_25[10]),
		.o_carry (wires_25[11])
	);

	full_adder sig_25_6 (
		.i_add_one (wires_25[10]),
		.i_add_two (and_9[16]),
		.i_carry (wires_25[11]),
		.o_add (wires_25[12]),
		.o_carry (wires_25[13])
	);	

	full_adder sig_25_7 (
		.i_add_one (wires_25[12]),
		.i_add_two (and_10[15]),
		.i_carry (wires_25[13]),
		.o_add (wires_25[14]),
		.o_carry (wires_25[15])
	);

	full_adder sig_25_8 (
		.i_add_one (wires_25[14]),
		.i_add_two (and_11[14]),
		.i_carry (wires_25[15]),
		.o_add (wires_25[16]),
		.o_carry (wires_25[17])
	);

	full_adder sig_25_9 (
		.i_add_one (wires_25[16]),
		.i_add_two (and_12[13]),
		.i_carry (wires_25[17]),
		.o_add (wires_25[18]),
		.o_carry (wires_25[19])
	);

	full_adder sig_25_10 (
		.i_add_one (wires_25[18]),
		.i_add_two (and_13[12]),
		.i_carry (wires_25[19]),
		.o_add (wires_25[20]),
		.o_carry (wires_25[21])
	);

	full_adder sig_25_11 (
		.i_add_one (wires_25[20]),
		.i_add_two (and_14[11]),
		.i_carry (wires_25[21]),
		.o_add (wires_25[22]),
		.o_carry (wires_25[23])
	);

	full_adder sig_25_12 (
		.i_add_one (wires_25[22]),
		.i_add_two (and_15[10]),
		.i_carry (wires_25[23]),
		.o_add (wires_25[24]),
		.o_carry (wires_25[25])
	);

	full_adder sig_25_13 (
		.i_add_one (wires_25[24]),
		.i_add_two (and_16[9]),
		.i_carry (wires_25[25]),
		.o_add (wires_25[26]),
		.o_carry (wires_25[27])
	);

	full_adder sig_25_14 (
		.i_add_one (wires_25[26]),
		.i_add_two (and_17[8]),
		.i_carry (wires_25[27]),
		.o_add (wires_25[28]),
		.o_carry (wires_25[29])
	);

	full_adder sig_25_15 (
		.i_add_one (wires_25[28]),
		.i_add_two (and_18[7]),
		.i_carry (wires_25[29]),
		.o_add (wires_25[30]),
		.o_carry (wires_25[31])
	);

	full_adder sig_25_16 (
		.i_add_one (wires_25[30]),
		.i_add_two (and_19[6]),
		.i_carry (wires_25[31]),
		.o_add (wires_25[32]),
		.o_carry (wires_25[33])
	);

	full_adder sig_25_17 (
		.i_add_one (wires_25[32]),
		.i_add_two (and_20[5]),
		.i_carry (wires_25[33]),
		.o_add (wires_25[34]),
		.o_carry (wires_25[35])
	);

	full_adder sig_25_18 (
		.i_add_one (wires_25[34]),
		.i_add_two (and_21[4]),
		.i_carry (wires_25[35]),
		.o_add (wires_25[36]),
		.o_carry (wires_25[37])
	);

	full_adder sig_25_19 (
		.i_add_one (wires_25[36]),
		.i_add_two (and_22[3]),
		.i_carry (wires_25[37]),
		.o_add (wires_25[38]),
		.o_carry (wires_25[39])
	);

	full_adder sig_25_20 (
		.i_add_one (wires_25[38]),
		.i_add_two (and_23[2]),
		.i_carry (wires_25[39]),
		.o_add (o_mul[25]),
		.o_carry (carry[25])
	);

	//multiplication significant bit 26
	full_adder sig_26_0 (
		.i_add_one (and_3[23]),
		.i_add_two (and_4[22]),
		.i_carry (carry[25]),
		.o_add (wires_26[0]),
		.o_carry (wires_26[1])
	);

	full_adder sig_26_1 (
		.i_add_one (wires_26[0]),
		.i_add_two (and_5[21]),
		.i_carry (wires_26[1]),
		.o_add (wires_26[2]),
		.o_carry (wires_26[3])
	);

	full_adder sig_26_2 (
		.i_add_one (wires_26[2]),
		.i_add_two (and_6[20]),
		.i_carry (wires_26[3]),
		.o_add (wires_26[4]),
		.o_carry (wires_26[5])
	);

	full_adder sig_26_3 (
		.i_add_one (wires_26[4]),
		.i_add_two (and_7[19]),
		.i_carry (wires_26[5]),
		.o_add (wires_26[6]),
		.o_carry (wires_26[7])
	);

	full_adder sig_26_4 (
		.i_add_one (wires_26[6]),
		.i_add_two (and_8[18]),
		.i_carry (wires_26[7]),
		.o_add (wires_26[8]),
		.o_carry (wires_26[9])
	);

	full_adder sig_26_5 (
		.i_add_one (wires_26[8]),
		.i_add_two (and_9[17]),
		.i_carry (wires_26[9]),
		.o_add (wires_26[10]),
		.o_carry (wires_26[11])
	);

	full_adder sig_26_6 (
		.i_add_one (wires_26[10]),
		.i_add_two (and_10[16]),
		.i_carry (wires_26[11]),
		.o_add (wires_26[12]),
		.o_carry (wires_26[13])
	);	

	full_adder sig_26_7 (
		.i_add_one (wires_26[12]),
		.i_add_two (and_11[15]),
		.i_carry (wires_26[13]),
		.o_add (wires_26[14]),
		.o_carry (wires_26[15])
	);

	full_adder sig_26_8 (
		.i_add_one (wires_26[14]),
		.i_add_two (and_12[14]),
		.i_carry (wires_26[15]),
		.o_add (wires_26[16]),
		.o_carry (wires_26[17])
	);

	full_adder sig_26_9 (
		.i_add_one (wires_26[16]),
		.i_add_two (and_13[13]),
		.i_carry (wires_26[17]),
		.o_add (wires_26[18]),
		.o_carry (wires_26[19])
	);

	full_adder sig_26_10 (
		.i_add_one (wires_26[18]),
		.i_add_two (and_14[12]),
		.i_carry (wires_26[19]),
		.o_add (wires_26[20]),
		.o_carry (wires_26[21])
	);

	full_adder sig_26_11 (
		.i_add_one (wires_26[20]),
		.i_add_two (and_15[11]),
		.i_carry (wires_26[21]),
		.o_add (wires_26[22]),
		.o_carry (wires_26[23])
	);

	full_adder sig_26_12 (
		.i_add_one (wires_26[22]),
		.i_add_two (and_16[10]),
		.i_carry (wires_26[23]),
		.o_add (wires_26[24]),
		.o_carry (wires_26[25])
	);

	full_adder sig_26_13 (
		.i_add_one (wires_26[24]),
		.i_add_two (and_17[9]),
		.i_carry (wires_26[25]),
		.o_add (wires_26[26]),
		.o_carry (wires_26[27])
	);

	full_adder sig_26_14 (
		.i_add_one (wires_26[26]),
		.i_add_two (and_18[8]),
		.i_carry (wires_26[27]),
		.o_add (wires_26[28]),
		.o_carry (wires_26[29])
	);

	full_adder sig_26_15 (
		.i_add_one (wires_26[28]),
		.i_add_two (and_19[7]),
		.i_carry (wires_26[29]),
		.o_add (wires_26[30]),
		.o_carry (wires_26[31])
	);

	full_adder sig_26_16 (
		.i_add_one (wires_26[30]),
		.i_add_two (and_20[6]),
		.i_carry (wires_26[31]),
		.o_add (wires_26[32]),
		.o_carry (wires_26[33])
	);

	full_adder sig_26_17 (
		.i_add_one (wires_26[32]),
		.i_add_two (and_21[5]),
		.i_carry (wires_26[33]),
		.o_add (wires_26[34]),
		.o_carry (wires_26[35])
	);

	full_adder sig_26_18 (
		.i_add_one (wires_26[34]),
		.i_add_two (and_22[4]),
		.i_carry (wires_26[35]),
		.o_add (wires_26[36]),
		.o_carry (wires_26[37])
	);

	full_adder sig_26_19 (
		.i_add_one (wires_26[36]),
		.i_add_two (and_23[3]),
		.i_carry (wires_26[37]),
		.o_add (o_mul[26]),
		.o_carry (carry[26])
	);

	//multiplication significant bit 27
	full_adder sig_27_0 (
		.i_add_one (and_4[23]),
		.i_add_two (and_5[22]),
		.i_carry (carry[26]),
		.o_add (wires_27[0]),
		.o_carry (wires_27[1])
	);

	full_adder sig_27_1 (
		.i_add_one (wires_27[0]),
		.i_add_two (and_6[21]),
		.i_carry (wires_27[1]),
		.o_add (wires_27[2]),
		.o_carry (wires_27[3])
	);

	full_adder sig_27_2 (
		.i_add_one (wires_27[2]),
		.i_add_two (and_7[20]),
		.i_carry (wires_27[3]),
		.o_add (wires_27[4]),
		.o_carry (wires_27[5])
	);

	full_adder sig_27_3 (
		.i_add_one (wires_27[4]),
		.i_add_two (and_8[19]),
		.i_carry (wires_27[5]),
		.o_add (wires_27[6]),
		.o_carry (wires_27[7])
	);

	full_adder sig_27_4 (
		.i_add_one (wires_27[6]),
		.i_add_two (and_9[18]),
		.i_carry (wires_27[7]),
		.o_add (wires_27[8]),
		.o_carry (wires_27[9])
	);

	full_adder sig_27_5 (
		.i_add_one (wires_27[8]),
		.i_add_two (and_10[17]),
		.i_carry (wires_27[9]),
		.o_add (wires_27[10]),
		.o_carry (wires_27[11])
	);

	full_adder sig_27_6 (
		.i_add_one (wires_27[10]),
		.i_add_two (and_11[16]),
		.i_carry (wires_27[11]),
		.o_add (wires_27[12]),
		.o_carry (wires_27[13])
	);	

	full_adder sig_27_7 (
		.i_add_one (wires_27[12]),
		.i_add_two (and_12[15]),
		.i_carry (wires_27[13]),
		.o_add (wires_27[14]),
		.o_carry (wires_27[15])
	);

	full_adder sig_27_8 (
		.i_add_one (wires_27[14]),
		.i_add_two (and_13[14]),
		.i_carry (wires_27[15]),
		.o_add (wires_27[16]),
		.o_carry (wires_27[17])
	);

	full_adder sig_27_9 (
		.i_add_one (wires_27[16]),
		.i_add_two (and_14[13]),
		.i_carry (wires_27[17]),
		.o_add (wires_27[18]),
		.o_carry (wires_27[19])
	);

	full_adder sig_27_10 (
		.i_add_one (wires_27[18]),
		.i_add_two (and_15[12]),
		.i_carry (wires_27[19]),
		.o_add (wires_27[20]),
		.o_carry (wires_27[21])
	);

	full_adder sig_27_11 (
		.i_add_one (wires_27[20]),
		.i_add_two (and_16[11]),
		.i_carry (wires_27[21]),
		.o_add (wires_27[22]),
		.o_carry (wires_27[23])
	);

	full_adder sig_27_12 (
		.i_add_one (wires_27[22]),
		.i_add_two (and_17[10]),
		.i_carry (wires_27[23]),
		.o_add (wires_27[24]),
		.o_carry (wires_27[25])
	);

	full_adder sig_27_13 (
		.i_add_one (wires_27[24]),
		.i_add_two (and_18[9]),
		.i_carry (wires_27[25]),
		.o_add (wires_27[26]),
		.o_carry (wires_27[27])
	);

	full_adder sig_27_14 (
		.i_add_one (wires_27[26]),
		.i_add_two (and_19[8]),
		.i_carry (wires_27[27]),
		.o_add (wires_27[28]),
		.o_carry (wires_27[29])
	);

	full_adder sig_27_15 (
		.i_add_one (wires_27[28]),
		.i_add_two (and_20[7]),
		.i_carry (wires_27[29]),
		.o_add (wires_27[30]),
		.o_carry (wires_27[31])
	);

	full_adder sig_27_16 (
		.i_add_one (wires_27[30]),
		.i_add_two (and_21[6]),
		.i_carry (wires_27[31]),
		.o_add (wires_27[32]),
		.o_carry (wires_27[33])
	);

	full_adder sig_27_17 (
		.i_add_one (wires_27[32]),
		.i_add_two (and_22[5]),
		.i_carry (wires_27[33]),
		.o_add (wires_27[34]),
		.o_carry (wires_27[35])
	);

	full_adder sig_27_18 (
		.i_add_one (wires_27[34]),
		.i_add_two (and_23[4]),
		.i_carry (wires_27[35]),
		.o_add (o_mul[27]),
		.o_carry (carry[27])
	);

	//multiplication significant bit 28
	full_adder sig_28_0 (
		.i_add_one (and_5[23]),
		.i_add_two (and_6[22]),
		.i_carry (carry[27]),
		.o_add (wires_28[0]),
		.o_carry (wires_28[1])
	);

	full_adder sig_28_1 (
		.i_add_one (wires_28[0]),
		.i_add_two (and_7[21]),
		.i_carry (wires_28[1]),
		.o_add (wires_28[2]),
		.o_carry (wires_28[3])
	);

	full_adder sig_28_2 (
		.i_add_one (wires_28[2]),
		.i_add_two (and_8[20]),
		.i_carry (wires_28[3]),
		.o_add (wires_28[4]),
		.o_carry (wires_28[5])
	);

	full_adder sig_28_3 (
		.i_add_one (wires_28[4]),
		.i_add_two (and_9[19]),
		.i_carry (wires_28[5]),
		.o_add (wires_28[6]),
		.o_carry (wires_28[7])
	);

	full_adder sig_28_4 (
		.i_add_one (wires_28[6]),
		.i_add_two (and_10[18]),
		.i_carry (wires_28[7]),
		.o_add (wires_28[8]),
		.o_carry (wires_28[9])
	);

	full_adder sig_28_5 (
		.i_add_one (wires_28[8]),
		.i_add_two (and_11[17]),
		.i_carry (wires_28[9]),
		.o_add (wires_28[10]),
		.o_carry (wires_28[11])
	);

	full_adder sig_28_6 (
		.i_add_one (wires_28[10]),
		.i_add_two (and_12[16]),
		.i_carry (wires_28[11]),
		.o_add (wires_28[12]),
		.o_carry (wires_28[13])
	);	

	full_adder sig_28_7 (
		.i_add_one (wires_28[12]),
		.i_add_two (and_13[15]),
		.i_carry (wires_28[13]),
		.o_add (wires_28[14]),
		.o_carry (wires_28[15])
	);

	full_adder sig_28_8 (
		.i_add_one (wires_28[14]),
		.i_add_two (and_14[14]),
		.i_carry (wires_28[15]),
		.o_add (wires_28[16]),
		.o_carry (wires_28[17])
	);

	full_adder sig_28_9 (
		.i_add_one (wires_28[16]),
		.i_add_two (and_15[13]),
		.i_carry (wires_28[17]),
		.o_add (wires_28[18]),
		.o_carry (wires_28[19])
	);

	full_adder sig_28_10 (
		.i_add_one (wires_28[18]),
		.i_add_two (and_16[12]),
		.i_carry (wires_28[19]),
		.o_add (wires_28[20]),
		.o_carry (wires_28[21])
	);

	full_adder sig_28_11 (
		.i_add_one (wires_28[20]),
		.i_add_two (and_17[11]),
		.i_carry (wires_28[21]),
		.o_add (wires_28[22]),
		.o_carry (wires_28[23])
	);

	full_adder sig_28_12 (
		.i_add_one (wires_28[22]),
		.i_add_two (and_18[10]),
		.i_carry (wires_28[23]),
		.o_add (wires_28[24]),
		.o_carry (wires_28[25])
	);

	full_adder sig_28_13 (
		.i_add_one (wires_28[24]),
		.i_add_two (and_19[9]),
		.i_carry (wires_28[25]),
		.o_add (wires_28[26]),
		.o_carry (wires_28[27])
	);

	full_adder sig_28_14 (
		.i_add_one (wires_28[26]),
		.i_add_two (and_20[8]),
		.i_carry (wires_28[27]),
		.o_add (wires_28[28]),
		.o_carry (wires_28[29])
	);

	full_adder sig_28_15 (
		.i_add_one (wires_28[28]),
		.i_add_two (and_21[7]),
		.i_carry (wires_28[29]),
		.o_add (wires_28[30]),
		.o_carry (wires_28[31])
	);

	full_adder sig_28_16 (
		.i_add_one (wires_28[30]),
		.i_add_two (and_22[6]),
		.i_carry (wires_28[31]),
		.o_add (wires_28[32]),
		.o_carry (wires_28[33])
	);

	full_adder sig_28_17 (
		.i_add_one (wires_28[32]),
		.i_add_two (and_23[5]),
		.i_carry (wires_28[33]),
		.o_add (o_mul[28]),
		.o_carry (carry[28])
	);

	//multiplication significant bit 29
	full_adder sig_29_0 (
		.i_add_one (and_6[23]),
		.i_add_two (and_7[22]),
		.i_carry (carry[28]),
		.o_add (wires_29[0]),
		.o_carry (wires_29[1])
	);

	full_adder sig_29_1 (
		.i_add_one (wires_29[0]),
		.i_add_two (and_8[21]),
		.i_carry (wires_29[1]),
		.o_add (wires_29[2]),
		.o_carry (wires_29[3])
	);

	full_adder sig_29_2 (
		.i_add_one (wires_29[2]),
		.i_add_two (and_9[20]),
		.i_carry (wires_29[3]),
		.o_add (wires_29[4]),
		.o_carry (wires_29[5])
	);

	full_adder sig_29_3 (
		.i_add_one (wires_29[4]),
		.i_add_two (and_10[19]),
		.i_carry (wires_29[5]),
		.o_add (wires_29[6]),
		.o_carry (wires_29[7])
	);

	full_adder sig_29_4 (
		.i_add_one (wires_29[6]),
		.i_add_two (and_11[18]),
		.i_carry (wires_29[7]),
		.o_add (wires_29[8]),
		.o_carry (wires_29[9])
	);

	full_adder sig_29_5 (
		.i_add_one (wires_29[8]),
		.i_add_two (and_12[17]),
		.i_carry (wires_29[9]),
		.o_add (wires_29[10]),
		.o_carry (wires_29[11])
	);

	full_adder sig_29_6 (
		.i_add_one (wires_29[10]),
		.i_add_two (and_13[16]),
		.i_carry (wires_29[11]),
		.o_add (wires_29[12]),
		.o_carry (wires_29[13])
	);	

	full_adder sig_29_7 (
		.i_add_one (wires_29[12]),
		.i_add_two (and_14[15]),
		.i_carry (wires_29[13]),
		.o_add (wires_29[14]),
		.o_carry (wires_29[15])
	);

	full_adder sig_29_8 (
		.i_add_one (wires_29[14]),
		.i_add_two (and_15[14]),
		.i_carry (wires_29[15]),
		.o_add (wires_29[16]),
		.o_carry (wires_29[17])
	);

	full_adder sig_29_9 (
		.i_add_one (wires_29[16]),
		.i_add_two (and_16[13]),
		.i_carry (wires_29[17]),
		.o_add (wires_29[18]),
		.o_carry (wires_29[19])
	);

	full_adder sig_29_10 (
		.i_add_one (wires_29[18]),
		.i_add_two (and_17[12]),
		.i_carry (wires_29[19]),
		.o_add (wires_29[20]),
		.o_carry (wires_29[21])
	);

	full_adder sig_29_11 (
		.i_add_one (wires_29[20]),
		.i_add_two (and_18[11]),
		.i_carry (wires_29[21]),
		.o_add (wires_29[22]),
		.o_carry (wires_29[23])
	);

	full_adder sig_29_12 (
		.i_add_one (wires_29[22]),
		.i_add_two (and_19[10]),
		.i_carry (wires_29[23]),
		.o_add (wires_29[24]),
		.o_carry (wires_29[25])
	);

	full_adder sig_29_13 (
		.i_add_one (wires_29[24]),
		.i_add_two (and_20[9]),
		.i_carry (wires_29[25]),
		.o_add (wires_29[26]),
		.o_carry (wires_29[27])
	);

	full_adder sig_29_14 (
		.i_add_one (wires_29[26]),
		.i_add_two (and_21[8]),
		.i_carry (wires_29[27]),
		.o_add (wires_29[28]),
		.o_carry (wires_29[29])
	);

	full_adder sig_29_15 (
		.i_add_one (wires_29[28]),
		.i_add_two (and_22[7]),
		.i_carry (wires_29[29]),
		.o_add (wires_29[30]),
		.o_carry (wires_29[31])
	);

	full_adder sig_29_16 (
		.i_add_one (wires_29[30]),
		.i_add_two (and_23[6]),
		.i_carry (wires_29[31]),
		.o_add (o_mul[29]),
		.o_carry (carry[29])
	);

	//multiplication significant bit 30
	full_adder sig_30_0 (
		.i_add_one (and_7[23]),
		.i_add_two (and_8[22]),
		.i_carry (carry[29]),
		.o_add (wires_30[0]),
		.o_carry (wires_30[1])
	);

	full_adder sig_30_1 (
		.i_add_one (wires_30[0]),
		.i_add_two (and_9[21]),
		.i_carry (wires_30[1]),
		.o_add (wires_30[2]),
		.o_carry (wires_30[3])
	);

	full_adder sig_30_2 (
		.i_add_one (wires_30[2]),
		.i_add_two (and_10[20]),
		.i_carry (wires_30[3]),
		.o_add (wires_30[4]),
		.o_carry (wires_30[5])
	);

	full_adder sig_30_3 (
		.i_add_one (wires_30[4]),
		.i_add_two (and_11[19]),
		.i_carry (wires_30[5]),
		.o_add (wires_30[6]),
		.o_carry (wires_30[7])
	);

	full_adder sig_30_4 (
		.i_add_one (wires_30[6]),
		.i_add_two (and_12[18]),
		.i_carry (wires_30[7]),
		.o_add (wires_30[8]),
		.o_carry (wires_30[9])
	);

	full_adder sig_30_5 (
		.i_add_one (wires_30[8]),
		.i_add_two (and_13[17]),
		.i_carry (wires_30[9]),
		.o_add (wires_30[10]),
		.o_carry (wires_30[11])
	);

	full_adder sig_30_6 (
		.i_add_one (wires_30[10]),
		.i_add_two (and_14[16]),
		.i_carry (wires_30[11]),
		.o_add (wires_30[12]),
		.o_carry (wires_30[13])
	);	

	full_adder sig_30_7 (
		.i_add_one (wires_30[12]),
		.i_add_two (and_15[15]),
		.i_carry (wires_30[13]),
		.o_add (wires_30[14]),
		.o_carry (wires_30[15])
	);

	full_adder sig_30_8 (
		.i_add_one (wires_30[14]),
		.i_add_two (and_16[14]),
		.i_carry (wires_30[15]),
		.o_add (wires_30[16]),
		.o_carry (wires_30[17])
	);

	full_adder sig_30_9 (
		.i_add_one (wires_30[16]),
		.i_add_two (and_17[13]),
		.i_carry (wires_30[17]),
		.o_add (wires_30[18]),
		.o_carry (wires_30[19])
	);

	full_adder sig_30_10 (
		.i_add_one (wires_30[18]),
		.i_add_two (and_18[12]),
		.i_carry (wires_30[19]),
		.o_add (wires_30[20]),
		.o_carry (wires_30[21])
	);

	full_adder sig_30_11 (
		.i_add_one (wires_30[20]),
		.i_add_two (and_19[11]),
		.i_carry (wires_30[21]),
		.o_add (wires_30[22]),
		.o_carry (wires_30[23])
	);

	full_adder sig_30_12 (
		.i_add_one (wires_30[22]),
		.i_add_two (and_20[10]),
		.i_carry (wires_30[23]),
		.o_add (wires_30[24]),
		.o_carry (wires_30[25])
	);

	full_adder sig_30_13 (
		.i_add_one (wires_30[24]),
		.i_add_two (and_21[9]),
		.i_carry (wires_30[25]),
		.o_add (wires_30[26]),
		.o_carry (wires_30[27])
	);

	full_adder sig_30_14 (
		.i_add_one (wires_30[26]),
		.i_add_two (and_22[8]),
		.i_carry (wires_30[27]),
		.o_add (wires_30[28]),
		.o_carry (wires_30[29])
	);

	full_adder sig_30_15 (
		.i_add_one (wires_30[28]),
		.i_add_two (and_23[7]),
		.i_carry (wires_30[29]),
		.o_add (o_mul[30]),
		.o_carry (carry[30])
	);

	//multiplication significant bit 31
	full_adder sig_31_0 (
		.i_add_one (and_8[23]),
		.i_add_two (and_9[22]),
		.i_carry (carry[30]),
		.o_add (wires_31[0]),
		.o_carry (wires_31[1])
	);

	full_adder sig_31_1 (
		.i_add_one (wires_31[0]),
		.i_add_two (and_10[21]),
		.i_carry (wires_31[1]),
		.o_add (wires_31[2]),
		.o_carry (wires_31[3])
	);

	full_adder sig_31_2 (
		.i_add_one (wires_31[2]),
		.i_add_two (and_11[20]),
		.i_carry (wires_31[3]),
		.o_add (wires_31[4]),
		.o_carry (wires_31[5])
	);

	full_adder sig_31_3 (
		.i_add_one (wires_31[4]),
		.i_add_two (and_12[19]),
		.i_carry (wires_31[5]),
		.o_add (wires_31[6]),
		.o_carry (wires_31[7])
	);

	full_adder sig_31_4 (
		.i_add_one (wires_31[6]),
		.i_add_two (and_13[18]),
		.i_carry (wires_31[7]),
		.o_add (wires_31[8]),
		.o_carry (wires_31[9])
	);

	full_adder sig_31_5 (
		.i_add_one (wires_31[8]),
		.i_add_two (and_14[17]),
		.i_carry (wires_31[9]),
		.o_add (wires_31[10]),
		.o_carry (wires_31[11])
	);

	full_adder sig_31_6 (
		.i_add_one (wires_31[10]),
		.i_add_two (and_15[16]),
		.i_carry (wires_31[11]),
		.o_add (wires_31[12]),
		.o_carry (wires_31[13])
	);	

	full_adder sig_31_7 (
		.i_add_one (wires_31[12]),
		.i_add_two (and_16[15]),
		.i_carry (wires_31[13]),
		.o_add (wires_31[14]),
		.o_carry (wires_31[15])
	);

	full_adder sig_31_8 (
		.i_add_one (wires_31[14]),
		.i_add_two (and_17[14]),
		.i_carry (wires_31[15]),
		.o_add (wires_31[16]),
		.o_carry (wires_31[17])
	);

	full_adder sig_31_9 (
		.i_add_one (wires_31[16]),
		.i_add_two (and_18[13]),
		.i_carry (wires_31[17]),
		.o_add (wires_31[18]),
		.o_carry (wires_31[19])
	);

	full_adder sig_31_10 (
		.i_add_one (wires_31[18]),
		.i_add_two (and_19[12]),
		.i_carry (wires_31[19]),
		.o_add (wires_31[20]),
		.o_carry (wires_31[21])
	);

	full_adder sig_31_11 (
		.i_add_one (wires_31[20]),
		.i_add_two (and_20[11]),
		.i_carry (wires_31[21]),
		.o_add (wires_31[22]),
		.o_carry (wires_31[23])
	);

	full_adder sig_31_12 (
		.i_add_one (wires_31[22]),
		.i_add_two (and_21[10]),
		.i_carry (wires_31[23]),
		.o_add (wires_31[24]),
		.o_carry (wires_31[25])
	);

	full_adder sig_31_13 (
		.i_add_one (wires_31[24]),
		.i_add_two (and_22[9]),
		.i_carry (wires_31[25]),
		.o_add (wires_31[26]),
		.o_carry (wires_31[27])
	);

	full_adder sig_31_14 (
		.i_add_one (wires_31[26]),
		.i_add_two (and_23[8]),
		.i_carry (wires_31[27]),
		.o_add (o_mul[31]),
		.o_carry (carry[31])
	);

	//multiplication significant bit 32
	full_adder sig_32_0 (
		.i_add_one (and_9[23]),
		.i_add_two (and_10[22]),
		.i_carry (carry[31]),
		.o_add (wires_32[0]),
		.o_carry (wires_32[1])
	);

	full_adder sig_32_1 (
		.i_add_one (wires_32[0]),
		.i_add_two (and_11[21]),
		.i_carry (wires_32[1]),
		.o_add (wires_32[2]),
		.o_carry (wires_32[3])
	);

	full_adder sig_32_2 (
		.i_add_one (wires_32[2]),
		.i_add_two (and_12[20]),
		.i_carry (wires_32[3]),
		.o_add (wires_32[4]),
		.o_carry (wires_32[5])
	);

	full_adder sig_32_3 (
		.i_add_one (wires_32[4]),
		.i_add_two (and_13[19]),
		.i_carry (wires_32[5]),
		.o_add (wires_32[6]),
		.o_carry (wires_32[7])
	);

	full_adder sig_32_4 (
		.i_add_one (wires_32[6]),
		.i_add_two (and_14[18]),
		.i_carry (wires_32[7]),
		.o_add (wires_32[8]),
		.o_carry (wires_32[9])
	);

	full_adder sig_32_5 (
		.i_add_one (wires_32[8]),
		.i_add_two (and_15[17]),
		.i_carry (wires_32[9]),
		.o_add (wires_32[10]),
		.o_carry (wires_32[11])
	);

	full_adder sig_32_6 (
		.i_add_one (wires_32[10]),
		.i_add_two (and_16[16]),
		.i_carry (wires_32[11]),
		.o_add (wires_32[12]),
		.o_carry (wires_32[13])
	);	

	full_adder sig_32_7 (
		.i_add_one (wires_32[12]),
		.i_add_two (and_17[15]),
		.i_carry (wires_32[13]),
		.o_add (wires_32[14]),
		.o_carry (wires_32[15])
	);

	full_adder sig_32_8 (
		.i_add_one (wires_32[14]),
		.i_add_two (and_18[14]),
		.i_carry (wires_32[15]),
		.o_add (wires_32[16]),
		.o_carry (wires_32[17])
	);

	full_adder sig_32_9 (
		.i_add_one (wires_32[16]),
		.i_add_two (and_19[13]),
		.i_carry (wires_32[17]),
		.o_add (wires_32[18]),
		.o_carry (wires_32[19])
	);

	full_adder sig_32_10 (
		.i_add_one (wires_32[18]),
		.i_add_two (and_20[12]),
		.i_carry (wires_32[19]),
		.o_add (wires_32[20]),
		.o_carry (wires_32[21])
	);

	full_adder sig_32_11 (
		.i_add_one (wires_32[20]),
		.i_add_two (and_21[11]),
		.i_carry (wires_32[21]),
		.o_add (wires_32[22]),
		.o_carry (wires_32[23])
	);

	full_adder sig_32_12 (
		.i_add_one (wires_32[22]),
		.i_add_two (and_22[10]),
		.i_carry (wires_32[23]),
		.o_add (wires_32[24]),
		.o_carry (wires_32[25])
	);

	full_adder sig_32_13 (
		.i_add_one (wires_32[24]),
		.i_add_two (and_23[9]),
		.i_carry (wires_32[25]),
		.o_add (o_mul[32]),
		.o_carry (carry[32])
	);

	//multiplication significant bit 33
	full_adder sig_33_0 (
		.i_add_one (and_10[23]),
		.i_add_two (and_11[22]),
		.i_carry (carry[32]),
		.o_add (wires_33[0]),
		.o_carry (wires_33[1])
	);

	full_adder sig_33_1 (
		.i_add_one (wires_33[0]),
		.i_add_two (and_12[21]),
		.i_carry (wires_33[1]),
		.o_add (wires_33[2]),
		.o_carry (wires_33[3])
	);

	full_adder sig_33_2 (
		.i_add_one (wires_33[2]),
		.i_add_two (and_13[20]),
		.i_carry (wires_33[3]),
		.o_add (wires_33[4]),
		.o_carry (wires_33[5])
	);

	full_adder sig_33_3 (
		.i_add_one (wires_33[4]),
		.i_add_two (and_14[19]),
		.i_carry (wires_33[5]),
		.o_add (wires_33[6]),
		.o_carry (wires_33[7])
	);

	full_adder sig_33_4 (
		.i_add_one (wires_33[6]),
		.i_add_two (and_15[18]),
		.i_carry (wires_33[7]),
		.o_add (wires_33[8]),
		.o_carry (wires_33[9])
	);

	full_adder sig_33_5 (
		.i_add_one (wires_33[8]),
		.i_add_two (and_16[17]),
		.i_carry (wires_33[9]),
		.o_add (wires_33[10]),
		.o_carry (wires_33[11])
	);

	full_adder sig_33_6 (
		.i_add_one (wires_33[10]),
		.i_add_two (and_17[16]),
		.i_carry (wires_33[11]),
		.o_add (wires_33[12]),
		.o_carry (wires_33[13])
	);	

	full_adder sig_33_7 (
		.i_add_one (wires_33[12]),
		.i_add_two (and_18[15]),
		.i_carry (wires_33[13]),
		.o_add (wires_33[14]),
		.o_carry (wires_33[15])
	);

	full_adder sig_33_8 (
		.i_add_one (wires_33[14]),
		.i_add_two (and_19[14]),
		.i_carry (wires_33[15]),
		.o_add (wires_33[16]),
		.o_carry (wires_33[17])
	);

	full_adder sig_33_9 (
		.i_add_one (wires_33[16]),
		.i_add_two (and_20[13]),
		.i_carry (wires_33[17]),
		.o_add (wires_33[18]),
		.o_carry (wires_33[19])
	);

	full_adder sig_33_10 (
		.i_add_one (wires_33[18]),
		.i_add_two (and_21[12]),
		.i_carry (wires_33[19]),
		.o_add (wires_33[20]),
		.o_carry (wires_33[21])
	);

	full_adder sig_33_11 (
		.i_add_one (wires_33[20]),
		.i_add_two (and_22[11]),
		.i_carry (wires_33[21]),
		.o_add (wires_33[22]),
		.o_carry (wires_33[23])
	);

	full_adder sig_33_12 (
		.i_add_one (wires_33[22]),
		.i_add_two (and_23[10]),
		.i_carry (wires_33[23]),
		.o_add (o_mul[33]),
		.o_carry (carry[33])
	);

	//multiplication significant bit 34
	full_adder sig_34_0 (
		.i_add_one (and_11[23]),
		.i_add_two (and_12[22]),
		.i_carry (carry[33]),
		.o_add (wires_34[0]),
		.o_carry (wires_34[1])
	);

	full_adder sig_34_1 (
		.i_add_one (wires_34[0]),
		.i_add_two (and_13[21]),
		.i_carry (wires_34[1]),
		.o_add (wires_34[2]),
		.o_carry (wires_34[3])
	);

	full_adder sig_34_2 (
		.i_add_one (wires_34[2]),
		.i_add_two (and_14[20]),
		.i_carry (wires_34[3]),
		.o_add (wires_34[4]),
		.o_carry (wires_34[5])
	);

	full_adder sig_34_3 (
		.i_add_one (wires_34[4]),
		.i_add_two (and_15[19]),
		.i_carry (wires_34[5]),
		.o_add (wires_34[6]),
		.o_carry (wires_34[7])
	);

	full_adder sig_34_4 (
		.i_add_one (wires_34[6]),
		.i_add_two (and_16[18]),
		.i_carry (wires_34[7]),
		.o_add (wires_34[8]),
		.o_carry (wires_34[9])
	);

	full_adder sig_34_5 (
		.i_add_one (wires_34[8]),
		.i_add_two (and_17[17]),
		.i_carry (wires_34[9]),
		.o_add (wires_34[10]),
		.o_carry (wires_34[11])
	);

	full_adder sig_34_6 (
		.i_add_one (wires_34[10]),
		.i_add_two (and_18[16]),
		.i_carry (wires_34[11]),
		.o_add (wires_34[12]),
		.o_carry (wires_34[13])
	);	

	full_adder sig_34_7 (
		.i_add_one (wires_34[12]),
		.i_add_two (and_19[15]),
		.i_carry (wires_34[13]),
		.o_add (wires_34[14]),
		.o_carry (wires_34[15])
	);

	full_adder sig_34_8 (
		.i_add_one (wires_34[14]),
		.i_add_two (and_20[14]),
		.i_carry (wires_34[15]),
		.o_add (wires_34[16]),
		.o_carry (wires_34[17])
	);

	full_adder sig_34_9 (
		.i_add_one (wires_34[16]),
		.i_add_two (and_21[13]),
		.i_carry (wires_34[17]),
		.o_add (wires_34[18]),
		.o_carry (wires_34[19])
	);

	full_adder sig_34_10 (
		.i_add_one (wires_34[18]),
		.i_add_two (and_22[12]),
		.i_carry (wires_34[19]),
		.o_add (wires_34[20]),
		.o_carry (wires_34[21])
	);

	full_adder sig_34_11 (
		.i_add_one (wires_34[20]),
		.i_add_two (and_23[11]),
		.i_carry (wires_34[21]),
		.o_add (o_mul[34]),
		.o_carry (carry[34])
	);

	//multiplication significant bit 35
	full_adder sig_35_0 (
		.i_add_one (and_12[23]),
		.i_add_two (and_13[22]),
		.i_carry (carry[34]),
		.o_add (wires_35[0]),
		.o_carry (wires_35[1])
	);

	full_adder sig_35_1 (
		.i_add_one (wires_35[0]),
		.i_add_two (and_14[21]),
		.i_carry (wires_35[1]),
		.o_add (wires_35[2]),
		.o_carry (wires_35[3])
	);

	full_adder sig_35_2 (
		.i_add_one (wires_35[2]),
		.i_add_two (and_15[20]),
		.i_carry (wires_35[3]),
		.o_add (wires_35[4]),
		.o_carry (wires_35[5])
	);

	full_adder sig_35_3 (
		.i_add_one (wires_35[4]),
		.i_add_two (and_16[19]),
		.i_carry (wires_35[5]),
		.o_add (wires_35[6]),
		.o_carry (wires_35[7])
	);

	full_adder sig_35_4 (
		.i_add_one (wires_35[6]),
		.i_add_two (and_17[18]),
		.i_carry (wires_35[7]),
		.o_add (wires_35[8]),
		.o_carry (wires_35[9])
	);

	full_adder sig_35_5 (
		.i_add_one (wires_35[8]),
		.i_add_two (and_18[17]),
		.i_carry (wires_35[9]),
		.o_add (wires_35[10]),
		.o_carry (wires_35[11])
	);

	full_adder sig_35_6 (
		.i_add_one (wires_35[10]),
		.i_add_two (and_19[16]),
		.i_carry (wires_35[11]),
		.o_add (wires_35[12]),
		.o_carry (wires_35[13])
	);	

	full_adder sig_35_7 (
		.i_add_one (wires_35[12]),
		.i_add_two (and_20[15]),
		.i_carry (wires_35[13]),
		.o_add (wires_35[14]),
		.o_carry (wires_35[15])
	);

	full_adder sig_35_8 (
		.i_add_one (wires_21[14]),
		.i_add_two (and_21[14]),
		.i_carry (wires_35[15]),
		.o_add (wires_35[16]),
		.o_carry (wires_35[17])
	);

	full_adder sig_35_9 (
		.i_add_one (wires_35[16]),
		.i_add_two (and_22[13]),
		.i_carry (wires_35[17]),
		.o_add (wires_35[18]),
		.o_carry (wires_35[19])
	);

	full_adder sig_35_10 (
		.i_add_one (wires_35[18]),
		.i_add_two (and_23[12]),
		.i_carry (wires_35[19]),
		.o_add (o_mul[35]),
		.o_carry (carry[35])
	);

	//multiplication significant bit 36
	full_adder sig_36_0 (
		.i_add_one (and_13[23]),
		.i_add_two (and_14[22]),
		.i_carry (carry[35]),
		.o_add (wires_36[0]),
		.o_carry (wires_36[1])
	);

	full_adder sig_36_1 (
		.i_add_one (wires_36[0]),
		.i_add_two (and_15[21]),
		.i_carry (wires_36[1]),
		.o_add (wires_36[2]),
		.o_carry (wires_36[3])
	);

	full_adder sig_36_2 (
		.i_add_one (wires_36[2]),
		.i_add_two (and_16[20]),
		.i_carry (wires_36[3]),
		.o_add (wires_36[4]),
		.o_carry (wires_36[5])
	);

	full_adder sig_36_3 (
		.i_add_one (wires_36[4]),
		.i_add_two (and_17[19]),
		.i_carry (wires_36[5]),
		.o_add (wires_36[6]),
		.o_carry (wires_36[7])
	);

	full_adder sig_36_4 (
		.i_add_one (wires_36[6]),
		.i_add_two (and_18[18]),
		.i_carry (wires_36[7]),
		.o_add (wires_36[8]),
		.o_carry (wires_36[9])
	);

	full_adder sig_36_5 (
		.i_add_one (wires_36[8]),
		.i_add_two (and_19[17]),
		.i_carry (wires_36[9]),
		.o_add (wires_36[10]),
		.o_carry (wires_36[11])
	);

	full_adder sig_36_6 (
		.i_add_one (wires_36[10]),
		.i_add_two (and_20[16]),
		.i_carry (wires_36[11]),
		.o_add (wires_36[12]),
		.o_carry (wires_36[13])
	);	

	full_adder sig_36_7 (
		.i_add_one (wires_36[12]),
		.i_add_two (and_21[15]),
		.i_carry (wires_36[13]),
		.o_add (wires_36[14]),
		.o_carry (wires_36[15])
	);

	full_adder sig_36_8 (
		.i_add_one (wires_21[14]),
		.i_add_two (and_22[14]),
		.i_carry (wires_36[15]),
		.o_add (wires_36[16]),
		.o_carry (wires_36[17])
	);

	full_adder sig_36_9 (
		.i_add_one (wires_36[16]),
		.i_add_two (and_23[13]),
		.i_carry (wires_36[17]),
		.o_add (o_mul[36]),
		.o_carry (carry[36])
	);

	//multiplication significant bit 37
	full_adder sig_37_0 (
		.i_add_one (and_14[23]),
		.i_add_two (and_15[22]),
		.i_carry (carry[36]),
		.o_add (wires_37[0]),
		.o_carry (wires_37[1])
	);

	full_adder sig_37_1 (
		.i_add_one (wires_37[0]),
		.i_add_two (and_16[21]),
		.i_carry (wires_37[1]),
		.o_add (wires_37[2]),
		.o_carry (wires_37[3])
	);

	full_adder sig_37_2 (
		.i_add_one (wires_37[2]),
		.i_add_two (and_17[20]),
		.i_carry (wires_37[3]),
		.o_add (wires_37[4]),
		.o_carry (wires_37[5])
	);

	full_adder sig_37_3 (
		.i_add_one (wires_37[4]),
		.i_add_two (and_18[19]),
		.i_carry (wires_37[5]),
		.o_add (wires_37[6]),
		.o_carry (wires_37[7])
	);

	full_adder sig_37_4 (
		.i_add_one (wires_37[6]),
		.i_add_two (and_19[18]),
		.i_carry (wires_37[7]),
		.o_add (wires_37[8]),
		.o_carry (wires_37[9])
	);

	full_adder sig_37_5 (
		.i_add_one (wires_37[8]),
		.i_add_two (and_20[17]),
		.i_carry (wires_37[9]),
		.o_add (wires_37[10]),
		.o_carry (wires_37[11])
	);

	full_adder sig_37_6 (
		.i_add_one (wires_37[10]),
		.i_add_two (and_21[16]),
		.i_carry (wires_37[11]),
		.o_add (wires_37[12]),
		.o_carry (wires_37[13])
	);	

	full_adder sig_37_7 (
		.i_add_one (wires_37[12]),
		.i_add_two (and_22[15]),
		.i_carry (wires_37[13]),
		.o_add (wires_37[14]),
		.o_carry (wires_37[15])
	);

	full_adder sig_37_8 (
		.i_add_one (wires_21[14]),
		.i_add_two (and_23[14]),
		.i_carry (wires_37[15]),
		.o_add (o_mul[37]),
		.o_carry (carry[37])
	);

	//multiplication significant bit 38
	full_adder sig_38_0 (
		.i_add_one (and_15[23]),
		.i_add_two (and_16[22]),
		.i_carry (carry[37]),
		.o_add (wires_38[0]),
		.o_carry (wires_38[1])
	);

	full_adder sig_38_1 (
		.i_add_one (wires_38[0]),
		.i_add_two (and_17[21]),
		.i_carry (wires_38[1]),
		.o_add (wires_38[2]),
		.o_carry (wires_38[3])
	);

	full_adder sig_38_2 (
		.i_add_one (wires_38[2]),
		.i_add_two (and_18[20]),
		.i_carry (wires_38[3]),
		.o_add (wires_38[4]),
		.o_carry (wires_38[5])
	);

	full_adder sig_38_3 (
		.i_add_one (wires_38[4]),
		.i_add_two (and_19[19]),
		.i_carry (wires_38[5]),
		.o_add (wires_38[6]),
		.o_carry (wires_38[7])
	);

	full_adder sig_38_4 (
		.i_add_one (wires_38[6]),
		.i_add_two (and_20[18]),
		.i_carry (wires_38[7]),
		.o_add (wires_38[8]),
		.o_carry (wires_38[9])
	);

	full_adder sig_38_5 (
		.i_add_one (wires_38[8]),
		.i_add_two (and_21[17]),
		.i_carry (wires_38[9]),
		.o_add (wires_38[10]),
		.o_carry (wires_38[11])
	);

	full_adder sig_38_6 (
		.i_add_one (wires_38[10]),
		.i_add_two (and_22[16]),
		.i_carry (wires_38[11]),
		.o_add (wires_38[12]),
		.o_carry (wires_38[13])
	);	

	full_adder sig_38_7 (
		.i_add_one (wires_38[12]),
		.i_add_two (and_23[15]),
		.i_carry (wires_38[13]),
		.o_add (o_mul[38]),
		.o_carry (carry[38])
	);

	//multiplication significant bit 39
	full_adder sig_39_0 (
		.i_add_one (and_16[23]),
		.i_add_two (and_17[22]),
		.i_carry (carry[38]),
		.o_add (wires_39[0]),
		.o_carry (wires_39[1])
	);

	full_adder sig_39_1 (
		.i_add_one (wires_39[0]),
		.i_add_two (and_18[21]),
		.i_carry (wires_39[1]),
		.o_add (wires_39[2]),
		.o_carry (wires_39[3])
	);

	full_adder sig_39_2 (
		.i_add_one (wires_39[2]),
		.i_add_two (and_19[20]),
		.i_carry (wires_39[3]),
		.o_add (wires_39[4]),
		.o_carry (wires_39[5])
	);

	full_adder sig_39_3 (
		.i_add_one (wires_39[4]),
		.i_add_two (and_20[19]),
		.i_carry (wires_39[5]),
		.o_add (wires_39[6]),
		.o_carry (wires_39[7])
	);

	full_adder sig_39_4 (
		.i_add_one (wires_39[6]),
		.i_add_two (and_21[18]),
		.i_carry (wires_39[7]),
		.o_add (wires_39[8]),
		.o_carry (wires_39[9])
	);

	full_adder sig_39_5 (
		.i_add_one (wires_39[8]),
		.i_add_two (and_22[17]),
		.i_carry (wires_39[9]),
		.o_add (wires_39[10]),
		.o_carry (wires_39[11])
	);

	full_adder sig_39_6 (
		.i_add_one (wires_39[10]),
		.i_add_two (and_23[16]),
		.i_carry (wires_39[11]),
		.o_add (o_mul[39]),
		.o_carry (carry[39])
	);

	//multiplication significant bit 40
	full_adder sig_40_0 (
		.i_add_one (and_17[23]),
		.i_add_two (and_18[22]),
		.i_carry (carry[39]),
		.o_add (wires_40[0]),
		.o_carry (wires_40[1])
	);

	full_adder sig_40_1 (
		.i_add_one (wires_40[0]),
		.i_add_two (and_19[21]),
		.i_carry (wires_40[1]),
		.o_add (wires_40[2]),
		.o_carry (wires_40[3])
	);

	full_adder sig_40_2 (
		.i_add_one (wires_40[2]),
		.i_add_two (and_20[20]),
		.i_carry (wires_40[3]),
		.o_add (wires_40[4]),
		.o_carry (wires_40[5])
	);

	full_adder sig_40_3 (
		.i_add_one (wires_40[4]),
		.i_add_two (and_21[19]),
		.i_carry (wires_40[5]),
		.o_add (wires_40[6]),
		.o_carry (wires_40[7])
	);

	full_adder sig_40_4 (
		.i_add_one (wires_40[6]),
		.i_add_two (and_22[18]),
		.i_carry (wires_40[7]),
		.o_add (wires_40[8]),
		.o_carry (wires_40[9])
	);

	full_adder sig_40_5 (
		.i_add_one (wires_40[8]),
		.i_add_two (and_23[17]),
		.i_carry (wires_40[9]),
		.o_add (o_mul[40]),
		.o_carry (carry[40])
	);

	//multiplication significant bit 41
	full_adder sig_41_0 (
		.i_add_one (and_18[23]),
		.i_add_two (and_19[22]),
		.i_carry (carry[40]),
		.o_add (wires_41[0]),
		.o_carry (wires_41[1])
	);

	full_adder sig_41_1 (
		.i_add_one (wires_41[0]),
		.i_add_two (and_20[21]),
		.i_carry (wires_41[1]),
		.o_add (wires_41[2]),
		.o_carry (wires_41[3])
	);

	full_adder sig_41_2 (
		.i_add_one (wires_41[2]),
		.i_add_two (and_21[20]),
		.i_carry (wires_41[3]),
		.o_add (wires_41[4]),
		.o_carry (wires_41[5])
	);

	full_adder sig_41_3 (
		.i_add_one (wires_41[4]),
		.i_add_two (and_22[19]),
		.i_carry (wires_41[5]),
		.o_add (wires_41[6]),
		.o_carry (wires_41[7])
	);

	full_adder sig_41_4 (
		.i_add_one (wires_41[6]),
		.i_add_two (and_23[18]),
		.i_carry (wires_41[7]),
		.o_add (o_mul[41]),
		.o_carry (carry[41])
	);

	//multiplication significant bit 42
	full_adder sig_42_0 (
		.i_add_one (and_19[23]),
		.i_add_two (and_20[22]),
		.i_carry (carry[41]),
		.o_add (wires_42[0]),
		.o_carry (wires_42[1])
	);

	full_adder sig_42_1 (
		.i_add_one (wires_42[0]),
		.i_add_two (and_21[21]),
		.i_carry (wires_42[1]),
		.o_add (wires_42[2]),
		.o_carry (wires_42[3])
	);

	full_adder sig_42_2 (
		.i_add_one (wires_42[2]),
		.i_add_two (and_22[20]),
		.i_carry (wires_42[3]),
		.o_add (wires_42[4]),
		.o_carry (wires_42[5])
	);

	full_adder sig_42_3 (
		.i_add_one (wires_42[4]),
		.i_add_two (and_23[19]),
		.i_carry (wires_42[5]),
		.o_add (o_mul[42]),
		.o_carry (carry[42])
	);

	//multiplication significant bit 43
	full_adder sig_43_0 (
		.i_add_one (and_20[23]),
		.i_add_two (and_21[22]),
		.i_carry (carry[42]),
		.o_add (wires_43[0]),
		.o_carry (wires_43[1])
	);

	full_adder sig_43_1 (
		.i_add_one (wires_43[0]),
		.i_add_two (and_22[21]),
		.i_carry (wires_43[1]),
		.o_add (wires_43[2]),
		.o_carry (wires_43[3])
	);

	full_adder sig_43_2 (
		.i_add_one (wires_43[2]),
		.i_add_two (and_23[20]),
		.i_carry (wires_43[3]),
		.o_add (o_mul[43]),
		.o_carry (carry[43])
	);

	//multiplication significant bit 44
	full_adder sig_44_0 (
		.i_add_one (and_21[23]),
		.i_add_two (and_22[22]),
		.i_carry (carry[43]),
		.o_add (wires_44[0]),
		.o_carry (wires_44[1])
	);

	full_adder sig_44_1 (
		.i_add_one (wires_44[0]),
		.i_add_two (and_23[21]),
		.i_carry (wires_44[1]),
		.o_add (o_mul[44]),
		.o_carry (carry[44])
	);

	//multiplication significant bit 45
	full_adder sig_45_0 (
		.i_add_one (and_22[23]),
		.i_add_two (and_23[22]),
		.i_carry (carry[44]),
		.o_add (o_mul[45]),
		.o_carry (carry[45])
	);

	//multiplication significant bit 46 & bit 47
	half_adder sig_46 (
		.i_add_one (and_23[23]),
		.i_add_two (carry[45]),
		.o_add (o_mul[46]),
		.o_carry (o_mul[47])
	);

endmodule
