clear
ic=0;
for N=[2 4 8 16 32]
    ic=ic+1;
    IT(ic)=trapezic(@effe,1,2,N);
    erroreT(ic)=log(2)-IT(ic);
    IS(ic)=simpsonc(@effe,1,2,N);
    erroreS(ic)=log(2)-IS(ic);
end
[IT' erroreT' IS' erroreS']
