# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# ==================
# Spring Mass System
# ==================

# Creating Vectors For X and Y Axises
Mass = (50:50:550);
Elongation = [1.000 1.875 2.750 3.250 4.375 4.875 5.675 6.500 7.250 8.000 8.750];

# Best Fitted Line Data
Model = polyfit(Mass, Elongation, 1); % Gives M and C of The Linear Graph
Mass_New = linspace(50, 550, 500);    % Calculate New Predicted Y Values For X For Best Fitted Line
Elongation_New = polyval(Model, Mass_New);

# Plot the Graph
figure(1);
hold on;
plot(Mass, Elongation, '*r');
xlabel('Mass');
ylabel('Elongation');
title("Hooke's Law");
plot(Mass_New, Elongation_New, '-g');
legend('Data Points', 'Best Fitted Line', 'Location', 'NorthWest'); % Should be at last after the plot commands
hold off;
grid on;

# ================================
# Symbolic Variables For Modelling
# ================================

# pkg install -forge symbolic - Cannot run. Because package is already installed. If not, Use this code to download it.

# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# Load the Symbolic Package
pkg load symbolic;

# Define a symbolic variable which is called x
syms x;

# Defining a Function of X using Symbolic Variables
f = 2*x^2 + 3*x - 5;

# Define symbolic variables called x and y
syms x y;

# Define symbolic variables called x, y, m and c
syms x y m c;

# Define a Function
y = m*x + c;
