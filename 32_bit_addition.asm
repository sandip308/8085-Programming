
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H
LXI B,0005H
LXI D,000AH
LDAX B
ADD M
STAX D
INX B
INX D
INX H
LDAX B
ADC M
STAX D
INX B
INX D
INX H
LDAX B ;THIRD BYTE
ADC M
STAX D
INX B;POINT TO NEXT
INX D
INX H
LDAX B
ADC M
STAX D
hlt