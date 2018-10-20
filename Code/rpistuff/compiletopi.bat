@echo off
rem see https://www.slideshare.net/tomoaki0705/cvim-half-precision-floating-point
rem see https://embeddedartistry.com/blog/2017/10/9/r1q7pksku2q3gww9rpqef0dnskphtc
rem This batch file compiles a c or cpp program for the raspberry pi on a windwos machine
rem RPi cross-compilation tools are required
rem -mfp16-format=ieee tells the compiler to use IEEE-754 representations for half-precision floating point
rem -mfpu=vfpv4 tells the compiler to use the FPU is available
rem vfpv4 adds support for half-precision

rem Hawdware floating point
rem -mfpu=vfpv4
rem vfpv3_fp16
rem neon-fp16

rem single precision
rem fpv4-sp

rem hw fp
rem vfpv3

rem Software FP
rem -fpu=softvfp

rem 16 bit floating point
rem vfpv3_fp16 

rem another one?
rem -mfpu=neon-fp-armv8

rem set /p file="Enter file to compile: "
@echo on
arm-linux-gnueabihf-g++ -ggdb test.c Timer.cpp -o output -mfp16-format=ieee -mfloat-abi=softfp
pscp -pw debugging247 output pi@10.3.141.1: 