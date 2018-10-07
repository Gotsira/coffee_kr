:- use_module(facts,[]).

wantedTaste(X):-
    writeln("What is the taste of coffee that you want?"),
    writeln("1) Little bitter and sweet 2) Little bitter and moderate sweet 3) Very sweet"),
    writeln("4) Moderate bitter and little sweet 5) Moderate bitter and sweet 6) Moderate bitter and very sweet"),
    writeln("7) Very bitter 8) Very bitter and moderate sweet 9) Very bitter and very sweet"),
    read(Response),
    writeln("This your wanted coffee list: "),
    (Response=:=1 -> foreach(b_low_s_low(X),write(X)->writeln(''));
        Response=:=2 -> foreach(b_low_s_medium(X), write(X)->writeln(''));
        Response=:=3 -> foreach(b_low_s_high(X), write(X)->writeln(''));
        Response=:=4 -> foreach(b_medium_s_low(X), write(X)->writeln(''));
        Response=:=5 -> foreach(b_medium_s_medium(X), write(X)->writeln(''));
        Response=:=6 -> foreach(b_medium_s_high(X), write(X)->writeln(''));
        Response=:=7 -> foreach(b_high_s_low(X), write(X)->writeln(''));
        Response=:=8 -> foreach(b_high_s_medium(X), write(X)->writeln(''));
        Response=:=9 -> foreach(b_high_s_high(X), write(X)->writeln(''))).

b_low_s_low(X):- facts:taste(X,Y,Z), Y=low, Z=low.
b_low_s_medium(X):- facts:taste(X,Y,Z), Y=low, Z=medium.
b_low_s_high(X):- facts:taste(X,Y,Z), Y=low, Z=high.
b_medium_s_low(X):- facts:taste(X,Y,Z), Y=medium, Z=low.
b_medium_s_medium(X):- facts:taste(X,Y,Z), Y=medium, Z=medium.
b_medium_s_high(X):- facts:taste(X,Y,Z), Y=medium, Z=high.
b_high_s_low(X):- facts:taste(X,Y,Z), Y=high, Z=low.
b_high_s_medium(X):- facts:taste(X,Y,Z), Y=high, Z=medium.
b_high_s_high(X):- facts:taste(X,Y,Z), Y=high, Z=high.

wantedRecipe(X):-
    writeln("Which coffee recipe do you want?"),
    writeln("1) americano 2) mocha 3) latte 4) mochaccino 5) zorro 6) espresso 7) doppio 8) cappuccino 9) espressino"),
    writeln("10) black 11) drip 12) frenchpress 13) percolated 14) turkish 15) cubano, 16) creama"),
    read(Response),
    writeln("These are the ingredients for your coffee:"),
    (Response=:=1 -> foreach(americano(X), write(X)->writeln(''));
        Response=:=2 -> foreach(mocha(X), write(X)->writeln(''));
        Response=:=3 -> foreach(latte(X), write(X)->writeln(''));
        Response=:=4 -> foreach(mochaccino(X), write(X)->writeln(''));
        Response=:=5 -> foreach(zorro(X), write(X)->writeln(''));
        Response=:=6 -> foreach(espresso(X), write(X)->writeln(''));
        Response=:=7 -> foreach(doppio(X), write(X)->writeln(''));
        Response=:=8 -> foreach(cappuccino(X), write(X)->writeln(''));
        Response=:=9 -> foreach(espressino(X), write(X)->writeln(''));
        Response=:=10 -> foreach(black(X), write(X)->writeln(''));
        Response=:=11 -> foreach(drip(X), write(X)->writeln(''));
        Response=:=12 -> foreach(frenchpress(X), write(X)->writeln(''));
        Response=:=13 -> foreach(percolated(X), write(X)->writeln(''));
        Response=:=14 -> foreach(turkish(X), write(X)->writeln(''));
        Response=:=15 -> foreach(cubano(X), write(X)->writeln(''));
        Response=:=16 -> foreach(creama(X), write(X)->writeln(''))).

