#!/bin/bash
tar Jxvf openkim-models-*.txz
cd openkim-models-*
cmake . -DCMAKE_Fortran_COMPILER=gfortran -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DKIM_API_MODEL_DRIVER_INSTALL_PREFIX=${PREFIX}/lib64/kim-api/model-drivers -DKIM_API_PORTABLE_MODEL_INSTALL_PREFIX=${PREFIX}/lib64/kim-api/portable-models -DKIM_API_SIMULATOR_MODEL_INSTALL_PREFIX=${PREFIX}/lib64/kim-api/simulator-models
make
