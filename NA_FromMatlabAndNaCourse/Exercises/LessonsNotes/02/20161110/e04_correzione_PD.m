% boh

clear 
close all
clc

A=tridiag(-1,2,-1,10);
vett=eig(A)
vett(9)/vett(10)
vett(1)/vett(2)