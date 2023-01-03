            .ORIG x0000
            LEA R6, stbot
            ADD R6,R6,-2
            LD R0,char
            STR R0,R6,0
            LEA R0,string
            STR R0,R6,1
            AND R1,R1,0
            AND R2,R2,0
            ADD R1,R1,10
            ADD R2,R2,15
            ADD R2,R2,9 ;on a mis les valeur 10 et 24 dans R1 et R2
                        ;normalement après que la sous-routine soit executé R1 et R2 devraient avoir les meme valeur
            JSR index   
            LDR R0,R6,0
            ADD R6,R6,2
            NOP
            
;;l'entete de la fonction est index(char a,char* string,)
index:      ADD R6,R6,-5
            STR R0,R6,0
            STR R1,R6,1
            STR R2,R6,2
            STR R3,R6,3
            STR R4,R6,4


            AND R0,R0,0;;init
            AND R3,R3,0
            AND R4,R4,0
            LDR R2,R6,5
            LDR R1,R6,6
            NOT R2,R2
            ADD R2,R2,1

bouclei:    
            ADD R3,R3,1
            LDR R4,R1,0
            BRz end
            
            ADD R4,R4,R2
            BRz finition
            ADD R1,R1,1
            BRnzp bouclei

finition:   ADD R0,R3,0
            
            
end:        STR R0,R6,5
            LDR R0,R6,0
            LDR R1,R6,1
            LDR R2,R6,2
            LDR R3,R6,3
            LDR R4,R6,4
            ADD R6,R6,5
            RET

char:   .FILL 69 ;; code ASCII de E
string: .STRINGZ "TESTE"
sttop: .BLKW 100
stbot: 

    .END