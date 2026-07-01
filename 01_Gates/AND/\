module and_gate_tb;

reg A;
reg B;
wire Y;

and_gate dut(.a(A), .b(B), .y(Y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, and_gate_tb); 
$monitor("Time = %0t a = %b b = %b y= %b",$time, A, B, Y);

A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;
$finish;
end
endmodule

