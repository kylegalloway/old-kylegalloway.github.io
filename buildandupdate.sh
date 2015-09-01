#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Please enter a git commit message"
  exit
fi

{
    jekyll build && \
    cd _site && \
    git add . && \
    git commit -am "$1" && \
    git push origin master && \
    cd .. && \
    git add . && \
    git commit -am "$1" && \
    git push origin source
} >&2

echo "Successfully built and pushed to GitHub."