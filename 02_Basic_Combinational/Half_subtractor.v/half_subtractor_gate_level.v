
module half_subtractor_gate_level(
input a, b,
output d, bout
);
wire w1;
xor (d, a, b);
not(w1,a);
and (bout, w1, b);
endmodule


