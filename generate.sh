#!/usr/bin/env bash

set -euxo pipefail

for file in $(find . -name '*.js' -or -name '*.css'); do
  dd if=/dev/random bs=1024 count="$(du -k "$file" | awk '{ print $1 }')" of="$file.random.txt"
done
