            .ORIG x3000
            LEA R6, stbot
            ADD R6,R6,-2
            LD R0,char
            STR R0,R6,0
            LEA R0,string
            STR R0,R6,1
            JSR index
            LDR R0,R6,0
            ADD R6,R6,2
            
;;l'entete de la fonction est index(char a, char* b)
index:      ADD R6,R6,-6
            STR R0,R6,0
            STR R1,R6,1
            STR R2,R6,2
            STR R3,R6,3
            STR R4,R6,4
            STR R7,R6,5


            AND R0,R0,0;;init
            AND R1,R1,0
            AND R2,R2,0
            AND R3,R3,0
            AND R4,R4,0
            LDR R2,R6,6
            LDR R1,R6,7
bouclei:    ADD R1,R1,1
            ADD R3,R3,1
            LDR R4,R1,0
            BRz end
            NOT R2,R2
            ADD R2,R2,1
            ADD R4,R4,R2
            BRz finition
            BRnzp bouclei

finition:   ADD R0,R3,0
            
            
end:        STR R0,R6,6
            LDR R0,R6,0
            LDR R1,R6,1
            LDR R2,R6,2
            LDR R3,R6,3
            LDR R4,R6,4
            LDR R7,R6,5
            ADD R6,R6,6
            RET

char:   .FILL 69 ;; code ASCII de E
string: .STRINGZ "TESTE"
sttop: .BLKW 100
stbot: 
    .END