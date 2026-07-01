module full_adder_tb;
reg a, b, cin;
wire s, cout;
full_adder uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
initial begin
$dumpvars(0,full_adder_tb);
$dumpfile("wave.vcd");
$monitor("Time = %0t A = %b B = %b C = %b S = %b cout = %b", $time, a , b , cin , s, cout);
a=0; b=0; cin=0; #5
a=1;b=1;cin=0; #5
a=0;b=0;cin=1;#5
a=1;b=1;cin=1;#5
$finish;
end
endmodule





