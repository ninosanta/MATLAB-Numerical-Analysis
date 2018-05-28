% Esercitazione 04 - es.01
% Dati due vettori non nulli v e w di ordine n, costruire una matrice A che 
% trasformi v in w (cioe' tale che Av = w) usando una opportuna matrice di 
% riflessione di Householder

n=5;
v=randn(n,1);
w=randn(n,1);

%OSS:
% Una riflessione di Householder lascia invariata la norma del vettore
% riflesso, mentre v e w potrebbero avere norme diverse
normv=norm(v)
normw=norm(w)

% definizione della matrice di trasformazione
ww=(normv/normw)*w;  % questo vettore, multiplo di w, ha stessa norma di v
norm(ww)-normv       % cvd
u=(ww-v)/norm(ww-v);  % versore di riflessione
Hu=eye(n)-2*u*u';  % trasformazione di Householder associata a u
A=(normw/normv)*Hu;  % A che trasforma v in w

% controllo della correttezza del risultato
norm(w-A*v)  % ~eps
