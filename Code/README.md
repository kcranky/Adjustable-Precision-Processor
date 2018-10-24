# Code
This sub-directory contains all the code required to run the experiments.

## FPGAProjectTesting
This directory contains two projects, IPCompare and MathematicOperations.

### IPCompare
IPCompare compares the 16-point floating point implementations of the Xilinx IP and Jon Dawson's floating point implementation. Both run at 16 bits, connected to pre-populated BRAM in order to perform a set of given calculations.

### MathematicOperations
This project compares Jon Dawson's floating point implementation at varying precisions in order to compare speed, size and accuracy.

## MATLAB Code
This folder contains the MATLAB heterodyning experiment, run at 8, 16, 32 and 64 bits of floating point precision. This folder also contains some scripts for graphing the data gathered in various experiments.

## rpistuff
This folder contains the scripts and batch files required to perform the heterodyning experiment on the RaspberryPi at various precisions using different compiler flags.

## UsefulPython
This folder contains a python script for comparing arbitrary base sizes of the IEEE754 floating point implementation.