#!/bin/bash
#
g++ -c -I/$HOME/include triangle_symq_rule_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangle_symq_rule_prb.cpp"
  exit
fi
#
g++ -o triangle_symq_rule_prb triangle_symq_rule_prb.o /$HOME/libcpp/$ARCH/triangle_symq_rule.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangle_symq_rule_prb.o."
  exit
fi
#
rm triangle_symq_rule_prb.o
#
./triangle_symq_rule_prb > triangle_symq_rule_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running triangle_symq_rule_prb."
  exit
fi
rm triangle_symq_rule_prb
#
echo "Program output written to triangle_symq_rule_prb_output.txt"
