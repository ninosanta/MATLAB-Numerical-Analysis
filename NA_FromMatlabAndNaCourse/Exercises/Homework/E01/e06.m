% esercitazione 1 es. 6

teta = linspace(0,2*pi,200);
x = cos(teta);
y = sin(teta);
plot(x,y)
axis equal  % scala in modo uguale i due assi -> circonferenza perfetta

% nell'esercizio però il raggio dipende da teta
figure
rho = 1+1/2*cos(4*teta);  % 1/2*cos(4*teta) è una moltiplicazione 
                          % scalare per un vettore -> no punto
x = rho.*cos(teta);
y = rho.*sin(teta);
plot(x,y)
axis equal