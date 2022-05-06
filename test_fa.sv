module testtop #(parameter WIDTH = 24);
	logic [WIDTH-1:0] I_mul_one;
	logic [WIDTH-1:0] I_mul_two;

	wire [2*WIDTH-1:0] O_mul;
	//logic signed O_carry;
	integer i;
	multi_signi ms0 (
		.i_mul_one (I_mul_one),
		.i_mul_two (I_mul_two),
		.o_mul (O_mul)
);

	initial begin
		I_mul_two = 1;
		for (i = 10000; i < 1000000; i++) begin
			#5 I_mul_one = i;
		end
		#10 $stop;
	end

	always @(I_mul_one or I_mul_two) begin
		$display (
			"i_mul_one = %d, i_mul_two = %d, o_mul = %d",
			I_mul_one, I_mul_two, O_mul
		);
	end
endmodule
