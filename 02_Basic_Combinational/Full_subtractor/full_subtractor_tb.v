module full_subtractor_tb;
reg a, b, bin;
wire d, bout;
full_subtractor uut(.a(a), .b(b), .bin(bin), .d(d), .bout(bout));
initial begin
$dumpvars(0,full_subtractor_tb);
$dumpfile("wave.vcd");
$monitor("Time = %0t A = %b B = %b C = %b D = %b bout = %b", $time, a , b , bin , d, bout);
a=0; b=0; bin=0; #5
a=1;b=1;bin=0; #5
a=0;b=0;bin=1;#5
a=1;b=1;bin=1;#5
$finish;
end
endmodule






