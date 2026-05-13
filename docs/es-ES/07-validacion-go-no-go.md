# Validación Go/No-Go para patch

La opción 7 verifica si cada host tiene un backup reciente de Boot Volume en estado `AVAILABLE` dentro de la ventana requerida.

## Ejemplo

```powershell
.\OCI-Backup-Manager-v1.0.ps1 -Hosts "APP01,APP02" -RecentBackupValidation -RecentBackupMaxAgeHours 24 -NoMenu
```

## Estados posibles

| Estado | Significado | Acción recomendada |
|---|---|---|
| `OK_TO_PATCH` | Backup AVAILABLE dentro de la ventana | Continuar si las demás validaciones están OK |
| `BLOCKED_NO_BACKUP` | Ningún backup encontrado | Crear backup antes del patch |
| `BLOCKED_NO_RECENT_BACKUP` | Existe backup, pero fuera de la ventana | Crear backup actualizado |
| `BLOCKED_BACKUP_NOT_AVAILABLE` | Ningún backup AVAILABLE | Esperar/corregir backup |
| `BLOCKED_BACKUP_TIME_INVALID` | Fecha de backup inválida | Validar respuesta OCI |
| `BLOCKED_INSTANCE_NOT_RUNNING` | Instancia no está RUNNING | Validar alcance/estado |
| `QUERY_ERROR` | Falló la consulta | Corregir autenticación/permisos/datos |

## Umbral recomendado

Para PatchOps, use una ventana de 24 horas salvo que la política del cliente defina otro umbral.
