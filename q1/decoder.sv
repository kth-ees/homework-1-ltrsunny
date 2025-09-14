module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);
    always_comb begin
    one_hot = 16'b0;           // Default all bits to 0
    one_hot[binary] = 1'b1;    // Set the bit corresponding to the binary input
  end
endmodule
