module testtop;
  logic  [31:0] i_mul_one;
  logic  [31:0] i_mul_two;  
  logic  [31:0] o_mul;
  
  multiplication test (.*);
  
  initial begin
    // 0.0 x 7.0 = 0.0
    i_mul_one = 32'h00000000;
    i_mul_two = 32'h40E00000;
    
    // 2.245 x 5.4 = 12.122999
    #10
    i_mul_one = 32'h400FAE14;
    i_mul_two = 32'h40ACCCCD;
    
    // -5.2 x 1.235 = -6.422
    #10
    i_mul_one = 32'hC0A66666;
    i_mul_two = 32'h3F9E147B;
    
    // -0.00125 x -65.891 = 0.08236375
    #10
    i_mul_one = 32'hBAA3D70A;
    i_mul_two = 32'hC283C831;
    #10 $stop;
  end
  
endmodule