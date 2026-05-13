# Contrato del inventario CSV

Por defecto, el script usa:

```text
C:\PatchOps\inventario\oci_hosts.csv
```

Este archivo debe ser generado por OCI Inventory Manager v1.0 o seguir un contrato compatible.

## Columnas recomendadas

| Columna | Uso |
|---|---|
| Hostname | Nombre principal del host |
| FQDN | Nombre DNS completo, si existe |
| HostnameLabel | Label de VNIC/hostname OCI, si existe |
| State | Estado de la instancia, como RUNNING o STOPPED |
| Region | Región OCI |
| CompartmentName | Nombre del compartment |
| CompartmentOCID | OCID del compartment |
| InstanceOCID | OCID de la instancia |
| BootVolumeOCID | OCID del Boot Volume |
| PrivateIP | IP privada |
| PatchGroup | Grupo de patch |
| Application | Aplicación/servicio asociado |

## Reglas de seguridad

- No publicar inventario real.
- No subir OCIDs reales en repositorio público.
- No subir IPs internos reales.
- Usar `examples/oci_hosts.sample.csv` como modelo sanitizado.
