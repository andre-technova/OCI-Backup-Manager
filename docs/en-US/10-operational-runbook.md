# Operational runbook

## Recommended pre-patch flow

1. Update the inventory with OCI Inventory Manager v1.0.
2. Validate the OCI Backup Manager parser.
3. Run DryRun by host or filter.
4. Create a `FULL` backup when the change requires a strong rollback point.
5. Generate a backup report.
6. Run recent backup validation with a 24-hour window or customer policy.
7. Attach CSV/TXT/JPG to the change ticket.
8. Proceed to patch only with `OK_TO_PATCH`.

## Module closure criteria

- DryRun OK.
- Pilot real backup OK.
- Status report OK.
- Recent validation OK.
- Visual evidence with date/time OK.
- Deletion validated in DryRun.
