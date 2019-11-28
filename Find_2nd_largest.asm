
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H 	;Store count of array
MOV C,M 	; c <-M
MVI D,00H 	;Used to Store largest Value
MVI B,00H 	;Used to Store second largest Value
LOOP: INX H	;Increment H registor Value
MOV A,D		;A<-D
CMP M		;Compare Accumulator value with Memory Value 
JC DONE		;If Memory content is grater than first value,then handle this block
JZ EQUAL	;If second value is first value,then handle this block
JNC ANOTHER	;If Memory content is grater than Second value,then handle this block

DONE: MOV B,D	;B<-D
MOV D,M		;D<-M
JMP FINISH	;Unconditional jump

ANOTHER: MOV A,B;Move second Value to the Accumulator
CMP M		;Compare Accumulator value with Memory Value  
JC SECOND	;If Memory value is grater than second value,then Handle this block
JMP FINISH	;Unconditional jump
SECOND: MOV B,M	;B<-M

EQUAL: JMP FINISH;Unconditional jump

FINISH: DCR C	;Decrement counter
JNZ LOOP	;If Zero flag set then loop end
MOV A,B		;A<-B
STA 000AH	;Store Accumulator Content to 000A Location
hlt