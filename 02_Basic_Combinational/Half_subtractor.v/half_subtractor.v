module half_subtractor(
input a,b,
output reg d,bout);
always@(*) begin
 d = a ^ b;
 bout = ~a & b;
end
endmodule
