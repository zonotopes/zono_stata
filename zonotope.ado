if c(stata_version) < 15 {
    local filename = "zonostata2.plugin"
}
else {
    local filename = "zonostata3.plugin"
}

program _zonotope, plugin using (`filename')

program zonotope, rclass
  version 11      
  
  syntax varlist(min=2 fv) [if] [in] [, Verbose]
  
  marksample touse
  fvexpand `varlist' if `touse'
  local varlist "`r(varlist)'"
  
  loc verb = ("`verbose'" != "")
    
  * display "verb : " `verb'
    
  tempname nrow
  tempname rcol
  
  * mStats is the matrix that will contain the ouput statistics.
  * However, it is used also to pass the verbose option as input.
  matrix mStats = (`verb',22,33,44,55,66,77,88,99)
  
  mkmat `varlist' `if' `in', matrix(gen)
  
  mata : st_matrix("diagonal", colsum(st_matrix("gen")))

  * next rows is needed to pre-allocate column vector 'tangents'
  mata : st_matrix("tangents", rowsum(st_matrix("gen"))) 

  * matrix list gen

  display "------------------------------------------------------------------------"  
  display "ZONOTOPE LIBRARY VER 1.3"  
  display "------------------------------------------------------------------------"  
  display "INPUT: SET OF GENERATORS"  
  display "N. of dimensions (including the output): " colsof(gen)  
  display "N. of generators: " rowsof(gen)  
  display "------------------------------------------------------------------------"  
  display "Computation started (it can take a while) ... "
  
  mata: displayflush()    

  plugin call _zonotope, gen mStats
  
  display as result "DONE!"
  display as text "------------------------------------------------------------------------"  
  display " Now you can display (or reuse) the computed results in this way:"
  display "   "
  display "   display r(S1)  (for the volume)"
  display "   display r(S2)  (for the norm of the diagonal)"
  display "   ... "
  display "   display r(S8)  (volume against the cube of the norm of the diagonal)"
  display "   "
  display "   matrix list diagonal  (for the vector containing the diagonal)
  display "   matrix list tangents  (for the vector with the tangents)
  display "   matrix list gen       (for the actually used generators, after if/in)
  display "------------------------------------------------------------------------"  
  
  return scalar nrow = rowsof(gen)
  return scalar ncol = colsof(gen)

  return scalar S1 = mStats[1,1]
  return scalar S2 = mStats[1,2]
  return scalar S3 = mStats[1,3]
  return scalar S4 = mStats[1,4]
  return scalar S5 = mStats[1,5]
  return scalar S6 = mStats[1,6]
  return scalar S7 = mStats[1,7]
  return scalar S8 = mStats[1,8]
  return scalar etMIN = mStats[1,9]

end


