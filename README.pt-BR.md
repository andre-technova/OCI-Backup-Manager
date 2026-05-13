# OCI Backup Manager v1.0

**Linha:** Technova PatchOps  
**Autor:** André Rodrigues  
**Status:** operacional para piloto controlado

O **OCI Backup Manager v1.0** é um módulo PowerShell para criação controlada, auditoria, validação e governança de backups de **Boot Volume** na Oracle Cloud Infrastructure (OCI). Ele usa como base o inventário gerado pelo **OCI Inventory Manager v1.0** e foi desenhado para rotinas de PatchOps, evidência operacional e validação Go/No-Go antes de janelas críticas.

## O que ele faz

- Lê o inventário padrão em `C:\PatchOps\inventario\oci_hosts.csv`.
- Cria backups de Boot Volume por host ou por filtro.
- Permite escolher backup `FULL` ou `INCREMENTAL`.
- Executa `DryRun` para validar escopo sem criar recursos.
- Gera relatório de histórico/status de backups existentes.
- Valida se há backup `AVAILABLE` recente para liberar ou bloquear patch.
- Exclui backups OCI somente por OCID ou CSV, com `DryRun` e confirmação forte.
- Gera evidências em CSV, JSON, TXT e JPG.
- Maximiza o PowerShell no monitor principal e captura evidência visual com data/hora do Windows quando a barra de tarefas está visível.
- Inclui guardrails para reduzir risco operacional em ambientes de cliente.

## O que ele não faz

- Não substitui política corporativa de backup.
- Não substitui aprovação de mudança, CAB ou autorização do cliente.
- Não valida consistência interna da aplicação após backup.
- Não deve ser usado para exclusão real de backups sem revisão formal.
- Não deve ser publicado com inventários, evidências ou dados reais de cliente.

## Menu operacional

```text
1) CRIAR BACKUP REAL por host(s)
2) DRYRUN por host(s)
3) CRIAR BACKUP REAL por filtro
4) DRYRUN por filtro
5) RELATÓRIO de backups por host
6) EXCLUIR backups OCI por OCID/CSV
7) VALIDAR backup recente p/ patch
8) Sair
```

## Requisitos

- Windows 10/11 ou Windows Server com PowerShell 7.
- OCI CLI instalada e disponível no `PATH`.
- Perfil OCI CLI configurado, normalmente `DEFAULT`.
- Autenticação OCI por `security_token` ou sessão OCI válida.
- Inventário CSV gerado pelo OCI Inventory Manager v1.0.
- Permissões IAM para consultar instâncias, Boot Volume Attachments e Boot Volume Backups.
- Permissões IAM adicionais para criar ou excluir backups, caso esses modos sejam usados.

## Estrutura esperada

```text
C:\PatchOps\scripts\OCI-Backup-Manager-v1.0.ps1
C:\PatchOps\inventario\oci_hosts.csv
C:\PatchOps\evidenciasackup-manager```

## Uso rápido

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

### Relatório de backups existentes

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -BackupStatusReport -NoMenu
```

### Validação de backup recente para patch

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -Hosts "APP01,APP02" `
  -RecentBackupValidation `
  -RecentBackupMaxAgeHours 24 `
  -NoMenu
```

### DryRun de exclusão por CSV

```powershell
.\OCI-Backup-Manager-v1.0.ps1 `
  -DeleteBackupMode `
  -BackupDeleteInputCsv "C:\PatchOps\evidenciasackup-manager\status.csv" `
  -DryRun `
  -NoMenu
```

## Documentação completa

- [Visão geral](docs/pt-BR/01-visao-geral.md)
- [Instalação e pré-requisitos](docs/pt-BR/02-instalacao-e-pre-requisitos.md)
- [Contrato do inventário CSV](docs/pt-BR/03-contrato-do-inventario.md)
- [Menu e guardrails](docs/pt-BR/04-menu-e-guardrails.md)
- [Parâmetros e exemplos](docs/pt-BR/05-parametros-e-exemplos.md)
- [Evidências e auditoria](docs/pt-BR/06-evidencias-e-auditoria.md)
- [Validação Go/No-Go para patch](docs/pt-BR/07-validacao-go-no-go.md)
- [Exclusão controlada de backups](docs/pt-BR/08-exclusao-controlada.md)
- [Troubleshooting](docs/pt-BR/09-troubleshooting.md)
- [Runbook operacional](docs/pt-BR/10-runbook-operacional.md)

## Hash da versão entregue

```text
SHA256: 30ADC058ABB264B0F2E886BF2C93D395E1AD50F0736819A4E5C2C2F34E195636
```
