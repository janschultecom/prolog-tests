% ...
parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(pat,hans).

female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(tom).
male(bob).

mother(X,Y) :- 
	parent(X,Y),  
	female(X).

grandparent(X,Z) :- 
	parent(X,Y), 
	parent(Y,Z).

grandchildren(Z,X) :-
	parent(Y,Z),
	parent(X,Y).

sister(X,Y) :- 
	female(X), 
	parent(Z,X), 
	parent(Z,Y),
	X \= Y.

happy(X) :-
	parent(X,Y).

hastwochildren(X) :-
	parent(X, Y1), 
	parent(X, Y2),
	sister(Y1,Y2).

aunt(X,Y) :-
	parent(Z,Y),
	sister(X,Z).

ancestor(X,Z) :-
	parent(X,Z).

ancestor(X,Z) :-
	parent(X,Y),
	ancestor(Y,Z).
