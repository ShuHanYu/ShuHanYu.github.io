close all; clear; clc;

D = load('nonLinearData.m');
D_square = D.*D;
S = sum(D_square,2);

% Set plot handler
h = zeros(3,1);

x = -3:0.1:3;
h(1) = plot(x, (1-x^2)^0.5);
hold on;
grid on;
xlabel('x_1');
ylabel('x_2');
title('Decision Boundary : x_1^2 + x_2^2 = 1');

for i = 1:size(D,1)
if S(i) >= 1
h(2) = plot(D(i,1),D(i,2),'rx','MarkerSize',10);
else
h(3) = plot(D(i,1),D(i,2),'go','MarkerSize',10);
endif
endfor

legend(h,'Decision boundary','Malignant','Benign');
print('DecisionBoundary.png','-dpng');
