		;Vérification des instructions BRnz, BRnp. 
        ;Si les branchements réussissent, R0 ne sera pas modifié, R2 contiendra 2
        .ORIG x0000
        AND R0, R0, 0
        AND R1, R1, 0
        AND R2, R2, 0
        ADD R1, R1, -2  ;R1 = -2, n
        BRn bnz1
        ADD R0, R0, 1

bnz1:   ADD R1, R1, 1   ;R1 = -1, n
        BRnz bnz2
        ADD R0, R0, 1

bnz2:   ADD R1, R1, 1   ;R1 = 0, z
        BRnz bnz3
        ADD R0, R0, 1

bnz3:   ADD R1, R1, 1   ;R1 = 1, p
        BRnz bnp1
        ADD R2, R2, 1   ;R2 = 1

bnp1:   ADD R1, R1, 1   ;R1 = 2, p
        BRnp bnp2
        ADD R0, R0, 1

bnp2:   ADD R1, R1, -3  ;R1 = -1, n
        BRnp bnp3
        ADD R0, R0, 1

bnp3:   ADD R1, R1, 1   ;R1 = 0, z
        BRnp end
        ADD R2, R2, 1   ;R2 = 2

end:    .END
