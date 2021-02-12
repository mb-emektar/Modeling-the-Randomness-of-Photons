k=1;
num_trials = 10^5 ;
a = 10 ;
delta = 0.005 ;
X = zeros(200,1);
Y = zeros(10^5,1);
for c=1:num_trials
       for trial=1:200
        if rand() < (a*delta) 
          X(trial) = 1;
        end
    end
    for d=1:200
    Y(c) = Y(c) + X(d);
    end  
    X = zeros(200,1);  
end
histogram(Y,"Normalization","Probability")
xlabel('Numebr of Photons');
ylabel('Probability');
title('Histogram of Y with 10^5 Realization');


