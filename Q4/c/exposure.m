P = zeros (250,250);

Y = zeros(250,250);
K = zeros(250,250);
for m=1:100
    for i=1:250
    
        for j=1:250
            K(i,j) = K(i,j) + Y(i,j);
            lambda = I(i,j)/10000;
            Y(i,j) = random('Poisson',lambda);

        end

    end
    
    
end
K = K/100;
imshow(K,[min(K(:)) max(K(:))])