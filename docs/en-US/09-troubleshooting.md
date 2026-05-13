# Troubleshooting

## ParserError with a variable followed by colon

Symptom:

```text
Variable reference is not valid. ':' was not followed by a valid variable name character.
```

Code fix: use `${variable}:` inside strings.

## Expired OCI session

Symptom:

```text
OCI session expired or invalid.
```

Action:

```powershell
oci session authenticate
```

## Host not found

Check the inventory:

```powershell
Import-Csv "C:\PatchOps\inventario\oci_hosts.csv" |
Where-Object { $_.Hostname -like "*APP*" } |
Format-Table Hostname,State,Region,CompartmentName,PrivateIP -AutoSize
```

## Screenshot without clock

Make sure the Windows taskbar is visible and PowerShell is on the primary monitor.

## Blocked by STOPPED instance

The default flow protects patching by requiring `RUNNING`. Use exceptions only with operational approval.
