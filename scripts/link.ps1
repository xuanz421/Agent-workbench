param(
    [Parameter(Mandatory=$true)][string]$Source,
    [Parameter(Mandatory=$true)][string]$Destination
)

if (-not (Test-Path $Source)) {
    throw "Source does not exist: $Source"
}

if (Test-Path $Destination) {
    throw "Destination already exists: $Destination"
}

New-Item -ItemType SymbolicLink -Path $Destination -Target $Source | Out-Null
Write-Host "Linked $Destination -> $Source"
