function y=my_dft(x)
for i=1:length(x)
    y(i)=x(i)*exp(-j*2*pi*i/length(N));
end