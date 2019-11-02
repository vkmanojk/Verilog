module division_tb();
    parameter WIDTH = 16;
    reg [WIDTH-1:0] A;
    reg [WIDTH-1:0] B;
    wire [WIDTH-1:0] Res;
    division uut (A,B,Res);
    initial begin
		$monitor("A: %d B: %d Quotient: %d",A,B,Res);
        A = 0;  
		B = 0;  
		#100; 
		
        A = 100;    
		B = 10; 
		#100;
		
        A = 200;
		B = 40; 
		#100;
		
        A = 90; 
		B = 9;  
		#100;
		
        A = 70; 
		B = 10; 
		#100;
		
        A = 16; 
		B = 3;  
		#100;
		
        A = 255;    
		B = 5;  
		
    end
      
endmodule