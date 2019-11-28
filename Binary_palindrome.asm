
;<Program title>

jmp start

;data


;code
start: nop
MVI H, 08h
MVI L, 01h
MVI C, 08h
LDA 3001
rotate: RAR
JC one
JNC zero
one: MVI M, 01h
JMP next
Zero: MVI M, 00h
Next: INC L
DCR C
JNZ rotate
MVI L, 00h
Inc: INC L
MOV D, L
MOV A, L
SUI 09h
JZ fini
MOV A, M
Hey: RRC
DCR D
JZ inc
JNZ hey
Fini: MVI L, 00h
MVI C, 00h
Other: INC L
MOV A, M
MOV B, A
INC L
MOV A, M
ADD B
ADD C
MOV C, A
MOV A, L
SUI 08h
JNZ other
MVI H, 30h
MVI L, 00h
MOV A,M
SUB C
JZ palin
JNZ nopalin
Palin: MVI A, 01h
STA 4000
JMP over
Nopalin: MVI A, 02h
STA 4001
Over: HLT

hlt