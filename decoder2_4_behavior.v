module decoder2_4_behavior(in1, in2, out);
	input	in1, in2;
	output	reg	[3:0]out;
	
	always@(*)
	begin
		if(in1 == 0 && in2 == 0)begin
			out = {3'b000, 1'b1};
		end
		else if(in1 == 1 && in2 == 0)begin
			out = {2'b00, 1'b1, 1'b0};
		end
		else if(in1 == 0 && in2 == 1)begin
			out = {1'b0, 1'b1, 2'b0};
		end
		else begin
			out = {1'b1, 3'b000};
		end
	
	end
	
	
endmodule
