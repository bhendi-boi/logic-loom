data = load("exam_scores.mat");
scores = data.scores;
[subject_avg, student_avg] = avg(scores);
fprintf('Average score per subject: \n');
disp(subject_avg);
fprintf('Average score per student: \n');
disp(student_avg);