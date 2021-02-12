a = 10 ;
n = 50;
Y = 1;
t=1;
Py = zeros(n,1);
grid on

for trial=1:n
    Py(Y) = [(a*t).^Y]*(exp(-a*t)) /factorial(Y);
    Y=Y+1;
end

plot(Py,'-o');

xlabel('Number of Photons');
ylabel('Probability');
title('PMF of Y');
