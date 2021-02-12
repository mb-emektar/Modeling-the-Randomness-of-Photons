
k=1
a = 10 ;
delta = 0.005 ;
n = 1/delta;
X = zeros(200,1);


for trial=1:200
    
    
   
        if rand() < (a*delta) 
          X(trial) =  1;
        end
    
    
end

bar(X);
xlabel('n');
ylabel('Numebr of Photons');
title('Realization-10');


