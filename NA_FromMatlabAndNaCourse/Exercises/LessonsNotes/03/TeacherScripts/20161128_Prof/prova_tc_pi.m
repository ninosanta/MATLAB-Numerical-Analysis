clear
ic=0;
for N=[2 4 8 16 32]
    ic=ic+1;
    IT(ic)=trapezic(@effe2,0,1,N);
    erroreT(ic)=pi-IT(ic);
    IS(ic)=simpsonc(@effe2,0,1,N);
    erroreS(ic)=pi-IS(ic);
end
[IT' erroreT' IS' erroreS']
