module half_adder(Sum, C, A, B);
input  A, B;
output C, Sum;  
xor (Sum, A,B);
and (C, A, B);
endmodule