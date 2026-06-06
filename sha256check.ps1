param(
    [Parameter(Mandatory=$true)]
    [string]$FilePath,

    [Parameter(Mandatory=$true)]
    [string]$ExpectedHash
)

# Clean up the hash (remove spaces, newlines, etc. in case you copy-paste)
$ExpectedHash = $ExpectedHash.Trim() -replace '\s', ''

if (-not (Test-Path $FilePath)) {
    Write-Host "❌ File not found: $FilePath" -ForegroundColor Red
    return
}

$actualHash = (Get-FileHash -Path $FilePath -Algorithm SHA256).Hash

if ($actualHash -eq $ExpectedHash) {
    Write-Host "✅ SHA256 Match! File is verified." -ForegroundColor Green
} else {
    Write-Host "❌ SHA256 Mismatch!" -ForegroundColor Red
    Write-Host "Expected: $ExpectedHash"
    Write-Host "Actual:   $actualHash"
}