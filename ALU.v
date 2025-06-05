module ALU (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] result
);

always @(*) begin
    case (opcode)
        3'b000: result = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = ~A;
        default: result = 4'b0000;
    endcase
end

endmodule

//Testbench Code

module ALU_tb;

reg  [3:0] A, B;
reg  [2:0] opcode;
wire [3:0] result;

ALU uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

initial begin
    $display("Time | A    | B    | Opcode | Result");
    $monitor("%4t | %b | %b |   %b   | %b", $time, A, B, opcode, result);

    // Test Addition
    A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;

    // Test Subtraction
    A = 4'b1000; B = 4'b0011; opcode = 3'b001; #10;

    // Test AND
    A = 4'b1100; B = 4'b1010; opcode = 3'b010; #10;

    // Test OR
    A = 4'b1100; B = 4'b1010; opcode = 3'b011; #10;

    // Test NOT
    A = 4'b1001; B = 4'b0000; opcode = 3'b100; #10;

    #(10);
     $stop;

end

endmodule

