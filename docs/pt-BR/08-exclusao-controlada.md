# Exclusão controlada de backups

A exclusão de backups é destrutiva. Por isso, o script só permite exclusão por OCID ou por CSV revisado.

## Fluxo recomendado

1. Gerar relatório de backups pela opção 5.
2. Revisar o CSV.
3. Montar CSV com os backups que podem ser excluídos.
4. Rodar exclusão com `-DryRun`.
5. Validar evidências.
6. Executar exclusão real somente com autorização formal.

## Exemplo DryRun

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -DeleteBackupMode `
  -BackupDeleteInputCsv "C:\PatchOps\evidenciasackup-manager\status.csv" `
  -DryRun `
  -NoMenu
```

## Atenção

Não use exclusão real em massa sem aprovação. Não confie somente em filtro textual. Revise OCID por OCID.
