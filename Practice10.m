# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# Command to Close Graphical Figures
close

#########################################
###      Newton's Law of Cooling     ####
#########################################

# Initial Values
C = 40;       % Value of Arbitary Constant
T = 60;       % Room Temperature (Constant)
K = -0.02877; % Constant of Proportionality

# Definning Vectors & X axis
t = linspace(0, 120, 7201);
y = zeros(1, length(t));
y(1) = 100;

# Running a Loop
for i=1:7200
   y(i+1) = T + C*(exp(K*t(i)));
endfor
y;

plot(t, y, 'linewidth', 2)
xlabel('Minutes', 'FontSize', 15)
ylabel('Temperature', 'FontSize', 15)
title('Solution Curve', 'FontSize', 20)
grid on;
