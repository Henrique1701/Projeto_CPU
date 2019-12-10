module ProjetoCPU (clk,Tx,Ty,Tz,Tula,outULA,outX,outY,outZ,operacao,entrada);//CPU
	input wire clk;
	output [4:0] Tx, Ty, Tz, Tula, outX, outY, outZ, outULA;
	output [4:0] operacao, entrada;
	
	
	Controle controle(clk, Tx, Ty, Tz, Tula, operacao);
	Memoria memoria(clk, entrada, Tx, operacao);
	Registrador x(clk, entrada, Tx, outX);
	Registrador y(clk, outULA, Ty, outY);
	Registrador z(clk, outY, Tz, outZ);
	ULA ula(outX, outY, Tula, outULA);
	
endmodule 