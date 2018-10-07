:- module(facts,[]).

/* format taste(coffee, bitterness, sweetness) */
taste(latte, low, medium).
taste(mocha, low, medium).
taste(americano, high, low).
taste(mochaccino, low, medium).
taste(zorro, medium, medium).
taste(espresso, high, medium).
taste(doppio, high, medium).
taste(cappuccino, low, high).
taste(espressino, high, high).
taste(black, high, low).
taste(drip, medium, medium).
taste(frenchpress, medium, high).
taste(percolated, low, low).
taste(turkish, medium, medium).
taste(cubano, low, high).
taste(creama, medium, medium).

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

similar(X,Y):- taste(X,X1,X2),taste(Y,Y1,Y2),=(X1,Y1),=(X2,Y2),not(=(X,Y)).
isHealthy(X):- nonfat(X), taste(X,Y,low).
isKid(X):- (taste(X,low,medium) ; taste(X,low,high)), (ingredient(X,chocolate)).
isTeenager(X):- (taste(X,medium,medium) ; taste(X,medium,high)), (ingredient(X,chocolate) ; ingredient(X,coffeebean)).
isAdult(X):- (taste(X,medium,medium) ; taste(X,medium,low) ; taste(X,high,low) ; taste(X,high,medium)) , ingredient(X,coffeebean).