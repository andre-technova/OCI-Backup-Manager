# Troubleshooting

## ParserError com variável seguida de dois pontos

Sintoma:

```text
Variable reference is not valid. ':' was not followed by a valid variable name character.
```

Correção no código: usar `${variavel}:` dentro de strings.

## Sessão OCI expirada

Sintoma:

```text
Sessao OCI expirada ou invalida.
```

Ação:

```powershell
oci session authenticate
```

## Host não encontrado

Verifique o inventário:

```powershell
Import-Csv "C:\PatchOps\inventario\oci_hosts.csv" |
Where-Object { $_.Hostname -like "*APP*" } |
Format-Table Hostname,State,Region,CompartmentName,PrivateIP -AutoSize
```

## Screenshot sem relógio

Verifique se a barra de tarefas do Windows está visível e se o PowerShell está no monitor principal.

## Bloqueio por instância STOPPED

O padrão é proteger o fluxo de patch exigindo `RUNNING`. Use exceções apenas com aprovação operacional.
