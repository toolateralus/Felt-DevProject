#!/bin/bash

start_time=$(date +%s%N)

./run.sh

end_time=$(date +%s%N)
elapsed_time=$((end_time - start_time))
elapsed_time_ms=$(echo "scale=3; $elapsed_time / 1000000" | bc)
elapsed_time_sec=$(echo "scale=9; $elapsed_time / 1000000000" | bc)
elapsed_time_min=$(echo "scale=9; $elapsed_time_sec / 60" | bc)

echo "Elapsed time in nanoseconds: $elapsed_time"
echo "Elapsed time in milliseconds: $elapsed_time_ms"
echo "Elapsed time in seconds: $elapsed_time_sec"
echo "Elapsed time in minutes: $elapsed_time_min"
