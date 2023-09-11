//����load-enableʹ�ܣ������첽reset����λĬ��ֵΪ0�ļĴ���
module gnrl_dfflr #(parameter width = 32) (
input  clk,
input  rst_n,
input  lden, 
input  [width-1:0] dnxt,
output [width-1:0] qout
);

reg [width-1:0] qout_r;

always @(posedge clk or negedge rst_n) begin
  if (rst_n == 1'b0)
    qout_r <= {width{1'b0}};
  else if (lden == 1'b1)
    qout_r <= dnxt;
end