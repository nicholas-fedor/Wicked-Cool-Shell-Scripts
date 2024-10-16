#!/usr/bin/env bash
# Page 7
# Listing 0-7: A bash script for determining how many pages are in a folder of
# OpenOffice documents.
echo "$(exiftool *.odt | grep Page-count | cut -d ":" -f2 | tr '\n' '+')""0" | bc