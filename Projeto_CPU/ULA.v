module ULA(x, y, Tula, outULA);
	input wire Tula;
	input wire [4:0]x, y;
	output reg outULA;
	
	//Tula = 0 -> soma
	
	always @ (x or y or Tula)
	begin
		case(Tula)
			4'd1:
			begin 
				outULA <= x + y;
			end
		endcase
	end
endmodule 