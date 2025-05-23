//===========================================================
// Project:     MIPS 32 Single-Cycle Processor
// Author:      Muhammad Sameh Muhammad Kamel
//===========================================================


module mips_tb();

    //===========================================================
    // Clock and Reset signals
    //===========================================================
    reg clk;     // Clock signal
    reg rst_n;   // Active-low reset signal

    //===========================================================
    // Instantiate the MIPS 32 Processor
    //===========================================================
    top_module dut (
        .clk(clk),
        .rst_n(rst_n)
    );

    //===========================================================
    // Clock Generation
    //===========================================================
    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk; // Generate a clock with a period of 10 time units
        end
    end

    //===========================================================
    // Simulation Control
    //===========================================================
    initial begin
        rst_n = 0;
        #10;          // Hold reset for 10 time units
        rst_n = 1;    // Release reset

        // Initialize memory with test data
        $readmemh("program_1.dat", dut.mem_1.instr_mem); // Load instruction memory
        $readmemh("mem.dat", dut.dat1.data_mem);         // Load data memory

        // Optionally, additional memory initialization can be added here
        // $readmemh("program2.txt", instruction_memory);

        #150;        // Simulate for 150 time units
        $stop;       // Stop the simulation
    end

endmodule
