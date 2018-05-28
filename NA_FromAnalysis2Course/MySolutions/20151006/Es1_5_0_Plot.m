% Esercitazione 1 - Istruzioni Plot

x=linspace(0,4*pi,200); %definisco x come vettore equispaziato tra 0.4 e pi e chiedo 200 valori
y=sin(x);
plot(x,y)

plot(x,y, '*') %vedo la sequenza di punti
plot(x,y,'o') % 'o' --> marker dei punti

hold on %non cancella il grafico precedente
plot(x, -y, '--')
plot(x, -y, '-.') %'-.' --> definisce lo stile tratto-punto della linea

figure %apre una nuova figura
plot(x, y+1, 'r') %r=red

hold on 
plot(x,y, 'g-o') %posso dire se fare linea continua '-' + 'o' il marker con il pallino o

hold off %posso ora sovrascrivere i grafici cancellando quello già presente
plot(x,y, 'k') %k= nero

plot(x,y, 'k', 'LineWidth', 4) %spessore linee e colore
hold on
plot(x,y, 'c-.', 'LineWidth', 0.5) %c=cyan 0.5 spessore

xlabel('x') %etichetta assi
ylabel('y')

xlabel('x', 'FontSize', 14) %dimensione font lato assi, etichetta asse x
ylabel('y','FontSize', 18) %etichetta asse y
title('grafico funzione seno') %titolo legenda
legend('sin(x)', 'sin x') %stringa di caratteri che indica cosa rappresentano i grafici
                          %pulsante finestra grafico
grid on %stampa griglia immagine

%==========================================================================

help plot %informazioni stile, colori, linee, markers, tratteggi
axis[(0 4*pi -1 1)] %taglia il grafico in 4*pi su x e in -1 1 in y

pause %ferma l'esecuzione del programma in questa linea
      %in modo da vedere i risultati fin qui. Premere un tasto a caso per
      %farlo ripartire

figure
subplot(2,2,1) %divide l'utput in 4 subplot in modo da vedere più immagini insieme
plot(x,y)
subplot(2,2,2)
semilogx(x,y) %plot x,y in scala logaritmica su x
subplot(2,2,3)
semilogy(x,y) %plot con scala logaritmica su asse y
             %ovviamewnte non caga i negativi
subplot(2,2,4)
loglog(x,y) %plot in scala logaritmica sia in x che in y

grid on %metto griglia in uno dei 4 subplot
subplot(2,2,1) 
grid on 
subplot(2,2,3)