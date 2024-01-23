max1(A,B,C):-A>=B,C=A,!.
max1(A,B,C):-A<B,C=B.
max(A,B,C,D):-max1(A,B,N),max1(C,D,N1),max1(N,N1,N2),write(N2).

proverka(X1,Y1,X,Y,R):-(X1=<X+R),(X1>=X-R),
    (Y1=<Y+R),(Y1>=Y-R).

gipotenuza(K1,K2):-D=K1*K1+K2*K2,A is sqrt(D),write(A).

perevod(1):-write(1),!.
perevod(0):-write(0),!.
perevod(X1):- X is (X1 mod 2), X2 is (X1 div 2), perevod(X2), write(X).

perevod16('A'):-perevod(10),!.
perevod16(X1):-perevod(X1).

triangle(X,Y,X1,Y1,X2,Y2):-sqrt((X2-X1)*(X2-X1)+(Y2-Y1)*(Y2-Y1))+
sqrt((X-X1)*(X-X1)+(Y-Y1)*(Y-Y1))>sqrt((X2-X)*(X2-X)+(Y2-Y)*(Y2-Y)),

    sqrt((X2-X)*(X2-X)+(Y2-Y)*(Y2-Y))+
sqrt((X-X1)*(X-X1)+(Y-Y1)*(Y-Y1))>sqrt((X2-X1)*(X2-X1)+(Y2-Y1)*(Y2-Y1)),

    sqrt((X2-X1)*(X2-X1)+(Y2-Y1)*(Y2-Y1))+
sqrt((X2-X)*(X2-X)+(Y2-Y)*(Y2-Y))>sqrt((X-X1)*(X-X1)+(Y-Y1)*(Y-Y1)).
