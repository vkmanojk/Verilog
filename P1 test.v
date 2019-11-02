module P();

reg b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12;
wire p,q,r,s;

decoder now(b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,p,q,r,s);

initial
begin

b1=1'b1;
b2=1'b0;
b3=1'b0;
b4=1'b0;
b5=1'b0;
b6=1'b0;
b7=1'b0;
b8=1'b0;
b9=1'b0;
b10=1'b0;
b11=1'b0;
b12=1'b0;

$display("IP %b%b%b%b%b%b%b%b%b%b%b%b OP %b%b%b%b",b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,p,q,r,s);
end
endmodule