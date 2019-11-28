
;<Program title>

jmp start

;data


;code
start: nop
LHLD 0000H	
XCHG
LHLD 0003H
MVI C,00H
MOV A,E
SUB L
STA 0008H
MOV A,D
SBB H
STA 0009H
hlt