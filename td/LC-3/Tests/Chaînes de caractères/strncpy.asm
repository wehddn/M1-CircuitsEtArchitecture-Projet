	.ORIG x0000
        AND R0, R0, 0
        ADD R0, R0, 4
	LEA R1, str1
        LEA R2, str2
loop:   ADD R0, R0, -1
        BRn end
        LDR R3, R1, 0
        STR R3, R2, 0
        ADD R1, R1, 1
        ADD R2, R2, 1
        BR loop

str1:	.STRINGZ "abcd"
str2:   .STRINGZ ""
end:	.END