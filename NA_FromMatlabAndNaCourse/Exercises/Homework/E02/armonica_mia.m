function [y1,y2] = armonica(m)
  t=4;
  
  y1=0;
  for k=1:m
    y1=chop(y1+chop(1/k^2,t),t);
  end
  err_r1=abs(pi^2/6-y1)/(pi^2/6)
  
  y2=0;
  for k=m:-1:1
    y2=chop(y2+chop(1/k^2,t),t);
  end
  err_r2=abs(pi^2/6-y2)/(pi^2/6)
end
