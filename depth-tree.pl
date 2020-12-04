%depth(+E, -D)
depth([], 0).
depth([V, L, R], D):- depth(L, LD), depth(R, RD), max(LD, RD, DD), D is DD+1.
%max(+LD, +RD, -DD)
max(LD, RD, LD):- LD > RD, !.
max(_, LD, RD).
