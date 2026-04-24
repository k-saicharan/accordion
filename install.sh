#!/bin/bash
set -e

COMMANDS_DIR="${HOME}/.claude/commands"
mkdir -p "$COMMANDS_DIR"

curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/.claude/commands/accord.md \
  -o "$COMMANDS_DIR/accord.md"

echo ""
echo "  /accord installed."
echo ""
echo "  To scaffold a new screenplay project, navigate to your project folder and run:"
echo "  curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/new-project.sh | bash"
echo ""
