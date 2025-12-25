# Efficient Matrix–Vector and Matrix–Matrix Multiplication

## Overview
This project implements and analyzes several algorithms for computing **matrix–vector** and **matrix–matrix** products by exploiting matrix structure for computational efficiency. The focus is on **unit lower triangular**, **banded**, and **triangular** matrices, with comparisons across algorithmic complexity, memory usage, and numerical accuracy.

All algorithms are implemented in **MATLAB** and benchmarked against MATLAB’s built-in routines.

---

## Algorithms Implemented

### 1. Unit Lower Triangular Matrix–Vector Multiplication
Computes the product

    z = L v

where `L` is a **unit lower triangular matrix**.

- Column-oriented implementation  
- Time complexity: **O(n²)**  
- Avoids unnecessary operations by leveraging triangular structure  

---

### 2. Compressed Unit Lower Triangular Matrix–Vector Multiplication
Performs the same computation as Algorithm 1, but stores **only the nonzero subdiagonal entries** of `L` in a one-dimensional array.

- Reduced memory footprint  
- Time complexity: **O(n²)**  
- Demonstrates space–time tradeoffs in numerical linear algebra  

---

### 3. Banded Unit Lower Triangular Matrix–Vector Multiplication
Computes

    z = L_B v

where `L_B` is a **banded unit lower triangular matrix** with bandwidth 2.

- Stores only the two subdiagonals  
- Time complexity: **O(n)**  
- Lowest observed numerical error among matrix–vector methods  

---

### 4. Unit Lower × Upper Triangular Matrix Multiplication
Computes

    M = L U

using a **middle-product formulation** that exploits triangular sparsity.

- Skips zero-valued operations  
- Time complexity: **O(n³)**  
- Demonstrates efficient structured matrix–matrix multiplication  

---

## Experimental Design

- Matrix and vector entries drawn from a normal distribution  
  - Mean: 0  
  - Standard deviation: 500  
- Dimensions tested: `n = 30` to `100`  
- Results compared against MATLAB’s built-in functions  

### Error Metrics
- **Absolute error:**  
      
      ||x_comp − x_true||

- **Relative error:**  
      
      ||x_comp − x_true|| / ||x_true||

Plots report both **mean** and **maximum relative error** across test cases.

---

## Results and Observations

- All algorithms achieve **very small relative error**, confirming correctness  
- Error increases with dimension due to floating-point accumulation  
- Algorithms with fewer operations (especially the banded method) show:
  - Slower error growth  
  - Improved numerical stability  
- Matrix–matrix multiplication exhibits the fastest error growth, consistent with its **O(n³)** complexity  

---

## Files Included

- `Lvmult_col.m`  
  Unit lower triangular matrix–vector multiplication  

- `Lvmult_col_compressed.m`  
  Compressed-storage matrix–vector multiplication  

- `Lvmult_col_banded.m`  
  Banded matrix–vector multiplication  

- `LUmult.m`  
  Unit lower × upper triangular matrix multiplication  

- `driver.m`  
  Test driver and benchmarking script  

Each function is contained in its own `.m` file. Instructions for running the experiments are included at the top of the driver file.

---

## Key Takeaways

- Exploiting matrix structure leads to significant efficiency gains  
- Reduced operation count improves numerical stability  
- Structured linear algebra is critical for scalable scientific computing  
