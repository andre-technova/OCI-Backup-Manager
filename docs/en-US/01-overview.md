# Overview

OCI Backup Manager v1.0 is a Technova PatchOps module that supports maintenance windows, patching, and operational rollback in Oracle Cloud Infrastructure.

Its purpose is straightforward: before any critical intervention, the operator can validate the inventory, create a Boot Volume backup, generate evidence, query backup history, and confirm whether a recent `AVAILABLE` backup exists.

## Goals

- Reduce risk before patching.
- Standardize Boot Volume backup creation.
- Produce auditable technical evidence.
- Support Go/No-Go decisions.
- Avoid broad actions without explicit confirmation.

## Main modes

- Real backup by host.
- DryRun by host.
- Real backup by filter.
- DryRun by filter.
- Existing backup report.
- Controlled backup deletion by OCID/CSV.
- Recent backup validation before patching.

## Operational posture

The script was built for customer environments. It prioritizes clear messages, explicit validations, evidence, and safety blocks before real or destructive actions.
