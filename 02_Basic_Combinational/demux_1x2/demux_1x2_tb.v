module demux1x2_tb;

reg i, sel;
wire y0, y1;

demux_1x2 uut(
    .i(i),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, demux1x2_tb);

    $monitor("Time=%0t i=%b sel=%b y0=%b y1=%b",
             $time, i, sel, y0, y1);

    i=0; sel=0; #5;
    i=1; sel=0; #5;
    i=0; sel=1; #5;
    i=1; sel=1; #5;

    $finish;
end

endmodule

