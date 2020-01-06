function total = total_power(X)
P = 1/size(X,1);
total=(sum(X,1).^2).*P; 
end