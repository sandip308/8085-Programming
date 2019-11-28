
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H
MOV C,M
INX H
MOV B,M
DCR C
LOOP: INX H
MOV A,M
CMP B
JNC SKIP
MOV B,A
SKIP: DCR C
JNZ LOOP
MOV A,B
STA 000BH
hlt