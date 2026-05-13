# Parameters and examples

## Main parameters

| Parameter | Description |
|---|---|
| `-Hosts` | Comma-separated host list |
| `-HostsFile` | File containing hosts |
| `-HostnameLike` | Hostname pattern filter |
| `-RegionFilter` | Region filter |
| `-StateFilter` | State filter |
| `-CompartmentNameFilter` | Compartment filter |
| `-PatchGroupFilter` | Patch group filter |
| `-ApplicationFilter` | Application filter |
| `-BackupType` | `FULL` or `INCREMENTAL` |
| `-DryRun` | Validates without creating/deleting resources |
| `-NoMenu` | Runs directly from parameters |
| `-BackupStatusReport` | Generates an existing backup report |
| `-RecentBackupValidation` | Validates recent backup before patching |
| `-RecentBackupMaxAgeHours` | Maximum acceptable backup age |
| `-DeleteBackupMode` | Enables controlled deletion mode |
| `-BackupDeleteInputCsv` | Input CSV for deletion |
| `-NoScreenshot` | Disables JPG visual capture |

## Examples

Host DryRun:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -DryRun -NoMenu
```

Real FULL backup:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01" -BackupType FULL -ForceCreateBackup -NoMenu
```

Incremental backup:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01" -BackupType INCREMENTAL -ForceCreateBackup -NoMenu
```

Filter DryRun:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -HostnameLike "APP*" -RegionFilter "sa-saopaulo-1" -MaxHosts 2 -DryRun -NoMenu
```

Recent validation:

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```
