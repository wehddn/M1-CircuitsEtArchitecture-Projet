	.ORIG x0000
        LEA R6,stbot
        ADD R6,R6,-2
        LEA R1, str1
        LEA R2, str2
        STR R1,R6,0
        STR R2,R6,1
        JSR strcmp
        LDR R0,R6,0
        ADD R6,R6,2
        BR stop

strcmp: ADD R6,R6,-6
        STR R0,R6,0
        STR R1,R6,1
        STR R2,R6,2
        STR R4,R6,3
        STR R5,R6,4
        STR R7,R6,5
        LDR R1,R6,6
        LDR R2,R6,7


loop:   LDR R4, R1, 0   
        BRz less        ;si la première ligne est terminée, str1 <= str2
        LDR R5, R2, 0   ;
        BRz greater     ;sinon, si la deuxième ligne est terminée, str1 > str2
        
        NOT R5, R5
        ADD R5, R5, 1	; R5 <- -R5
        
        ADD R4, R4, R5	; R4 <- R4-R5
        BRn less2		; 
        BRp greater

        ADD R1, R1, 1
        ADD R2, R2, 1
        BR loop

less:   LDR R5, R2, 0	;si la deuxième ligne est terminée, str1 = str2
        BRz end         
less2:  AND R0, R0, 0   ;sinon, str1 < str2, R0 <- -1
        ADD R0, R0, -1
        BR end

greater:AND R0, R0, 0	;str1 > str2, R0 <- 1
        ADD R0, R0, 1
        BR end

end :   STR R0,R6,6
        LDR R0,R6,0
        LDR R1,R6,1
        LDR R2,R6,2
        LDR R4,R6,3
        LDR R5,R6,4
        LDR R7,R6,5
        ADD R6,R6,6
        RET

str1:	.STRINGZ "abcd"
str2:   .STRINGZ "abca"
sttop: .BLKW 100
stbot: 
stop:	.END