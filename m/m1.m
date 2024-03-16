x=0:0.01:2*pi;
y1=sin(x);
y2=cos(x);
y3=tan(x);
y4=cot(x);
y5=sec(x);
y6=1./sin(x);
figure(1)
subplot(2,3,1)
plot(x,y1);
title('sine plot');
xlabel("x");
ylabel("sin(x)");
subplot(2,3,2)
plot(x,y2);
title('cosine plot');
xlabel("x");
ylabel("cos(x)");
subplot(2,3,3)
plot(x,y3);
title('tangent plot');
xlabel("x");
ylabel("tan(x)");subplot(2,3,4)
plot(x,y4);
title('cotangent plot');
xlabel("x");
ylabel("cot(x)");subplot(2,3,5)
plot(x,y1);
title('sec plot');
xlabel("x");
ylabel("sec(x)");subplot(2,3,6)
plot(x,y1);
title('cosec plot');
xlabel("x");
ylabel("cosec(x)");