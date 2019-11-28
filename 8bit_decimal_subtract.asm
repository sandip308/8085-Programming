
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0005H
MVI A,99H
SUB M
INR A
DCX H
ADD M
DAA
STA 0007H
hlt