`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2020 12:58:41
// Design Name: 
// Module Name: b_parthi
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include "con_parthi.v"

module b_parthi(in,sel,out);


//parameter n=4;
//parameter m=2;

input [`x-1:0] in;
input [`y-1:0] sel;

output reg out;

integer a;

always @ (in or sel) 
 begin 
  for(a=0;a<`x;a=a+1)  
    begin     
     if(sel==a)   
      out = in[a];  
     end
  end
endmodule
