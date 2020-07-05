`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2020 12:58:00
// Design Name: 
// Module Name: m_parthi
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

module m_parthi(IN,SEL,OUT,ESEL,EOUT);


//parameter r=4;
//parameter  q=2;

input [(`x-1):0]IN;
input [(`y-1):0]SEL ;
input [(`y-1):0]ESEL;

output  [(`x-1):0]OUT;
output EOUT;

genvar c;for(c=0;c<`x;c=c+1)
begin    
b_parthi  M (.in(IN),.sel(SEL),.out(OUT[c]));  
e_parthi EM (.ein(OUT),. esel(ESEL),. eout(EOUT));
end

endmodule
