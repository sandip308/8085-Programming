
;<Program title>

jmp start

;data


;code
start: nop

LHLD 0002H
XCHG
LHLD 0004H
DAD D
XCHG
LHLD 0006H
DAD D
SHLD 000AH
hlt



;L:- 5,12,21
;H:-2,11,33