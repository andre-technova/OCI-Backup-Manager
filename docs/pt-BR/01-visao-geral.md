# Visão geral

O OCI Backup Manager v1.0 é um módulo da linha Technova PatchOps para apoiar janelas de manutenção, patching e rollback operacional em Oracle Cloud Infrastructure.

A proposta é simples: antes de qualquer intervenção crítica, o operador consegue validar inventário, criar backup de Boot Volume, gerar evidências, consultar histórico e confirmar se existe backup recente em estado `AVAILABLE`.

## Objetivos

- Reduzir risco antes de patch.
- Padronizar criação de backups de Boot Volume.
- Gerar evidência técnica auditável.
- Apoiar decisões de Go/No-Go.
- Evitar ações amplas sem confirmação explícita.

## Principais modos

- Backup real por host.
- DryRun por host.
- Backup real por filtro.
- DryRun por filtro.
- Relatório de backups existentes.
- Exclusão controlada de backups por OCID/CSV.
- Validação de backup recente para patch.

## Postura operacional

O script foi criado para ambiente de cliente. Por isso, ele prioriza mensagens claras, validações explícitas, evidências e bloqueios de segurança antes de ações reais ou destrutivas.
