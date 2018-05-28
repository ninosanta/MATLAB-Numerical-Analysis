close all
clear all
clc


n = 200;
h = 1/(n-1);

tic
v1 = [0:h:1];
toc

tic
v2 = linspace(0,1,n);
toc

tic
v3(1)=0;
for i=2:n  
  v3(i) = v3(i-1)+h;
  i = i+1;
end
toc

tic
v4=zeros(1,n);
for i=2:n  
  v4(i) = v4(i-1)+h;
  i = i+1;
end
toc

% [v1' v2' v3' v4']