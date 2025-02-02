# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# ================================
# Symbolic Variables For Modelling
# ================================

# pkg install -forge symbolic // Cannot run. Because the package is already installed. If not, use this code to download it.

# Load the Symbolic Packages
pkg load symbolic;

# Define Symbolic Variables
syms x y m c;

# Define a Function
f = 5*x + 3;

# Solution for Function
sol = solve(f);

# Solution for x when f = 0
printf("The solution for x when 5x + 3 = 0 is %d.\n", double(sol)); % - 0.6

# Solution For X in another way
solve(5*x + 3);

# Solution For X in another way
solve(5*x + 3, x);

# Defining a Function
f0 = 2*x^2 + 3*x + 5;

# Differentiating the Function
f1 = diff(f0);
f2 = diff(f0, 2);

# Integrating the Function
I1 = int(f0);
I2 = int(f0, 0, 4);

# Find the limit to the function
limit(log(cos(x))/x^2, 0);

# Solving Linear System of Equations
syms x y;
sol = solve(3*x + 5*y == 2, 7*x -5*y == 10);
sol.x;
sol.y;

# Plot Grpahs
syms x;
f = x * sin(x);
figure(1);
ezplot(f);
figure(2);
ezplot(f, [0, pi]);
