function result = get_the_period (X)
% X is periodic signal
 N = normrnd(0,1,[1,length(X)]);
 Y = X+N;
 
Y_ACF = time_acf(Y,1);

 [a,b] = findpeaks(Y_ACF);
  result= mean(diff(b));
end