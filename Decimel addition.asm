
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0005H
MVI C,00H
MOV A,M
INX H
ADD M
DAA
JNC LABEL
INR C
LABEL: STA 0008H ;STORE ADD VALUE
MOV A,C
STA 0007H
hlt