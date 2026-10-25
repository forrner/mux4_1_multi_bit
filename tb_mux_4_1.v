`timescale 1ns/1ps

module tb_mux4_1;
localparam W = 8;
reg [W-1:0] d0,d1,d2,d3;
reg [1:0] sel;
wire [W-1:0] y;

mux4_1 #(.WIDTH(W)) u_mux(
    .d0(d0),.d1(d1),.d2(d2),.d3(d3),
    .sel(sel),.y(y)
);

initial begin
    d0 = 8'h01; d1=8'h02; d2=8'h04; d3=8'h08;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    $finish;
end
endmodule