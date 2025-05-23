//===========================================================
// Project:     MIPS 32 Single-Cycle Processor
// Author:      Muhammad Sameh Muhammad Kamel
//===========================================================

module shifter(
    In,    // Input signal to be shifted
    Out    // Output signal after shifting
);

//===========================================================
// Parameter Declarations
//===========================================================
parameter WIDTH_IN  = 32; // Width of the input signal
parameter WIDTH_OUT = 32; // Width of the output signal

//===========================================================
// Port Declarations
//===========================================================
input [WIDTH_IN-1:0] In;  // Input signal with width WIDTH_IN
output [WIDTH_OUT-1:0] Out; // Output signal with width WIDTH_OUT

//===========================================================
// Shifting Operation
//===========================================================
assign Out = In << 2; // Perform left shift by 2 bits

endmodule
