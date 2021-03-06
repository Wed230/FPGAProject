module _4bitAdder (A, B, Cin, Sum, Cout);
input [3:0] A, B;
input Cin; 
output [3:0] Sum;
output Cout;
wire Cout;
wire [4:0] temp;
wire [4:0] Sum;
assign temp[0] = Cin;
assign Cout = temp[4];
endmodule

module _1bitAdder (A, B, Ci, Sum, Co);  //此模块正确
input A, B, Ci;
output Sum, Co;
assign Sum = A^B^Ci;
assign Co = (A&B) | (B&Ci) | (A&Ci);
endmodule
