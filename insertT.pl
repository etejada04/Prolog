%insert(+T, +E, -TT)
insert([E, L, R], E, [E, L, R]):- !.
insert([], E, [E, [], []]).
insert([R, LS, RS], E, X):- E < R, !, insert(LS, E, Y), X is [R, Y, RS].
insert([R, LS, RS], E, X):- insert(RS, E, Y), X is [R, LS, Y].
