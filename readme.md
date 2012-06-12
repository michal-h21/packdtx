# Packdtx 
## Introduction

DTX is format for packing and documenting LaTeX package sources. This script tries to ease creation of 
packages in this format from ordinary `sty` packages and `tex` documentation files.  

## Usage

In directory with your source codes, create file named `.packdtx` or `packdtx.conf`. This file uses simple format to store package configuration. 

Example:

```lua
author="Michal Hoftich",
package="latexunit",
email="michal.h21@gmail.com",
name="LaTeXunit",
version="0.1",
description="Unit testing framework for LaTeX",
preamble=[[
\usepackage[utf8]{inputenc}
]],
documentation={"documentation.tex"},
packages={
 pack1="latexunit.sty",
}
```


