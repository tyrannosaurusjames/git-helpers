#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${BASE_DIR}/functions/branch.sh"

echo "Pushing branch ($(branch_name))"
PUSH_OUTPUT="$(${BASE_DIR}/git-push.sh 2>&1)"

REMOTE_OUTPUT=$(echo -n "${PUSH_OUTPUT}" | grep "remote: ")
PR_URL=$(echo "${REMOTE_OUTPUT}" | sed 's/remote\://g' | grep 'https' | grep 'pull-requests' | xargs)

if [ -z "${PR_URL}" ]; then
    echo "Couldn't find PR URL in output"
    exit 1
fi

echo "Found pull request URL"

if [ ! -z "${1}" ]; then
    PR_URL="${PR_URL}&dest=${1}"
fi

echo "Opening pull request URL"

google-chrome "${PR_URL}" 2>/dev/null

