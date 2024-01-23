%change_element(c, f, [a, b, c, d, f, c], [a, b, f, d, c, f]).
change_element(_,_,[],[]).
change_element(C,F,[C|T],[F|T1]):-change_element(C,F,T,T1).
change_element(C,F,[F|T],[C|T1]):-change_element(C,F,T,T1).
change_element(C,F,[H|T],[H|T1]):-change_element(C,F,T,T1).

%add_lists([4, 7, 12, 10, 5], [3, 6, 8, 3], [7, 13, 20, 13, 5]).
add_lists([],T,T).
add_lists(T,[],T).
add_lists([H|T],[H1|T1],[H3|T2]):-H3 is H1+H,add_lists(T,T1,T2).

%delete_element(c, [a, b, c, d, f, c], [a, b, d, f, ]).
delete_element(_,[],[]).
delete_element(C,[C|T],T1):-delete_element(C,T,T1),!.
delete_element(C,[H|T],[H|T1]):-delete_element(C,T,T1).

%revers_list([1, 4, 9, 0, 5], [5, 0, 9, 4, 1]).
reverse_list([],[]).
reverse_list([X|T],R):-reverse_list(T,T1),concat_lists(T1,[X],R).

% concat_lists([a, b, c, d], [a, b, l, m, k], [a, b, c, d, a, b, l, m, k]).
concat_lists([ ], X, X).
concat_lists([A|B], X, [A|Z]) :- concat_lists(B, X, Z).

quant_1([], 0).
quant_1([_|T], L):-quant_1(T, L_Tail), L is L_Tail + 1.
