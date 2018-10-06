nonfat(X):- coffee(X),
\+ ingredient(X,milk),
\+ ingredient(X,syrup),
\+ ingredient(X,whippedcream).

bitterness(latte,low).
bitterness(mocha,low).
bitterness(americano,high).
bitterness(mochaccino,low).

sweetness(latte,medium).
sweetness(mocha,low).
sweetness(americano,low).
sweetness(mochaccino,medium).

coffee(americano).
coffee(mocha).
coffee(latte).
coffee(mochaccino).

ingredient(mocha,chocolate).
ingredient(mocha,coffeeBean).
ingredient(mocha,milk).

ingredient(latte,milk).
ingredient(latte,coffeeBean).

ingredient(americano,coffeeBean).
ingredient(americano,hotwater).

ingredient(mochaccino,chocolate).
ingredient(mochaccino,syrup).
ingredient(mochaccino,whippedcream).
ingredient(mochaccino,coffeeBean).
ingredient(mochaccino,hotwater).

sameBitterness(X,Y):- bitterness(X,X1),bitterness(Y,Y1),=(X1,Y1),not(=(X,Y)).
sameSweetness(X,Y):- sweetness(X,X1), sweetness(Y,Y1),=(X1,Y1),not(=(X,Y)).


similar(X,Y):- sameBitterness(X,Y), sameSweetness(X,Y), !.
isHealthy(X):- nonfat(X), sweetness(X,low), !.
isKid(X):- (sweetness(X,medium) ; sweetness(X,high)), ingredient(X,chocolate).