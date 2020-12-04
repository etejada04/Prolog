ksqr([], _, []).
ksqr([H|T], E, [R|L]):- atomic(H), H =:= E, ksqr(T, E, L), R is H*H.
ksqr([H|T], E, [R|L]):- atomic(H), H =\= E, ksqr(T, E, L), R is H.
ksqr([H|T], E, [L1|L2]):- is_list(H), ksqr(H, E, L1), ksqr(T, E, L2).
