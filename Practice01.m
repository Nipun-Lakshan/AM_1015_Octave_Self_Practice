# Syntax 01 : Clear the Workspace (Remove Variables Only)
clear

# Syntax 02 : Clear the Workspace (Remove Variables, Functions, Loaded Packages or Libraries)
clear all

# "Clear" removes variables from the current workspace without affecting functions or loaded packages.
# "Clear all" removes everything from memory including variables, functions, persistent variables and loaded libraries or packages.

# Syntax 03 : Clear the Command History
history -c

# Syntax 04 : Clear the Command Window
clc

# Syntax 05 : Assigning Variables
x = 13
y = 28

# Ctrl + R -> Comment Mutiple Lines at Once after Selecting.
# %, # -> Single Line Comments
# #{ // Add The Comment Here #} -> Mutiple Line Comments

#{
This is a multi-line comment.
It can span across multiple lines.
#}

# Syntax 06 : Arithmetic Operations

% Part 01 : Addition
x + y # 41

% Part 02 : Subtraction
x - y # -15

% Part 03 : Multiplication
x * y # 364

% Part 04 : Division
x / y # 0.4643

# Syntax 07 : Calculating Values of an Expression

value_01 = x ^ 4      # 28561 (x to the power 4)

value_02 = y ^ 0.5    # 5.2915
value_03 = sqrt(y)    # 5.2915
value_04 = sqrt(16)   # 4

value_05 = x ^ y      # 1.5503 x 10 ^ 31 = 1.5503e+31
value_06 = 13 ^ 28    # 1.5503 x 10 ^ 31 = 1.5503e+31

value_07 = x ^ (1/y)  # 1.0959

value_08 = x ^ (y/3)  # 2.4935 x 10 ^ 10 = 2.4935e+10

# Syntax 08 : Convert Degree to Radians
value_09 = deg2rad(60) # pi/3 = 1.0472

# The code gives 1.0472, because "deg2rad(60)" converts 60 degrees to radians which equals pi/3.

# Syntax 09 : Convert Radians to Degree
value_10 = rad2deg(pi/3) # 60
value_11 = rad2deg(2*pi) # 360

# Syntax 10 : Finding Trignometric Ratios
value_12 = sin(pi/3)        # 0.8660
value_13 = cos(2*pi)        # 1
value_14 = tan(60)          # 0.3200 -> Wrong Answer, Function get the value as radian 60 and not as degree 60.
value_14 = tan(deg2rad(60)) # Correct the above code line error.
value_15 = tand(60)         # 1.732
value_16 = cot(pi)          # -8.1656 x 10 ^ 15 = -8.1656e+15

# "π" is symbolized as "pi" in Octave.
# "tan(60)" gives 0.32 as it uses radians. Use "tan(deg2rad(60))" for 1.732. Always input angles in radians for trigonometric functions in Octave.

value_17 = tan(pi*2) # -2.4493 x 10 ^ -16
value_17 = tand(360) # 0 // Correct the error of above code line.
value_18 = sind(60)  # 0.8660
value_19 = cosd(360) # 1
value_20 = tan(pi/3) # 1.7321
value_21 = cotd(180) # Inf
value_22 = tand(90)  # Inf

# "cotd(180)" gives "Inf" because "tand(180)" is exactly "0". "cot(pi)" gives a large number due to floating - point errors as "tan(pi)" is not exactly "0".

# Syntax 11 : Finding Inverse Trigonometric Ratios

value_23 = asin(0.4)       # 0.4115
value_24 = acot(0.8)       # 0.8961
value_25 = exp(0.5)        # e ^ 0.5 = 1.6487
value_26 = log10(100)      # 2
value_27 = 10 * log10(150) # 21.761
value_28 = log(exp(2))     # ln(e ^ 2) = 2
value_29 = log2(16)        # 4

# Syntax 12 : Behaviour of Complex Number Variables

p = 6 + 3i;
value_30 = p               #  6 + 3i
q = 8 + 5i;
value_31 = q               #  8 + 5i
z = p + q;
value_32 = z               # 14 + 8i

# Syntax 13 : Matrices

A = [7 8 9]               # Row Matrix
B = [6; 2; 4]             # Column Matrix (; -> Represent a Seperation of a Row)
C = [1 2 3; 4 5 6; 7 8 9] # 3 x 3 Matrix
D = C * 5                 # Matrix Multiplication By Scalar
E = C * B                 # Matrices Multiplication

# Octave is case - sensitive language.

F = [C, B] # Horizontal Concatenation (3 x 3 Matrix + 3 X 1 Matrix = 3 X 4 Matrix)
F = [C B]
G = transpose(C) # Changing the Row and Columns of a Matrix

value_33 = det(C) # 6.6613 x 10 ^ -16 = 6.6613e-16
value_34 = inv(C) # det(A)=0, the matrix is singular (non-invertible).
H = C * C         # Matrix is multipy by itself
I = C ^ 2         # Matrix is multipy by itself. (Power of 2)
J = C .^2         # Element Wise Getting Square

# Syntax 14 : Matrices Related Operations (CX = B; X = ? -> X = inv(C) * B)
X = inv(C) * B

#{

====================
Data Types in Octave
====================

01. Numeric Data Types  (Integers & Floating Point Numbers)
02. Complex Numbers
03. Character or String (Character -> 'Hello' [array] / String -> "Hello" [object])
04. Boolean (True = 1 (true) / False = 0(false))

#}

# Syntax 15 : Behaviour of String

K = "University of Colombo" # Assigns a String For The Variable
V = ["The value is " num2str(0.8)]
number = 42;
disp(["The number is " num2str(number) "."])

# "+" cannot use to concatenate strings in ocatve. Space is suffcient within "[]".

number1 = 42;
printf("The number is %d.\n", number1);

# Activity 01

G = 4;
F = 7;
G + F

P = C(1,1)
C = {1, "hello", [1,2,3]}
C{2}
