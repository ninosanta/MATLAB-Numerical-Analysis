% Esercitazione 6 - es.02
%   Householder

clear
close all
clc

r=[1 0 -1 0]';
s=[0 -1 0 1]';

% calcolare la matrice di Householder H che riflette r su s
u=(r-s)/norm(r-s);
H=eye(length(r))-2*u*u'