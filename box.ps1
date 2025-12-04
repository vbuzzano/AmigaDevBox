<#
.SYNOPSIS
    DevBox-Foundry bootstrap wrapper

.DESCRIPTION
    Temporary wrapper that will be replaced by the real box.ps1 after install.ps1 runs.
    Until then, this delegates to app.ps1 (the real DevBox script).
#>

param(
    [string]$Command
)

if (-not (Test-Path "app.ps1")) {
    Write-Host "ERROR: app.ps1 not found. Run: .\install.ps1" -ForegroundColor Red
    exit 1
}

& ".\app.ps1" @args
