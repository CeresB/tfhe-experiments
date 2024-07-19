#! /usr/bin/bash
# find bash path with "which bash"
outfilename="output";
while getopts o: flag
do
    case "${flag}" in
        o) outfilename=${OPTARG};;
    esac
done
echo "Compiling, running and then profiling profiling_testcode.cpp";
g++ profiling_testcode.cpp tfhe-codebase/*.cpp -o profiling_data/test.out tfhe-codebase/fft-model-of-x8664-avx.o tfhe-codebase/fft-x8664-avx-aux.o -I tfhe-codebase/headers/ -pg -O0
cd profiling_data
./test.out
gprof test.out gmon.out >> raw_profiling_data.txt
gprof2dot raw_profiling_data.txt -s -w | dot -Gdpi=300 -Tpng -o $outfilename.png
echo "Done! See result in profiling_data/$outfilename.png";