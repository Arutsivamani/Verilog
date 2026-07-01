module decoder2x4_tb;

reg [1:0] a;
wire y0, y1, y2, y3;

decoder2x4 uut(
    .a(a),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, decoder2x4_tb);

    $monitor("Time=%0t a=%b y0=%b y1=%b y2=%b y3=%b",
             $time, a, y0, y1, y2, y3);

    a = 2'b00; #5;
    a = 2'b01; #5;
    a = 2'b10; #5;
    a = 2'b11; #5;

    $finish;
end

endmodule

