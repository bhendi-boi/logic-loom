# Verilog

1. Write a verilog code for parallel to serial converter which should have following interface signals,

   input [3:0] din: parallel data input

   input load: control signal for loading data into the register

   input shift: control signal for shifting serialized output

   input clk: clock

   output reg out: Output bit of parallel to serial converter

   Parallel to Serial Converter should be able to perform following operations:

   Load =0, Shift =0: No operation, just keep whatever value already stored into the register, output remains same.

   Load=1, Shift = 0: Load parallel data into the register. Output = Most Significant Bit

   Load=0, Shift=1: Shift Value starting from Most Significant Bit, and then corresponding bits. On left shift, 0 should be getting added to leftmost bit.

   Load = 1, Shift=1: Reset the value stored with "0000" and output=0

2. Design a circuit that determines whether an input value is evenly divisible by five.

3. Given a stream of input bits, output 1 whenever a 6-bit input sequence 6'b101101 is detected on the input. When the reset-low signal goes active, all previously seen bits on the input are no longer considered when searching for 6'b101101
   Reset is negative edge triggered and asynchronous. Use only D Flip Flop.

4. Design a 24 hr clock using asynchronous counters. Assume that you have a clk signal with 1Hz frequency.

5. Design circuit to generate fibonacci series.

6. Write Verilog code for Synchronous FIFO having input and output as 8 bit.

   - Two port "rd" and "wr",
   - "rd = 1" when read operation needs to be done
   - "wr = 1" when write operation needs to be done
   - "rst = 1" which resets the FIFO
   - Output empty and full conditions aswell
   - empty = 1, when FIFO is empty
   - full = 1, when FIFO is full
   - Output fifo_cnt which gives number of elements present inside the FIFO.
