# Zonotopes in Stata

This repository contains a Stata package for building
the zonotope of a given set of generators and to compute
its volume.

## Getting Started

Opena Stata, then run the following command:

`net cd http://www.iet.unipi.it/m.cococcioni/zono_stata`

Then run:

`net install zonotope, replace`

## To run the demo, execute the following do file:

```
run zonotope_demo.do
```

## In case of errors
If zonotope_demo.do does not work, it could be due to the fact
that your operating system is not supported yet.
To generate the binary for the zonotope plugin wrapped within zonotope.ado
file, please follow the intruction provided in this C++ repository:

`github.com/zonotopes/zono_cpp`

## Authors

* **Federico Ponchio** - *Initial work in C++* - [VisLab](http://vcg.isti.cnr.it/~ponchio/)
* **Marco Cococcioni** - *The author of the R porting and owner of this repository* - [Cococcioni @ University Of Pisa](http://www.iet.unipi.it/m.cococcioni/)


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

* This work has been funded by professors Marco Grazzi and Giovanni Dosi
* from Scuola Superiore S.Anna, Pisa, Italy
