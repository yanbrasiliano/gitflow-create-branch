#!/usr/bin/env bash

# Prompt for branch type
read -p "Enter branch type (feature, bugfix or release): " branch_type

# Check if branch type is valid
if [[ $branch_type != "feature" && $branch_type != "bugfix" && $branch_type != "release" ]]; then
	echo "Invalid branch type. Exiting..."
	exit 1
fi

# Prompt for activity reference
read -p "Enter activity reference task " activity_ref

# Create branch name
branch_name="$branch_type/$activity_ref"

# Create branch in Git
git checkout -b $branch_name
git push -u origin $branch_name
echo "Branch $branch_name created."
