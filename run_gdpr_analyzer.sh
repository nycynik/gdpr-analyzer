#!/bin/bash
# Wrapper script to run GDPR Analyzer with proper library paths

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Set library path for Homebrew libraries
export DYLD_FALLBACK_LIBRARY_PATH=$(brew --prefix)/lib:$DYLD_FALLBACK_LIBRARY_PATH

# Activate virtual environment
source "$SCRIPT_DIR/venv/bin/activate"

# Run the Python script with all arguments passed through
python3 "$SCRIPT_DIR/gdpr_analyzer.py" "$@"
