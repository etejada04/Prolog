#recursive(1,5).
#recursive(2,4).
#recursive(X,N) :- X1 is X-2, X2 is X-1, recursive(X1,F1), recursive(X2,F2), N is ((F1*F1) - F2).
recursive(1,5).
recursive(2,4).
recursive(X,N):-X2 is X-2, X1 is X-1, recursive(X2,P),recursive(X1,M), N is P*P-M.
 
recursiveS(1,[5]).
recursiveS(2,[5 4]).
recursiveS(N,[0,01,02|S]):- N1 is N-1, recursiveS(N1, [01,02 | S]), 0 is (02*02)-01.
