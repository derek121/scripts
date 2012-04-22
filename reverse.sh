#!/bin/bash

# Recursive string reversal in bash

function reverse() {
  s="$*"

  if [ -z "$s" ]; then
    return 0
  fi

  x="${s:0:1}"
  xs="${s:1:$(( ${#s} - 1 ))}"

  echo -n "$(reverse "$xs")""$x"
  return 0
}

echo "$(reverse "$*")"

