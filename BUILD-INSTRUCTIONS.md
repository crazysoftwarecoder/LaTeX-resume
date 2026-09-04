# LaTeX Resume - Multiple Versions

The resume is maintained as two standalone LaTeX files:

1. **`AshwanthFernando-Australia.tex`** - Australian version (Sydney contact details, Australian phone number, full 4-page CV with extended history, certifications, and hobbies)
2. **`AshwanthFernando-US.tex`** - US version (US phone number, San Francisco location, condensed 2-page format)

## Requirements

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- `pdflatex` command available in your PATH

## Building the Resume

### Method 1: Using the Build Script (Recommended)

```bash
./build.sh
```

This will generate both versions:
- `AshwanthFernando-Australia.pdf`
- `AshwanthFernando-US.pdf`

### Method 2: Manual Compilation

```bash
pdflatex AshwanthFernando-Australia.tex
pdflatex AshwanthFernando-US.tex
```

## Version Differences

| Feature | Australian Version | US Version |
|---------|-------------------|------------|
| Phone Number | 0406-766-872 | +1-415-763-9191 |
| Location | Sydney, Australia | San Francisco |
| Work Rights | Australian Citizen | Australian Citizen |
| Length | ~4 pages (extended history, certifications, hobbies) | ~2 pages (condensed) |

## Editing

Each file is fully self-contained — edit the version you need directly. There is no shared source or conditional logic; a change that should apply to both versions must be made in both files.
