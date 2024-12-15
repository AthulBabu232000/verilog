`timescale 10ns/1ns
module mux4to1behavioraltb;
reg[3:0] tbin;
reg[1:0] tbsel;
wire tbout;
mux4to1behavioral mx(
    .in(tbin),
    .out(tbout),
    .sel(tbsel)
);
initial
begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0,mux4to1behavioraltb);
tbin = 4'hA;
#5 tbsel = 2'd0;
#5 tbsel = 2'd1;
#5 tbsel = 2'd2;
#5 tbsel = 2'd3;
#5 $finish;
end
initial begin
$monitor($time," tbsel = %d, tbin = %h, tbout = %h",tbsel, tbin,tbout);
end
endmodule