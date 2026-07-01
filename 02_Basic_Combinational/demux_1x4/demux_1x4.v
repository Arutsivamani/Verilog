//y0 = s1's0'i
//y1 = s1's0i
//y2y3..
module demux1x4_gatelevel(
    input i,
    input [1:0] sel,
    output y0, y1, y2, y3
);

wire s0_bar, s1_bar;

not (s0_bar, sel[0]);
not (s1_bar, sel[1]);

and (y0, i, s1_bar, s0_bar);
and (y1, i, s1_bar, sel[0]);
and (y2, i, sel[1], s0_bar);
and (y3, i, sel[1], sel[0]);

endmodule

