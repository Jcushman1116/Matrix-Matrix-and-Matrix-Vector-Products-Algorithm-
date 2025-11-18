✅ README Template: Program 1 — Matrix Products & Structured Algorithms
📌 Overview

This project implements four algorithms for matrix–vector and matrix–matrix products using structured matrices.
The goal is to leverage mathematical structure (triangular, banded, compressed) to reduce unnecessary computation and improve performance.
All routines are implemented in MATLAB and tested against built-in functions for correctness.

🧠 Key Concepts

Unit lower-triangular matrix–vector multiplication

Compressed storage for triangular matrices

Banded matrix–vector multiplication

Middle-product LU-style matrix–matrix multiplication

Operation counts and efficiency improvements

Accuracy verification using absolute/relative error norms

📂 Implemented Subroutines
1. Unit Lower Triangular Matrix–Vector Product

Computes 
𝑧=𝐿𝑣 
L has 1s on the diagonal.

Complexity: O(n2)

2. Compressed Unit Lower Triangular Matrix–Vector Product

Stores only the nonzero lower triangular entries in a 1-D array.

Saves memory while keeping the same complexity.

3. Banded Unit Lower Triangular Matrix–Vector Product

Uses only two subdiagonal bands.

Complexity: O(n)

4. Matrix–Matrix Product Using Middle Product

Computes 
𝑀=𝐿𝑈 where L is unit lower triangular and U is upper triangular.

Avoids multiplying structural zeros.

Complexity: O(n3)

🧪 Experimental Design

-Matrices and vectors generated using normally distributed entries.
-Dimensions tested for n=30 to 100

Error metrics:
-Absolute error
-Relative error
-Mean vs max error across trials

📈 Results Summary
-All algorithms achieve very small relative errors (~1e-15).
-Compression and banded methods maintain accuracy.
-Structured exploitation significantly improves speed.
-Middle-product method validates expected triangular structure.
