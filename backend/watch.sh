#!/bin/bash

echo "🔍 Watching resume.tex for changes..."
echo "Press Ctrl+C to stop watching"
echo ""

# Build once initially
./build.sh

echo ""
echo "👀 Now watching for changes..."

# Watch for file changes and rebuild automatically
while inotifywait -e modify resume.tex; do
    echo ""
    echo "📝 File changed! Rebuilding..."
    ./build.sh
    echo ""
    echo "👀 Continuing to watch..."
done
