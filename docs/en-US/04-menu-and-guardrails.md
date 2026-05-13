# Menu and guardrails

## Options

```text
1) CREATE REAL BACKUP by host(s)
2) DRYRUN by host(s)
3) CREATE REAL BACKUP by filter
4) DRYRUN by filter
5) Backup report by host
6) DELETE OCI backups by OCID/CSV
7) VALIDATE recent backup for patch
8) Exit
```

## Option 1

Creates a real Boot Volume backup for specific hosts. It asks for backup type: `FULL` or `INCREMENTAL`. Strong confirmation is required.

## Option 2

Simulates backup for specific hosts. It does not create OCI resources. It produces evidence for the planned scope.

## Option 3

Creates real backups by filter. This is the most sensitive mass-execution option. It should be preceded by option 4 using the same filters.

## Option 4

Simulates backup by filter. Use it to validate scope before any real creation.

## Option 5

Queries existing backups and exports a report. It does not create or change resources.

## Option 6

Deletes OCI backups by OCID or CSV. It should first be used with `DryRun`. It does not delete by host filter to reduce operational risk.

## Option 7

Validates whether a recent `AVAILABLE` backup exists within the required window. It returns Go/No-Go status for patching.
