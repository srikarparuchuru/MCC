# MCC
Bison/flex Compiler for a subset of C
Written in bison/flex , this compiler generates the MIPS assembly code for an input C code.The generated asm code can be run on QtSpim.
To run the compiler

cd mcc/
touch inp
mv <your_code>.c inp
bash a.sh

The script will generate an out.s assembly file , which can be run on a MIPS proccessor.
