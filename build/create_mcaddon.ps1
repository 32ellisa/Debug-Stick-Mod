$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$outDir = Join-Path $root "build"
New-Item -ItemType Directory -Path $outDir -Force | Out-Null

$archivePath = Join-Path $outDir "DebugStick.mcaddon"
if (Test-Path $archivePath) { Remove-Item $archivePath -Force }

Compress-Archive -Path (Join-Path $root "behavior_packs"), (Join-Path $root "resource_packs") -DestinationPath $archivePath -Force
Write-Host "Created: $archivePath"
