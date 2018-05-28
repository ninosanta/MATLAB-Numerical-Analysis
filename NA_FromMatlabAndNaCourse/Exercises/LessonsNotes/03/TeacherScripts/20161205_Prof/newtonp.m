function [x,k,p] = newtonp(f,fp,x0,tol)
x(1)=x0;
for k=1:100
    fx=feval(f,x(k));
    if abs(fx)<=tol
        % soddisfo il criterio di arresto
        disp('Soddisfatto criterio di arresto')
        disp(k)
        break
    else
        fpx=feval(fp,x(k));        
        if fpx==0
            disp('Errore: derivata nulla nell''iterata');
            break
        else
            x(k+1)=x(k)-fx/fpx;
        end
    end
    if k>=3
        % Verifica sperimentale dell'ordine di convergenza
        p=log(abs(x(k+1)-x(k))/abs(x(k)-x(k-1)))/...
          log(abs(x(k)-x(k-1))/abs(x(k-1)-x(k-2)))
    end
end