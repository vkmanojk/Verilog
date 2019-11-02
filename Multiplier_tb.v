module test();
// signals
reg start,reset;
reg[3:0] A,B;
// Outputs
wire [7:0] O;
wire Finish;
// device under test
mult_4x4 dut(reset,start, A,B,O,Finish);
initial begin
reset=1; // reset
#40 start = 0;A =14; B= 11;
#400 reset = 0; 
#40 start = 1; // start
//@(posedge Finish);
//start = 0;
//$finish;
end 
endmodule