Efficient Matrix–Vector and Matrix–Matrix Multiplication
Overview
This project implements and analyzes several algorithms for computing matrix–vector and matrix–matrix products by exploiting matrix structure for improved computational efficiency. Specifically, the project focuses on unit lower triangular, banded, and triangular matrices, comparing storage strategies, algorithmic complexity, and numerical accuracy.
All algorithms are implemented in MATLAB and evaluated against MATLAB’s built-in routines using absolute and relative error metrics.
Algorithms Implemented
1. Unit Lower Triangular Matrix–Vector Multiplication
Computes the product
z
=
L
v
z=Lv
where 
L
L is a unit lower triangular matrix.
Column-oriented implementation
Time complexity: O(n²)
Exploits the known structure of 
L
L to avoid unnecessary computations
2. Compressed Unit Lower Triangular Matrix–Vector Multiplication
Performs the same computation as Algorithm 1, but stores only the nonzero subdiagonal entries of 
L
L in a 1-D array.
Reduced memory usage
Time complexity: O(n²)
Demonstrates the tradeoff between indexing complexity and storage efficiency
3. Banded Unit Lower Triangular Matrix–Vector Multiplication
Computes
z
=
L
B
v
z=L 
B
​	
 v
where 
L
B
L 
B
​	
  is a banded unit lower triangular matrix with bandwidth 2.
Stores only the two subdiagonals
Time complexity: O(n)
Significantly fewer floating-point operations
Lowest observed numerical error among matrix–vector methods
4. Unit Lower Triangular × Upper Triangular Matrix Multiplication
Computes
M
=
L
U
M=LU
using a middle-product formulation, exploiting triangular structure to limit summation indices.
Avoids multiplication by zero entries
Time complexity: O(n³)
Demonstrates structured matrix–matrix multiplication
Experimental Design
Matrix and vector entries sampled from a normal distribution with mean 0 and standard deviation 500
Dimensions tested: 
n
=
30
n=30 to 
100
100
Results compared against MATLAB’s built-in implementations
Error metrics:
Absolute error: 
∥
x
comp
−
x
true
∥
∥x 
comp
​	
 −x 
true
​	
 ∥
Relative error: 
∥
x
comp
−
x
true
∥
/
∥
x
true
∥
∥x 
comp
​	
 −x 
true
​	
 ∥/∥x 
true
​	
 ∥
Plots report mean and maximum relative error across trials.
Results & Observations
All algorithms produce very small relative errors, confirming correctness
Error increases with dimension due to floating-point accumulation
Algorithms with fewer operations (especially the banded method) exhibit:
Slower error growth
Lower overall numerical error
Matrix–matrix multiplication shows the fastest error growth, consistent with its O(n³) complexity
Files Included
Lvmult_col.m — Unit lower triangular matrix–vector multiplication
Lvmult_col_compressed.m — Compressed storage matrix–vector multiplication
Lvmult_col_banded.m — Banded matrix–vector multiplication
LUmult.m — Unit lower × upper triangular matrix multiplication
driver.m — Testing and benchmarking driver file
Each function is contained in its own .m file. Instructions for running the experiments are included at the top of the driver file.
Key Takeaways
Exploiting matrix structure leads to substantial gains in efficiency
Reduced operation count directly correlates with improved numerical stability
Structured linear algebra is essential for scalable numerical computation
