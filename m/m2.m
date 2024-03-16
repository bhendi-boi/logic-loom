m=matfile('exam_scores.mat');
scores=m.scores;
[sub,stu]=calculate_average(scores);
function [subjectmean,studentmean]=calculate_average(scores)
subjectmean=mean(transpose(scores));
studentmean=mean(scores);
end
