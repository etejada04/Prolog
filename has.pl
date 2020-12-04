%has(+E,+L)
% determines whether list L has element E in it
has(E, [E | _]).
has(E, [X | T]) :- 
    X \= E,
    has(E, T).
