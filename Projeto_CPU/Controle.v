module Controle (clk, Tx, Ty, Tz, Tula, operacao);
	input wire clk;
	input wire [4:0] operacao;
	output reg [4:0] Tx, Ty, Tz, Tula;
	
	always @ (posedge clk)
	begin
		case(operacao)
			4'd0:
			begin
				Tx <= 4'd1; //Load
				Ty <= 4'd2; //Reset
				Tz <= 4'd2; //Reset
				Tula <= 4'd0; //Don't carry
			end
			4'd1:
			begin
				Tx <= 4'd1; //Load
				Ty <= 4'd1; //Load
				Tz <= 4'd0; //Hold
				Tula <= 4'd1; //Soma
			end
			4'd2:
			begin
				Tx <= 4'd2; //Reset
				Ty <= 4'd1; //Load
				Tz <= 4'd0; //Hold
				Tula <= 4'd1; //Soma
			end
			4'd3:
			begin
				Tx <= 4'd2; //Reset
				Ty <= 4'd3; //Shift Right
				Tz <= 4'd0; //Hold
				Tula <= 4'd0; //Don't carry
			end
			4'd4:
			begin
				Tx <= 4'd2; //Reset
				Ty <= 4'd0; //Hold
				Tz <= 4'd1; //Load
				Tula <= 4'd0; //Don't carry
			end
		endcase
	end
endmodule 