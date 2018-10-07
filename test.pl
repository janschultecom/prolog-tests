% prolog

parent(mario, adrian).
parent(pepa, adrian).

parent(pepe, mario).

parent(juan, pepa).

grandparent(X,Z) :- parent(X,Y), parent(Y,Z).

