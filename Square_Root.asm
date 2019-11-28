
;<Program title>

jmp start

;data


;code
start: nop
MVI D,01H
MVI E,01H
LDA 0000H
LOOP: SUB D
JZ DONE
INR D
INR D
INR E
JMP LOOP
DONE: MOV A,E
STA 0001H
hlt