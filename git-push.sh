#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$BASE_DIR/functions/branch.sh"

BRANCH=$(branch_name)
git push -u origin $BRANCH

