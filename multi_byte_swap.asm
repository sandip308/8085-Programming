
;<Program title>

jmp start

;data


;code
start: nop
LXI B,0000H
LXI D,0005H

MVI L,02H

BACK: LDAX B   
MOV H,A
LDAX D
STAX B
MOV A,H
STAX D
INX B
INX D
DCR L
JNZ BACK
HLT










