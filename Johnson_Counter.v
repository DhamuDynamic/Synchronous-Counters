module Johnson_Counter(Clk,Rst,Q);
	input Clk,Rst;
	output reg [3:0] Q;
	always @(posedge Clk)
		begin
			if(Rst)
				Q <= 4'b0;
			else
				begin
					Q[3] <= ~Q[0];
					Q[2] <= Q[3];
					Q[1] <= Q[2];
					Q[0] <= Q[1];
				end
		end
endmodule
