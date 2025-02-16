# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# Command to Close Graphical Figures
close

#########################################
###       Epidemics - SIR Model       ###
#########################################

# Defining the Time Period
weeks = 25;

# Defining Zero Vectors
S = zeros(1, weeks+1);
I = zeros(1, weeks+1);
R = zeros(1, weeks+1);
population = 1000;

# Defining Initial Conditions
I(1) = 3;
S(1) = population - I(1);
R(1) = 0;
average_length_of_the_disease = 2;
number_of_new_cases_in_week_01 = 5;

# Calculating Removal Rate & Transmission Coefficients
gamma = 1/average_length_of_the_disease;
alpha = number_of_new_cases_in_week_01/(I(1) * (population-I(1)));

# Running a Loop for Calculate Values for S, I and R Vectors for First Three Weeks
for i=1:weeks
  S(i+1) = S(i) - alpha * S(i) * I(i);
  I(i+1) = I(i) + alpha * S(i) * I(i) - gamma * I(i);
  R(i+1) = R(i) + gamma * I(i);
endfor
S
I
R

# Defining The X Axis Values
n = [0:weeks];

# Plot the Graph
figure()
plot(n, S, 'LineWidth', 1, n, I, 'LineWidth', 1, n, R, 'LineWidth', 1)
xlabel('Weeks', 'FontSize', 18)
ylabel('Number of People', 'FontSize', 18)
title('Epidemics - SIR Model' , 'FontSize', 30)
legend('Susceptible (S)', 'Infected (I)', 'Removed (R)', 'Location', 'West', 'FontSize', 16)
xticks(n)
grid on
disp([n' S' I' R'])
