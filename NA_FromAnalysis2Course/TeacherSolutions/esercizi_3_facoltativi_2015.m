disp('***********************************************')
disp('*****************fac_3_1***********************')
disp('***********************************************')

close all
clear all
clc

theta=linspace(0,2*pi,100);
c=1;
e=0.5;
m=4;
rho=c*(1+e*cos(m*theta));
x=rho.*cos(theta);
y=rho.*sin(theta);
z=linspace(0,2*pi);
i=1;
for N=8:8:24
    thetaN=linspace(0,2*pi,N);
    rhoN=c*(1+e*cos(m*thetaN));
    xN=rhoN.*cos(thetaN);
    yN=rhoN.*sin(thetaN);

    sx=spline(thetaN,xN,z);
    sy=spline(thetaN,yN,z);

    figure(i)
    plot(x,y,'r',xN,yN,'b',sx,sy,'g','linewidth',2)
    legend('curva','app. lineare','app. spline')
    axis equal
    i=i+1;
    pause
end
