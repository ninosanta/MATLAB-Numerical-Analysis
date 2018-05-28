% Verifica del condizionamento dellamatrice di Vandermonde
x=1:20;
NO=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 146 186];

for n=2:20
    n
    A=vander(x(1:n));
    cond(A)
    pause
end