#!/usr/bin/env bash
# This script factorizes numbers given in a file
while IFS='' read -r line || [[ -n "$line" ]]; do
    factors=( $(factor $line) )
    VAR=1
    for((n = 2; n < ${#factors[@]}; n++)); do
	VAR=$(( $VAR * ${factors[$n]} ))
    done
    printf "%s=%s*%s\n" "$line" "$VAR" "${factors[1]}"
done < "$1"
