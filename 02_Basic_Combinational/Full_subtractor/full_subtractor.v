module full_subtractor(
    input a, b, bin,
    output reg d, bout
);
always@(*) begin

 d = a ^ b ^ bin;
 bout = (~a & b) | (~(a ^ b) & bin);
end
endmodule


