# LaTeX to PDF Conversion

This repository provides instructions and resources for generating a PDF from a LaTeX `.tex` file. You can also use Overleaf for easy online editing of LaTeX files.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Generating PDF from LaTeX](#generating-pdf-from-latex)
  - [Using Command Line](#using-command-line)
  - [Using Overleaf](#using-overleaf)
- [Troubleshooting](#troubleshooting)
- [References](#references)

---

## Prerequisites

### 1. Install LaTeX Distribution
To compile LaTeX files locally, install a LaTeX distribution:

- **For macOS:** Install MacTeX using Homebrew:
  ```bash
  brew install --cask basictex
  ```
  For a complete distribution, install:
  ```bash
  brew install --cask mactex
  ```

- **For Linux:**
  ```bash
  sudo apt-get install texlive-full
  ```

- **For Windows:** Download and install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/).

---

## Generating PDF from LaTeX

### Using Command Line

1. Open your terminal.
2. Navigate to the directory containing your `.tex` file:
   ```bash
   cd /path/to/your/file
   ```
3. Compile the `.tex` file to a PDF using `pdflatex`:
   ```bash
   pdflatex yourfile.tex
   ```
4. The output PDF (`yourfile.pdf`) will be generated in the same directory.

To handle bibliographies or indexes, you may need to run additional commands like:
```bash
bibtex yourfile
pdflatex yourfile.tex
pdflatex yourfile.tex
```

### Using Overleaf

[Overleaf](https://www.overleaf.com/) is an online LaTeX editor that allows collaborative editing and PDF generation.

1. Create an account or log in at [Overleaf.com](https://www.overleaf.com/).
2. Start a new project by uploading your `.tex` file.
3. Edit your document in the Overleaf editor.
4. Overleaf will automatically compile your document and generate a PDF preview.

For a detailed guide, visit the [Overleaf documentation](https://www.overleaf.com/learn/).

---

## Troubleshooting

### Common Issues

#### Missing Package Error
If you encounter errors like `File '<package-name>.sty' not found`, install the missing package using the following commands:

- On macOS/Linux:
  ```bash
  sudo tlmgr install <package-name>
  ```

#### Font Errors
If you see `Metric (TFM) file not found`, ensure the necessary fonts are installed by running:
```bash
sudo tlmgr install ec
sudo tlmgr install charter
```

#### Lonely `\item` Error
Make sure that every `\item` is inside a proper list environment like `\begin{itemize} ... \end{itemize}` or `\begin{enumerate} ... \end{enumerate}`.

---

## References

- [TeX Live](https://www.tug.org/texlive/)
- [MacTeX](https://www.tug.org/mactex/)
- [Overleaf Documentation](https://www.overleaf.com/learn/)

---

