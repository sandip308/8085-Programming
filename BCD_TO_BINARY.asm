
;<Program title>

jmp start

;data


;code
start: nop
LDA 0000H		
MOV B, A
ANI 0FH		
MOV C, A
MOV A, B
ANI 0F0H
JZ SKIPMULTIPLY		
RRC
RRC
RRC
RRC
MOV D, A
XRA A
MVI E, 0AH	
SUM: ADD D
DCR E
JNZ SUM			
SKIPMULTIPLY: ADD C
STA 000AH		
HLT