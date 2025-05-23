//===========================================================
// Project:     MIPS 32 Single-Cycle Processor
// Author:      Muhammad Sameh Muhammad Kamel
//===========================================================

module sign_extend(
    In,   // 16-bit input signal to be sign-extended
    Out   // 32-bit output signal after sign extension
);

//===========================================================
// Port Declarations
//===========================================================
input [15:0] In;      // 16-bit input signal
output reg [31:0] Out; // 32-bit output signal

//===========================================================
// Sign Extension Operation
//===========================================================
always @(*) begin
    if (In[15] == 1) begin
        Out <= {16'd1, In}; // Extend with 1s if sign bit is 1
    end
    else begin
        Out <= {16'd0, In}; // Extend with 0s if sign bit is 0
    end
end

endmodule
