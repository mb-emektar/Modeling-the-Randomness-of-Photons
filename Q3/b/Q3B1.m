a = 10 ;
delta = 0.05 ;
n = 1/delta;
X = 1;
Px = zeros(n,1);
grid on
for trial=1:n
    Px(X) = nchoosek(n,X)*((a*delta).^X)*((1-a*delta).^(n-X));
    X=X+1;
end
plot(Px,'b-o');
hold on
a = 10 ;
delta = 0.005 ;
n = 1/delta;
X = 1;
Px = zeros(n,1);
for trial=1:n
    Px(X) = nchoosek(n,X)*((a*delta).^X)*((1-a*delta).^(n-X));  
    X=X+1;
end
plot(Px,'g-o');
hold on
a = 10 ;
delta = 0.0005 ;
n = 1/delta;
X = 1;
Px = zeros(n,1);
for trial=1:n
    Px(X) = nchoosek(n,X)*((a*delta).^X)*((1-a*delta).^(n-X));
    X=X+1;
end
plot(Px,'r-o');
xlim([0 25])
xlabel('Number of Photons');
ylabel('Probability');
title('PMF of Y (for different delta values)');
legend('delta=0.05','delta=0.005','delta=0.0005')