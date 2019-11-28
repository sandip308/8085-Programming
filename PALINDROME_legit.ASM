
;<Program title>

jmp start

;data


;code
start: nop
LDA 0000H
MOV B,A
RLC 
RLC 
RLC
RLC
CMP B
JZ LO
MVI A,00H
STA 0001H
JMP FINISH
LO: MVI A,01H
STA 0001H

 

FINISH: hlt