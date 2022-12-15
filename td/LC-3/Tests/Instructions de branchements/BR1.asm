	;À la fin, R1 doit être égal à 4
        .ORIG x0000
		AND R0, R0, 0
        AND R1, R1, 0
        ADD R0, R0, 5   ;R0 <- 5 
loop:	ADD R0, R0, -1  ;R0 <- R0-1
        BRz end
        ADD R1, R1, 1   ;R1 <- R1+1
        BR loop
end:	.END