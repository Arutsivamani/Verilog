
module mux2x1_dataflow(
    input a, b, sel,
    output y
);

assign y = sel ? b : a;

endmodule

