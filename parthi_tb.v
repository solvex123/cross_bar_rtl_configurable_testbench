`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2020 13:02:16
// Design Name: 
// Module Name: parthi_tb
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


`include "con_parthi_tb.v"
`include "self_parthi.v"
`define self_tb


module parthi_tb();


//parameter x=4;
//parameter y=2;
//make this as part of file read i/o operation
//keep self checker part seperately and include checker file here 

reg [`a-1:0]IN;
reg [`b-1:0]SEL;
reg [`b-1:0]ESEL;

wire [`a-1:0]OUT;
wire EOUT;

integer i;

m_parthi DUT (.IN(IN),.SEL(SEL),.ESEL(ESEL),.OUT(OUT),.EOUT(EOUT));

initial
 begin
 //add for loop for generate input should be configurable from file read i/o operation
 //we have to ensure all possible inputs are generated (64 inputs)
  for(i=0;i<=`no_of_loops;i=i+1)
   begin
    {ESEL,SEL,IN} = i;
    //min_time_value to max_time_value
    `ifdef self_tb
     sri(IN,SEL,ESEL,EOUT);
    `endif
    #10;
   end
 end  
 
 //do display function and monitor and time also (input output selection)
 //without waveform how can we check our dut is working properly in log
 //do self checking modular testbench
 //verilog vs sv vs uvm with vivado
 
 initial
  $monitor($time,"IN=%0b,SEL=%0b,OUT=%0b,ESEL=%0b,EOUT=%0b",IN,SEL,OUT,ESEL,EOUT);
  
 initial
  begin
   $dumpfile("dump.vcd");
   $dumpvars();
  end
  
/*initial
 begin
  for(i=0;i<`no_of_loops;i=i+1)
   begin
    {ESEL,SEL,IN} = i;
    #10;
    
    $display($time,"IN=%0d,SEL=%0d,OUT=%0d,ESEL=%0d,EOUT=%0d",IN,SEL,OUT,ESEL,EOUT);
    
    if(ESEL==0&&SEL==0)
    begin
     if(EOUT==IN[0])
     $display("mux1 input 0 is working");
     else
     $display("mux1 input 0 is not working");
    end
    
    if(ESEL==0&&SEL==1)
    begin
     if(EOUT==IN[1])
     $display("mux1 input 1 is working");
     else
     $display("mux1 input 1 is not working");
    end
    
    if(ESEL==0&&SEL==2)
    begin
     if(EOUT==IN[2])
     $display("mux1 input 2 is working");
     else
     $display("mux1 input 2 is not working");
    end
    
    if(ESEL==0&&SEL==3)
    begin
     if(EOUT==IN[3])
     $display("mux1 input 3 is working");
     else
     $display("mux1 input 3 is not working");
    end
    
    
    
    
    
    if(ESEL==1&&SEL==0)
    begin
     if(EOUT==IN[0])
     $display("mux2 input 0 is working");
     else
     $display("mux2 input 0 is not working");
    end
    
    if(ESEL==1&&SEL==1)
    begin
     if(EOUT==IN[1])
     $display("mux2 input 1 is working");
     else
     $display("mux2 input 1 is not working");
    end
    
    if(ESEL==1&&SEL==2)
    begin
     if(EOUT==IN[2])
     $display("mux2 input 2 is working");
     else
     $display("mux2 input 2 is not working");
    end
    
    if(ESEL==1&&SEL==3)
    begin
     if(EOUT==IN[3])
     $display("mux2 input 3 is working");
     else
     $display("mux2 input 3 is not working");
    end
    
    
    
    
    if(ESEL==2&&SEL==0)
    begin
     if(EOUT==IN[0])
     $display("mux3 input 0 is working");
     else
     $display("mux3 input 0 is not working");
    end
    
    if(ESEL==2&&SEL==1)
    begin
     if(EOUT==IN[1])
     $display("mux3 input 1 is working");
     else
     $display("mux3 input 1 is not working");
    end
    
    if(ESEL==2&&SEL==2)
    begin
     if(EOUT==IN[2])
     $display("mux3 input 2 is working");
     else
     $display("mux3 input 2 is not working");
    end
    
    if(ESEL==2&&SEL==3)
    begin
     if(EOUT==IN[3])
     $display("mux3 input 3 is working");
     else
     $display("mux3 input 3 is not working");
    end
    
    
    if(ESEL==3&&SEL==0)
    begin
     if(EOUT==IN[0])
     $display("mux4 input 0 is working");
     else
     $display("mux4 input 0 is not working");
    end
    
    if(ESEL==3&&SEL==1)
    begin
     if(EOUT==IN[1])
     $display("mux4 input 1 is working");
     else
     $display("mux4 input 1 is not working");
    end
    
    if(ESEL==3&&SEL==2)
    begin
     if(EOUT==IN[2])
     $display("mux4 input 2 is working");
     else
     $display("mux4 input 2 is not working");
    end
    
    if(ESEL==3&&SEL==3)
    begin
     if(EOUT==IN[3])
     $display("mux4 input 3 is working");
     else
     $display("mux4 input 3 is not working");
    end
    
   end
 end  
 
  
 initial
  begin
   $dumpfile("dump.vcd");
   $dumpvars();
  end*/
  
endmodule
