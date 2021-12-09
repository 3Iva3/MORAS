@i
M = 1

(LOOP_START)
     @i
     A = M
     D = M
     @maximum
     M = D
     
     (INNER_LOOP)
     @i 
     D = M
     @4
     D = A - D
     @LOOP_END
     D; JLE

     @maximum
     D = M
     @i
     M = M + 1
     A = M
     D = M - D

     @LOOP_START
     D; JGT
     @INNER_LOOP
     0; JMP
(LOOP_END)
D = M

@R5
M = D
(END)
@END

    