#!/bin/bash

source_code="$1"

gcc $source_code
if [[ $? > 0 ]]; then
  exit
fi

for i in {1..100}; do
  input="$i.in"
  output="$i.out"
  user_output="$i.out.user"
  if [[ ! -f $input ]]; then
    break
  fi
  ./a.out < $input > $user_output

  echo "- Test #$i -"
  cmp -s $output $user_output
  if [[ $? -eq 1 ]]; then
    echo "WRONG"
  else
    echo "ACCEPTED"
    rm $user_output
  fi
  echo
done
