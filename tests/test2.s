ORG 0x100
.data
.global lab4
a DEF 1
b DEF 2
DD lab1
DD lab2
DD lab3
DD 16 DUP ?
DW 16 DUP 4
ORG 0x5000
.text.0
regi DEF 0x80
.global START
START:
LOAD R2, #2
PUSH R2
POP R11
LOAD R3, b-a
PUSH R3
POP R12
lab1: LOAD R4, [R2-6]
PUSH R4
POP R13
CALL lab3
.text.2
lab2:
ADD R2, R2, R3
SUB R3, R3, R2
AND R2, R2, R3
ASL R6, R7, R8
ASR R9, R10, R11
JMP lab1
.text.3
lab3:
PUSH R4
LOAD R4, SP
LOAD R0, R4
JNZ R0, $lab2
.end
