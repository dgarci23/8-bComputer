`timescale 1ns/1ns
module Computer_tb ();

	reg clk;
	reg [3:0] key;
	
	wire [6:0] HEX0;
	wire [6:0] HEX1;
	wire [6:0] HEX2;
	
	Computer uut (
		.CLOCK_50(clk),
		.KEY(key),
		.HEX0(HEX0),
		.HEX1(HEX1),
		.HEX2(HEX2)
	);
	
	always #4 clk = ~clk;

	initial
	begin
		key = 0; clk = 0;
		#160;
		$stop;
	end

endmodule
	