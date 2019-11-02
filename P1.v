module decoder(b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,p,q,r,s);
input b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12;
output p,q,r,s;

assign p = b3 || b4 || b5;
assign q = b6 || b7 || b8;
assign r = b9 || b10 || b11;
assign s = b12 || b1 || b2;

endmodule




