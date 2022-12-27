	.ORIG x0000
        LEA R6,stbot
        AND R0, R0, 0
        ADD R0, R0, 4
        ADD R6,R6,-3
        LEA R1, str1
        LEA R2, str2
        LDR R1,R6,0
        LDR R2,R6,1
        LDR R3,R6,2
        JSR strncpy
        LDR R0,R6,0
        ADD R6,R6,2

strncpy:ADD R6,R6,-4
        STR R1,R6,0
        STR R2,R6,1
        STR R3,R6,2
        STR R7,R6,3
        LDR R1,R6,4
        LDR R2,R6,5

loop:   ADD R0, R0, -1
        BRn end
        LDR R3, R1, 0
        STR R3, R2, 0
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
	.END