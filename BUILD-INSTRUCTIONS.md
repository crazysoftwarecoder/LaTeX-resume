# LaTeX Resume - Multiple Versions

This LaTeX resume supports building two different versions:
1. **Australian version** - Shows Australian phone number and only Australian work rights
2. **Global version** - Shows US phone number and all work rights (Australia, USA, UK)

## Requirements

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- `pdflatex` command available in your PATH

## Building the Resume

### Method 1: Using the Build Script (Recommended)

```bash
./build.sh
```

This will generate both versions:
- `AshwanthFernando-Australia.pdf` - Australian version
- `AshwanthFernando-Global.pdf` - Global version

### Method 2: Manual Compilation

To build the **Australian version**:
```bash
pdflatex -jobname="AshwanthFernando-Australia" "\def\AustraliaVersion{}\input{AshwanthFernando.tex}"
```

To build the **Global version**:
```bash
pdflatex -jobname="AshwanthFernando-Global" "AshwanthFernando.tex"
```

## Version Differences

| Feature | Australian Version | Global Version |
|---------|-------------------|----------------|
| Phone Number | 0406-766-872 | +1-415-763-9191 |
| Work Rights | Australian Citizen only | Australian Citizen<br>E3 Visa (USA)<br>Global Talent Visa (UK) |

## How It Works

The resume uses LaTeX conditionals (`\ifAustralia`) to switch between versions. When `\AustraliaVersion` is defined during compilation, it builds the Australian version. Otherwise, it defaults to the Global version.

## Customization

To modify the conditional content, look for `\ifAustralia` blocks in `AshwanthFernando.tex`:

```latex
\ifAustralia
    % Australian-specific content
\else
    % Global version content
\fi
```