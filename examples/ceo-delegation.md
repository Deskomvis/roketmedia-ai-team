# CEO delegation payload example

```python
delegate_task(
  goal="Act as Product Hunter. Find 5 product ideas for Indonesian paid ads using sources",
  context="role=product-hunter; task_id=T-101; run_id=R-001; market=Indonesia; budget=read-only; output=JSON per contract"
)
```

The above is illustrative tool-call syntax from the Hermes docs, NOT an executable registration script. Default delegation creates fresh-context children, not persistent profile-backed agents. For role-to-profile routing, install/enable the official advanced-delegation plugin and configure `profile_routes` using `hermes delegation config`; confirm supported schema on your Hermes version. Never assume inherited tools imply per-role isolation.
