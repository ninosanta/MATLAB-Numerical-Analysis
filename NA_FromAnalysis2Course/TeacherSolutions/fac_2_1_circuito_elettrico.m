% fac_2_1_circuito_elettrico 
% applico le leggi di Ohm e Kirchhoff ai nodi ottengo il seguente sistema lineare
B=zeros(6);
B(1,1)=11;
B(1,2)=-2;
B(1,6)=-6;
B(2,1)=-2;
B(2,2)=17;
B(2,3)=-6;
B(2,5)=-9;
B(3,2)=-2;
B(3,3)=3;
B(3,4)=-1;
B(4,3)=-1;
B(4,4)=3;
B(4,5)=-2;
B(5,2)=-6;
B(5,4)=-4;
B(5,5)=11;
B(5,6)=-1;
B(6,1)=-4;
B(6,5)=-1;
B(6,6)=9;
B
pause
c=zeros(6,1);
c(1)=120;
V=B\c   %vettore dei potenziali V_i, i=2,...,7
I34=(V(2)-V(3))/1

