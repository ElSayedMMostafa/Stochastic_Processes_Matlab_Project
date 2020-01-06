function R=time_acf(X,n)
% n is the number of waveform specified
c = size(X,2);
W = X(n,:);
R=zeros(1,2*c);
for tau=1:c
    for t=1:c
        if t+tau<=c
        R(tau) = R(tau) + W(t)*W(t+tau); 
        end
    end
end
R = R(1,1:c); %The final output (to ignore the zeros)
end