%DFS(+G,+A,-N)
dfs(G, A, N):- DFS2(G, [A], N2, []), reverseList(N2, N).
%DFS2(+G, +S, -N, +A)
DFS2(G, [H | T],_,A):- has(A, H), !, DFS2(G, T, N, A).
DFS2(_,[ ],A,A).
DFS2(G, [H | T], N, A):- A2 = [ H | A ], findAll(X, neighbour(G, H, X), ALL),prepend(ALL, T, S), DFS2(G, S, N, A2).
%has(+E,+L)
% determines whether list L has element E in it
has(E, [E | _]).
has(E, [X | T]) :- 
    X \= E,
    has(E, T).
%prepend(+L, +L1, -R)
prepend([], L1, L1).
prepend([H | T], L1, R) :-
    prepend(T, L1, R2),
    R = [ H | R2]. 
%neighbour(+G,+A,-B) 
neighbour(g(_,E) ,A, B) :- neighbour2(E, A, B).
neighbour2([[A,B] | _ ], A, B).
neighbour2([ _ | T ], A, B) :- neighbour2(T,A,B). 
