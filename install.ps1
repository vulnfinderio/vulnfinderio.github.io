#Requires -Version 5
# vulnfinder installer (Windows / PowerShell)
# Wires the Claude Code plugin in via the `claude` CLI. No telemetry.

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "vulnfinder · source-to-sink vulnerability research for Claude Code"
Write-Host ""

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
  Write-Host "Claude Code (claude) was not found on your PATH." -ForegroundColor Red
  Write-Host "  Install it: https://claude.ai/code"
  Write-Host "  Then re-run this installer."
  exit 1
}

claude plugin marketplace add vulnfinderio/vulnfinder
claude plugin install vulnfinder@vulnfinder

Write-Host ""
Write-Host "vulnfinder installed. Restart Claude Code, then run: /vulnfinder:vulnfinder owner/repo" -ForegroundColor Green
Write-Host "by Sneh Bavarva · https://snehbavarva.com"
