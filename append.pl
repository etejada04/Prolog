%append(+L, +E, -N)
append([], E, [E]).
append([H | T], E, [H | M]):- append(T, E, N).
