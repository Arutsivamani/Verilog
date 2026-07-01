
module mux4x1_tb;

reg i0, i1, i2, i3;
reg [1:0] sel;
wire y;

mux4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, mux4x1_tb);

    $monitor("Time=%0t i0=%b i1=%b i2=%b i3=%b sel=%b y=%b",
             $time, i0, i1, i2, i3, sel, y);

    i0=0; i1=1; i2=0; i3=1;

    sel=2'b00; #5;
    sel=2'b01; #5;
    sel=2'b10; #5;
    sel=2'b11; #5;

    i0=1; i1=0; i2=1; i3=0;

    sel=2'b00; #5;
    sel=2'b01; #5;
    sel=2'b10; #5;
    sel=2'b11; #5;

    $finish;
end

endmodule
