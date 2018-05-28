function f = funzione_e03(x,z)
%Funzione per l'e03:
%  serve per l'esercizio 3, dove non posso usare l'inline ne' l'handle
%  perche' deve essere una funzione vettoriale.
%  Input:
%     -x: in questo caso f non dipende da x ma gliela devo passare perche'
%         Eulero_esp_sistem.m richiede cosi'
%     -z: vettore delle incognite
%  Output:
%     -f:
f = [z(2); 3*z(2)-2*z(1)];
end

