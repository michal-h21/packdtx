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


## Notes
<span id="fn1">[1]</span>
This example is configuration for [LaTexunit](https://github.com/michal-h21/latexunit) unit test framework

