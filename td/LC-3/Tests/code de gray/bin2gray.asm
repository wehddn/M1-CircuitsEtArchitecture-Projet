            .ORIG x3000
            LEA R6, stbot

binToGray:  ;;sauvegarde
            ADD R6,R6,-5
            STR R0,R6,0
            STR R1,R6,1
            STR R2,R6,2
            STR R3,R6,3
            STR R7,R6,4

            LDR R0,R6,5     ;;chargement dans R0 de l'arg 1
                            ;;R0 contient num
                            ;;R1 contien num>>1
                            ;; R2 vas contenir not[A&not(A&B)]
                            ;; R3 vas contenir not[B&not(A&B)]
                            ;;R0 contiendra le dernier nombre
                            ;;corps
            ADD R6,R6,-1
            STR R0,R6,0
            JSR rightshift  ;; la fonction met la valeur de retour dans la pile a la place du premier argument
            LDR R1,R6,0
            ADD R6,R6,1
            AND R2,R0,R1
            NOT R3,R2
            NOT R2,R2
            AND R2,R2,R0
            NOT R2,R2
            AND R3,R3,R1
            NOT R3,R3
            AND R0,R2,R3
            NOT R0,R0
            STR R0,R6,5

            ;;restoration
            
            LDR R0,R6,0
            LDR R1,R6,1
            LDR R2,R6,2
            LDR R3,R6,3
            LDR R7,R6,4
            ADD R6,R6,5
            RET



rightshift: ADD R6,R6,-4
            STR R0,R6,0
            STR R1,R6,1
            STR R2,R6,2
            STR R7,R6,3
            LDR R0,R6,4
            AND R1,R1,0
            ADD R1,R1,15


again:      JSR sousroutine
            ADD R1,R1,-1
            BRp again
            LD R2,masque
            AND R0,R2,R0
            BR retour

sousroutine:AND R0,R0,R0
            BRn neg
            ADD R0,R0,R0
            BRnzp fin
neg:        ADD R0,R0,R0
            ADD R0,R0,1
fin:        RET


retour :    STR R6,R0,4
            LDR R0,R6,0
            LDR R1,R6,1
            LDR R2,R6,2
            LDR R7,R6,3
            ADD R6,R6,4
            RET



masque: .FILL x7FFF
sttop: .BLKW 100
stbot: 
    .END