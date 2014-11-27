#!/bin/sh

ghc --make B.hs
touch A.hs && ghc --make B.hs

# Will print
#   [2 of 2] Compiling B                ( B.hs, B.o ) [TH]
# when I think it shouldn't.
