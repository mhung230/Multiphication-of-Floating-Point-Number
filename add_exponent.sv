module add_exp (
	input wire [7:0] i_exp_one,
	input wire [7:0] i_exp_two,

	output logic [7:0] o_exp,
	output logic 		 o_check
);
	wire [7:1] wires; 

	full_adder fa_00 (
		.i_add_one (i_exp_one[0]),
		.i_add_two (i_exp_two[0]),
		.i_carry (1'b0),
		.o_add (o_exp[0]),
		.o_carry (wires[1])
);

	full_adder fa_01 (
		.i_add_one (i_exp_one[1]),
		.i_add_two (i_exp_two[1]),
		.i_carry (wires[1]),
		.o_add (o_exp[1]),
		.o_carry (wires[2])
);

	full_adder fa_02 (
		.i_add_one (i_exp_one[2]),
		.i_add_two (i_exp_two[2]),
		.i_carry (wires[2]),
		.o_add (o_exp[2]),
		.o_carry (wires[3])
);

	full_adder fa_03 (
		.i_add_one (i_exp_one[3]),
		.i_add_two (i_exp_two[3]),
		.i_carry (wires[3]),
		.o_add (o_exp[3]),
		.o_carry (wires[4])
);

	full_adder fa_04 (
		.i_add_one (i_exp_one[4]),
		.i_add_two (i_exp_two[4]),
		.i_carry (wires[4]),
		.o_add (o_exp[4]),
		.o_carry (wires[5])
);

	full_adder fa_05 (
		.i_add_one (i_exp_one[5]),
		.i_add_two (i_exp_two[5]),
		.i_carry (wires[5]),
		.o_add (o_exp[5]),
		.o_carry (wires[6])
);

	full_adder fa_06 (
		.i_add_one (i_exp_one[6]),
		.i_add_two (i_exp_two[6]),
		.i_carry (wires[6]),
		.o_add (o_exp[6]),
		.o_carry (wires[7])
);

	full_adder fa_07 (
		.i_add_one (i_exp_one[7]),
		.i_add_two (i_exp_two[7]),
		.i_carry (wires[7]),
		.o_add (o_exp[7]),
		.o_carry (o_check)
);

	//assign o_check = check;
endmodule