    .ORIG x0000
    AND R0,R0,0
    ADD R0,R0,15	; R0 <- 1111
    SCAN R1,R0,R0 	; R1 =1010 
    .END