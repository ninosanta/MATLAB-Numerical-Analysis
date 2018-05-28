function [I]=trapezic(f,a,b,N)  % va passata con la @ la f
%funzione che implementa la formula di quadratura dei trapezi composita
%   riceva in ingresso:
%     l'integranda: f
%     gli estemi di integrazione: a, b
%     il grado
%   E restituisca in uscita l'approssimazione dell'integrale.

  % siccome mi servono nodi equispaziati, va bene linspace:
  x=linspace(a,b,N+1);  % non dimenticare N+1!
  
  % Valuto l'integranda f nei nodi contenuti in x
  % y=feval(f,x);  % function evaluation; non funzionerebbe y=f(x)
  y=f(x);  % a me fun zia...
  h=(b-a)/N;  % passo
  I=h/2*(y(1)+2*sum(y(2:N))+y(N+1));  % sum somma le componenti di un vett.
end

% e.g. I=trapezic(@effe, 1, 2,3)