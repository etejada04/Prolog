%mylen(+L, -N)
mylen([], 0):- !.
mylen( [ H | T ], N):- mylen(T,N2), N is N2+1.
