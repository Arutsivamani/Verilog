module not_tb;
reg a;
wire y;
not_gate uut(.a(a), .y(y));
initial begin 
$dumpfile("wave.vcd");
$dumpvars(0,not_tb);
$monitor("Time = %0t A = %b B = %b", $time, a, y);
a = 0; #5
a = 1; #5
$finish;
end
endmodule



