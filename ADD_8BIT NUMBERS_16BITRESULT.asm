
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0002H
MVI C,00H
MOV A,M
INX H
ADD M
JNC CARRY
INR C
CARRY: STA 000AH
MOV A,C
STA 000BH
hlt