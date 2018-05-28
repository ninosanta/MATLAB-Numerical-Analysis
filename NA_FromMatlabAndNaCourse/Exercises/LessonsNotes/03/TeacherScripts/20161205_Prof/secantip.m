function [xk,k,p] = secantip(f,x0,x1,tol)
xk(2)=x1;
xk(1)=x0;
fxk=feval(f,xk(2));
fxkm1=feval(f,xk(1));

for k=1:100    
    if abs(fxk)<=tol
        % soddisfo il criterio di arresto
        disp('Soddisfatto criterio di arresto')
        disp(k)
        break
    else
        % Calcolo il rapporto incrementale
        fpxk=(fxk-fxkm1)/(xk(k+1)-xk(k));
        % Calcolo la nuova iterata
        xk(k+2)=xk(k+1)-fxk/fpxk;
        % Aggiorno le iterate per il nuovo passo       
        fxkm1=fxk;        
        fxk=feval(f,xk(k+2));
    end
    if k>=3
        % Verifica sperimentale dell'ordine di convergenza
        p=log(abs(xk(k+1)-xk(k))/abs(xk(k)-xk(k-1)))/...
          log(abs(xk(k)-xk(k-1))/abs(xk(k-1)-xk(k-2)))
    end
end