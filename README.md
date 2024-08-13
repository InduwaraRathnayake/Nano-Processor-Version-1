# Nano Processor

This repository contains the design and implementation of a 4-bit processor capable of executing 4 instructions.
This is the basic version of Nano processor: [Nano Processor-Version 2](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2.git)

![Picture](https://github.com/user-attachments/assets/dbf6ddc9-a868-4fa2-ad2a-af193fd229ff)

## High Level View

![HigleLevelViewBasic](https://github.com/user-attachments/assets/9a19059d-0fc1-425f-9fb0-a963bfe83d8f)

## Features

**Instruction Set**: The processor supports a set of 10 instructions designed for basic computing tasks.

| Instruction | Description                                   |
|-------------|-----------------------------------------------|
| `MOVI`      | Move immediate value to register.             |
| `ADD`       | Addition operation.                           |
| `NEG`       | Negate operation.                             |
| `JZR`       | Jump if zero instruction.                     |

## Usage

- **Simulation**: The processor design can be simulated using a hardware description language (VHDL) simulator such as Vivado
- **Synthesis**: Synthesize the processor design for specific FPGA platforms using synthesis tools like Vivado
- **Programming**: Write programs in assembly language using the supported instruction set, assemble them, and load them onto the ROM for execution.

## Directory Structure

- **[/NanoProcessor.srcs/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-1/tree/b630195213a27902e28924d8e3b775db931cadaa/Nano%20Processor%20Source%20Files/NanoProcessor.srcs)**: This directory contains all the source files related to the nano processor project.
  - **[/constrs_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-1/tree/b630195213a27902e28924d8e3b775db931cadaa/Nano%20Processor%20Source%20Files/NanoProcessor.srcs/constrs_1/new)**: Contains constraint files that define pin assignments and properties for the FPGA, including clock signals, LEDs, 7-segment displays, and buttons.
  - **[/sim_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-1/tree/b630195213a27902e28924d8e3b775db931cadaa/Nano%20Processor%20Source%20Files/NanoProcessor.srcs/sim_1/new)**: Includes simulation scripts and testbenches used to verify the functionality of the processor design.
  - **[/sources_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-1/tree/b630195213a27902e28924d8e3b775db931cadaa/Nano%20Processor%20Source%20Files/NanoProcessor.srcs/sources_1/new)**: Contains the VHDL files describing the processor architecture and ALU.

- **[NanoProcessor.xpr](https://github.com/InduwaraRathnayake/Nano-Processor-Version-1/blob/b630195213a27902e28924d8e3b775db931cadaa/Nano%20Processor%20Source%20Files/NanoProcessor.xpr)**: The Vivado project file for the nano processor, which includes project settings and references to all the design files.

## Contributors

- [ShanthishaShyamana](https://github.com/ShanthishaShyamana)
- [nchehan](https://github.com/nchehan)
- [PasinduRavishan](https://github.com/PasinduRavishan)

---

**[Read the Detailed Design Document](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/blob/512545d0872f321c4f167b0c9aa151b89a9447ed/Group%2041.pdf)**

<i>This document details the development and implementation of our project. It includes all the source codes, testbench codes, timing diagrams, example test cases, and discussion.</i>

---
