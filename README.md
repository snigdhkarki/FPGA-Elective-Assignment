# Lab 1: Dataflow Modeling of 8-bit ALU

Name: Snigdh Karki

Roll no: 079bct081

# Project Overview: 8-Bit ALU

This project features the design and implementation of a hardware-efficient 8-bit Arithmetic Logic Unit (ALU) written in Verilog. The core module accepts two 8-bit data inputs (a and b) and a 3-bit operation selection bus (sel), producing a 16-bit result to comfortably accommodate higher-bit arithmetic outputs without overflow loss.

## The ALU supports 8 operations

## ALU Operation Table

| Opcode (`sel`) | Operation | 
| :--- | :--- |
| **`3'b000`** | **ADD** | 
| **`3'b001`** | **SUB** | 
| **`3'b010`** | **2^n MUL** | 
| **`3'b011`** | **AND** | 
| **`3'b100`** | **OR** | 
| **`3'b101`** | **XOR** | 
| **`3'b110`** | **NAND** | 
| **`3'b111`** | **NOR** | 

---

# Simulated waveform

<img width="1129" height="139" alt="image" src="https://github.com/user-attachments/assets/5e4daf76-3b90-43d5-beb3-80e191e53fe6" />


