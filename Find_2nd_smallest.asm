
;<Program title>

jmp start

;data


;code
start: nop
;If all Array value are same It gives FFH
LXI H,0000H 	;Store count of array
MOV C,M 	; c <-M
MVI D,0FFH 	;Used to store SMALLEST Value
MVI B,0FFH 	;Used to Store second SMALLEST Value
LOOP: INX H	;Increment H registor Value
MOV A,D		;A<-D
CMP M		;Compare Accumulator value with Memory Value 
JZ EQUAL	;If second value is first value,then handle this block
JNC DONE	;If Memory content is less than First value,then handle this block	
JC ANOTHER	;If Memory content is less than Second value,then handle this block

DONE: MOV B,D 	;B<-D
MOV D,M		;D<-M
JMP FINISH	;Unconditional Jump

ANOTHER: MOV A,B;A<-B
CMP M		;Compare Accumulator value with Memory Value
JNC SECOND	;If Memory value is less than second value,then Handle this block
JMP FINISH	;Unconditional Jump
SECOND: MOV B,M	;B<-M

EQUAL: JMP FINISH;Unconditional Jump
FINISH: DCR C	;Decrement counter
JNZ LOOP	;If Zero flag set then loop end
MOV A,B		;A<-B
STA 000AH	;Store Accumulator Content to 000A Location

hlt