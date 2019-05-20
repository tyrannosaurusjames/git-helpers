# Git helpers

## Install

Clone this repository and add the directory you cloned it to to your $PATH.

## Scripts

### git-push.sh

Pushes the currently checked out branch to the "origin" remote.

Usage: `git-push.sh`

### git-push-pr.sh

Pushes the currently checked out branch to the "origin" remote.

Parses the output of the push to look for BitBucket pull request URLs and opens them in Chrome.

Also takes an optional argument of a target branch for the pull request.

Usage (no target branch): `git-push-pr.sh`

Usage (with target branch): `git-push-pr.sh some-target-branch`

