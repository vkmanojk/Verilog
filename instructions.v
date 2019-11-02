module instructions(i,s0,s1,s2,cls,cs,os0,os1,os2,ml,alu);
input [31:0]i;
input [31:0]s0;
input [31:0]s1;
input [31:0]s2;


output reg[1:0]cls;
output reg[4:0]cs;
output reg[31:0]os0;
output reg[31:0]os1;
output reg[31:0]os2;
output reg[31:0]alu;
output reg[31:0]ml;

always @(i or s0 or s1 or s2)

begin

if(i== 32'b000000xxxxxxxxxxxxxxxxxxxxxxxxxx)
begin
cls = 2'b01;
if(i==32'b000000xxxxxxxxxxxxxxxxxxxx100000)
begin
cs = 5'b10010;
alu = s1+s2;
os0 = alu;
os1 = s1;
os2 = s2;
end
else if(i==32'b000000xxxxxxxxxxxxxxxxxxxx100010)
begin
cs = 5'b10001;
alu = s1 - s2;
os0 = alu;
os1 = s1;
os2 = s2;
end
end

else if(i== 32'b000010xxxxxxxxxxxxxxxxxxxxxxxxxx)
begin
cls = 2'b10;
ml = 1000;
alu = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
os0 = s0;
os1 = s1;
os2 = s2;
end

else
begin
cls = 2'b11;
if( i == 32'b10001110001100000000000000100000)
begin
cs = 5'b11000;
alu = (i[15:0] << 2) + s1[15:0];
ml = alu;
os0 = s0;
os1 = s1;
os2 = s2;
end

if(i == 32'b10101110001100000000000000100000)
begin
cs = 5'b00100;
ml = (i[15:0] << 2)+s1[15:0];
alu = ml;
os0 = s0;
os1 = s1;
os2 = s2;
end

if(i == 32'b00010010000100010000000011001000)
begin
cs = 5'b00010;
ml = 200;
alu = s0 - s1;
os0 = s0;
os1 = s1;
os2 = s2;
end

end
end

endmodule

