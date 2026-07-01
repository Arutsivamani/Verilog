// y = s'a + sb
module mux2x1_gate(
    input a, b, sel,
    output y
);

wire w1, w2, sel_bar;

not (sel_bar, sel);
and (w1, a, sel_bar);
and (w2, b, sel);
or (y, w1, w2);

endmodule


