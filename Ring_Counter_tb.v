module Ring_Counter_tb();
	reg Clk,Rst;
	wire [3:0] Q;
	Ring_Counter dut(Clk,Rst,Q);
	initial
		begin
			Clk = 1'b0;
			forever #20 Clk = ~Clk;
		end
	initial
		begin
			Rst = 1'b1;
			#30;
			Rst = 1'b0;
		end
	initial
		begin
			$dumpfile("dump.vcd");
			$dumpvars(1);
		end
	initial #400 $finish;
endmodule
