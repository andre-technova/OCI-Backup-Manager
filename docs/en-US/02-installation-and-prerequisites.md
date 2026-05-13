# Installation and prerequisites

## Technical requirements

- Windows 10/11 or Windows Server.
- PowerShell 7 x64.
- OCI CLI installed and available in `PATH`.
- OCI CLI profile configured.
- Valid or renewable OCI session.
- Inventory CSV from OCI Inventory Manager v1.0.

## Recommended structure

```text
C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1
C:\PatchOps\inventario\oci_hosts.csv
C:\PatchOps\evidenciasackup-manager```

## Local preparation

```powershell
cd C:\PatchOps\scripts
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Unblock-File .\OCI-Backup-Manager-v1.0.ps1
```

## Parser validation

```powershell
$tokens = $null
$errors = $null
[System.Management.Automation.Language.Parser]::ParseFile(
  "C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1",
  [ref]$tokens,
  [ref]$errors
) | Out-Null
if ($errors.Count -gt 0) { $errors | Format-List *; throw "Parser found an error." }
Write-Host "PARSER OK" -ForegroundColor Green
```

## OCI authentication

If the session is expired, use:

```powershell
oci session authenticate
```
