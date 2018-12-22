#! /bin/bash

if [[ $(git diff --name-only HEAD~1 $1) ]]; then
	echo "Path test success - diff found"
	exit 0
else
	echo "Path test fail - no diff detected"
	exit 1
fi
