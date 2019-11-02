module p2(i,s0,s1,s2,class3,cs,os0,os1,os2,ml,aluout);

input [31:0]i;
input [4:0]s0;
input [4:0]s1;
input [4:0]s2;

output reg [2:0]class3;
output reg [4:0]cs;
output reg [4:0]os0;
output reg [4:0]os1;
output reg [4:0]os2;
output reg [15:0]ml;
output reg [15:0]aluout;

always @(i or s0 or s1 or s2)

begin

//add
if(i == 32'b00000010001100101000000000100000)
begin
class3 = 3'b001;
cs = 5'b00010;
aluout = s1 + s2;
os0 = s1 + s2;
os1 = s1;
os2 = s2;
end

//lw
else if(i == 32'b10001110001100000000000000100000)
begin
class3 = 3'b010;
cs = 5'b11000;
aluout = (i[15:0] << 2) + s1;
ml = aluout;
os0 = s0;
os1 = s1;
os2 = s2;
end
//sw
else if(i == 32'b10101110001100000000000000100000)
begin
class3 = 3'b010;
cs = 5'b00100;
aluout = (i[15:0] << 2) + s1;
ml = aluout;
os0 = s0;
os1 = s1;
os2 = s2;
end
//beq
else if(i == 32'b00010010000100010000000011001000)
begin
class3 = 3'b010;
cs = 5'b00001;
aluout = s0 - s1;
aluout = ~(aluout) + 1;
os0 = s0;
os1 = s1;
os2 = s2;
ml = i[15:0];
end
//jump
else if(i == 32'b00001000000000000000001111101000)
begin
class3 = 3'b100;
cs = 5'b00000;
os0 = s0;
os1 = s1;
os2 = s2;
aluout = 0;
ml =i[15:0];
end
end
endmodule
