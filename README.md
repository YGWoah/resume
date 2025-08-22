# LaTeX Resume Setup

This repository contains a LaTeX resume that can be compiled to PDF on Arch Linux.

## Prerequisites

The following packages are installed and ready:
- `texlive-basic` - Basic LaTeX distribution
- `texlive-latex` - LaTeX packages
- `texlive-latexextra` - Extra LaTeX packages
- `texlive-fontsextra` - Additional fonts
- `texlive-fontsrecommended` - Recommended fonts
- `inotify-tools` - For file watching (optional)

## Files

- `resume.tex` - Main LaTeX resume source file
- `build.sh` - Script to compile the resume to PDF
- `watch.sh` - Script to automatically rebuild when file changes
- `resume.pdf` - Generated PDF output

## Usage

### Manual Build
To compile your resume once:
```bash
./build.sh
```

### Automatic Build (Recommended)
To automatically rebuild whenever you save changes to `resume.tex`:
```bash
./watch.sh
```
Press `Ctrl+C` to stop watching.

### Direct LaTeX Command
You can also use LaTeX directly:
```bash
pdflatex resume.tex
```

## LaTeX Packages Used

Your resume uses these LaTeX packages:
- `fontawesome5` - For icons (phone, email, LinkedIn, GitHub)
- `hyperref` - For clickable links
- `geometry` - For page margins
- `enumitem` - For customized lists
- `titlesec` - For section formatting
- `xcolor` - For colors

## Tips

1. The build script automatically cleans up auxiliary files (`.aux`, `.log`, `.out`)
2. Use the watch script during development for live updates
3. The PDF will be generated as `resume.pdf` in the same directory
4. If you encounter font issues, make sure all required fonts are installed

## Troubleshooting

If compilation fails:
1. Check that all required packages are installed: `pacman -Qs texlive`
2. Look at the error output from `pdflatex`
3. Ensure your LaTeX syntax is correct
4. Try running `pdflatex resume.tex` directly to see detailed errors
