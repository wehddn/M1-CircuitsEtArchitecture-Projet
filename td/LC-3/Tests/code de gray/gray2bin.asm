            .ORIG x3000
            LEA R6, stbot
          
grayToBin:  ADD R6,R6,-3
            STR R0,R6,0
            STR R1,R6,1
            STR R7,R6,2


            LDR R0,R6,3
            SCAN R1,R0,R0 ;; scan permet de transformer un code Gray en binaire mais pas du binaire au code Gray
            STR R0,R6,3


            LDR R0,R6,0
            LDR R1,R6,1
            LDR R7,R6,2
            ADD R6,R6,3
            RET

sttop: .BLKW 100
stbot: 
    .END