%contain(+L, +E)
contain([E | _], E):- !.
contain([_ | T]:- contain(T, E).
