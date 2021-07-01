#!/usr/bin/env bash

set -euxo pipefail

while true; do
  date > date.txt
  git add date.txt
  git commit -m "Trigger another commit"
  git push
  
  sleep 120
done
