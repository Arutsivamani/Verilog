module demux_1x2(
    input i,
    input sel,
    output reg y0, y1
);

always @(*) begin
    if (sel) begin
        y0 = 0;
        y1 = i;
    end
    else begin
        y0 = i;
        y1 = 0;
    end
end

endmodule
