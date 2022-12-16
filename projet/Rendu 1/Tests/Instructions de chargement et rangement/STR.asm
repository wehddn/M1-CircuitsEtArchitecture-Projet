		.ORIG x0000
		LEA R0, test	; adresse de test
        AND R1, R1, 0
        ADD R1, R1, 6	; R1 <- 6
        LDR R2, R0, 0	; R2 <- 5
        STR R1, R0, 0	; test <- R1
        LDR R3, R0, 0	; R3 <- 6
test:	.FILL 5
		.END
