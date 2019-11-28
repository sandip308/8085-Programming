
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H
MOV C,M
MVI B,00H
LXI H,0002H
LXI D,0006H
DAD B
DCX H
XCHG
DAD B
DCX H
XCHG
LOOP: MOV A,M
STAX D
DCX D
DCX H
DCR C
JNZ LOOP
hlt