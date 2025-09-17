module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );
// Stimulus block
  initial begin
    // Test different inputs
    binary = 4'b0000; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);
    
    binary = 4'b0001; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);
    
    binary = 4'b0010; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);
    
    binary = 4'b0011; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);
    
    binary = 4'b0100; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);
    
    binary = 4'b1111; #10;
    $display("Input: %b, One-hot Output: %b", binary, one_hot);

    // End simulation
    $stop;
  end
  // Complete your testbench here
endmodule
