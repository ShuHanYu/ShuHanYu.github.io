% Draw decision boundary for https://www.shuhanyu.com/2018/07/08/MLofLogisticRegressionWithDecisionBoundary/

% x1 + x2 >= 3 represent the malignant tumor, and x1 + x2 < 3 represent the benign tumor.
close all; clear; clc;

D = load ('data.m');
S = sum(D,2);
% Set plot handler
h = zeros(3,1);

x = 0:0.1:5;
h(1) = plot(x, 3-x);
hold on;
grid on;
xlabel('x_1');
ylabel('x_2');
title('Decision Boundary : x_1 + x_2 = 3');

for i = 1:size(D,1)
if S(i) >= 3
h(2) = plot(D(i,1),D(i,2),'rx','MarkerSize',10);
else
h(3) = plot(D(i,1),D(i,2),'go','MarkerSize',10);
endif
endfor

legend(h,'Decision boundary','Malignant','Benign');
print('DecisionBoundary.png','-dpng');
