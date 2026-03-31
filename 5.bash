#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Author: Aryaman | Course: Open Source Software

# --- Alias demonstration (comment only) ---
# Example alias: alias ll='ls -la'

# --- Ask user questions ---
echo "Welcome to the Open Source Manifesto Generator!"
read -p "1. What motivates you to use open source? " MOTIVATION
read -p "2. Which open source project inspires you the most? " PROJECT
read -p "3. How do you plan to contribute to open source? " CONTRIBUTION

# --- Compose manifesto ---
DATE=$(date)
MANIFESTO="On $DATE, I, $USER, declare my commitment to open source.
I am motivated by $MOTIVATION.
The project that inspires me most is $PROJECT.
I plan to contribute by $CONTRIBUTION.
Together, we build freedom through collaboration."

# --- Save to file ---
OUTPUT_FILE="manifesto.txt"
echo "$MANIFESTO" > "$OUTPUT_FILE"

# --- Display confirmation ---
echo "=========================================="
echo "Your Open Source Manifesto has been generated!"
echo "Saved to: $OUTPUT_FILE"
echo "=========================================="