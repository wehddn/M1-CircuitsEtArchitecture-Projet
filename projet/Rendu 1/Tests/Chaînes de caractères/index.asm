            .ORIG x3000
index:      AND R0,R0,0;;init
            AND R1,R1,0
            AND R2,R2,0
            AND R3,R3,0
            AND R4,R4,0
            LD R2,char
            LEA R1,string
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
end:        NOP

char:   .FILL 69 ;; code ASCII de E
string: .STRINGZ "TESTE"
    .END