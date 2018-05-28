clear
close all
x=1:20;
NO=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 146 186];

A=[ones(length(x),1) x' (x').^2 sin(2*pi/20*x') cos(2*pi/20*x') sin(pi/20*x') cos(pi/20*x') ];
%c=(A'*A)\(A'*(NO'));
c=A(:,[1:7])\NO'
scarto=norm(A(:,[1:7])*c-NO')^2
xx=linspace(1,20,200);
yymq=c(1)+c(2)*xx+c(3)*xx.^2+...
      c(4)*sin(2*pi/20*xx)+c(5)*cos(2*pi/20*xx)+...
      c(6)*sin(pi/20*xx)+c(7)*cos(pi/20*xx);
plot(xx,yymq,'b','Linewidth',2)
hold on
plot(x,NO,'rs','Markersize',6)



