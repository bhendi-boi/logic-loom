x=0:0.1:2*pi;
figure;
subplot (3,2,1);
plot(sin(x));
title("sin");
xlabel("time");
ylabel("function")
subplot (3,2,2);
plot(cos(x));
title("cos")
xlabel("time");
ylabel("function")
subplot (3,2,3);
plot(sin(x)./cos(x));
title("tan")
xlabel("time");
ylabel("function")
subplot (3,2,4);
plot(cos(x)./sin(x));
title("cot")
xlabel("time");
ylabel("function")
subplot (3,2,5);
plot(1./sin(x));
title("sec")
xlabel("time");
ylabel("function")
subplot (3,2,6);
plot(1./cos(x));
title("csc")
xlabel("time");
ylabel("function")
