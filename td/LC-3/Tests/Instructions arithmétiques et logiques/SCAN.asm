    .ORIG x0000
    AND R0,R0,0
    ADD R0,R0,15	; R0 <- 15
    SCAN R1,R0,R0 	; R2 =1101 
    .END