#!/usr/bin/env bash

main() {

  # $# -> number of params
  # exit 1 -> indicates error


  if [ "$#" -ne 1 ]; then
    echo "Usage: error_handling.sh <person>"
    exit 1
  fi

  echo "Hello, ${1-World}"
}

main "$@"

