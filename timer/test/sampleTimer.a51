include reg51.inc
JMP INIT

ORG 03h
jmp timer0_int 

timer0_int:
CLR TR0
mov TL0,#0xDC
mov TH0,#0xFF
SETB TR0
CPL A
RETI

INIT:

MOV A, #0b

mov TL0,#0xDC 
mov TH0,#0xFF


mov TMOD,#00000001b 
mov TCON,#00010000b 

SETB ET0
SETB EA 

main:
MOV P0, A
jmp main