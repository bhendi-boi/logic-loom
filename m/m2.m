matr = load("exam_scores.mat");
scores = matr.scores;
[avgStu,avgSubj]= calculateAverage(scores);
avgStu
avgSubj
function [meanPerStudent, meanPerSubject] = calculateAverage(scors)
meanPerStudent = mean(scors,2);
meanPerSubject = mean(scors,1);
end
