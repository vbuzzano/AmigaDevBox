<#
.SYNOPSIS
    DevBox-Foundry bootstrap wrapper

.DESCRIPTION
    Temporary wrapper that will be replaced by the real box.ps1 after install.ps1 runs.
    Until then, this delegates to app.ps1 or .box/app.ps1.
#>

param(
    [string]$Command
)

# Try to find app.ps1 (root first, then .box/)
$appScript = if (Test-Path "app.ps1") { "app.ps1" } elseif (Test-Path ".box\app.ps1") { ".box\app.ps1" } else { $null }

if (-not $appScript) {
    Write-Host "ERROR: DevBox app not found. Run: .\install.ps1" -ForegroundColor Red
    exit 1
}

& $appScript @args
