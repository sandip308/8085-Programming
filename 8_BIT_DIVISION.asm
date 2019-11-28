
;<Program title>

jmp start

;data


;code
start: nop
LHLD 0002H
LDA 0004H
MOV B,A
MVI C,08H
LOOP: DAD H	;shift dividend and quitent left by one bit
MOV A,H
SUB B
JC SKIP	;is dividend>divisor
MOV H,A	;most significant bits of dividend in registor H
INR L	;Yes,add 1 to quotient
SKIP: DCR C
JNZ LOOP
SHLD 000AH ;store quotient in 000AH,and reminder in 000BH
hlt 