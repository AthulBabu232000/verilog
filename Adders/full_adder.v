module full_adder(Sum,Carry,A,B,Cin);
input A,B,Cin;
output Sum, Carry;
wire sum1,cin1,cin2;

half_adder ha1( 
    .Sum(sum1),
    .C(cin1),
    .A(A),
    .B(B));

half_adder ha2(
    .Sum(Sum),
    .C(cin2),
    .A(sum1),
    .B(Cin)
);

    assign Carry = cin1 | cin2;

endmodule