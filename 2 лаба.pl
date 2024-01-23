diz(0,0,0).
diz(1,0,1).
diz(0,1,1).
diz(1,1,1).

con(0,0,0).
con(1,0,0).
con(0,1,0).
con(1,1,1).

inv(0,1).
inv(1,0).

cheme1(In1, In2, In3, In4, Out1, Out2):-diz(In1,In2,X1), inv(X1,X2),con(X2, In3, X3), con(X3, In4, Out2),inv(Out2,Out1).

cheme2(In1, In2, In3, In4, In5, Out1, Out2):-con(In3, In4, X1), diz(In1, In2, X2), diz(X2,In3, X3), con(X1, X3, Out2), con(In1,X3,X4), con(In5,X4, X5), inv(X5, Out1).
cheme3(In1, In2, In3, In4, Out1, Out2, Out3, Out4, Out5):-con(In1, In2, X1), inv(X1,Out1), con(In2, In3,X2), inv(X2,Out2), con(X2, In4, Out4), con(Out4, In3, Out5), con(In2, In4, X3),con(X3, Out4, X4), inv(X4, Out3).
