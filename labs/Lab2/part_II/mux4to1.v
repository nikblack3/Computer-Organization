module mux2to1(x, y, s, m);
	input x; //selected when s is 0
   input y; //selected when s is 1
   input s; //select signal
   output m; //output
	
	assign m = (s & y) | (~s & x);
endmodule

module mux4to1(SW, LEDR);
	input [9:0] SW;
	output [9:0] LEDR;
	
	wire connector_0; // connect mux0 to mux2
	wire connector_1; // connect mux1 to mux2
	
	mux2to1 mux0(
		.x(SW[0]), // SW[0] stands for u
		.y(SW[1]), // SW[1] stands for v
		.s(SW[9]), // SW[9] stands for s_0
		.m(connector_0)
	);
	
	mux2to1 mux1(
		.x(SW[2]), // SW[2] stands for w
		.y(SW[3]), // SW[3] stands for x
		.s(SW[9]),
		.m(connector_1)
	);
	
	mux2to1 mux2(
		.x(connector_0), // connected to output of mux0
		.y(connector_1), // connected to output of mux1
		.s(SW[8]), // SW[8] stands for s_1
		.m(LEDR[0])
	);
endmodule
