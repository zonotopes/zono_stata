* --------------------------------------------------------------
*
*   Filename: zonotope_demo.do
*
* --------------------------------------------------------------
*
*   DEMONSTRATION OF ZONOTOPE STATA PLUGIN CALL
*
* --------------------------------------------------------------
*
*   To avoid annoying messages, enter the following command:
*
*   . run zonotope_demo
* --------------------------------------------------------------

clear

matrix Z = (9.7974838e-01,6.2406009e-01,6.0986665e-01 \ 4.3886997e-01,6.7913554e-01,6.1766639e-01 \ 1.1111922e-01,3.9551522e-01,8.5944231e-01 \ 2.5806470e-01,3.6743665e-01,8.0548942e-01 \ 4.0871985e-01,9.8798200e-01,5.7672152e-01 \ 5.9489607e-01,3.7738866e-02,1.8292247e-01 \ 2.6221175e-01,8.8516801e-01,2.3993201e-01 \ 6.0284309e-01,9.1328683e-01,8.8651193e-01 \ 7.1121578e-01,7.9618387e-01,2.8674152e-02 \ 2.2174673e-01,9.8712279e-02,4.8990139e-01)

set more off

quietly svmat Z

noisily zonotope Z1 Z2 Z3

noisily display "Elapsed time (MIN): " r(etMIN)
noisily display "-----------------------------------------------------------------------"

noisily display "OUTPUT VECTORS"
noisily display "Diagonal: "
noisily matrix list diagonal

noisily display " "
noisily display "Tangents (between each input generator and the input space):"
noisily matrix list tangents

noisily display " "
noisily display "-----------------------------------------------------------------------"
noisily display "OUTPUT STATISTICS"
noisily display "S1: Total volume: " r(S1)
noisily display "S2: Diagonal norm: " r(S2)
noisily display "S3: Sum of squared norms: " r(S3)
noisily display "S4: Gini index: " r(S4)
noisily display "S5: Tangent of angle btw. diagonal and the input plane: " r(S5)
noisily display "S6: Cosine against output: " r(S6)
noisily display "S7: Cosine of proj. of diagonal on input plane with x axis: " r(S7)
noisily display "S8: Volume against the cube of the norm of the diagonal: " r(S8)     
noisily display "-----------------------------------------------------------------------"
noisily display "(the known volume for this dataset is 20.194763)"

* noisily display "Number of generators: " r(nrow)
* noisily display "Number of columns: " r(ncol)


* clear Z
