module p2_tb;
wire [2:0]class3;
wire [4:0]cs;
wire [4:0]os0;
wire [4:0]os1;
wire [4:0]os2;
wire [15:0]ml;
wire [15:0]aluout;
reg [31:0]i;
reg [4:0]s0;
reg [4:0]s1;
reg [4:0]s2;
p2 my_gate(i,s0,s1,s2,class3,cs,os0,os1,os2,ml,aluout);
initial
begin
$monitor("i:%b class:%b CS:%b s0:%d s1:%d s2:%d ML:%d Aluout:%d",i,class3,cs,os0,os1,os2,ml,aluout); 
i = 32'b00000010001100101000000000100000;
s0 = 5'b00100;
s1 = 5'b01010;
s2 = 5'b10100;
#5
i = 32'b10001110001100000000000000100000;
s0 = 5'b00100;
s1 = 5'b01010;
s2 = 5'b10100;
#5
i = 32'b10101110001100000000000000100000;
s0 = 5'b00100;
s1 = 5'b01010;
s2 = 5'b10100;
#5
i = 32'b00010010000100010000000011001000;
s0 = 5'b00100;
s1 = 5'b01010;
s2 = 5'b10100;
#5
i = 32'b00001000000000000000001111101000;
s0 = 5'b00100;
s1 = 5'b01010;
s2 = 5'b10100;
end
endmodule

