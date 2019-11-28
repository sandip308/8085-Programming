
;<Program title>

jmp start

;data


;code
start: nop
LXI H,0000H	;Store counter of Array
MOV C,M		;C<-M
MVI D,00H	;Used to Store Count Odd No
MVI E,00H	;Used to Store Count Even No
LOOP: INX H	;Points Next Location
MOV A,M		;A<-M
ANI 01H		;AND 01 value With Accumulator
JZ EVEN		;If Accumulator Value is 00 Then run this Block
MOV A,D		;A<-D
ADI 01H		;A<-A + 01H
MOV D,A		;D<-A
JMP DONE	;Unconditional jump
EVEN: MOV A,E	;A<-E
ADI 01H		;A<-A + 01H
MOV E,A		;E<-A
DONE: DCR C	;Decrement Count
JNZ LOOP	;If Zero flag set then end this Loop
MOV A,D		;A<-D
STA 000BH	;Store Accumulator Value to 000BH Location
MOV A,E		;A<-E
STA 000CH	;Store Accumulator Value to 000CH Location
hlt		;Stop