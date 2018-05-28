A=[3.75 -1.25 -2.25 0.75; -1.25 3.75 0.75 -2.25; -2.25 0.75 3.75 -1.25; 0.75 -2.25 -1.25 3.75]

[V D]=eig(A)  % e ispezione degli autovettori, oppure

% ricerca del vettore w multiplo di A*w

w=[3 -3 3 -3]';
rank([A*w w])

w=[5 -5 -5 -5]';
rank([A*w w])

w=[-4 4 2 -2]';
rank([A*w w])

w=[1 -1 -5 5]';
rank([A*w w])


