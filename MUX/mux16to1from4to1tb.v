module mux16to1from4to1tb;
wire tbout;
reg[15:0] tbin;
reg[3:0] tbsel;
mux16to1from4to1 mu(
    .out(tbout),
    .in(tbin),
    .sel(tbsel)
);

initial
begin
    $dumpfile("mux16to1.vcd");
    $dumpvars(0, mux16to1from4to1tb);
end

initial begin 
tbin = 16'hABCD;
tbsel = 4'd0;
#5 tbsel = 4'd0;
#5 tbsel = 4'd1;
#5 tbsel = 4'd2;
#5 tbsel = 4'd3;
#5 tbsel = 4'd4;
#5 tbsel = 4'd5;
#5 tbsel = 4'd6;
#5 tbsel = 4'd7;
#5 tbsel = 4'd8;
#5 tbsel = 4'd9;
#5 tbsel = 4'd10;
#5 tbsel = 4'd11;
#5 tbsel = 4'd12;
#5 tbsel = 4'd13;
#5 tbsel = 4'd14;
#5 tbsel = 4'd15;
end
initial
begin
    $monitor($time, " Input: %h | Select Line: %h | Output: %h",tbin, tbsel, tbout);
end
endmodule