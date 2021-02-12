P = zeros (250,250);

Y = zeros(250,250);

for i=1:250
    
    for j=1:250
        
        lambda = I(i,j)/100;
        Y(i,j) = random('Poisson',lambda);
        
       % P(i,j) = [(lambda).^Y(i,j)]*(exp(-lambda)) /factorial(Y(i,j));

    end

end



imshow(Y,[min(Y(:)) max(Y(:))])