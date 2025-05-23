//===========================================================
// Project:     MIPS 32 Single-Cycle Processor
// Author:      Muhammad Sameh Muhammad Kamel
//===========================================================

module instruction_memory(A, RD);

//===========================================================
// Port Declarations
//===========================================================
input [31:0] A;         // 32-bit address input for instruction fetch
output [31:0] RD;       // 32-bit read data output (instruction)

//===========================================================
// Internal Memory Declaration
//===========================================================
// Memory array with 100 words, each 32 bits wide
reg [31:0] instr_mem [999:0];

//===========================================================
// Read Operation (Combinational)
//===========================================================
// Read instruction from memory based on the address input
// Address is shifted right by 2 to align with word boundaries
assign RD = instr_mem[A >> 2];

endmodule
