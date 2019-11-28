
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0001H
MOV A,M
CMA
STA 0004H
INX H
MOV A,M
CMA
STA 0005H
hlt