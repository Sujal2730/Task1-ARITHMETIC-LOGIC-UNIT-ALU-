# Task1-ARITHMETIC-LOGIC-UNIT-ALU-


*COMPANY*: CODTECH IT SOLUTIONS 

*NAME*: Sujal Chavan

*INTERN ID*: CT04DF1863

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

# Description of the Task

For this internship task, I was assigned to design a basic Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU is a fundamental building block of any digital processor, responsible for performing arithmetic and logical operations on binary data inputs. The objective was to implement an ALU that supports key operations such as addition, subtraction, AND, OR, and NOT, with 4-bit input operands.

Design Overview

The design consists of a 4-bit ALU module with two 4-bit inputs A and B, a 3-bit opcode input to select the desired operation, and a 4-bit output result that provides the outcome of the selected operation. The opcode defines the function performed by the ALU as follows:

000: Addition (result = A + B)

001: Subtraction (result = A - B)

010: Bitwise AND (result = A & B)

011: Bitwise OR (result = A | B)

100: Bitwise NOT (on A only: result = ~A)

The ALU is implemented using a combinational logic approach with a case statement inside an always @(*) block, which ensures the output is immediately updated whenever any input changes.
Implementation Details
I wrote the Verilog code for the ALU module to realize the operations above. The design uses basic Verilog constructs such as reg for output signals and combinational always blocks to create the functional logic. The opcode input selects the desired operation via a case statement, ensuring clear and easy-to-read code.
To validate the ALU’s functionality, I developed a comprehensive testbench that applies multiple test vectors covering all the supported operations. The testbench sequentially sets inputs A, B, and the opcode while monitoring and printing the results using $monitor. This allows verification of correct behavior for each operation.

Simulation and Results

The testbench was simulated using ModelSim, a popular HDL simulator. The simulation outputs were displayed both in the console using $display and $monitor, and visually through waveform viewing in the simulator’s GUI.
The results showed that for every input combination and opcode, the ALU produced the correct output:
Addition and subtraction produced expected binary sums and differences.

Bitwise AND and OR operations correctly masked and combined bits.

The NOT operation accurately inverted all bits of input A.

The simulation waveform clearly shows the inputs changing in time, followed by immediate changes in the result output, validating the combinational nature of the ALU.

Discussion

This task provided valuable hands-on experience with digital design concepts and hardware description languages. Implementing an ALU reinforced understanding of how arithmetic and logic units operate at the hardware level and how to express combinational logic efficiently in Verilog.

The use of a parameterized opcode made the design scalable and modular. The testbench’s automated verification approach proved effective in ensuring the ALU's correctness across different operations.

While the ALU currently supports only five operations, the design can be extended to include additional functions such as XOR, NAND, NOR, shifts, and comparisons by expanding the opcode case statement. Also, further enhancements could include carry/borrow flags and overflow detection for more advanced arithmetic processing.

Conclusion

In conclusion, this ALU design task successfully demonstrated the fundamental digital design and verification process. Writing the Verilog code, building the testbench, running simulations, and analyzing results collectively strengthened my skills in hardware description and digital logic design. The ALU performs all specified operations correctly, and the simulation results confirm its expected functionality. This task is a critical step in understanding more complex processor architectures and VLSI design principles.

# OUTPUT

![Image](https://github.com/user-attachments/assets/5fa044e4-561d-4b05-86d9-82a9c9792fe0)


![Image](https://github.com/user-attachments/assets/205e4d59-1d4a-43ae-97bb-2aa70261ac52)
