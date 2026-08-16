#!/bin/bash

# LaTeX Resume Build Script
# Builds both Australian and US versions of the resume

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Building Ashwanth Fernando's Resume...${NC}"

# Build Australian version
echo -e "\n${GREEN}Building Australian version...${NC}"
pdflatex AshwanthFernando-Australia.tex

# Build US version
echo -e "\n${GREEN}Building US version...${NC}"
pdflatex AshwanthFernando-US.tex

# Clean up auxiliary files
echo -e "\n${BLUE}Cleaning up auxiliary files...${NC}"
rm -f *.aux *.log *.out

echo -e "\n${GREEN}Build complete!${NC}"
echo -e "Generated files:"
echo -e "  - AshwanthFernando-Australia.pdf (Australian version)"
echo -e "  - AshwanthFernando-US.pdf (US version)"
