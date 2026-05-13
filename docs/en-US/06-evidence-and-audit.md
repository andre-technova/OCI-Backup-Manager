# Evidence and audit

## Default folder

```text
C:\PatchOps\evidenciasackup-manager\<DateTime>```

## Generated files

- Consolidated CSV.
- Detailed JSON.
- Human-readable TXT.
- JPG visual evidence.
- Execution transcript.
- Execution status file.

## Visual evidence

The script tries to maximize PowerShell on the primary monitor and capture the full screen. When the taskbar is visible, the screenshot captures the Windows clock/date.

## Good practices

- Attach CSV/TXT/JPG to the change ticket.
- Keep JSON for technical troubleshooting.
- Do not publish real evidence to public Git repositories.
- Verify that the screenshot shows date/time before closing the procedure.
