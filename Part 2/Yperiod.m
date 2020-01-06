function result =Yperiod (Y)

Y_ACF = time_acf(Y,1);
[a,b] = findpeaks(Y_ACF);
result= mean(diff(b)); %the difference between the peaks gives us the period.
end