module newton_raphson_divider_tb;

reg [3:0] dividend;
reg [3:0] divisor;
wire [3:0] quotient;
wire [3:0] remainder;

reg clk;

initial begin
clk <= 0;
#10;
$display("Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d", dividend, divisor, quotient, remainder);
dividend <= 5;
divisor <= 2;
#10;
$display("Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d", dividend, divisor, quotient, remainder);
dividend <= 1;
divisor <= 0;
#10;
$display("Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d", dividend, divisor, quotient, remainder);
dividend <= 0;
divisor <= 1;
#10;
$display("Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d", dividend, divisor, quotient, remainder);
dividend <= 255;
divisor <= 255;
#10;
$display("Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d", dividend, divisor, quotient, remainder);
finish;
end

always @(posedge clk) begin
clk <= ~clk;
end

testbench newton_raphson_divider (
dividend,
divisor,
quotient,
remainder
);

endmodule