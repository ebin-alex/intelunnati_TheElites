module newton_raphson_divider (
input [3:0] dividend,
input [3:0] divisor,
output reg [3:0] quotient,
output reg [3:0] remainder,
input clk
);

reg [3:0] x;
reg [3:0] prev_x;

always @(posedge clk) begin
prev_x <= x;
x <= dividend + (divisor * (x - quotient));
quotient <= x >> 1;
remainder <= x - (quotient * divisor);
end

initial begin
quotient <= 0;
remainder <= dividend;
end

endmodule