module Memoria (clk, entrada, Tx, operacao);
	input wire clk;
	input wire [4:0]Tx;
	output reg [4:0] entrada, operacao;
	
	initial begin
		operacao <= 4'd0;
	end
	
	always @(posedge clk)
	begin
		case(operacao)
			4'd0:
			begin
				entrada <= 4'd4;
				operacao <= 4'd1;
			end
			4'd1:
			begin
				entrada <= 4'd6;
				operacao <= 4'd2;
			end
			4'd2:
			begin
				operacao <= 4'd3;
			end
			4'd3:
			begin
				operacao <= 4'd4;
			end
			4'd4:
			begin
				operacao <= 4'd0;
			end
			
		endcase
	end

endmodule 