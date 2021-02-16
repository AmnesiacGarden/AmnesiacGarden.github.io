//����load-enableʹ�ܣ�������reset�ļĴ���
module gnrl_dffl #(parameter width = 32) (
input  clk,
input  lden, 
input  [width-1:0] dnxt,
output [width-1:0] qout 
);

reg [width-1:0] qout_r;

always @(posedge clk) begin
  if (lden == 1'b1)
    qout_r <= dnxt;
end

assign qout = qout_r;    

endmodule