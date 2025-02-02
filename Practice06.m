# Command to Clear Command History
history -c

# Command to Clear Workspace with All Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# ======================================
# Symbolic Variables - Activity Sheet 02
# ======================================

# Load the Symbolic Variables Packages
pkg load symbolic

# Defining Variables in Symbolic Version
syms a b c x p q r s y

# Solve the Quardic Equation
solve(a*x^2 + b*x + c, x)

# Solve the Cubic Equation
solve(p*x^3 + q*x^2 + r*x + s == 0, x)

# Solve the Quardic Function
solve(a*x*y - b*x - 1 ==0, x)

# Solve the Quardic Equation
solve(a*x*y + b*x - 1 ==0, y)

# Solve System of Two Equations
[sol_x, sol_y]= solve([2*x + y == 6, x-y==3],[x,y])
char(sol_x)
char(sol_y)

# Solve non - linear equation
f = @(x) x^2 + sin(x) - 7
solution = fsolve(f,0)
solution = fsolve(f,-5)
solution = fsolve(f,-10)
solution = fsolve(f,4)
