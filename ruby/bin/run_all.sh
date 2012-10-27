#!/bin/sh
output_dir=${1:-corrent}
mkdir -p $output_dir
for seed in {001..100} ; do
  ./bin/trivia $seed > $output_dir/$seed.output
done
