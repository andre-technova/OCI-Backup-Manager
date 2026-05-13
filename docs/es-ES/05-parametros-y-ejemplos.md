# Parámetros y ejemplos

## Parámetros principales

| Parámetro | Descripción |
|---|---|
| `-Hosts` | Lista de hosts separados por coma |
| `-HostsFile` | Archivo con lista de hosts |
| `-HostnameLike` | Filtro por patrón de hostname |
| `-RegionFilter` | Filtro por región |
| `-StateFilter` | Filtro por estado |
| `-CompartmentNameFilter` | Filtro por compartment |
| `-PatchGroupFilter` | Filtro por grupo de patch |
| `-ApplicationFilter` | Filtro por aplicación |
| `-BackupType` | `FULL` o `INCREMENTAL` |
| `-DryRun` | Valida sin crear/eliminar recursos |
| `-NoMenu` | Ejecuta directamente por parámetros |
| `-BackupStatusReport` | Genera reporte de backups existentes |
| `-RecentBackupValidation` | Valida backup reciente antes del patch |
| `-RecentBackupMaxAgeHours` | Edad máxima aceptable del backup |
| `-DeleteBackupMode` | Activa modo de eliminación controlada |
| `-BackupDeleteInputCsv` | CSV de entrada para eliminación |
| `-NoScreenshot` | Desactiva captura visual JPG |

## Ejemplos

DryRun por host:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -DryRun -NoMenu
```

Backup real FULL:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01" -BackupType FULL -ForceCreateBackup -NoMenu
```

Backup incremental:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01" -BackupType INCREMENTAL -ForceCreateBackup -NoMenu
```

DryRun por filtro:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -HostnameLike "APP*" -RegionFilter "sa-saopaulo-1" -MaxHosts 2 -DryRun -NoMenu
```

Validación reciente:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```
