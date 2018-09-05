{smcl}
{* *! version 1.2  05sep2018}{...}
{title:Title}
Welcome to the help for the zonotope command.

{marker syntax}{...}
{title:Syntax}

{p 8 16 2}
{cmd:zonotope} {varlist} {if} {in}

{title:Description}

This function builds the zonotope of a set of variables,
where the latter contains a set of generators.

The last variable is interpreted as the output
(this distinction makes only sense in economic applications,
for instance when measuring the heterogeneity of a set of firms).

The r-th generator is a D-dimensional vector (being D the number 
of variables) containing the r-th observation of each
variable.

The number of variables D is thus the dimension where the zonotope lies. 
As mentioned above, the first (D-1) columns are the input of the relation 
we want to model, while the last is the output variable.

The number of variables must be greater of equal to 2.

The function returns the volume of the zonotope,
in the scalar variable e(zono_volume).

Furthermore, the zonotope command prints on screen additional statistics,
useful in economic studies of heterogeneity, 
such as the diagonal of the zonotope, the norm of the diagonal, 
the Gini index of the zonotope, etc.

{title:Remarks}

The zonotope command is an .ado program that calls a Stata plugin,
which is based on C++ source code.

The following GitHub repository contains the Stata command
source code:

{browse "https://github.com/zonotopes/zono_stata"}

while the C++ source to generate the plugin can be found here:

{browse "https://github.com/zonotopes/zono_cpp"}


Further information about applications of the zonotope
command to Economics can be found here:

{pstd}
G.  Dosi,  L. Marengo,  M.  Grazzi,  and  S.  Settepanella.  2016.
Production Theory:  Accounting for Firm Heterogeneity  and  Technical  Change.
The Journal of Industrial Economics LXIV: 875-907.


{title:Examples}

{phang}{cmd:. run zonotope_demo}

{phang}{cmd:. run zonotope_demo2}
