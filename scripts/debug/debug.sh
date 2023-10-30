#!/bin/bash

OUT_FILE="src/main"

function ldd_check() {
  echo "Running ldd on $OUT_FILE..."
  ldd "$OUT_FILE"
}

function file_check() {
  echo "Running file on $OUT_FILE..."
  file "$OUT_FILE"
}

function strace_run() {
  echo "Running strace on $OUT_FILE..."
  strace "./$OUT_FILE"
}

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <option>"
  echo "Options: ldd, file, strace"
  exit 1
fi

case "$1" in
  "ldd") ldd_check ;;
  "file") file_check ;;
  "strace") strace_run ;;
  *) echo "Invalid option. Available options are: ldd, file, strace" ;;
esac
