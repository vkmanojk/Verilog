module alu_tb();
reg [7:0]a;
reg [7:0]b;
wire [7:0]o;
reg [3:0]aluop;

alu my(a,b,o,aluop);

initial
begin
$monitor("A: %d B: %d Aluop: %b Output: %d",a,b,aluop,o);
a=64;
b=2;
aluop=0;
#5
aluop=1;
#5
aluop=2;
#5
aluop=3;
#5
aluop=4;
#5
aluop=5;
#5
aluop=6;
#5
aluop=7;
#5
aluop=8;
#5
aluop=9;
#5
aluop=10;
#5
aluop=11;
#5
aluop=12;
#5
aluop=13;
#5
aluop=14;
#5
aluop=15;

end
endmodule