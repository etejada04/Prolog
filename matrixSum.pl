%sectiM(+M1, +M2, -S)
sectiM([], _, []).
sectiM([H1|T1], [H2|T2], [R|S2]) :- sectiRadky(H1, H2, R), sectiM(T1, T2, S2).
 
%sectiRadky(+R1, +R2, -RS)
sectiRadky([], _, []).
sectiRadky([H1|T1], [H2|T2], [H|T]) :- sectiRadky(T1, T2, T), H is H1 + H2.
