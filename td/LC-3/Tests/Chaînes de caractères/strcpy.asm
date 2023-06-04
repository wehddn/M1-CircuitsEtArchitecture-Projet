	.ORIG x0000
	LEA R1, str1
        LEA R2, str2
loop:   LDR R3, R1, 0
        STR R3, R2, 0
        BRz end
        ADD R1, R1, 1
        ADD R2, R2, 1
        BR loop

str1:	.STRINGZ "abcd"
str2:   .STRINGZ ""
end:	.END