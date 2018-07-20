{smcl}
{* *! version 1.2  02jul2018}{...}
{title:Title}
Welcome to the help for the zonotope command.

{marker syntax}{...}
{title:Syntax}

{p 8 16 2}
{cmd:zonotope} {in} dataset

{title:Description}

This function builds the zonotope of a dataset, where the dataset is 
a matrix containing the set of generators. Each row is a distinct generator. 
The number of columns d is the dimension where the zonotope lies. 
In particular, the first (d-1) columns are the input of the relation 
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
