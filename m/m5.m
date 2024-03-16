x = [1,2,4,16];
myft = my_dft(x);
subplot(2,2,[1,2])
stem(x)
axis padded
grid on
title("Signal X")
subplot(2,2,[3,4])
stem(myft)
axis padded
grid on
title("Dft of X")
function [mydft] = my_dft(x)
mydft=[];
N = length(x);
for k = 1:N
    var = 0;
    for n = 1:N
        var = var +  x(n)*exp(-j*2*pi*(k-1)*(n-1)/N); 
    end
    mydft(end+1) = var;
end
end