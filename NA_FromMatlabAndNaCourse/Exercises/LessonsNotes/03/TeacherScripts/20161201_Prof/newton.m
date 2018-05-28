function [x,k] = newton(f,fp,x0,tol)
x=x0;
for k=1:100
    fx=feval(f,x);
    if abs(fx)<=tol
        % soddisfo il criterio di arresto
        disp('Soddisfatto criterio di arresto')
        disp(k)
        break
    else
        fpx=feval(fp,x);        
        if fpx==0
            disp('Errore: derivata nulla nell''iterata');
            break
        else
            x=x-fx/fpx;
        end
    end
end