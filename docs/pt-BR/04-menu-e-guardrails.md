# Menu e guardrails

## Opções

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

## Opção 1

Cria backup real de Boot Volume para hosts específicos. Pergunta o tipo de backup: `FULL` ou `INCREMENTAL`. Exige confirmação forte.

## Opção 2

Simula o backup para hosts específicos. Não cria recurso OCI. Gera evidência do escopo planejado.

## Opção 3

Cria backup real por filtro. É a opção mais sensível para execução em massa. Deve ser precedida pela opção 4 com os mesmos filtros.

## Opção 4

Simula backup por filtro. Deve ser usada para validar escopo antes de qualquer criação real.

## Opção 5

Consulta backups existentes dos hosts e exporta relatório. Não cria nem altera recurso.

## Opção 6

Exclui backups OCI por OCID ou CSV. Deve ser usada inicialmente com `DryRun`. Não exclui por filtro de host para evitar risco operacional.

## Opção 7

Valida se há backup recente `AVAILABLE` dentro da janela definida. Retorna status de Go/No-Go para patch.
