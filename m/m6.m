t=0:0.001:10;
x=sin(2/10*t);%(solution of its eq of motion)
plot(t,x);
fprintf("Position at 4s is %f",x(4000));