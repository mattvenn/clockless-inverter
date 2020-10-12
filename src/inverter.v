`default_nettype none
module inverter (
    input wire clk,
    input wire in,
    output reg out );

    always @(posedge clk)
        out <= !in;

endmodule
