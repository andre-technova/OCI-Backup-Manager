# Troubleshooting

## ParserError con variable seguida de dos puntos

Síntoma:

```text
Variable reference is not valid. ':' was not followed by a valid variable name character.
```

Corrección en código: usar `${variable}:` dentro de strings.

## Sesión OCI expirada

Síntoma:

```text
Sesión OCI expirada o inválida.
```

Acción:

```powershell
oci session authenticate
```

## Host no encontrado

Verifique el inventario:

```powershell
Import-Csv "C:\PatchOps\inventario\oci_hosts.csv" |
Where-Object { $_.Hostname -like "*APP*" } |
Format-Table Hostname,State,Region,CompartmentName,PrivateIP -AutoSize
```

## Screenshot sin reloj

Asegúrese de que la barra de tareas de Windows esté visible y que PowerShell esté en el monitor principal.

## Bloqueo por instancia STOPPED

El flujo predeterminado protege el patching exigiendo `RUNNING`. Use excepciones solo con aprobación operacional.
