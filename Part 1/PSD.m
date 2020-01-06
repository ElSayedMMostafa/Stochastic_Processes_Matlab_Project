function result = PSD(X)
c=size(X,2);
s_acf = zeros(1,c);
for i=1:1:c
   s_acf(1,i)=stat_acf(X,c,i); 
end
 result = fft(s_acf);
end