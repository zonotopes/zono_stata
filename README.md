# Zonotopes in Stata

This repository contains a Stata package for building
the zonotope of a given set of generators and to compute
its volume.

## Prerequisites
Stata version 11 or newer is required.
Please notice that this package is based on a C++ Stata plugin,
which has been compiled as a binary file (zonotope2.plugin or zonotope3.plugin,
depending on the Stata version).

Supported operating systems are: WIN32, WIN64, MacOS64, and LINUX64.


## Getting Started

Opena Stata, then run the following command:

`net cd http://www.iet.unipi.it/m.cococcioni/zono_stata_1p3`

Then run:

`net install zonotope, replace`

## To run the demo, execute the following do file:

```
run `c(sysdir_plus)'\z\zonotope_demo
```

## In case of errors
If zonotope_demo.do does not work, it could be due to the fact
that your operating system is not supported yet.
To generate the binary for the zonotope plugin wrapped within zonotope.ado
file, please follow the intruction provided in this C++ repository:

`https://github.com/zonotopes/zono_cpp`

## Test on additional datasets
First of all, download (not clone) the repository `https://github.com/zonotopes/zono_data`
and unzip it in your personal ado directory as a subfolder named `zono_data`.
Please notice that the personal ado directory tipically is 
`C:\ado\plus` on Windows
`~/ado/plus` on Linux and 
`~/Library/Application Support/Stata/ado/plus` on MacOS.

Then assures that you have created the following directory subtree:
`C:\ado\plus\z\zono_data`
and that the subfolder `zono_data` contains `.txt` data files, such as:

`R3gen10.txt`

`R3gen10.txt`

`R4gen20.txt`

`R3gen10_WP931_YEAR1.txt`

...

`R5gen50_Le.txt`
...


Then you are done and ready to run the second demo file:

```
run `c(sysdir_plus)'\z\zonotope_demo2
```

This do file will first load `C:\ado\plus\z\zono_data\R4gen20.txt` and compute its volume and other statistics,
then will do the same on the 50 5-dimensional generators contained in the file `C:\ado\plus\z\zono_data\R5gen50_Le.txt` 

## Authors

* **Federico Ponchio** - *Initial work in C++* - [VisLab](http://vcg.isti.cnr.it/~ponchio/)
* **Marco Cococcioni** - *The author of the Stata porting and owner of this repository* - [Cococcioni @ University Of Pisa](http://www.iet.unipi.it/m.cococcioni/)


## License

This project is granted under simplified BSD license (2-clause).

Copyright (c) 2018, Marco Cococcioni
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of the Zonotopes project.

## Acknowledgments

This project received financial support from the European Union's Horizon 2020 
research and innovation programme under grant agreement No. 649186 - ISIGrowth, 
and from MIUR/University of Bologna, grant RFO17GRAZZI.
