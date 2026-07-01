
module decoder3x8_tb;

reg [2:0] a;
wire y0, y1, y2, y3, y4, y5, y6, y7;

decoder3x8_gatelevel uut(
    .a(a),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, decoder3x8_tb);

    $monitor("Time=%0t a=%b y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",
             $time, a, y0, y1, y2, y3, y4, y5, y6, y7);

    a = 3'b000; #5;
    a = 3'b001; #5;
    a = 3'b010; #5;
    a = 3'b011; #5;
    a = 3'b100; #5;
    a = 3'b101; #5;
    a = 3'b110; #5;
    a = 3'b111; #5;

    $finish;
end

endmodule

