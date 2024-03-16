t = 0:0.001:2*pi;
sn = sin(t);
cs = cos(t);
cscc = csc(t);
cott = cot(t);
tann = tan(t);
secc = sec(t);

subplot(2,3,1);
plot(t,sn);
title("Sine")
grid on
axis padded
xlabel("x axis")
ylabel("Sin(x)")

subplot(2,3,2);
plot(t,cs);
title("Cosine")
grid on
axis padded
xlabel("x axis")
ylabel("cos(x)")

subplot(2,3,3);
plot(t,tann);
title("Tan")
grid on
axis padded
xlabel("x axis")
ylabel("tan(x)")

subplot(2,3,4);
plot(t,cott);
title("Cot")
grid on
axis padded
xlabel("x axis")
ylabel("cot(x)")

subplot(2,3,5);
plot(t,cscc);
title("Cosec")
grid on
axis padded
xlabel("x axis")
ylabel("cosec(x)")

subplot(2,3,6);
plot(t,secc);
title("Sec")
grid on
axis padded
xlabel("x axis")
ylabel("sec(x)")


