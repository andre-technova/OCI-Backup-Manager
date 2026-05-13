# Menú y guardrails

## Opciones

```text
1) CREAR BACKUP REAL por host(s)
2) DRYRUN por host(s)
3) CREAR BACKUP REAL por filtro
4) DRYRUN por filtro
5) Reporte de backups por host
6) ELIMINAR backups OCI por OCID/CSV
7) VALIDAR backup reciente para patch
8) Salir
```

## Opción 1

Crea backup real de Boot Volume para hosts específicos. Pregunta el tipo de backup: `FULL` o `INCREMENTAL`. Requiere confirmación fuerte.

## Opción 2

Simula el backup para hosts específicos. No crea recursos OCI. Genera evidencia del alcance planificado.

## Opción 3

Crea backups reales por filtro. Es la opción más sensible para ejecución masiva. Debe ser precedida por la opción 4 usando los mismos filtros.

## Opción 4

Simula backup por filtro. Úsela para validar alcance antes de cualquier creación real.

## Opción 5

Consulta backups existentes y exporta un reporte. No crea ni altera recursos.

## Opción 6

Elimina backups OCI por OCID o CSV. Debe usarse primero con `DryRun`. No elimina por filtro de host para reducir riesgo operacional.

## Opción 7

Valida si existe un backup reciente `AVAILABLE` dentro de la ventana requerida. Devuelve estado Go/No-Go para patch.
