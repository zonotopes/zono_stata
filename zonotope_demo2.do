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

local file "`c(sysdir_personal)'zono_data`c(dirsep)'R5gen50_Le.txt"

noisily display "Opening dataset " "`file'"

infile using `file'
mkmat V1 V2 V3 V4 V5, matrix(mymat)

noisily zonotope mymat
* clear `mymat'
* noisily display "Zonotope volume: " e(zono_volume)
