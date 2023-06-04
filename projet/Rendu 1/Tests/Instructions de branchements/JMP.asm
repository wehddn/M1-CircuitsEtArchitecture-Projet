		.ORIG x0000
		LEA R5,add
		AND R0,R0,0
		AND R1,R1,0
		JMP R5
		ADD R0,R0,10
add: 	ADD R1,R1,15 ;; si jump reussi R0 reste bien a 0 a la fin du programme
		.END