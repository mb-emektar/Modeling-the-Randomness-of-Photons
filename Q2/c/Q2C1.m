a = 10 ;
delta = 0.005 ;
n = 1/delta;
X = 1;
Px = zeros(200,1);
for trial=1:200   
    Px(X) = nchoosek(n,X)*((a*delta).^X)*((1-a*delta).^(200-X));
    X=X+1;
end
bar(Px);
xlabel('Probability');
ylabel('Number of Photons');
title('PMF of Y');


