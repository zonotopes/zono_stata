{smcl}
{* *! version 1.3  26jul2020}{...}
{title:Title}
Welcome to the help for the {cmd:zonotope} command.

{marker syntax}{...}
{title:Syntax}

{p 8 16 2}
{cmd:zonotope} {varlist} {ifin} [{cmd:,} {opt v:erbose}]

{title:Description}

This function builds the zonotope from a list of (l+1) vector variables,
where the first l are the input ones and the (l+1)-th the output one.

All the variables must have the same length.
The r-th value of each variables constitute the r-th 'generator',
i.e., the r-th vector of the observations.

The command computes the volume and other quantities of the zonotope
associated to this set of r generators in an (l+1) dimensional space.

The number of variables must be greater or equal to 2.

The function returns the volume of the zonotope in the scalar 
variable r(S1), plus additional statistics in r(S2)...r(S8).

It also returns the elapsed time, in minutes, in the r(etMIN) 
variable, and two vectors: r(diagonal) and r(tangents).

Finally, the zonotope command prints on screen  all the computed 
quantities, when it is called with the 'verbose' option.

{title:Remarks}

The zonotope command is an .ado program that calls a Stata plugin
written using the C++ programming language.

The following GitHub repository contains the Stata command
source code:

{browse "https://github.com/zonotopes/zono_stata"}

while the C++ source to generate the plugin can be found here:

{browse "https://github.com/zonotopes/zono_cpp"}


Further information about applications of the zonotope
command to Economics can be found here:

{pstd} G.  Dosi,  L. Marengo,  M.  Grazzi,  and  S.  Settepanella.  2016.
Production Theory:  Accounting for Firm Heterogeneity  and  Technical
Change. The Journal of Industrial Economics LXIV: 875-907.

{title:Examples}

{phang}{cmd:. run `c(sysdir_plus)'\z\zonotope_demo}

{phang}{cmd:. run `c(sysdir_plus)'\z\zonotope_demo2}
