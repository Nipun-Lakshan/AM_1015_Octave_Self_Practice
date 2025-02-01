# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# ==================
# 2D Plots in Octave
# ==================

# Syntax 01 : Creating a Vector in Octave for x Variable. [Meaning is defining a one - dimensional array of elements]
x = linspace(0,4*pi,1000); # Give an Smooth Curve.
% x = (0:pi/3:4*pi)        # Doesn't Give a Smooth Curve, Because Points are not sufficient.

# Syntax 02 : Defining the dependent variable
y = sin(x);

# Syntax 03 : Plot the Graph of X - y
plot(x,y);

# Syntax 04 : Labelling X Axis
xlabel("X Axis - Angles");

# Syntax 05 : Labelling Y Axis
ylabel("Y Axis - Sin Values");

# Syntax 06 : Adding a Title
title("Graph of Y = Sin(X)");

# Syntax 07 : Creating a Figure For the Graphs
figure(1);

# Syntax 08 : Calling Hold On Command to Add More Graphs
hold on;

# Syntax 09 : Defining the new function using the same x values
z = cos(x);

# Syntax 10: Plot the new graph on same window.
plot(x, z,"*r");

# Syntax 11 : Calling Hold Off Command to Clear Current Plot
hold off;

# Syntax 12 : Adding a Legend
legend("y = sin(x)","y = cos(x)", "Location", "South");

# Syntax 13 : Adding a Grid
grid on

# Syntax 14 : Calling Next Figure
figure(2);

# Syntax 15 : Creating a Vector for x variable
x = linspace(0,pi,1000);

# Syntax 16 : Defining New Function
p = cos(2*x) + sin(x);

# Syntax 17 : Plot the new X - Y Graph
plot(x, p,"r");

# Syntax 18 : Labelling X Axis
xlabel("X Axis - Angles");

# Syntax 19 : Labelling Y Axis
ylabel("Y Axis - P Values");

# Syntax 20 : Adding a Title
title("Graph of Y = Cos(2X) + Sin(X)");

# Syntax 21 : Limit Y Axis
ylim([-3, 2]);

# Syntax 22 : Adding a Grid
grid on
