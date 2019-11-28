
;<Program title>

jmp start

;data


;code
start: nop
LDA 0000H
MOV C,A
MVI B,07H
LABEL: RAR
XRA C
DCR B
JNZ LABEL
STA 0003H
hlt