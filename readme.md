# Packdtx 
## Introduction

DTX is format for packing and documenting LaTeX package sources. This script tries to ease creation of 
packages in this format from ordinary `sty` packages and `tex` documentation files.  

## Installation

Just put the files somewhere and create script which will call and pass parameters to `texlua path/to/packdtx.lua`. Example script for linux is `packdtx.sh`. Put this script somewhere in your `path`, so you can call it from any directory.

## Usage

In directory with your source codes, create file named `.packdtx` or `packdtx.conf`. This file uses lua table format to store package configuration. For more info see

Example[[1]](#fn1):

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

Run `packdtx` script. Files `<package>.dtx` and `<package>.ins` will be created.

## Config file format

Simple strings are surrounded with double quotes, multiline strings with `[[ ... ]]` and arrays with `{ ... }`

### Variables
- *author*
- *package*
    This will be used for filenames of the `dtx` and `ins` files.
- *email*
- *name*
    This is human readable package name
- *version*
- *description*
- *preamble*
    There you can specify anythink that should go into preamble - loading packages, etc.
- *documentation* array of documentation files
- *packages* dictionary of `sty` files, key should be package identifier, value filename

## Needed modifications to source files

### Documentation files

There should be just text, not document preamble, which is set in the `dtx` template. If you want to include some packages or do other stuff that should ho into the preamble, put it into the `.packdtx` config file under `preamble` key.

### Package files

Best is to use `macro` and `macrocode` environments, their functionality is described in the [dtxtut](http://www.tex.ac.uk/tex-archive/info/dtxtut/dtxtut.pdf). If you don`t want to describe the macros and just include package source code into the source code listings, just surround whole code with

```tex
%    \begin{macrocode}
....
package code
....
%    \end{macrocode}
```

## Notes
<span id="fn1">[1]</span>
This example is configuration for [LaTexunit](https://github.com/michal-h21/latexunit) unit test framework

