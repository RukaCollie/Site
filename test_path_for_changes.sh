#! /bin/bash

if [[ $(git diff --name-only HEAD~1 $1) ]]; then
	echo "Path test success - diff found"
	echo "##vso[task.setvariable variable=PathTest]1"
else
	echo "Path test fail - no diff detected"
	echo "##vso[task.setvariable variable=PathTest]0"
fi
