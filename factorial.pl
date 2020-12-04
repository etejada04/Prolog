%myfact(+N, -R)
myfact(1,1):- !.
myfact(N, R):- N > 1, N is N-1, fact(N1,R1), R is N*R1.

