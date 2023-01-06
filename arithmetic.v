module arithmetic(a, b, sum, product, difference);
	input		[3:0]a, b;
	output		[7:0]sum, product, difference;
	
	assign sum = a + b;
	assign product = a * b;
	assign difference = a - b;
endmodule