americano(Y):- facts:ingredient(X,Y), X=americano.
mocha(Y):- facts:ingredient(X,Y), X=mocha.
latte(Y):- facts:ingredient(X,Y), X=latte.
mochaccino(Y):- facts:ingredient(X,Y), X=mochaccino.
zorro(Y):- facts:ingredient(X,Y), X=zorro.
espresso(Y):- facts:ingredient(X,Y), X=espresso.
doppio(Y):- facts:ingredient(X,Y), X=doppio.
cappuccino(Y):- facts:ingredient(X,Y), X=cappuccino.
espressino(Y):- facts:ingredient(X,Y), X=espressino.
black(Y):- facts:ingredient(X,Y), X=black.
drip(Y):- facts:ingredient(X,Y), X=drip.
frenchpress(Y):- facts:ingredient(X,Y), X=frenchpress.
percolated(Y):- facts:ingredient(X,Y), X=percolated.
turkish(Y):- facts:ingredient(X,Y), X=turkish.
cubano(Y):- facts:ingredient(X,Y), X=cubano.
creama(Y):- facts:ingredient(X,Y), X=creama.

userSuitableCoffee(X):-
    writeln("What type of person are you?"),
    writeln("1) Kid 2) Teenager 3) Adult 4) Healthy person"),
    read(Response),
    writeln("These are the coffees suitable for your age: "),
    (Response=:=1 -> foreach(kids(X), write(X)->writeln(''));
        Response=:=2 -> foreach(teens(X), write(X)->writeln(''));
        Response=:=3 -> foreach(adults(X), write(X)->writeln(''));
        Response=:=4 -> foreach(healthy(X), write(X)->writeln(''))).

kids(X):- facts:isKid(X).
teens(X):- facts:isTeenager(X).
adults(X):- facts:isAdult(X).
healthy(X):- facts:isHealthy(X).

similarCoffee(X):-
    writeln("What coffee do you like so I can suggest you?"),
    writeln("1) americano 2) mocha 3) latte 4) mochaccino 5) zorro 6) espresso 7) doppio 8) cappuccino 9) espressino"),
    writeln("10) black 11) drip 12) frenchpress 13) percolated 14) turkish 15) cubano, 16) creama"),
    read(Response),
    writeln("Here are some similar coffees: "),
    (Response=:=1 -> foreach(similar_americano(X), write(X)->writeln(''));
        Response=:=2 -> foreach(similar_mocha(X), write(X)->writeln(''));
        Response=:=3 -> foreach(similar_latte(X), write(X)->writeln(''));
        Response=:=4 -> foreach(similar_mochaccino(X), write(X)->writeln(''));
        Response=:=5 -> foreach(similar_zorro(X), write(X)->writeln(''));
        Response=:=6 -> foreach(similar_espresso(X), write(X)->writeln(''));
        Response=:=7 -> foreach(similar_doppio(X), write(X)->writeln(''));
        Response=:=8 -> foreach(similar_cappuccino(X), write(X)->writeln(''));
        Response=:=9 -> foreach(similar_espressino(X), write(X)->writeln(''));
        Response=:=10 -> foreach(similar_black(X), write(X)->writeln(''));
        Response=:=11 -> foreach(similar_drip(X), write(X)->writeln(''));
        Response=:=12 -> foreach(similar_frenchpress(X), write(X)->writeln(''));
        Response=:=13 -> foreach(similar_percolated(X), write(X)->writeln(''));
        Response=:=14 -> foreach(similar_turkish(X), write(X)->writeln(''));
        Response=:=15 -> foreach(similar_cubano(X), write(X)->writeln(''));
        Response=:=16 -> foreach(similar_creama(X), write(X)->writeln(''))).

similar_americano(X):- facts:similar(X,americano).
similar_mocha(X):- facts:similar(X,mocha).
similar_latte(X):- facts:similar(X,latte).
similar_mochaccino(X):- facts:similar(X,mochaccino).
similar_zorro(X):- facts:similar(X,zorro).
similar_espresso(X):- facts:similar(X,espresso).
similar_doppio(X):- facts:similar(X,doppio).
similar_cappuccino(X):- facts:similar(X,cappuccino).
similar_espressino(X):- facts:similar(X,espressino).
similar_black(X):- facts:similar(X,black).
similar_drip(X):- facts:similar(X,drip).
similar_frenchpress(X):- facts:similar(X,frenchpress).
similar_percolated(X):- facts:similar(X,percolated).
similar_turkish(X):- facts:similar(X,turkish).
similar_cubano(X):- facts:similar(X,cubano).
similar_creama(X):- facts:similar(X,creama).
