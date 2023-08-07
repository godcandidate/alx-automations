#!/bin/bash

# Function to traverse directories recursively
traverse()
{
	local dir="$1"
	local message="$2"

	for file in "$dir"/*; do
		if [ -d "$file" ]; then
			traverse "$file" "$message"
		elif [ -f "file" ]; then
			git add "$file"
			git commit -m "$message $(basename "$file")"
		fi
	done
}

# Get the current directory path
path=$(pwd)

echo "Files Ready for GitHub Push"
echo "---------------------------------------------------"
ls
echo "---------------------------------------------------"

read -p "Enter commit message: " message

traverse "$path" "$message"

git push
