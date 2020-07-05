`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2020 12:59:51
// Design Name: 
// Module Name: e_parthi
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

module e_parthi(ein,esel,eout);


//parameter p=4;
//parameter o=2;

input [(`x-1):0] ein;
input [(`y-1):0] esel;

output reg eout;

integer b;

always@(*)
 begin
   for(b=0;b<=`x;b=b+1)
    begin
     if(esel==b)
      eout=ein[b];
    end
 end
    
endmodule
