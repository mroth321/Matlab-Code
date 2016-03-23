close all, clc
%% load the data
data=load('regression_data.mat')
x=data.x;
y=data.y;

%% call the my_least_squares function
poly_est_raw=my_least_squares(x,y,5)
poly_est=flipud(poly_est_raw)

%% plot
figure
plot(x,y); hold on;
plot(x,polyval(poly_est,x));

%Errors