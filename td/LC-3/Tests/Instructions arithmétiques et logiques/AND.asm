     .ORIG x0000
     AND R0,R0,0
     ADD R0,R0,5	; R0 <- 5
     AND R1,R1,0
     ADD R1,R1,1	; R1 <- 1
     AND R2,R1,R0 	; R2 = 0 si R0 est pair, 1 sinon
     .END

