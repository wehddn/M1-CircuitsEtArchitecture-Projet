	    .ORIG x0000
        AND R1, R1, 0
        ADD R1, R1, 4
	    ST R1, test
        LD R0, test
test:	.FILL 0
	    .END
