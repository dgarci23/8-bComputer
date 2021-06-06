module add_rom (
	input [4:0] addr,
	input [3:0] imm4,
	output reg [7:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "A";
			1: label = "D";
			2: label = "D";
			4: label = imm4[3];
			5: label = imm4[2];
			6: label = imm4[1];
			7: label = imm4[0];
			default: label = " ";
		endcase
	
endmodule