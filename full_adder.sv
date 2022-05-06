module full_adder (
	input wire i_add_one,
	input wire i_add_two,
	input wire i_carry,

	output logic o_add,
	output logic o_carry
);

	wire w1, w2, w3;
	
	xor xor_1 (w1, i_add_one, i_add_two);
	xor add_o (o_add, w1, i_carry);

	and and_1 (w2, i_add_one, i_add_two);
	and and_2 (w3, w1, i_carry);
	or carry_o (o_carry, w2, w3);

endmodule
