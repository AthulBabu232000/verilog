`timescale 10ns/1ns

module full_addertb;
    reg A, B, Cin;
    wire Sum, Carry;

// moduleneedtobecalled(.there(here))
    full_adder fu (
        .Sum(Sum),
        .Carry(Carry),
        .A(A),
        .B(B),
        .Cin(Cin)
    );

    initial begin
        // Initial Values
        A = 1'b0; B = 1'b0; Cin = 1'b0;
        #5 Cin = 1'b1;
        #5 Cin = 1'b0; B = 1'b1;
        #5 Cin = 1'b1; B = 1'b1;
        #5 A = 1'b1; B = 1'b0; Cin = 1'b0;
        #5 A = 1'b1; B = 1'b0; Cin = 1'b1;
        #5 A = 1'b1; B = 1'b1; Cin = 1'b0;
        #5 A = 1'b1; B = 1'b1; Cin = 1'b1;
        #5 $finish;  
    end

    initial begin
        $monitor("Time: %0t | A = %b, B = %b, Cin = %b | Sum = %b, Carry = %b", $time, A, B, Cin, Sum, Carry);
    end

endmodule
