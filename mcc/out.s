.text
.globl main
main:
li $t0,1
sw $t0,aval
l0:
add $t0,$t0,$zero
lw $t0,aval
li $t1,2
sle $t0,$t0,$t1
beq $t0,$zero,e0
j f0
ef0:
add $t0,$t0,$zero
lw $t0,aval
lw $t1,aval
addi $t1,$t1,1
sw $t1,aval
j l0
f0:
add $t0,$t0,$zero
li $t0,4
li $t1,39
sw $t0,cval
li $t0,4
li $t0,1
sw $t0,bval
l1:
add $t0,$t0,$zero
lw $t0,bval
li $t1,2
sle $t0,$t0,$t1
beq $t0,$zero,e1
j f1
ef1:
add $t0,$t0,$zero
lw $t0,bval
lw $t1,bval
addi $t1,$t1,1
sw $t1,bval
j l1
f1:
add $t0,$t0,$zero
lw $t0,cval
lw $t1,cval
addi $t1,$t1,1
sw $t1,cval
j ef1
e1:
add $t0,$t0,$zero
j ef0
e0:
add $t0,$t0,$zero
li $v0,10
syscall

.data
aval: .word 0
bval: .word 0
cval: .word 0
dval: .byte 0
