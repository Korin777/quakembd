# Quake for rv32emu-next(riscv ISA emulator)

This repo is forked from [QuakEMBD](https://github.com/FantomJAC/quakembd) and modified to meet the [rv32emu-next](https://github.com/sysprog21/rv32emu-next) which is an instruction set architecture (ISA) emulator implementing the 32 bit RISC-V processor model.

![image](https://user-images.githubusercontent.com/57750932/149654157-b41f8456-0870-41f4-a076-ecb0183e55e7.png)

Based on original Quake GPL source: [https://github.com/id-Software/Quake](https://github.com/id-Software/Quake)

## Limitations

* All sound functions are not yet supported.
* Many other features may not be supported or left untested.

## Requirement
[riscv-gnu-toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain)(riscv64-unknown-elf(Newlib multilib))
```
sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
git clone https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain/
sudo ./configure --prefix=/opt/riscv --enable-multilib
sudo make
export PATH=$PATH:/opt/riscv/bin
```
[rv32emu-next](https://github.com/sysprog21/rv32emu-next)
## How to build

Run build.sh shell script and it will build a 32bits riscv elf file quakembd under build/port/board/emulator/quake directory

## How to Run 

Use the rv32emu-next to execute above elf file

## Other Detail
[Run Quake on rv32emu-next](https://hackmd.io/6RXHNXN9QTOyuGhSTqgUVA?view)
