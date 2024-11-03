$defaultPath = Join-Path -Path $PSScriptRoot -ChildPath "../mihomo-windows-amd64-v1.18.9/mihomo-windows-amd64.exe"
$compatiblePath = Join-Path -Path $PSScriptRoot -ChildPath "../mihomo-windows-amd64-compatible-v1.18.9/mihomo-windows-amd64-compatible.exe"
$configDir = Join-Path -Path $PSScriptRoot -ChildPath "../resources"

Write-Output "Attempting to run default version..."
& $defaultPath -d $configDir


if ($LASTEXITCODE -ne 0) {
    Write-Output "Default version failed to start, attempting compatible version..."
    & $compatiblePath -d $configDir


    if ($LASTEXITCODE -ne 0) {
        Write-Output "Both versions failed to start. Please check the issue."
        exit 1
    } else {
        Write-Output "Compatible version started successfully."
    }
} else {
    Write-Output "Default version started successfully."
}
