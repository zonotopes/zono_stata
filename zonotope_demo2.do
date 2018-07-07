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


clear all

noisily display "Loading a set of 20 generators in 4 dimensions"
noisily display "----------------------------------------------"

local file "`c(sysdir_personal)'zono_data`c(dirsep)'R4gen20.txt"

noisily display "Opening dataset " "`file'"

infile using `file'

* ADD MORE HERE MORE VARIABLES IN NEXT ROW, IF NEEDED (, V5, V6, ...Vd)
mkmat V1 V2 V3 V4, matrix(mymat)  

noisily zonotope mymat
* clear `mymat'
* noisily display "Zonotope volume: " e(zono_volume)



clear all

noisily display "Loading a set of 50 generators in 5 dimensions"
noisily display "----------------------------------------------"

local file "`c(sysdir_personal)'zono_data`c(dirsep)'R5gen50_Le.txt"

noisily display "Opening dataset " "`file'"

infile using `file'

* ADD MORE HERE MORE VARIABLES IN NEXT ROW, IF NEEDED (, V5, V6, ...Vd)
mkmat V1 V2 V3 V4 V5, matrix(mymat)

noisily zonotope mymat
* clear `mymat'
* noisily display "Zonotope volume: " e(zono_volume)



clear all

noisily display "Loading a set of 10 generators in 3 dimensions from web (stata-press.com)"
noisily display "--------------------------------------------------------------------------"

use http://www.stata-press.com/data/r11/test

noisily list

mkmat x y z, matrix(mymat)

noisily zonotope mymat
* clear `mymat'
noisily display "(The Known volume for this dataset is 17754)"

* Below an example on how to select on a subset of columns and rows
* (uncomment next to lines to see it at work)

* mkmat y z in 2/6, matrix myreducedmat
* noisily zonotope myreducedmat