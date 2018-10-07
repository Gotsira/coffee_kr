coffee(americano).
coffee(mocha).
coffee(latte).
coffee(mochaccino).
coffee(zorro).
coffee(espresso).
coffee(doppio).
coffee(cappuccino).
coffee(espressino).
coffee(black).
coffee(drip).
coffee(frenchpress).
coffee(percolated).
coffee(turkish).
coffee(cubano).
coffee(creama).

bitterness(latte,low).
bitterness(mocha,low).
bitterness(americano,high).
bitterness(mochaccino,low).
bitterness(zorro,medium).
bitterness(espresso,high).
bitterness(doppio,high).
bitterness(cappuccino,low).
bitterness(espressino,high).
bitterness(black,high).
bitterness(drip,medium).
bitterness(frenchpress,medium).
bitterness(percolated,low).
bitterness(turkish,medium).
bitterness(cubano,low).
bitterness(creama,medium).

sweetness(latte,medium).
sweetness(mocha,low).
sweetness(americano,low).
sweetness(mochaccino,medium).
sweetness(zorro,medium).
sweetness(espresso,medium).
sweetness(doppio,medium).
sweetness(cappuccino,high).
sweetness(espressino,high).
sweetness(black,low).
sweetness(drip,medium).
sweetness(frenchpress,high).
sweetness(percolated,low).
sweetness(turkish,medium).
sweetness(cubano,high).
sweetness(creama,medium).

ingredient(mocha,chocolate).
ingredient(mocha,coffeebean).
ingredient(mocha,milk).
ingredient(latte,milk).
ingredient(latte,coffeebean).
ingredient(americano,coffeebean).
ingredient(americano,hotwater).
ingredient(mochaccino,chocolate).
ingredient(mochaccino,syrup).
ingredient(mochaccino,whippedcream).
ingredient(mochaccino,coffeebean).
ingredient(mochaccino,hotwater).
ingredient(espresso,water).
ingredient(espresso,coffeebean).
ingredient(zorro,espresso).
ingredient(zorro,water).
ingredient(doppio,espresso).
ingredient(cappuccino,espresso).
ingredient(cappuccino,milk).
ingredient(cappuccino,milk_foam).
ingredient(espressino,espresso).
ingredient(espressino,milk).
ingredient(espressino,syrup).
ingredient(black,coffeebean).
ingredient(drip,coffeebean).
ingredient(drip,water).
ingredient(frenchpress,coffeebean).
ingredient(percolated,coffeebean).
ingredient(percolated,hotwater).
ingredient(turkish,coffeebean).
ingredient(turkish,water).
ingredient(cubano,espresso).
ingredient(cubano,sugar).
ingredient(creama,coffeebean).
ingredient(creama,cream).

nonfat(X):- coffee(X),
\+ ingredient(X,milk),
\+ ingredient(X,syrup),
\+ ingredient(X,whippedcream),
\+ ingredient(X,sugar).

sameBitterness(X,Y):- bitterness(X,X1),bitterness(Y,Y1),=(X1,Y1),not(=(X,Y)).
sameSweetness(X,Y):- sweetness(X,X1), sweetness(Y,Y1),=(X1,Y1),not(=(X,Y)).


similar(X,Y):- sameBitterness(X,Y), sameSweetness(X,Y), !.
isHealthy(X):- nonfat(X), sweetness(X,low), !.
isKid(X):- (sweetness(X,medium) ; sweetness(X,high)), ingredient(X,chocolate).