servesAll(american, [salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place, [burgers, fries, onion_rings]).
servesAll(chinese, [eggrolls, rice, shrimp, soup, noodles]).
servesAll(indian, [papadam, bagan_bharta, rice, tandoori, naan]).
servesAll(italian, [salad, pasta, cioppino, snapper, bread, garlic_bread]).
servesAll(japanese, [sashimi, rice, tempura, noodles]).
servesAll(mediterranean, [gyros, hummus, pita, falafel]).

serves(Kind, Dish) :- servesAll(Kind, Dishes), member(Dish, Dishes).

foodsAll(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus,
pizza, salad, soup, tempura, onion_rings, naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).
foodsAll(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches,
fried_chicken, tacos, tandoori, larb]).
foodsAll(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
foodsAll(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

dish(Diet, Dish) :- foodsAll(Diet, Foods), member(Dish, Foods).

cuisinesAll(chinese, [yans, chinatown]).
cuisinesAll(pizza_place, [pizza_marvin, mikes]).
cuisinesAll(mexican, [bajas, dolores, tallulahs]).
cuisinesAll(mediterranean, [andreas, east_side_pocokets]).
cuisinesAll(indian, [kabob_n_curry]).
cuisinesAll(american, [waterman_grille, red_stripe]).
cuisinesAll(japanese, [haruki]).
cuisinesAll(thai, [heng, bees, lims]).
cuisinesAll(burger_place, [shake_shack]).
cuisinesAll(italian, [pasta_beach, al_forno]).

cuisine(Restaurant, Type) :- cuisinesAll(Type, Restaurants), member(Restaurant, Restaurants).

streetsAll(thayer_street, [yans, bajas, andreas, chinatown, kabob_n_curry, heng, mikes, east_side_pocokets, shake_shack]).
streetsAll(fox_point, [pizza_marvin, dolores, tallulahs, bees, al_forno]).
streetsAll(wayland, [waterman_grille, red_stripe, pasta_beach, haruki, lims]).

location(Street, Restaurant) :- streetsAll(Street, Restaurants), member(Restaurant, Restaurants).

dishcheck(Restaurant, Dish) :- serves(X, Dish), cuisine(Restaurant, X).

dietcheck(Location, Diet, Restaurant) :- foodsAll(Diet, Y), location(Location, Restaurant), cuisine(Restaurant, Z), member(Y,Z).