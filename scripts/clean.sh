#!/bin/bash

# Initialize an array to hold directories to be deleted
declare -a dirs_to_delete=()

collect_dirs() {
    for dir in "$1"/*; do
        if [ -d "$dir" ]; then
            dirname=$(basename "$dir")
            if [ "$dirname" == "asm" ] || [ "$dirname" == "obj" ]; then
                dirs_to_delete+=("$dir")
            else
                collect_dirs "$dir"
            fi
        fi
    done
}

collect_dirs .

if [ ${#dirs_to_delete[@]} -eq 0 ]; then
    echo "No directories named 'asm' or 'obj' found."
    exit 0
fi

echo "The following directories will be deleted:"
for dir in "${dirs_to_delete[@]}"; do
    echo "$dir"
done

read -p "Do you want to proceed? (y/n): " choice

if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    for dir in "${dirs_to_delete[@]}"; do
        echo "Deleting $dir"
        rm -rf "$dir"
    done
else
    echo "Operation cancelled."
fi
