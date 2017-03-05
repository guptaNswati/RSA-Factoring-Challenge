#!/usr/bin/env bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    factors=( $(factor $line) )
    printf "$line="
    for n in "${factors[@]}"; do
	printf "$n * " 
    done
    echo ""
done < "$1"
