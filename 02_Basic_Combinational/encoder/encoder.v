
module encoder4x2(
    input i0, i1, i2, i3,
    output reg [1:0] y
);

always @(*) begin
    case ({i3, i2, i1, i0})
        4'b0001: y = 2'b00;
        4'b0010: y = 2'b01;
        4'b0100: y = 2'b10;
        4'b1000: y = 2'b11;
        default: y = 2'b00;
    endcase
end

endmodule

// y[1] = i3 | i2
// y[0] = i1 | i0
