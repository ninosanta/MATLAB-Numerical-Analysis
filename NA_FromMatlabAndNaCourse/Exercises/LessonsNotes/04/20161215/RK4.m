function [x,y] = RK4(f,x0,xN,y0,N)
%Funzione che implementa il Metodo di Runge-Kutta a 4 stadi:
%  Input:
%     -f: funzione dell'EDO scritta in forma canonica
%     -x0: iniziale
%     -xN: estremo destro integrazione
%     -y0: iniziale
%     -N: numero punti dell'intervallo/sottointervalli
%  Output:
%     -x: vettore contenente i nodi (equispaziati) del reticolo. Serve per
%         plottare
%     -y: vettore delle approssimazioni dei nodi del reticolo

x=linspace(x0,xN,N+1);  % nodi del reticolo equispaziato - attento: N+1
h=(xN-x0)/N;  % passo tra due nodi consecutivi
y=zeros(1,N+1);  % vettore di tutte le approssimazioni associate ai nodi 
                 % della partizione: grande quanto ai nodi
y(1)=y0;  % approssimazione associata al primo nodo del reticolo
for n=2:N+1
  K1=f(x(n-1), y(n-1));
  K2=f(x(n-1)+h/2, y(n-1)+h/2*K1);
  K3=f(x(n-1)+h/2, y(n-1)+h/2*K2);
  K4=f(x(n-1)+h, y(n-1)+h*K3);  % OSS: x(n-1)+h ~ x(n) cioe' il successivo
  y(n)=y(n-1)+h/6*(K1+2*K2+2*K3+K4);
end
end