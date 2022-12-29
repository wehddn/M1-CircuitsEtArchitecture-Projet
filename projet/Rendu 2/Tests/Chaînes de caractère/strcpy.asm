	.ORIG x0000
        LEA R6,stbot
        ADD R6,R6,-2
        LEA R1, str1
        LEA R2, str2
        LDR R1,R6,0
        LDR R2,R6,1
        JSR strcpy
        LDR R0,R6,0
        ADD R6,R6,2
        Br stop

strcpy: ADD R6,R6,-4
        STR R1,R6,0
        STR R2,R6,1
        STR R3,R6,2
        STR R7,R6,3
        LDR R1,R6,4
        LDR R2,R6,5

loop:   LDR R3, R1, 0
        STR R3, R2, 0
        BRz end
        ADD R1, R1, 1
        ADD R2, R2, 1
        BR loop

end:    LDR R1,R6,0
        LDR R2,R6,1
        LDR R3,R6,2
        LDR R7,R6,3
        ADD R6,R6,4
        RET
str1:	.STRINGZ "abcd"
str2:   .STRINGZ ""
sttop: .BLKW 100
stbot: 
stop:	.END