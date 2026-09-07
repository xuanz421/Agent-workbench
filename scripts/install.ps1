param(
    [ValidateSet('codex','zcode','opencode','all')]
    [string]$Target = 'all'
)

Write-Host "Agent-Workbench installer scaffold"
Write-Host "Target: $Target"
Write-Host "This v0.1 script intentionally does not guess client paths. Configure adapter-specific paths before enabling automatic linking."
