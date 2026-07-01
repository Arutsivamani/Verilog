module half_adder_tb;
reg a,b;
wire s,c;
half_adder uut(.a(a), .b(b), .s(s), .c(c));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, half_adder_tb);
$monitor("Time = %0t A = %b B=%b Sum = %b Carry = %b", $time, a, b, s, c);
a = 0; b = 0; #5
a = 0; b = 1; #5
a=1; b=0; #5
a = 1; b = 1; #5
$finish;
end
endmodule
