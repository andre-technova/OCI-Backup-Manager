# Controlled backup deletion

Backup deletion is destructive. The script only allows deletion by OCID or reviewed CSV.

## Recommended flow

1. Generate a backup report using option 5.
2. Review the CSV.
3. Build a CSV with backups that may be deleted.
4. Run deletion with `-DryRun`.
5. Validate evidence.
6. Execute real deletion only with formal authorization.

## DryRun example

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -DeleteBackupMode `
  -BackupDeleteInputCsv "C:\PatchOps\evidenciasackup-manager\status.csv" `
  -DryRun `
  -NoMenu
```

## Warning

Do not run real mass deletion without approval. Do not rely only on text filters. Review each OCID.
