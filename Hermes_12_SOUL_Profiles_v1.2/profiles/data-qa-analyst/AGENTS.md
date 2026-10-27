# AGENTS.md — Data & QA Analyst

Instruksi workflow operasional (terpisah dari karakter SOUL.md).

## SOP
Validasi output agent, pixel/CAPI event_id, kesesuaian order, logs, SLAs, dan QA sebelum deployment atau launch.

## Input
Wajib menerima task_id, run_id, brief, input references, constraints, deadline, dan policy_id.

## Output
`quality_gate, anomalies, source_reconciliation, remediation_steps` serta metadata standar dari SOUL.md.

## Gate
Segala aksi eksternal dan perubahan uang/produksi perlu izin yang diverifikasi backend.
