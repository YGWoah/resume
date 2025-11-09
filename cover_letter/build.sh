#!/bin/bash

# Simple cover letter build script
echo "Building cover letter..."

# Compile LaTeX to PDF
pdflatex cover_letter.tex

if [ $? -eq 0 ]; then
    echo "✅ Cover letter built successfully!"
    echo "📄 Output: cover_letter.pdf"
    
    # Clean up auxiliary files (optional)
    rm -f *.aux *.log *.out
    echo "🧹 Cleaned up auxiliary files"
    
    # Show file info
    ls -lh cover_letter.pdf
else
    echo "❌ Build failed!"
    exit 1
fi
