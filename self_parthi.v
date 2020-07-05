`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2020 13:03:07
// Design Name: 
// Module Name: self_parthi
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





    
task sri;

           input [3:0]in;
           input [1:0]sel;
           input [1:0]esel;
           input eout;

begin

    if(esel==0&&sel==0)
    begin
     if(eout==in[0])
     $display("mux1 input 0 is working");
     else
     $display("mux1 input 0 is not working");
    end
    
    if(esel==0&&sel==1)
    begin
     if(eout==in[1])
     $display("mux1 input 1 is working");
     else
     $display("mux1 input 1 is not working");
    end
    
    if(esel==0&&sel==2)
    begin
     if(eout==in[2])
     $display("mux1 input 2 is working");
     else
     $display("mux1 input 2 is not working");
    end
    
    if(esel==0&&sel==3)
    begin
     if(eout==in[3])
     $display("mux1 input 3 is working");
     else
     $display("mux1 input 3 is not working");
    end
    
    
    
    
    
    if(esel==1&&sel==0)
    begin
     if(eout==in[0])
     $display("mux2 input 0 is working");
     else
     $display("mux2 input 0 is not working");
    end
    
    if(esel==1&&sel==1)
    begin
     if(eout==in[1])
     $display("mux2 input 1 is working");
     else
     $display("mux2 input 1 is not working");
    end
    
    if(esel==1&&sel==2)
    begin
     if(eout==in[2])
     $display("mux2 input 2 is working");
     else
     $display("mux2 input 2 is not working");
    end
    
    if(esel==1&&sel==3)
    begin
     if(eout==in[3])
     $display("mux2 input 3 is working");
     else
     $display("mux2 input 3 is not working");
    end
    
    
    
    
    if(esel==2&&sel==0)
    begin
     if(eout==in[0])
     $display("mux3 input 0 is working");
     else
     $display("mux3 input 0 is not working");
    end
    
    if(esel==2&&sel==1)
    begin
     if(eout==in[1])
     $display("mux3 input 1 is working");
     else
     $display("mux3 input 1 is not working");
    end
    
    if(esel==2&&sel==2)
    begin
     if(eout==in[2])
     $display("mux3 input 2 is working");
     else
     $display("mux3 input 2 is not working");
    end
    
    if(esel==2&&sel==3)
    begin
     if(eout==in[3])
     $display("mux3 input 3 is working");
     else
     $display("mux3 input 3 is not working");
    end
    
    
    if(esel==3&&sel==0)
    begin
     if(eout==in[0])
     $display("mux4 input 0 is working");
     else
     $display("mux4 input 0 is not working");
    end
    
    if(esel==3&&sel==1)
    begin
     if(eout==in[1])
     $display("mux4 input 1 is working");
     else
     $display("mux4 input 1 is not working");
    end
    
    if(esel==3&&sel==2)
    begin
     if(eout==in[2])
     $display("mux4 input 2 is working");
     else
     $display("mux4 input 2 is not working");
    end
    
    if(esel==3&&sel==3)
    begin
     if(eout==in[3])
     $display("mux4 input 3 is working");
     else
     $display("mux4 input 3 is not working");
    end
    
end
   
endtask
 

  
