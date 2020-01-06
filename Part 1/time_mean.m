function TIME_MEAN = time_mean(X,n)
% Thish function gets a matrix X of waveforms represent a random process
% The putput is the time mean of the nth waveform specified by the input n
TIME_MEAN = (1/size(X,2))*sum(X(n,:));
end

