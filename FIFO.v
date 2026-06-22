module synchronous_fifo(input clk,
                        input rst,
                        input wr_en,
                        input rd_en,
                        input [7:0] data_in,
                        output full,
                        output empty,
                        output reg [7:0] data_out);

reg[7:0] fifo_mem [0:7];
reg [2:0] wr_pointer;
reg [2:0] rd_pointer;

assign empty=(wr_pointer==rd_pointer);
assign full= ((wr_pointer+1)== rd_pointer);

always@(posedge clk)
begin
if(rst)
begin
wr_pointer<=3'b000;
rd_pointer<=3'b000;
data_out<=8'b00000000;
end
else
begin
  
   if(wr_en&&!full)
   begin
   fifo_mem[wr_pointer]<= data_in;
   wr_pointer<= wr_pointer+1'b1;
   end

   if(rd_en &&!empty)
   begin
   data_out<=fifo_mem[rd_pointer];
   rd_pointer<=rd_pointer+1'b1;
   end
end
end 
endmodule
