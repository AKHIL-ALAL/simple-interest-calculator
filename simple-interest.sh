#!/bin/bash

# Simple Interest Calculator
# Formula: (P * R * T) / 100

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$(echo "$P $R $T" | awk '{print ($1*$2*$3)/100}')

echo "The simple interest is: $SI"

