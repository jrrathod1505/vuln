#!/bin/bash

# Check if the target URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <target URL>"
    exit 1
fi
echo "Enter the target Website : "
read target_url
# Check if nikto is installed
if ! command -v nikto &> /dev/null; then
    echo "Error: nikto is not installed. Please install nikto before running this script."
    exit 1
fi

# Perform vulnerability scanning using nikto
echo "Starting vulnerability scanning with nikto for $target_url..."
nikto -h "$target_url"
