{smcl}
{* *! version 1.2  02sep2018}{...}
{title:Title}
Welcome to the help for the zonotope command.

{marker syntax}{...}
{title:Syntax}

{p 8 16 2}
{cmd:zonotope} {varlist} {if} {in}

{title:Description}

This function builds the zonotope of a set of variable,
which constitute the set of generators.
The last variable is interpreted as the output variable
(this distinction makes only sense in economic applications,
for instance when measuring the heterogeneity of a set of firms).

The r-th generator is associated with the r-th observation of each
variable, when all the variables are considered together.

The number of variables d is the dimension where the zonotope lies. 
As mentioned above, the first (d-1) columns are the input of the relation 
we want to model, while the last if the output variable.


The function returns the volume of the zonotope,
in the scalar variable e(zono_volume).

Furthermore, it prints on screen additional statistics,
useful in economic studies of heterogeneity, 
such as the diagonal of the zonotope, the norm of the diagonal, 
the Gini index of the zonotope, etc.

{title:Remarks}

For detailed information on the computed zonotope statistics, 
see the stata journal paper associated to the zonotope command.

In addition, you can refer to the following paper:

{pstd}
G.  Dosi,  L. Marengo,  M.  Grazzi,  and  S.  Settepanella.  2016.
Production Theory:  Accounting for Firm Heterogeneity  and  Technical  Change.
The Journal of Industrial Economics LXIV: 875-907.


{title:Examples}

{phang}{cmd:. run zonotope_demo}

{phang}{cmd:. run zonotope_demo2}
