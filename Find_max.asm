
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H ;STORE COUNT 
MOV C,M
INX H
MOV B,M
DCR C
LOOP: INX H
MOV A,M
CMP B
JC SKIP
MOV B,A
SKIP: DCR C
JNZ LOOP
MOV A,B
STA 000AH
hlt