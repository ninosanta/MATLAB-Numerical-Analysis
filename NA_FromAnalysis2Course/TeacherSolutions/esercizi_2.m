disp('***********************************************')
disp('*****************esercizio_2_1*****************')
disp('***********************************************')

format long e
for n = 5:5:15
    A = hilb(n);
    b = sum(A,2);
    x = A\b;
    ex = ones(n,1);
    condizionamento = cond(A)
    err = norm(ex-x)/norm(ex)
    pause
end

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_2*****************')
disp('***********************************************')

A = [11 2 3 4; 0 8 2 3; 0 0 4 0;1 0 0 5];
b = sum(A,2);
[L,U,P] = lu(A);
y = L\(P*b);
x = U\y

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_3*****************')
disp('***********************************************')

A=rand(3);
det(A)
[L,U,P]=lu(A);
inversa=inv(U)*inv(L)*P
inv(A)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_4*****************')
disp('***********************************************')

B = rand(5);
A = B*B';
A'-A
eig(A)
R = chol(A);
R1 = inv(R);
inversa = R1*R1'
inv(A)
pause
b = sum(A,2);
y = R'\b;
x = R\y

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_5*****************')
disp('***********************************************')
A = rand(6);
b = sum(A,2);
[L,U,P] = lu(A);
x = zeros(6,4);
for i = 1:4
    y = L\(P*b);
    x(:,i) = U\y
    pause
    b = b/(i+1);
end 

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_6*****************')
disp('***********************************************')

A = rand(5);
det(A)
b = sum(A^4,2);
[L,U,P] = lu(A);
tn = P*b;
for i = 1:4
    v = L\(tn);
    w = U\v;
    tn = P*w;
end
w

%
pause
%

disp('***********************************************')
disp('*****************esercizio_2_7*****************')
disp('***********************************************')

itermax = 100;
toll = 1.e-7;

A1 = [1 -2 2; -1 1 -1; -2 -2 1];
b1 = sum(A1,2);
n = length(b1);
x0 = zeros(n,1);
disp('Jacobi')
[x,k] = jacobi(A1,b1,x0,itermax,toll)
disp('Gauss Seidel')
[x,k] = gauss_seidel(A1,b1,x0,itermax,toll)
pause
%
A2 = [4 0 2/5; 0 5 2/5; 5/2 2 1];
b2 = sum(A2,2);
n = length(b2);
x0 = zeros(n,1);
disp('Jacobi')
[x,k] = jacobi(A2,b2,x0,itermax,toll)
disp('Gauss Seidel')
[x,k] = gauss_seidel(A2,b2,x0,itermax,toll)
pause
%
A3 = [2 -1 1; 2 2 2; -1 -1 2];
b3 = sum(A3,2);
n = length(b3);
x0 = zeros(n,1);
disp('Jacobi')
[x,k] = jacobi(A3,b3,x0,itermax,toll)
disp('Gauss Seidel')
[x,k] = gauss_seidel(A3,b3,x0,itermax,toll)
pause
%
A = [3 -1 0;-1 3 -1;0 -1 3];
B = [0 0 -1;0 -1 0;-1 0 0];
A4 = [A B;B A];
b4 = sum(A4,2);
n = length(b4);
x0 = zeros(n,1);
disp('Jacobi')
[x,k] = jacobi(A4,b4,x0,itermax,toll)
disp('Gauss Seidel')
[x,k] = gauss_seidel(A4,b4,x0,itermax,toll)

    