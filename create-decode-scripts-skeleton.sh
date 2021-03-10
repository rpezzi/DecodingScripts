#!/usr/bin/env bash
# Copy and execute this script from /home/flp/data
#
# It will create skeleton of bash scripts to run the 
#   decoding worflow for the listed files.
# Edit the skeleton script to make them run (remowe
#   .raw at the end of each file name)
# And chmod+x each obtained .sh file before executing it
#   via decode-flp.sh
ls -1 data-2021_03_10__16_59_27__-20* | awk '{print "./run_decoding_workflow.sh 0.1 /home/flp/data " $1}' > ~/alice/decoding-scripts/decode-noise-scan.sh
ls -1 data-2021_03_10__17_38_49__-20* | awk '{print "./run_decoding_workflow.sh 0.1 /home/flp/data " $1}' > ~/alice/decoding-scripts/decode-source-short-scan-low-intensity.sh
ls -1 data-2021_03_10__18_03_41__-20* | awk '{print "./run_decoding_workflow.sh 0.1 /home/flp/data " $1}' > ~/alice/decoding-scripts/decode-source-long-scan-low-intensity.sh
ls -1 data-2021_03_10__18_23_15__-20* | awk '{print "./run_decoding_workflow.sh 0.1 /home/flp/data " $1}' > ~/alice/decoding-scripts/decode-source-short-scan-high-intensity.sh
