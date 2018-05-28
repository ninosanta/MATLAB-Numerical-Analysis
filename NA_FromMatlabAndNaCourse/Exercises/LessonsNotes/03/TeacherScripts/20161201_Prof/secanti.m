function [xk,k] = secanti(f,x0,x1,tol)
xk=x1;
xkm1=x0;
fxk=feval(f,xk);
fxkm1=feval(f,xkm1);

for k=1:100    
    if abs(fxk)<=tol
        % soddisfo il criterio di arresto
        disp('Soddisfatto criterio di arresto')
        disp(k)
        break
    else
        % Calcolo il rapporto incrementale
        fpxk=(fxk-fxkm1)/(xk-xkm1);
        % Calcolo la nuova iterata
        xkp1=xk-fxk/fpxk;
        % Aggiorno le iterate per il nuovo passo
        xkm1=xk;
        fxkm1=fxk;
        xk=xkp1;
        fxk=feval(f,xk);
    end
end