man('Sergey').
man('Nikolai').
man('Pasha').
man('Maks').
man('Vlad').
man('Petya').
woman('Diana').
woman('Natasha').
woman('Marina').
woman('Nadezda').
woman('Alena').
woman('Olya').
woman('Anastasha').
woman('Nastya').
child('Sergey', 'Diana').
child('Sergey', 'Pasha').
child('Sergey', 'Marina').
child('Natasha', 'Marina').
child('Natasha', 'Diana').
child('Nikolai', 'Sergey').
child('Nadezda', 'Sergey').
child('Nadezda', 'Maks').
child('Nadezda', 'Alena').
child('Nikolai', 'Maks').
child('Nikolai', 'Alena').
child('Petya', 'Nikolai').
child('Alena', 'Olya').
child('Anastasha', 'Nastya').
pair('Natasha', 'Sergey').
pair('Anastasha', 'Sergey').
pair('Sergey', 'Anastasha').
pair('Marina', 'Vlad').
pair('Vlad', 'Marina').
pair('Nadezda', 'Nikolai').
pair('Sergey', 'Natasha').
pair('Nikolai', 'Nadezda').
son(N2,N1):-man(N2), child(N1,N2).
grandma(N1, N2):-woman(N1), child(N1,N3), child(N3,N2), not(N2=N1).
grandpa(N1, N2):-man(N1), child(N1,N3), child(N3,N2), not(N2=N1).
rodnbrother(N2, N4):-man(N2), child(N1,N2), child(N3,N2), child(N1,N4), child(N3,N4), not(N2=N4),man(N1), woman(N3).
rodnsister(N2, N4):-woman(N2), child(N1,N2), child(N3,N2), child(N1,N4), child(N3,N4), not(N2=N4),man(N1), woman(N3).
dvobrother(N1, N2):-man(N1), child(N3, N1), child(N4, N3), child(N4, N5),child(N5,N2), not(N2=N1),not(N5=N3),  child(N6, N3), child(N6, N5), man(N6), woman(N4).
dvosister(N1, N2):-woman(N1), child(N3, N1), child(N4, N3), child(N4, N5),child(N5,N2), not(N2=N1),not(N5=N3),  child(N6, N3), child(N6, N5), man(N6), woman(N4).
vnuk(N2,N1):-man(N2), child(N1,N3), child(N3,N2).
svodsister(N1,N2):-woman(N1), pair(N3,N4), child(N3,N1), child(N4,N2), not(N2=N1),  not(child(N3,N2)),not(child(N4,N1)).
srodbrother(N1,N2):-man(N1), pair(N3,N4), child(N3,N1), child(N3,N2), not(child(N4,N1)), not(N2=N1).
zolovka(N1,N2):-pair(N3,N2), woman(N1), woman(N2), child(N4,N3),child(N4,N1), child(N5,N3),child(N5,N1),man(N3), not(N2=N1), man(N4), woman(N5).
zyat(N1, N2):- pair(N1,N3), man(N1), woman(N2), woman(N3), child(N2, N3).
praded(N1, N2):- man(N1), child(N1,N3), child(N3, N4), child(N4, N2).
