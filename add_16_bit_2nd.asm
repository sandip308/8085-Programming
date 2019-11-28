
;<Program title>

jmp start

;data


;code
start: nop
LHLD 0000H
XCHG ;EXCHANGE WITH DE & HL PAIR
LHLD 0002H
DAD D
SHLD 0007H
hlt