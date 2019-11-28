
;<Program title>

jmp start

;data


;code
start: nop
MVI C,03H
LXI H,0004H
MOV A,M
DCR C
LOOP: INX H
CMP M
JNC GO
MOV A,M
GO: DCR C
JNZ LOOP
STA 0008H
hlt