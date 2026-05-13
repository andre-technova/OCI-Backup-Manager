# Patch Go/No-Go validation

Option 7 checks whether each host has a recent Boot Volume backup in `AVAILABLE` state within the required window.

## Example

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```

## Possible statuses

| Status | Meaning | Recommended action |
|---|---|---|
| `OK_TO_PATCH` | AVAILABLE backup within the window | Proceed if other validations are also OK |
| `BLOCKED_NO_BACKUP` | No backup found | Create a backup before patching |
| `BLOCKED_NO_RECENT_BACKUP` | Backup exists but is outside the window | Create an updated backup |
| `BLOCKED_BACKUP_NOT_AVAILABLE` | No AVAILABLE backup | Wait for or fix backup |
| `BLOCKED_BACKUP_TIME_INVALID` | Invalid backup date | Validate OCI response |
| `BLOCKED_INSTANCE_NOT_RUNNING` | Instance is not RUNNING | Validate scope/state |
| `QUERY_ERROR` | Query failed | Fix authentication/permissions/data |

## Recommended threshold

For PatchOps, use a 24-hour window unless the customer policy defines a different threshold.
