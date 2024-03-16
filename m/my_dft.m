function X = my_dft(x)
   N = length(x);
    X = zeros(1, N);
    for k = 0:N-1
        X(k+1) = sum(x .* exp(-1j * 2 * pi * k * (0:N-1) / N));
    end
end
    