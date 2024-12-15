module mux4to1behavioral(out,in,sel);
input[3:0] in;
input[1:0] sel;
output out;
assign out = in[sel];
endmodule