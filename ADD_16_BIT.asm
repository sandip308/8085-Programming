
;<Program title>

jmp start

;data


;code
start: nop
LHLD 0000
XCHG
LHLD 0002
LDA 0000
ADD L
MOV L,A
LDA 0001
ADC H ;H+A=A
MOV H,A
SHLD 0004
hlt