#!/bin/bash

# Build the Python project
python3 build.py

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Build successful. Copying MICROBIT.hex to the micro:bit..."
    cp MICROBIT.hex /Volumes/NO\ NAME/
    if [ $? -eq 0 ]; then
        echo "File copied successfully."
    else
        echo "Failed to copy file. Please check the micro:bit connection."
        exit 1
    fi
else
    echo "Build failed. Please check the Python script for errors."
    exit 1
fi