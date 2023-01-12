module mux2_1_behavior(a, b, s, f);
	input a, b, s;
	output f;
	reg f;
	always@(*)
	begin
		if(s == 1'b0)begin
			f = a;
		end
		else begin
			f = b;
		end
	end
endmodule