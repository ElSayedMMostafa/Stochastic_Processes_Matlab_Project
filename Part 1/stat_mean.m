function s_mean = stat_mean(X)
%% For the staristical mean
P = 1/size(X,1);
s_mean=sum(X,1)*P;
end