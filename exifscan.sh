#!/bin/bash

cat << "EOF"
███████╗██╗  ██╗██╗███████╗███████╗ ██████╗ █████╗ ███╗   ██╗
██╔════╝██║  ██║██║╚══███╔╝██╔════╝██╔════╝██╔══██╗████╗  ██║
███████╗███████║██║  ███╔╝ █████╗  ██║     ███████║██╔██╗ ██║
╚════██║██╔══██║██║ ███╔╝  ██╔══╝  ██║     ██╔══██║██║╚██╗██║
███████║██║  ██║██║███████╗███████╗╚██████╗██║  ██║██║ ╚████║
╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝
EOF

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' 

FILE=$1

if [ -z "$FILE" ]; then
    echo -e "${RED}Usage:${NC} $0 <image-file>"
    exit 1
fi

if [ ! -f "$FILE" ]; then
    echo -e "${RED}Error:${NC} File not found!"
    exit 1
fi

echo -e "${CYAN}=== ExifScan: Metadata Report ===${NC}"
echo -e "${YELLOW}Target File:${NC} $FILE"

if command -v exiftool &> /dev/null; then
    exiftool "$FILE"
elif command -v identify &> /dev/null; then
    identify -verbose "$FILE"
else
    echo -e "${RED}No exiftool or identify installed.${NC}"
    exit 1
fi
