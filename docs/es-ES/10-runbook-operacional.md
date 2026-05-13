# Runbook operacional

## Flujo recomendado antes del patch

1. Actualizar el inventario con OCI Inventory Manager v1.0.
2. Validar el parser de OCI Backup Manager.
3. Ejecutar DryRun por host o filtro.
4. Crear backup `FULL` cuando el cambio exija un punto fuerte de rollback.
5. Generar reporte de backups.
6. Ejecutar validación de backup reciente con ventana de 24h o política del cliente.
7. Adjuntar CSV/TXT/JPG al ticket de cambio.
8. Continuar al patch solo con `OK_TO_PATCH`.

## Criterios de cierre del módulo

- DryRun OK.
- Backup real piloto OK.
- Reporte de estado OK.
- Validación reciente OK.
- Evidencia visual con fecha/hora OK.
- Eliminación validada en DryRun.
