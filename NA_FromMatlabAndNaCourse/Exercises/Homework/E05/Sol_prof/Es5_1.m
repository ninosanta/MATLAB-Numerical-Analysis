% calcolo del vettore dei nodi
x=(pi/128)*(0:127)';
% calcolo dei coseni e seni nei nodi
c0=ones(128,1);
c1=cos(x);
c2=cos(2*x);
c3=cos(3*x);
s1=sin(x);
s2=sin(2*x);
s3=sin(3*x);
% calcolo del polinomio P(x) nei nodi
p=2*c0+(1/3)*c1-(2/5)*s1-(7/100)*c2+(3/200)*s2-(9/1000)*c3+(11/3000)*s3;
% calcolo della matrice del sistema ai minimi quadrati
V=[c0 c1 s1 c2 s2];
% risoluzione del sistema ai minimi quadrati
a=V\p
% calcolo del polinomio Q(x) nei nodi
q=a(1)*c0+a(2)*c1+a(3)*s1+a(4)*c2+a(5)*s2;
% calcolo dell'errore tra i due polinomi nei nodi
err_2=norm(q-p)
err_inf= norm(q-p,inf)
% grafico dei due polinomi
plot(x,p,'b',x,q,'r')

