	.ORIG x0000
        LEA R6,stbot
        LD R0, n
        ADD R6,R6,-3
        LEA R1, str1
        LEA R2, str2
        STR R1,R6,0
        STR R2,R6,1
        STR R3,R6,2
        AND R1,R1,0
        AND R2,R2,0
        ADD R1,R1,10
        ADD R2,R2,15
        ADD R2,R2,9 ;on a mis les valeur 10 et 24 dans R1 et R2
                ;normalement après que la sous-routine soit executé R1 et R2 devraient avoir les meme valeur
        JSR strncpy
        LDR R0,R6,0
        ADD R6,R6,2
        NOP

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
        BRz end
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

n:      .FILL 3
str1:	.STRINGZ "abcd"
str2:   .STRINGZ ""
        .BLKW 100
stbot:  
	.END