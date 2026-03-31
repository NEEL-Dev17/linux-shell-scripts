#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Demonstrates: read for input, string concatenation, writing to file, date, alias concept

echo "Answer three questions to generate your manifesto."
echo ""

# Ask the user interactive questions
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get the current date
DATE=$(date '+%d %B %Y')

# Create the output file
OUTPUT="manifesto_$(whoami).txt"

# Compose the manifesto paragraph
MANIFESTO="On $DATE, I reflect on my open-source journey. I rely on $TOOL every day, because it empowers me to embrace $FREEDOM. My vision is to build and share $BUILD freely with the community, contributing to a world of collaboration and innovation."

# Write the manifesto to the file
echo "$MANIFESTO" > "$OUTPUT"

# Optional: Show the manifesto in the terminal
echo ""
echo "Your personalized manifesto:"
echo "---------------------------"
cat "$OUTPUT"

# Example of alias concept (commented out for demonstration)
# alias showmanifest='cat $OUTPUT'
