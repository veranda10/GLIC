#!/bin/bash
# Simple wrapper to run GLIC from the command line.
# Usage: glic-cli.sh encode <input image> <output glic>
#        glic-cli.sh decode <input glic> <output image>
# Requires processing-java to be installed and available in PATH.
set -e
PROCESSING_CMD="${PROCESSING_JAVA:-processing-java}"
DIR="$(cd "$(dirname "$0")" && pwd)"
ACTION="$1"
INPUT="$2"
OUTPUT="$3"
if [ -z "$ACTION" ] || [ -z "$INPUT" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 [encode|decode] <input> <output>" >&2
  exit 1
fi
if ! command -v "$PROCESSING_CMD" >/dev/null 2>&1; then
  echo "Error: $PROCESSING_CMD command not found. Please install Processing and ensure "$PROCESSING_CMD" is on your PATH." >&2
  exit 1
fi
"$PROCESSING_CMD" --sketch="$DIR" --run --args "$ACTION" "$INPUT" "$OUTPUT"
