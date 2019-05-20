#!/bin/bash

function branch_name {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function branch_exists {
    git show-ref --verify --quiet "refs/heads/$1"
}
