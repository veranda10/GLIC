#!/bin/bash
# Simple wrapper to run GLIC from the command line.
# Usage: glic-cli.sh encode <input image> <output glic>
#        glic-cli.sh decode <input glic> <output image>
# Requires processing-java to be installed and available in PATH.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
ACTION="$1"
INPUT="$2"
OUTPUT="$3"
if [ -z "$ACTION" ] || [ -z "$INPUT" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 [encode|decode] <input> <output>" >&2
  exit 1
fi
processing-java --sketch="$DIR" --run "$ACTION" "$INPUT" "$OUTPUT"
