# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# ==========================
# Polyfit & Polyval Commands
# ==========================

# Vector For X and Y Variables
x = (50:50:550);
y = [1.000 1.875 2.750 3.250 4.375 4.875 5.675 6.500 7.250 8.000 8.750];

# Best Fitted Line Data
f = polyfit(x, y, 1);           % Gives M and C of The Linear Graph
n = linspace(50, 550, 500);     % Calculate New Predicted Y Values For X For Best Fitted Line
m = polyval(f, n); %

# Plot the Graph
figure(1);
hold on;
plot(x, y, '*r');
xlabel('Mass');
ylabel('Elongation');
title("Hooke's Law");
plot(n, m, '-g');
legend('Data Points', 'Best Fitted Line', 'Location', 'NorthWest'); % Should be at last after the plot commands
hold off;
grid on;

# Extra Limit Function
pkg load symbolic;
syms x
f = limit(log(x)^2/x, inf)
