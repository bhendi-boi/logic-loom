function [Q]=d_ff(clk,d,reset)
whlie reset~=0
Q=0;
d=0;
break;
end
whlie clk~=0
Q=d;
break;
end
end


