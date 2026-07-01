module nor_tb;
reg a;
reg b;
wire y;
nor_gate uut(.a(a), .b(b), .y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,nor_tb);
$monitor("time=%0t a = %b b = %b y = %b", $time, a, b, y);
a=0; b=0; #5
a=0; b=1; #5
a=1; b=0; #5
a=1; b=1; #5
$finish;
end
endmodule
