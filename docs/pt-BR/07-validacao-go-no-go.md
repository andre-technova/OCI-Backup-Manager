# Validação Go/No-Go para patch

A opção 7 verifica se cada host possui backup de Boot Volume recente em estado `AVAILABLE` dentro da janela exigida.

## Exemplo

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```

## Status possíveis

| Status | Significado | Ação recomendada |
|---|---|---|
| `OK_TO_PATCH` | Backup AVAILABLE dentro da janela | Pode seguir, conforme demais validações |
| `BLOCKED_NO_BACKUP` | Nenhum backup encontrado | Criar backup antes do patch |
| `BLOCKED_NO_RECENT_BACKUP` | Backup existe, mas está fora da janela | Criar backup atualizado |
| `BLOCKED_BACKUP_NOT_AVAILABLE` | Nenhum backup AVAILABLE | Aguardar/corrigir backup |
| `BLOCKED_BACKUP_TIME_INVALID` | Data do backup inválida | Validar retorno OCI |
| `BLOCKED_INSTANCE_NOT_RUNNING` | Instância não está RUNNING | Validar escopo/estado |
| `QUERY_ERROR` | Falha na consulta | Corrigir autenticação/permissão/dados |

## Critério recomendado

Para PatchOps, use janela de 24h, salvo política diferente do cliente.
