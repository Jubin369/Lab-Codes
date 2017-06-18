start(0).
final(2).
arc(0,a,0).
arc(0,b,0).
arc(0,a,1).
arc(1,b,2).
arc(2,a,2).
accept(W):-start(S),path(S,W).
path(S,[H|T]):-arc(S,H,N),write(S),nl,write([H|T]),path(N,T).
path(S,[]):-final(S),write('accepted').
