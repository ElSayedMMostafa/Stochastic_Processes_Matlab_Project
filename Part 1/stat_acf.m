function result=stat_acf(X,k,t)
% k, t are the points we get the autocorrelation for.
result=0;
P = 1/size(X,1);
    for j=1:1:size(X,1) %Rows
     result=result+X(j,k)*X(j,t)*(P^2);
    end
end
