module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;
wire [3:0] result;
wire carry;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin

    A = 4'b0101; B = 4'b0011; sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // NOT

    $finish;
end

endmodule
