# Evidências e auditoria

## Pasta padrão

```text
C:\PatchOps\evidenciasackup-manager\<DataHora>```

## Arquivos gerados

- CSV consolidado.
- JSON detalhado.
- TXT legível para chamado ou auditoria.
- JPG com evidência visual.
- Transcript da execução.
- Arquivo de status da execução.

## Evidência visual

O script tenta maximizar o PowerShell no monitor principal e capturar a tela inteira. Quando a barra de tarefas está visível, o print registra relógio/data do Windows.

## Boas práticas

- Anexar CSV/TXT/JPG ao chamado de mudança.
- Guardar JSON para troubleshooting técnico.
- Não publicar evidências reais em Git público.
- Validar se o print mostra data/hora antes de encerrar o procedimento.
