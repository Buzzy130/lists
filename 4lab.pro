domains
list=symbol*
predicates
nondeterm sequence(list,integer)
nondeterm conc(list,list,list)
nondeterm length(list,integer)
nondeterm fragmentation(list,list,list,integer)
clauses
conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).
length([],0).
length([_|Tail],N):-length(Tail,N1),
N=1+N1.
fragmentation(L,L1,L2,M):-conc(L1,[X|L2],L),
length(L1, N1),
N1=M-1,
write(X," ").
sequence(L,M):- fragmentation(L,L1,L2,M),
conc(L2,L1,Lr),
sequence(Lr,M),!;nl,write(L),nl.
goal
sequence([olya,alena,vika,olesya,tatyana,valentina,oksana,lena,katya,vasilisa,sveta,anna],2).
 