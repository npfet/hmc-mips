//------------------------------------------------
// imem.v
// David_Harris@hmc.edu 23 October 2005
// Instruction memory used by MIPS processors
//------------------------------------------------

module imem(input  [5:0]  a,
            output [31:0] rd);

  reg  [31:0] RAM[63:0];

  initial
    begin
      // TODO: Zero out memory each time
      $readmemh("testing/test_000.dat",RAM);
      #2000;
      $readmemh("testing/test_001.dat",RAM);
      #2000;
      $readmemh("testing/test_002.dat",RAM);
      #2000;
    end

  assign rd = RAM[a]; // word aligned
endmodule

