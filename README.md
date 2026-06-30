# Lab 1: Dataflow Modeling of 8-bit ALU

Name: Snigdh Karki
Roll no: 079bct081

## The ALU supports 8 operations

## ALU Operation Table

| Opcode (`sel`) | Operation | Description |
| :--- | :--- | :--- |
| **`3'b000`** | **ADD** | [cite_start]Performs 8-bit addition (`a + b`) utilizing the Ripple Carry Adder (`rca_8bit`) module. [cite: 17, 19] |
| **`3'b001`** | **SUB** | [cite_start]Performs 8-bit subtraction (`a - b`) utilizing the Subtractor (`sub_8bit`) module. [cite: 18, 20] |
| **`3'b010`** | **2^n MUL** | [cite_start]Multiplies `a` by 2^b (effectively shifting `a` left by `b` bits) utilizing the Shift Multiplier (`shift_mult_8bit`) module. [cite: 6, 7, 19, 20] |
| **`3'b011`** | **AND** | [cite_start]Computes the bitwise **AND** operation between inputs `a` and `b`. [cite: 20] |
| **`3'b100`** | **OR** | [cite_start]Computes the bitwise **OR** operation between inputs `a` and `b`. [cite: 20] |
| **`3'b101`** | **XOR** | [cite_start]Computes the bitwise **XOR** operation between inputs `a` and `b`. [cite: 21] |
| **`3'b110`** | **NAND** | [cite_start]Computes the bitwise **NAND** operation between inputs `a` and `b`. [cite: 21] |
| **`3'b111`** | **NOR** | [cite_start]Computes the bitwise **NOR** operation between inputs `a` and `b`. [cite: 21] |

---
