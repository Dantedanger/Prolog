
calculator():-
    new(CALC, dialog('Калькулятор')),
    new(N1, int_item('a')),
    new(N2, int_item('b')),
    new(RES, text_item('res')),
    new(ADD, button('+',
                   message(@(prolog),
                          add,N1,N2,RES))),
    new(SUB, button('-',
                   message(@(prolog),
                          sub,N1,N2,RES))),
    new(MULT, button('*',
                   message(@(prolog),
                          mult,N1,N2,RES))),
    new(DIV, button('/',
                   message(@(prolog),
                          div,N1,N2,RES))),
    new(SQRT, button('sqrt',
                   message(@(prolog),
                          sqrt1,N1,RES))),
    new(POW, button('pow',
                   message(@(prolog),
                          pow1,N1,N2,RES))),
    new(SIN, button('sin',
                   message(@(prolog),
                          sin1,N1,RES))),
    new(COS, button('cos',
                   message(@(prolog),
                          cos1,N1,RES))),
    new(TG, button('tg',
                   message(@(prolog),
                          tg,N1,RES))),
    new(CTG, button('ctg',
                   message(@(prolog),
                          ctg,N1,RES))),
    new(LN, button('ln',
                   message(@(prolog),
                          ln,N1,RES))),
    new(EXP, button('exp',
                   message(@(prolog),
                          exp,N1,RES))),
    new(ABS, button('abs',
                   message(@(prolog),
                          abs1,N1,RES))),

    send(CALC, append, N1),
    send(CALC, append, N2, right),
    send(CALC, append, RES, right),
    send(CALC, append, ADD, below),
    send(CALC, append, SUB, right),
    send(CALC, append, MULT, right),
    send(CALC, append, DIV, right),
    send(CALC, append, SQRT, right),
    send(CALC, append, POW, right),
    send(CALC, append, SIN, below),
    send(CALC, append, COS, right),
    send(CALC, append, TG, right),
    send(CALC, append, CTG, right),
    send(CALC, append, LN, right),
    send(CALC, append, EXP, right),
    send(CALC, append, ABS, right),
    send(CALC, open).

add(N1, N2, RES):-
    get(N1, selection, V1),
    get(N2, selection, V2),
    send(RES, selection, (V1 + V2)).

sub(N1, N2, RES):-
    get(N1, selection, V1),
    get(N2, selection, V2),
    send(RES, selection, (V1 - V2)).

mult(N1, N2, RES):-
    get(N1, selection, V1),
    get(N2, selection, V2),
    send(RES, selection, (V1 * V2)).

div(N1, N2, RES):-
    get(N1, selection, V1),
    get(N2, selection, V2),
    (
        (V2=0,
         new(MIST,dialog('Ошибка')),
         send(MIST, append, text('Неправильные данные')),
        send(MIST,open));

        (send(RES, selection, (V1 / V2)))).

sqrt1(N1, RES):-
    get(N1, selection, V1),
    SQRT is sqrt(V1),
    send(RES, selection, SQRT).

pow1(N1, N2, RES):-
    get(N1, selection, V1),
    get(N2, selection, V2),
    POW1 is (V1^V2),
    send(RES, selection, POW1).

sin1(N1, RES):-
    get(N1, selection, V1),
    SIN1 is sin(V1),
    send(RES, selection, SIN1).

cos1(N1, RES):-
    get(N1, selection, V1),
    CO1S is cos(V1),
    send(RES, selection, CO1S).

tg(N1, RES):-
    get(N1, selection, V1),
    cos(V1)=0,
    T1G is (sin(V1)/cos(V1)),
    send(RES, selection, T1G).

ctg(N1, RES):-
    get(N1, selection, V1),
    CTG1 is (cos(V1)/sin(V1)),
    send(RES, selection, CTG1).

ln(N1,RES):-
    get(N1, selection, V1),
    L1N is log(V1),
    send(RES, selection, L1N).

exp(N1, RES):-
    get(N1, selection, V1),
    EXP1 is exp(V1),
    send(RES, selection, EXP1).

abs1(N1,RES):-
    get(N1, selection, V1),
    AB1S is abs(V1),
    send(RES, selection, AB1S).
