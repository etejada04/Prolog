# symmetry(L):- symCnt(L, Cnt), 0 =:= Cnt mod 2.
# symCnt([], 0).
# symCnt([_|T], Cnt):- symCnt(T, Cnt1), Cnt is Cnt1+1.
otocps(S1,S2) :- otocps(S1,[],S2).
otocps([X|S1],S2,Sout) :- atomic(X), otocps(S1,[X|S2], Sout).
otocps([X|S1],S2,Sout) :- is_list(X),otocps(X,VP), otocps(S1,[VP|S2], Sout).
otocps([], S, S).
 
symmetry(S1) :- otocps(S1,O), S1=O.
