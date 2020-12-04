father(S,Z) :- father(S,[],Z).
father([],Ak,Ak).
father([X|S],Ak,S2) :- father(S, [X|Ak],S2).
 
recur(N,S) :- recur2(N,S1), father(S1,S).
 
recur2(1,[3]).
recur2(2,[2,3]). 
recur2(N,[O,O1,O2 | S]) :- N1 is N-1, recur2(N1,[O1,O2 | S]), O is O1 * O2.
