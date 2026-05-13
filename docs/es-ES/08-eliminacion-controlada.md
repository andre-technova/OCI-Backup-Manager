# Eliminación controlada de backups

La eliminación de backups es destructiva. El script solo permite eliminación por OCID o CSV revisado.

## Flujo recomendado

1. Generar reporte de backups usando la opción 5.
2. Revisar el CSV.
3. Construir un CSV con backups que pueden ser eliminados.
4. Ejecutar eliminación con `-DryRun`.
5. Validar evidencias.
6. Ejecutar eliminación real solo con autorización formal.

## Ejemplo DryRun

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -DeleteBackupMode `
  -BackupDeleteInputCsv "C:\PatchOps\evidenciasackup-manager\status.csv" `
  -DryRun `
  -NoMenu
```

## Atención

No ejecute eliminación real masiva sin aprobación. No confíe solo en filtros de texto. Revise cada OCID.
