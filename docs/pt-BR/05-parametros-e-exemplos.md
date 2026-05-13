# Parâmetros e exemplos

## Parâmetros principais

| Parâmetro | Descrição |
|---|---|
| `-Hosts` | Lista de hosts separados por vírgula |
| `-HostsFile` | Arquivo com lista de hosts |
| `-HostnameLike` | Filtro por padrão de hostname |
| `-RegionFilter` | Filtro por região |
| `-StateFilter` | Filtro por estado |
| `-CompartmentNameFilter` | Filtro por compartment |
| `-PatchGroupFilter` | Filtro por grupo de patch |
| `-ApplicationFilter` | Filtro por aplicação |
| `-BackupType` | `FULL` ou `INCREMENTAL` |
| `-DryRun` | Valida sem criar/excluir recurso |
| `-NoMenu` | Executa direto por parâmetros |
| `-BackupStatusReport` | Gera relatório de backups existentes |
| `-RecentBackupValidation` | Valida backup recente para patch |
| `-RecentBackupMaxAgeHours` | Janela máxima do backup recente |
| `-DeleteBackupMode` | Ativa modo de exclusão controlada |
| `-BackupDeleteInputCsv` | CSV de entrada para exclusão |
| `-NoScreenshot` | Desativa captura visual JPG |

## Exemplos

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

Validação recente:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```
