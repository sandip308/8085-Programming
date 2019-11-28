
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0004H
MOV A,M
INX H
CMP M
JNC GO
MOV A,M
GO: STA 0007H
hlt