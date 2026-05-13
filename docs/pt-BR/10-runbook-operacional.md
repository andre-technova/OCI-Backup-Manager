# Runbook operacional

## Fluxo recomendado antes de patch

1. Atualizar o inventário com OCI Inventory Manager v1.0.
2. Validar parser do OCI Backup Manager.
3. Rodar DryRun por host ou por filtro.
4. Criar backup `FULL` quando a mudança exigir ponto de retorno forte.
5. Gerar relatório de backups.
6. Rodar validação de backup recente com janela de 24h ou política do cliente.
7. Anexar CSV/TXT/JPG ao chamado.
8. Seguir para patch somente com `OK_TO_PATCH`.

## Critério de fechamento do módulo

- DryRun OK.
- Backup real piloto OK.
- Relatório de status OK.
- Validação recente OK.
- Evidência visual com data/hora OK.
- Exclusão validada em DryRun.
