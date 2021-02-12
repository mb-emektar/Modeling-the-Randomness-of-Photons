X = zeros (100,1);
PX = zeros (100000,1);
lambda = 100;
newlambda = 0;
lambdas = zeros(100000,1)
product = ones(100000,1)
z= 1;
for x=95:0.0001:105
    if z == 100001
        break
    end
    lambdas(z,1)=x;
    z = z+1;
end

j =1;
for i=1:100000   
    if j == 100001
        break
    end
        X(i,1) = random('Poisson',lambda);
        j= j+1;
end
%------------
for n=1:100
    newlambda = newlambda + (1/100)*X(n,1);
end
newlambda
error = newlambda-lambda
for a=1:100000
    for b=1:100
PX(X(b,1)) = (lambdas(a,1).^X(b,1))*exp(-lambdas(a,1))/factorial(X(b,1));
product(a,1)=product(a,1)*PX(X(b,1));
end
end
plot(lambdas,product)
xlabel('Lambda');
ylabel('Probability');
title('Maximum Likelihood Estimatation of Lambda');
grid on
grid minor