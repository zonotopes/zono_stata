* --------------------------------------------------------------
* 
*   Filename: zonotope_demo2.do
*
* --------------------------------------------------------------
*
*   DEMONSTRATION OF ZONOTOPE STATA PLUGIN CALL
*
* --------------------------------------------------------------
set output error


set more off

noisily display _newline(`=c(pagesize)')




clear all

noisily display ""
noisily display ""
noisily display "Example A"
noisily display ""

noisily display "Loading a set of 10 generators in 3 dimensions from web (stata-press.com)"
noisily display "--------------------------------------------------------------------------"

use http://www.stata-press.com/data/r11/test

noisily list

noisily zonotope x y z, verbose

noisily display "(The Known volume for this dataset is 17754)"

noisily display ""
noisily display ""
noisily display "Example B"
noisily display ""

noisily display "Now an example on how to use the 'if' condition (x > 3):"
noisily zonotope x y z if x > 3, verbose
*noisily display "(The Known volume for this dataset is 4818)"



noisily display ""
noisily display ""
noisily display "Example C"
noisily display ""

noisily display "Finally, an example on how to use the 'in' condition (in 2/7):"
noisily zonotope x y z in 2/7, verbose
* noisily display "(The Known volume for this dataset is 858)"

* WHAT FOLLOW ARE ADDITIONAL TEST, THAT REQUIRE THE DOWNLOAD OF zono_data
* FROM https://github.com/zonotopes/zono_data

* clear all

* noisily display ""
* noisily display ""
* noisily display "Example D"
* noisily display ""

* noisily display "Loading a set of 20 generators in 4 dimensions"
* noisily display "----------------------------------------------"

* local file "`c(sysdir_plus)'zono_data/R4gen20.txt"

* noisily display "Opening dataset " "`file'"

* infile using `file'

* noisily zonotope V1 V2 V3 V4, verbose

* noisily display "(The Known volume for this dataset is 428.991)"



* clear all

* noisily display ""
* noisily display ""
* noisily display "Example F"
* noisily display ""


* noisily display "Loading a set of 50 generators in 5 dimensions"
* noisily display "----------------------------------------------"

* local file "`c(sysdir_plus)'zono_data/R5gen50_Le.txt"

* noisily display "Opening dataset " "`file'"

* infile using `file'

* noisily zonotope V1 V2 V3 V4 V5, verbose

* noisily display "(The Known volume for this dataset is 6.17261e+11)"

