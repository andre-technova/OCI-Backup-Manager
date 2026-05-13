# Visión general

OCI Backup Manager v1.0 es un módulo de la línea Technova PatchOps para apoyar ventanas de mantenimiento, patching y rollback operacional en Oracle Cloud Infrastructure.

Su propósito es simple: antes de cualquier intervención crítica, el operador puede validar inventario, crear backup de Boot Volume, generar evidencias, consultar histórico y confirmar si existe un backup reciente en estado `AVAILABLE`.

## Objetivos

- Reducir riesgo antes del patch.
- Estandarizar la creación de backups de Boot Volume.
- Generar evidencia técnica auditable.
- Apoyar decisiones Go/No-Go.
- Evitar acciones amplias sin confirmación explícita.

## Modos principales

- Backup real por host.
- DryRun por host.
- Backup real por filtro.
- DryRun por filtro.
- Reporte de backups existentes.
- Eliminación controlada de backups por OCID/CSV.
- Validación de backup reciente antes del patch.

## Postura operacional

El script fue creado para ambientes de cliente. Por eso prioriza mensajes claros, validaciones explícitas, evidencias y bloqueos de seguridad antes de acciones reales o destructivas.
