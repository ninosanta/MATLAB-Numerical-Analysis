a1=[1.2 0.4 -2.3 -1.5 2.8]';

sigma=-norm(a1)  % segno neg. perche' a1(1)>0

as=[sigma 0 0 0 0]';
v=a1-as;
u=v/norm(v)
H=eye(5)-2*u*u';

% prova

norm(H*a1-as)