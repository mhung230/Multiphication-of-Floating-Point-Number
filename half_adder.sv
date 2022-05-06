module half_adder (
	input i_add_one,
	input i_add_two,

	output o_add,
	output o_carry
);

	xor out (o_add, i_add_one, i_add_two);
	and carry (o_carry, i_add_one, i_add_two);

endmodule
