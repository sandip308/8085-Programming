
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H
MOV A,M
SUI 02H
MOV C,A
MVI B,00H
MVI D,01H
INX H
MOV M,B
INX H
MOV M,D
LOOP: MOV A,B
ADD D
MOV B,D
MOV D,A
INX H
MOV M,A
DCR C
JNZ LOOP
hlt