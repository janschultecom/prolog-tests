
head( [H | T], H, T).

take( 0, L, []).

take( N, [H | T], [H | Z]) :- take( N - 1, T, Z).
	
elem( X, [X | T]).
elem( X, [Y | T]) :- elem(X,T).

dropHead( [H | T], T).

conc( [], L2, L2). 
conc( [X | L1], L2, [X | L3]) :- conc(L1,L2,L3).

delLastThree( L3, L1) :- conc( L1 , [_,_,_], L3).

delFirstThree( L3, L1) :- conc( [_,_,_], L1, L3).

delFirstAndLastThree(L3, L2B) :- delFirstThree(L3,L2A), delLastThree(L2A,L2B).


lastV1(I, L) :- conc( H, [L], I).

lastV2([X], X).
lastV2([H | T], Z) :- lastV2(T,Z).

add( H, T, [H | T]).
