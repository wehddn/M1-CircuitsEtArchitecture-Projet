	    .ORIG x0000
        AND R1, R1, 0
        ADD R1, R1, 4	; R1 <- 4
	    ST R1, test		; test <- R1
        LD R0, test		; R0 <- 4
test:	.FILL 0
	    .END
