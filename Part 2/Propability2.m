clear; close all;
fs = 1/0.002;
%% Propability Project Part II
t = 0:0.001:5;
X = cos(2*pi*t + pi/3);
N = normrnd(0,1,[1,length(X)]);
Y = X+N;
plot(Y);
rN=size(N,1); cN=size(N,2);
%% To get the ACF of N(t)
 N_ACF = time_acf(N,1);
 plot(N_ACF);
 %% To get the ACF of Y(t)
Y_ACF = time_acf(Y,1);
 plot(Y_ACF);
 %% The period
 [a,b] = findpeaks(Y_ACF);
  result= mean(diff(b)); %the difference between the peaks gives us the period.