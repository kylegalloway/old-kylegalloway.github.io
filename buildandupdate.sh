#!/bin/bash

if [[ -z "$1" ]]; then
  printf "Please enter a git commit message"
  exit
fi

printf "\nBuilding and pushing to GitHub.\n\n"

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
} &> /dev/null

printf "\nSuccessfully built and pushed to GitHub.\n"