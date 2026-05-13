# Instalação e pré-requisitos

## Requisitos técnicos

- Windows 10/11 ou Windows Server.
- PowerShell 7 x64.
- OCI CLI instalada e no `PATH`.
- Perfil OCI CLI configurado.
- Sessão OCI válida ou renovável.
- CSV de inventário do OCI Inventory Manager v1.0.

## Estrutura recomendada

```text
C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1
C:\PatchOps\inventario\oci_hosts.csv
C:\PatchOps\evidenciasackup-manager```

## Preparação local

```powershell
cd C:\PatchOps\scripts
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Unblock-File .\OCI-Backup-Manager-v1.0.ps1
```

## Validação de parser

```powershell
$tokens = $null
$errors = $null
[System.Management.Automation.Language.Parser]::ParseFile(
  "C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1",
  [ref]$tokens,
  [ref]$errors
) | Out-Null
if ($errors.Count -gt 0) { $errors | Format-List *; throw "Parser encontrou erro." }
Write-Host "PARSER OK" -ForegroundColor Green
```

## Autenticação OCI

Se a sessão estiver expirada, use:

```powershell
oci session authenticate
```

ou execute o script com os parâmetros/guardrails de autenticação disponíveis no ambiente.
