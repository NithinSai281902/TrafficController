`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 13:37:56
// Design Name: 
// Module Name: Traffic_testbench
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

`timescale 1ns/1ps

module Traffic_testbench;

reg clk, rst;
wire [2:0] light_M1;
wire [2:0] light_M2;
wire [2:0] light_MT;
wire [2:0] light_S;

// DUT instantiation
Traffic_Light_Controller dut (
    .clk(clk),
    .rst(rst),
    .light_M1(light_M1),
    .light_M2(light_M2),
    .light_MT(light_MT),
    .light_S(light_S)
);

// Clock (10ns period)
always #5 clk = ~clk;

// Stimulus
initial begin
    clk = 0;
    rst = 1;      // apply reset

    #20 rst = 0;  // release reset

    #500 $finish; // run simulation
end

// Monitor
initial begin
    $monitor("Time=%0t | M1=%b M2=%b MT=%b S=%b",
              $time, light_M1, light_M2, light_MT, light_S);
end

endmodule
