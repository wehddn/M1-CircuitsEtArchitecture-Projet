		.ORIG x0000
		LEA R0, test	; adresse de test
        LDR R1, R0, 0	; R1 <- 5
        LDR R2, R0, 1	; R2 <- 6
test:	.FILL 5
        .FILL 6
		.END
