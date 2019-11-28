
;<Program title>

jmp start

;data


;code
start: nop
MVI H,00H
MVI L,0BH
MVI B,06H
BAL: MOV A,M
ADD E
MOV E,A
INR L
MOV A,B
SUI 01H
MOV B,A
JNZ BAL
MOV A,E
STA 0004H
hlt