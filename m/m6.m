m = 10;
k =2;
delT = 0.001;
t = 0:delT:10;
x = input("Initial displacement from equilbrium = ?\n");
vel =0;
xvals=[];
for i =t
    force = -1*x*k;
    acceln = force/m;
    vel = acceln*delT + vel;
    x = vel*delT +x;
    xvals(end+1) = x;
    if i == 4
        disp("Displacement from equilibrium at t=4s is");
        disp(x);
    end
end
plot(t,xvals);
title("Displacement graph versus time")
xlabel("Time")
ylabel("Displacement")
