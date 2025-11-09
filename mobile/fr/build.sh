#!/bin/bash

# Simple resume build script
echo "Building resume..."

# Compile LaTeX to PDF
pdflatex resume.tex

if [ $? -eq 0 ]; then
    echo "✅ Resume built successfully!"
    echo "📄 Output: resume.pdf"
    
    # Clean up auxiliary files (optional)
    rm -f *.aux *.log *.out
    echo "🧹 Cleaned up auxiliary files"
    
    # Show file info
    ls -lh resume.pdf
else
    echo "❌ Build failed!"
    exit 1
fi
