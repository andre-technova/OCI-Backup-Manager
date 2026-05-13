# Evidencias y auditoría

## Carpeta predeterminada

```text
C:\PatchOps\evidenciasackup-manager\<FechaHora>```

## Archivos generados

- CSV consolidado.
- JSON detallado.
- TXT legible.
- Evidencia visual JPG.
- Transcript de ejecución.
- Archivo de estado de ejecución.

## Evidencia visual

El script intenta maximizar PowerShell en el monitor principal y capturar la pantalla completa. Cuando la barra de tareas está visible, el screenshot captura el reloj/fecha de Windows.

## Buenas prácticas

- Adjuntar CSV/TXT/JPG al ticket de cambio.
- Conservar JSON para troubleshooting técnico.
- No publicar evidencias reales en repositorios Git públicos.
- Verificar que el screenshot muestre fecha/hora antes de cerrar el procedimiento.
