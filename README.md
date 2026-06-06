# Sha256check-powershell
A script for powershell to verify SHA256 checksums

Setup:
Install file to C:\Windows\System32 (or any place you want, but it helps if it's somewhere in the PATH environment variable)

Use:
1) Open Powershell
2) type: sha256check PATH\FILENAME HASH (path is optional if already the working directory)

Expected output:
  Success: SHA256 Match! File is verified.
  Mismatch: SHA256 Mismatch! 
            Expected: $ExpectedHash 
            Actual:   $actualHash
  Missing file: File not found: $FilePath
