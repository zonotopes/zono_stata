if c(stata_version) < 15 {
    local filename = "zonostata2.plugin"
}
else {
    local filename = "zonostata3.plugin"
}

program _zonotope, plugin using (`filename')

program zonotope, eclass
  version 11
  
  syntax varlist(min=2) [if] [in]  


  tempname volume

  mkmat `varlist' `if' `in', matrix(generators)
  
  * matrix list generators

  display "-----------------------------------------------------------------------"
  display "ZONOTOPE LIBRARY VER 1.2"
  display "-----------------------------------------------------------------------"
  display "INPUT: SET OF GENERATORS"
  display "N. of dimensions (including the output): " colsof(generators)
  display "N. of generators: " rowsof(generators)
  display "-----------------------------------------------------------------------"
  display "... the computation of the volume has started (it can take a while) ..."

  plugin call _zonotope, generators volume  


  ereturn local zono_volume = volume

end
