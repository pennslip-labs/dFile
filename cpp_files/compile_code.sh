#!/bin/bash

#author: Shamar Pennant
#date: 08/02/26

# Takes .cpp files as arguments, last argument is the output file name
# Compiles with wxWidgets in mind

OUTPUT=${@: -1}  # Get last argument as output file
FILES=${@:1:$#-1}  # Get all arguments except the last one as input files

# Exclude the sample app used for wxWidgets testing, which defines its own main entry point.
FILTERED_FILES=""
for f in $FILES; do
    if [ "$(basename "$f")" = "hello.cpp" ]; then
        echo "Skipping hello.cpp because it contains a separate wxWidgets app entrypoint"
        continue
    fi
    FILTERED_FILES="$FILTERED_FILES $f"
done

if [ -z "$FILTERED_FILES" ]; then
    echo "Error: no source files left after filtering. Provide application source files without hello.cpp."
    exit 1
fi

echo "creating object file \"$OUTPUT\" from files:$FILTERED_FILES with wx-config in mind"

g++ $FILTERED_FILES -o "$OUTPUT" $(wx-config --cxxflags --libs)

