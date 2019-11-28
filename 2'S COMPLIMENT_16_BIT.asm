
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0002H
MVI B,00H
MOV A,M
CMA
INR A
STA 0006H
JNC LABEL
INR B
LABEL: INX H
MOV A,M
CMA
ADD B
STA 0007H
hlt