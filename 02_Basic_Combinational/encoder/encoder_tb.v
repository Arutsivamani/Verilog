
module encoder4x2_tb;

reg i0, i1, i2, i3;
wire [1:0] y;

encoder4x2 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .y(y)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, encoder4x2_tb);

    $monitor("Time=%0t i3=%b i2=%b i1=%b i0=%b y=%b",
             $time, i3, i2, i1, i0, y);

    i0=1; i1=0; i2=0; i3=0; #5;
    i0=0; i1=1; i2=0; i3=0; #5;
    i0=0; i1=0; i2=1; i3=0; #5;
    i0=0; i1=0; i2=0; i3=1; #5;

    $finish;
end

endmodule

