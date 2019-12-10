module Registrador (clk, entrada, T, acumulador);
	input wire clk;
	input wire [4:0]entrada, T;
	output reg [4:0]acumulador;

	always @ (posedge clk)
	begin
		case(T)
			4'd0: //Hold
			begin
				acumulador <= acumulador;
			end
			4'd1: //Load
			begin
				acumulador <= entrada;
			end
			4'd2: //Reset
			begin
				acumulador <= 4'd0;
			end
			4'd3: //Shift
			begin
				acumulador <= acumulador >> 1;
			end
		endcase
	end
endmodule 
