%search(+T, +E)
search([E,_,_], E).
search([R, LS, RS], E):- R < E, !, search(LS, E).
search([_,_,RS], E):- search(RS, E).
