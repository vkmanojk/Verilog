module mult_tb();
	reg[15:0] multiplier, multiplicand;
	wire[31:0] product;
	
	mult mul(product,multiplier,multiplicand);
	initial begin
	$monitor("Multiplier: %d Multiplicand: %d Product: %d",multiplier,multiplicand,product);
	multiplier = 5;
	multiplicand = 8;
	#10
	multiplier = 8;
	multiplicand = 8;
	#10
	multiplier = 7;
	multiplicand = 8;
	#10
	multiplier = 5;
	multiplicand = 2;
	end
endmodule
