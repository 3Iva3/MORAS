//start na R100
@100
D = A 
@1
M = D

//ucitavanje velicine niza
@0
D = M
@2
M = D
@4
M = D

(compare)
@2
D = M
(finish)
@finish
D; JEQ

//provjera trenute iteracije unutar prolaza
@4
M = M - 1
D = M
@reset
D; JEQ

@1
A = M //ucitavanje arr[i]
D = M //D = arr[i]

@1
A=M+1 //ucitaj arr[i+1]
D=D-M // D = arr[i] - arr[i+1]

// ako arr[i] > arr[i+1] zamjeni
@swap
D; JGT // idi  swap

// Ako array[i] <= array[i+1] pomakni iteraciju za 1 mjesto
@1
M=M+1 // povećaj trenutnu iteraciju 
@compare
0; JMP // idi na usporedivanje za sljedecu iteraciju






(swap)
//pohrani arr[i]
@1
A=M //ucitaj arr[i]
D=M //D = array[i]
@3
M=D //  postavljenje arr[i] za zamjenu na A3

//pohrani arr[i+1]
@1
A=M+1 //ucitaj arr[i+1]
D=M //pohrani arr[i+1] u D register

//pomakni i + 1 u i
@1
A=M //ucitaj arr[i]
M=D //Stavite i+1 u i
//pomakni i u i+1
@3
D=M //ucitaj i u D
@1
A=M+1 //ucitaj arr[i+1]
M=D //pomakni i u i+1

// povećaj iteraciju i idi na sljedecu usporedbu
@1
M=M+1 //povecaj trenutni prolaz iteracije
@compare
0; JMP // ponovno usporedi za sljedecu iteraciju

(reset)
// ponisti trenutnu iteraciju unutar prolaza
@0
D=M
@4
M=D

// Smanjenje trenutne iteracije
@2
M=M-1

// Reset A-register place
@100
D=A
@1
M=D
@compare
0; JMP



























