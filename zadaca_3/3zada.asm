@R0
D = M
@baza
M = D

@R1
D=M 
@eksponent
M=D

@j
M = 1    
(PotenciranjeS)
    @R1
    D = M

    @j
    D = M - D     

    @PotenciranjeE
    D; JGE   

    @LoopS
    0; JMP   


(LoopS)
@i
M = 0
    (LoopStart)
        @R0
        D = M

        @i
        D = M - D  

        @LoopE
        D; JGE    


        @baza 
        D = M

        @k
        M = M + D   

        @i
        M = M + 1

        @LoopStart
        0; JMP

    (LoopE)

    @k
    D = M

    @baza
    M = D

    @k
    M = 0

    @j
    M = M + 1

    @PotenciranjeS
    0; JMP

(PotenciranjeE)
@baza
D = M
@R2
M = D

(END)
@END
0; JMP
