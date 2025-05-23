//===========================================================
// Project:     MIPS 32 Single-Cycle Processor
// Author:      Muhammad Sameh Muhammad Kamel
//===========================================================

module adder (Operand_1, Operand_2, Result);

//===========================================================
// Port Declarations
//===========================================================
input  [31:0] Operand_1, Operand_2; // 32-bit operands
output [31:0] Result;               // 32-bit result

//===========================================================
// Main functionality
//===========================================================
// Adds the two input operands and assigns the sum to the result
assign Result = Operand_1 + Operand_2;

endmodule
