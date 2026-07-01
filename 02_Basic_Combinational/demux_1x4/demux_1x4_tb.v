
module demux1x4_tb;

reg i;
reg [1:0] sel;
wire y0, y1, y2, y3;

demux1x4_gatelevel uut(
    .i(i),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, demux1x4_tb);

    $monitor("Time=%0t i=%b sel=%b y0=%b y1=%b y2=%b y3=%b",
             $time, i, sel, y0, y1, y2, y3);

    i = 1;

    sel = 2'b00; #5;
    sel = 2'b01; #5;
    sel = 2'b10; #5;
    sel = 2'b11; #5;

    i = 0;

    sel = 2'b00; #5;
    sel = 2'b01; #5;
    sel = 2'b10; #5;
    sel = 2'b11; #5;

    $finish;
end

endmodule

