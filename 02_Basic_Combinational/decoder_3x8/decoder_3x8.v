module decoder3x8_gatelevel(
    input [2:0] a,
    output y0, y1, y2, y3, y4, y5, y6, y7
);

wire a0_bar, a1_bar, a2_bar;

not (a0_bar, a[0]);
not (a1_bar, a[1]);
not (a2_bar, a[2]);

and (y0, a2_bar, a1_bar, a0_bar);
and (y1, a2_bar, a1_bar, a[0]);
and (y2, a2_bar, a[1], a0_bar);
and (y3, a2_bar, a[1], a[0]);
and (y4, a[2], a1_bar, a0_bar);
and (y5, a[2], a1_bar, a[0]);
and (y6, a[2], a[1], a0_bar);
and (y7, a[2], a[1], a[0]);

endmodule

