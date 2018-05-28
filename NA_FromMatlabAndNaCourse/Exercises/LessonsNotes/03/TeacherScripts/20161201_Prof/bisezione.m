function [x,k] = bisezione(f,a,b,tol)
x=(a+b)/2;
fa=feval(f,a);
fb=feval(f,b);
fm=feval(f,x);
for k=1:100    
    if abs(fm)<=tol
        % soddisfo il criterio di arresto
        disp('Soddisfatto criterio di arresto')
        disp(k)
        break
    else
        if fm*fa<0
            b=x;
            fb=fm;
            x=(a+b)/2;
            fm=feval(f,x);
        else
            a=x;
            fa=fm;
            x=(a+b)/2;
            fm=feval(f,x);
        end
    end
end