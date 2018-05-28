% trasformazione di un vettore in un altro
% mediante le riflessioni di Householder

% generazione dei vettori
v=rand(100,1);
w=rand(100,1);
normv=norm(v)
normw=norm(w)

% definizione della matrice di trasformazione
ww=(normv/normw)*w;
u=(ww-v)/norm(ww-v);
H=eye(100)-2*u*u';
A=(normw/normv)*H;

% controllo della correttezza del risultato
norm(w-A*v)