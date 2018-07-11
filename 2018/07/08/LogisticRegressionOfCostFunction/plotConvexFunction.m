close all; clear; clc;

x = 0:0.01:1;
subplot(1,2,1);
plot(x, -log(x));
xlabel('h_\theta');
ylabel('Cost Function');
title('if y = 1');
legend('-log(h_\theta)');

subplot(1,2,2);
plot(x, -log(1-x));
xlabel('h_\theta');
ylabel('Cost Function');
title('if y = 0');
legend('-log(1 - h_\theta)');

print('convexFunction.png','-dpng');
