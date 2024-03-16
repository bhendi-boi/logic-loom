function [subavg, stuavg] = calculate_averages(scores)
    subavg = mean(scores, 1);
    stuavg = mean(scores, 2);
end