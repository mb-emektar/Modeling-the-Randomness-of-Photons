
num_trials = 10^5 ;
a = 10 ;
delta = 0.005 ;
X = zeros(10^5,1);

for trial=1:num_trials
    
    if rand() < (a*delta) 
       X(trial) = 1;
    end
end


histogram(X,"Normalization","Probability");
xlabel('Values of X');
ylabel('Probability');
title('Histogram of X');
