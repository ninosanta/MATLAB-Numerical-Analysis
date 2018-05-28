% Studio del condizionamento della matrice di Hilbert
% Plotta il numero di condizionamento in scala naturale e semilogaritmica
% e mostra l'effetto del cattivo condizionamento nel calcolo dell'inversa

for n=1:10
    A=hilb(n);
    c(n)=cond(A);
end

plot(1:n,c)
pause

semilogy(1:n,c)
pause

for n=1:10
    A=hilb(n);
    B=inv(hilb(n));
    E=eye(n)-A*B;
    [n norm(E)]
end