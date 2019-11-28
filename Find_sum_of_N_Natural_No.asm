
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H
MOV C,M
MVI B,00H
LOOP: MOV A,C
ADD B
MOV B,A
DCR C
JNZ LOOP
MOV A,B
STA 0002H
hlt