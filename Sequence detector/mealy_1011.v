module detect_1011(input clk,
input resn,
input in, 
output out
);
parameter IDLE = 0, S1= 1, S10 = 2, S101=3;
reg [1:0] present_state, next_state;

always@(posedge clk) begin
if(!resn) present_state <= IDLE;
else present_state <= next_state;
end
always @(*) begin
    case(present_state)
    IDLE: begin
        if(in) next_state = S1;
    else next_state = IDLE;
    end
    S1: begin
        if(!in) next_state = S10;
        else next_state = S1;
    end
    S10: begin
        if(in)next_state = S101;
        else next_state = IDLE;
    end
    S101: begin
        if(in) begin
             next_state = IDLE;
        end
        else next_state = S10;
    end
endcase
end
assign out = present_state == S101 & in;
endmodule
