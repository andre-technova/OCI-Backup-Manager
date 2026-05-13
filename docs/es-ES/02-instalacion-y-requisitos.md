# Instalación y requisitos previos

## Requisitos técnicos

- Windows 10/11 o Windows Server.
- PowerShell 7 x64.
- OCI CLI instalada y disponible en `PATH`.
- Perfil OCI CLI configurado.
- Sesión OCI válida o renovable.
- CSV de inventario de OCI Inventory Manager v1.0.

## Estructura recomendada

```text
C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1
C:\PatchOps\inventario\oci_hosts.csv
C:\PatchOps\evidenciasackup-manager```

## Preparación local

```powershell
cd C:\PatchOps\scripts
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Unblock-File .\OCI-Backup-Manager-v1.0.ps1
```

## Validación del parser

```powershell
$tokens = $null
$errors = $null
[System.Management.Automation.Language.Parser]::ParseFile(
  "C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1",
  [ref]$tokens,
  [ref]$errors
) | Out-Null
if ($errors.Count -gt 0) { $errors | Format-List *; throw "Parser encontró un error." }
Write-Host "PARSER OK" -ForegroundColor Green
```

## Autenticación OCI

Si la sesión está expirada, use:

```powershell
oci session authenticate
```
