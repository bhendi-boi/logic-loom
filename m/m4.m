Q=0;
qvals=[];
Q = d_ff(1,0,0,Q);
qvals(end+1) = Q;
Q = d_ff(1,1,1,Q);
qvals(end+1) = Q;
Q = d_ff(0,1,0,Q);
qvals(end+1) = Q;
Q = d_ff(1,0,1,Q);
qvals(end+1) = Q;
Q = d_ff(0,0,1,Q);
qvals(end+1) = Q;


function [Q] = d_ff(clk,reset,d,q)
if reset == 1
Q=0;
else 
    if clk ==1 && reset ==0 && d==0
    Q=0;
    end

    if clk ==1 && reset ==0 && d==1
    Q=1;
    end
    if clk == 0
        Q=q;
    end
    
end
end