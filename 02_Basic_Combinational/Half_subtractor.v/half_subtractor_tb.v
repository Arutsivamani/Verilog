module half_subtractor_tb;
reg a,b;
wire d,bout;
half_subtractor uut(.a(a), .b(b), .d(d), .bout(bout));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, half_subtractor_tb);
$monitor("Time = %0t A = %b B=%b Sum = %b Carry = %b", $time, a, b, d, bout);
a = 0; b = 0; #5
a = 0; b = 1; #5
a=1; b=0; #5
a = 1; b = 1; #5
$finish;
end
endmodule
