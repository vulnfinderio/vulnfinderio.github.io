#!/usr/bin/env bash
set -euo pipefail

# vulnfinder installer (macOS / Linux)
# Wires the Claude Code plugin in via the `claude` CLI. No telemetry.

printf '\nvulnfinder · source-to-sink vulnerability research for Claude Code\n\n'

if ! command -v claude >/dev/null 2>&1; then
  printf 'Claude Code (claude) was not found on your PATH.\n'
  printf '  Install it: https://claude.ai/code\n  Then re-run this installer.\n'
  exit 1
fi

claude plugin marketplace add vulnfinderio/vulnfinder
claude plugin install vulnfinder@vulnfinder

printf '\n\033[32m✓ vulnfinder installed.\033[0m Restart Claude Code, then run: /vulnfinder:vulnfinder owner/repo\n'
printf 'by Sneh Bavarva · https://snehbavarva.com\n'
