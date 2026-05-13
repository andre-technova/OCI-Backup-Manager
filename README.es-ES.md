# OCI Backup Manager v1.0

**Línea:** Technova PatchOps  
**Autor:** André Rodrigues  
**Estado:** operacional para piloto controlado

**OCI Backup Manager v1.0** es un módulo PowerShell para creación controlada, auditoría, validación y gobernanza de backups de **Boot Volume** en Oracle Cloud Infrastructure (OCI). Usa como base el inventario generado por **OCI Inventory Manager v1.0** y fue diseñado para procesos de PatchOps, evidencias operacionales y validación Go/No-Go antes de ventanas críticas.

## Qué hace

- Lee el inventario estándar en `C:\PatchOps\inventario\oci_hosts.csv`.
- Crea backups de Boot Volume por host o por filtro.
- Soporta backups `FULL` e `INCREMENTAL`.
- Incluye modo `DryRun` para validar alcance sin crear recursos.
- Genera reportes de histórico/estado de backups existentes.
- Valida si existe un backup `AVAILABLE` reciente antes de aplicar patch.
- Elimina backups OCI solo por OCID o CSV, con `DryRun` y confirmación fuerte.
- Genera evidencias en CSV, JSON, TXT y JPG.
- Maximiza PowerShell en el monitor principal y captura evidencia visual con fecha/hora de Windows cuando la barra de tareas está visible.
- Incluye guardrails para reducir riesgo operacional en ambientes de cliente.

## Qué no hace

- No reemplaza una política corporativa de backup.
- No reemplaza aprobación de cambios, CAB o autorización del cliente.
- No valida consistencia interna de la aplicación después del backup.
- No debe usarse para eliminación real de backups sin revisión formal.
- No debe publicarse con inventarios, evidencias o datos reales de cliente.

## Menú operacional

```text
1) CREAR BACKUP REAL por host(s)
2) DRYRUN por host(s)
3) CREAR BACKUP REAL por filtro
4) DRYRUN por filtro
5) Reporte de backups por host
6) ELIMINAR backups OCI por OCID/CSV
7) VALIDAR backup reciente para patch
8) Salir
```

## Requisitos

- Windows 10/11 o Windows Server con PowerShell 7.
- OCI CLI instalada y disponible en `PATH`.
- Perfil OCI CLI configurado, normalmente `DEFAULT`.
- Autenticación OCI mediante `security_token` o sesión OCI válida.
- CSV de inventario generado por OCI Inventory Manager v1.0.
- Permisos IAM para consultar instancias, Boot Volume Attachments y Boot Volume Backups.
- Permisos IAM adicionales para crear o eliminar backups cuando esos modos sean usados.

## Estructura esperada

```text
C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1
C:\PatchOps\inventario\oci_hosts.csv
C:\PatchOps\evidenciasackup-manager```

## Inicio rápido

```powershell
cd C:\PatchOps\scripts
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Unblock-File .\OCI-Backup-Manager-v1.0.ps1
.\OCI-Backup-Manager-v1.0.ps1
```

### DryRun por host

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -DryRun -NoMenu
```

### Backup real por host

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01" -BackupType FULL -ForceCreateBackup -NoMenu
```

### Reporte de backups existentes

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -BackupStatusReport -NoMenu
```

### Validación de backup reciente antes de patch

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -Hosts "APP01,APP02" `
  -RecentBackupValidation `
  -RecentBackupMaxAgeHours 24 `
  -NoMenu
```

### DryRun de eliminación por CSV

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -DeleteBackupMode `
  -BackupDeleteInputCsv "C:\PatchOps\evidenciasackup-manager\status.csv" `
  -DryRun `
  -NoMenu
```

## Documentación completa

- [Visión general](docs/es-ES/01-vision-general.md)
- [Instalación y requisitos previos](docs/es-ES/02-instalacion-y-requisitos.md)
- [Contrato del inventario CSV](docs/es-ES/03-contrato-del-inventario.md)
- [Menú y guardrails](docs/es-ES/04-menu-y-guardrails.md)
- [Parámetros y ejemplos](docs/es-ES/05-parametros-y-ejemplos.md)
- [Evidencias y auditoría](docs/es-ES/06-evidencias-y-auditoria.md)
- [Validación Go/No-Go para patch](docs/es-ES/07-validacion-go-no-go.md)
- [Eliminación controlada de backups](docs/es-ES/08-eliminacion-controlada.md)
- [Troubleshooting](docs/es-ES/09-troubleshooting.md)
- [Runbook operacional](docs/es-ES/10-runbook-operacional.md)

## Hash entregado

```text
SHA256: 30ADC058ABB264B0F2E886BF2C93D395E1AD50F0736819A4E5C2C2F34E195636
```
