module mux16to1from4to1(out,in,sel);
input [15:0] in;
input [3:0] sel;
output out;
wire [3:0] w;
mux4to1behavioral M1(w[0],in[3:0],sel[1:0]);
mux4to1behavioral M2(w[1],in[7:4],sel[1:0]);
mux4to1behavioral M3(w[2],in[11:8],sel[1:0]);
mux4to1behavioral M4(w[3],in[15:12],sel[1:0]);
mux4to1behavioral M5(out,w,sel[3:2]);
endmodule