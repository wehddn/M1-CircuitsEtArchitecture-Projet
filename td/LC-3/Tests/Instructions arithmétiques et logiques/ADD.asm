     .ORIG x0000
     AND R0,R0,0
     ADD R0,R0,5	; R0 <- 5
     AND R1,R1,0
     ADD R1,R1,6	; R1 <- 6
     ADD R2,R1,R0 	; R2 <- R1 + R0
     .END

