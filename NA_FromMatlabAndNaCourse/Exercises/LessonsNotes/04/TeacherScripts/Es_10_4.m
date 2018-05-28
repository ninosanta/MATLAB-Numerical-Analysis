%%%% es 4
close all
x0 = 0;
xN = 10;
y0 = [1;1];
N = 800;
[x,y] = Eulero_espl_sistemi('funzione_es4',x0,xN,y0,N);
[x45,y45] = ode45('funzione_es4',[x0,xN],y0);
[x23,y23] = ode23('funzione_es4',[x0,xN],y0);
%%% grafico della soluzione 
plot(x,y(1,:),'linewidth',3)
hold on
plot(x45,y45(:,1),'r',x23,y23(:,1),'g','linewidth',3)
legend('Eulero_espl','Ode45','Ode23')
title('Soluzione')
%%% grafico della derivata prima della soluzione
figure
plot(x,y(2,:),'linewidth',3)
hold on
plot(x45,y45(:,2),'r',x23,y23(:,2),'g','linewidth',3)
title('Derivata prima della soluzione')
legend('Eulero_espl','Ode45','Ode23')
n_nodi45=length(x45)
n_nodi23=length(x23)