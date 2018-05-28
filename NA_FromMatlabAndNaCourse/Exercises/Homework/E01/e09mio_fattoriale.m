function y = mio_fattoriale(N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y=1;

if N>=0
  for z=1:N
    y=z*y;
  end
else
    disp('NB non esiste il fattoriale di un numero negativo!')
    y=-100;
end
end


