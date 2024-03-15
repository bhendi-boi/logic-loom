# Matlab

1.  Rakesh, a 1st-year engineering student, wants to create a grid of subplots containing all 6 trigonometric functions (sin, cos, tan, cot, sec, csc) for one cycle (0 to 2\*pi). Each subplot should be labeled with the corresponding function name and have appropriate axis titles. Write a MATLAB script to help Rakesh achieve this.

2.  A file named `exam_scores.mat` stores exam scores in a 3x10 matrix named "scores". Create a function calculate_averages(scores) that calculates:

    - Average score per subject (without nested loops).
    - Average score per student (without nested loops).
    - The function should return two vectors containing these respective averages. Utilize the provided data file and the function to print the results.

3.  An image is represented as a 2D matrix in MATLAB. Write a function that takes this image matrix as input and flips it horizontally (mirrors the image across the vertical axis). You may use the logicloom logo for the image.

4.  Develop a function named `d_ff` that simulates the behavior of a D flip-flop.

    The function should accept three inputs and one output:

    - `clk`: A clock signal (binary: 0 or 1) that triggers the update of the flip-flop.
    - `reset`: A reset signal (binary: 0 or 1) that sets the output (Q) to a specific value (usually 0).
    - `d`: The data input signal (binary: 0 or 1) that determines the next state of the flip-flop.
    - `Q`: The current output of the D flip-flop (binary: 0 or 1).

5.  Develop a MATLAB function named `my_dft(x)` that calculates the Discrete Fourier Transform (DFT) of a given signal `x`. You are allowed to use nested loops here.

6.  Imagine a 10kg mass attached to a spring with a stiffness of 2 Newtons per meter. This system exhibits simple harmonic motion when moved from its resting position. Write a function that calculates the position of the spring relative to its equilibrium position at time t. Demonstrate it by finding the position at t = 4s
