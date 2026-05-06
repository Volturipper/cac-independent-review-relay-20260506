# CAC v216 Independent Review Fallback Package

Purpose: unblock independent review after a GitHub request URL returned 404 to the Web AI reviewer.

Review source:

- `source/chatgpt_auto_continue_v216_archive_repair_plan.txt`
- Expected source SHA256: `3110048a354d4500c277d1cdccd7dc0af3956978f84ecff9ff51930c7fdf5206`
- Static validator: `source/validate_v216_static.sh`

Read order:

1. `CODEX_START_HERE.md`
2. `REVIEW_REQUEST.md`
3. `decisions/cac-codex-read-this-first.md`
4. `decisions/cac-review-decision.json`
5. `manifests/cac-v216-surface.json`
6. `reviews/cac-api-contract.md`
7. `reviews/cac-risk-register.md`
8. `source/chatgpt_auto_continue_v216_archive_repair_plan.txt`

Scope:

- isolated Tampermonkey install in the dedicated Chrome Dev profile only;
- read-only runtime API smoke only;
- no `continue_now`;
- no prompt submit by CAC;
- no artifact auto-download;
- no unattended operation;
- no production install.

Required reviewer output:

- downloadable zip named `cac-independent-review-v216-install-gate-20260506.zip`;
- final chat block named `[CAC_INDEPENDENT_REVIEW]`;
- ASCII English file names only.

This package is evidence for review only. It is not install approval.
