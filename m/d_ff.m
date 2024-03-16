function Q = d_ff(clk, reset, d)
    persistent Q_int
    if isempty(Q_int)
        Q_int = 0;
    end
    if reset == 1
        Q_int = 0;
    elseif clk == 1
        Q_int = d;
    end
    Q = Q_int;
end