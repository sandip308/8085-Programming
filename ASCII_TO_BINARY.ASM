
;<Program title>

jmp start

;data


;code
start: nop
; ASCII TO BINARY CONVERSION
	   MVI L,02H
	   LXI D,2000H
	   LXI B,3000H

BACK:	   LDAX D
	   SUI 30H
	   CPI 0AH
	   JC SKIP
	   SUI 07H

SKIP:	   STAX B
	   INX D
	   INX B
	   DCR L
	   JNZ BACK

hlt



