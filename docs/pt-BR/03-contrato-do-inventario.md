# Contrato do inventário CSV

O script usa por padrão:

```text
C:\PatchOps\inventario\oci_hosts.csv
```

Esse arquivo deve ser gerado pelo OCI Inventory Manager v1.0 ou seguir contrato compatível.

## Colunas recomendadas

| Coluna | Uso |
|---|---|
| Hostname | Nome principal do host |
| FQDN | Nome DNS completo, se existir |
| HostnameLabel | Label da VNIC/hostname OCI, se existir |
| State | Estado da instância, como RUNNING ou STOPPED |
| Region | Região OCI |
| CompartmentName | Nome do compartment |
| CompartmentOCID | OCID do compartment |
| InstanceOCID | OCID da instância |
| BootVolumeOCID | OCID do Boot Volume |
| PrivateIP | IP privado |
| PatchGroup | Grupo de patch |
| Application | Aplicação/serviço associado |

## Regras de segurança

- Não publicar inventário real.
- Não subir OCIDs reais em repositório público.
- Não subir IPs internos reais.
- Usar `examples/oci_hosts.sample.csv` como modelo sanitizado.
