module full_adder(
input a, b, cin,
output reg s, cout
);
always@(*) begin
s = a ^ b ^ cin;
cout = (a&b) | cin&(a^b);
end
endmodule
