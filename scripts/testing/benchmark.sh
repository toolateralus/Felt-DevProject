#!/bin/bash

# Output file to store timing data
TIMING_DATA="timing_data.txt"

# Clear any previous timing data
> "$TIMING_DATA"

# Number of runs
NUM_RUNS=1000

# Target script to run
TARGET_SCRIPT="./run.sh"

# Initialize sum to zero for averaging later
SUM=0

# Loop to execute the script multiple times
for i in $(seq 1 $NUM_RUNS); do
  echo "Run $i..."
  
  # Get start time in nanoseconds
  START_TIME=$(date +%s%N)
  
  # Run the target script
  $TARGET_SCRIPT
  
  # Get end time in nanoseconds
  END_TIME=$(date +%s%N)
  
  # Calculate and log elapsed time in nanoseconds
  ELAPSED_TIME=$(($END_TIME - $START_TIME))
  echo $ELAPSED_TIME >> "$TIMING_DATA"
  
  # Add to sum
  SUM=$(($SUM + $ELAPSED_TIME))
done

# Calculate average time in nanoseconds
AVERAGE=$(($SUM / $NUM_RUNS))

# Output statistics
echo "----- Statistics -----"
echo "Total runs: $NUM_RUNS"
echo "Total time: ${SUM}ns"
echo "Average time: ${AVERAGE}ns"
