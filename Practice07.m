# Command to Clear Command History
history -c;

# Command to Clear Workspace with All Variables and Loaded Packages
clear all;

# Command to Clear Command Window
clc;

# Defining The X Axis Vector
distance = [0:10:90]; % distance = linspace(0,90,10) // Both Give Same Result.

# Defining The Balance Fuel Amount After Each X Value
fuel_amount = [35.0 34.1 33.0 31.9 31.0 30.2 29.0 28.2 27.1 26.0];

# Calculate the Real Fuel Usage at Each Point
fuel_consumption = 35 - fuel_amount;

# Find The Coefficients of Best Fitted Line
model = polyfit(distance, fuel_consumption, 1);

# Find The Predicted Y Values of Best Fitted Line
predict = polyval(model, distance);

# Plot the Fuel Consumption with Distance Data Points
figure(1);
plot(distance, fuel_consumption, 'bo');
hold on;
plot(distance, predict);
xlabel('Distance (Km)');
ylabel('Fuel Consumption (l)');
title('Fuel Consumption vs. Distance');
hold off;

% Fuel Remaining at 100km
fuel_at_100km = polyval(model, 100);
fuel_remaining = 35 - fuel_at_100km;
printf("Fuel Remaining in the Tank After Travelling 100 km : %.2fL\n", fuel_remaining)

% Maximum Distance
Maximum_Distance = (35 - model(2))/model(1);
printf("Maximum Distance That Can Be Travelled Using 35L   : %.2fKm\n",Maximum_Distance)
#Distance = (fuel_consumption - model(2))/model(1)

% Error Calculation
Error = abs(fuel_consumption - predict);
sum_absolute_error = sum(Error);
sum_sqs = sum(Error.^2);
printf("The Sum of Squares : %.2f\n", sum_sqs)
