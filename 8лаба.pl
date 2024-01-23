%щ) Создайте предикат, находящий сумму четных чисел в узлах
%двоичного дерева.
tree_length1(tr(X,nil,nil),X):-X mod 2 =:= 0.
tree_length1(tr(X,nil,nil),0):-X mod 2 =\= 0.
tree_length1(tr(X,L,R),Res):-X mod 2 =:= 0, tree_length1(L,Res1), tree_length1(R,Res2),Res is X+Res1+Res2.
tree_length1(tr(X,L,R),Res):-X mod 2 =\= 0, tree_length1(L,Res1), tree_length1(R,Res2),Res is Res1+Res2.

%д) Создайте предикат, подсчитывающий количество узлов двоичного
%дерева, в которых находятся числа, кратные R.
tree_length2(tr(X,nil,nil),R,1):-X mod R =:= 0.
tree_length2(tr(X,nil,nil),R,0):-X mod R =\= 0.
tree_length2(tr(X,L,Ri),R,Res):-X mod R =:= 0, tree_length2(L,R,Res1), tree_length2(Ri,R,Res2),Res is 1+Res1+Res2.
tree_length2(tr(X,L,Ri),R,Res):-X mod R =\= 0, tree_length2(L,R,Res1), tree_length2(Ri,R,Res2),Res is Res1+Res2.


%с) Создайте предикат, находящий среднее арифметическое значений
%в узлах двоичного дерева.
tree_length(tr(X,nil,nil),1,X).
tree_length(tr(X,L,R),N,Res):- tree_length(L,N1,Res1), tree_length(R,N2,Res2),
 N is N1 + N2 + 1,Res is X+Res1+Res2.

tree_sr(tr(X,L,R),S):- tree_length(L,Res1,S1),tree_length(R,Res2,S2), Res is Res1+Res2+1,
                        S3 is S1+S2+X,S is S3/Res.
