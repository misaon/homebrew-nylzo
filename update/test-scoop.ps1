$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$installerCommit = '1e2f334083d609986d8c8bc9e31ae8e87c39fab4'
$installerSha256 = '94F983B190438311E006B957DB7C8422709E0BA62A6C2AC04E278164108F2512'
$installer = Join-Path $env:RUNNER_TEMP 'install-scoop.ps1'

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ScoopInstaller/Install/$installerCommit/install.ps1" -OutFile $installer
if ((Get-FileHash -Algorithm SHA256 $installer).Hash -ne $installerSha256) {
    throw 'The Scoop installer does not match its pinned hash'
}
& $installer -RunAsAdmin
$env:PATH = "$env:USERPROFILE\scoop\shims;$env:PATH"

$manifest = Get-Content -Raw bucket/nylzo.json | ConvertFrom-Json
scoop install (Resolve-Path bucket/nylzo.json).Path
if ($LASTEXITCODE -ne 0) {
    throw "scoop install failed with exit code $LASTEXITCODE"
}

$installed = (& nylzo version).Trim()
if ($installed -ne $manifest.version) {
    throw "Installed nylzo $installed, expected $($manifest.version)"
}
$zone = Get-Item -LiteralPath (Join-Path $env:USERPROFILE "scoop\apps\nylzo\current\nylzo.exe") -Stream Zone.Identifier -ErrorAction SilentlyContinue
if ($zone) {
    throw 'The installed binary carries a Mark of the Web'
}
Write-Output "test-scoop: nylzo $installed installs and runs"
