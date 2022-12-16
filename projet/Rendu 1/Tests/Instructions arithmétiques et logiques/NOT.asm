     .ORIG x0000	
     AND R0,R0,0
     ADD R0,R0,5
     NOT R0,R0
     ADD R0,R0,1	; R0 = -R0
     .END

