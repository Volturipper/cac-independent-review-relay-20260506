# CAC v216 Independent Install Gate Review

You are the independent reviewer for ChatGPT Auto Continue (CAC) v216.

Do not rely on this chat's prior context. Review the attached fallback package directly. The prior GitHub review URL returned 404 for the reviewer, so this package includes the v216 source file locally.

Decision question:

Can Codex perform an isolated Tampermonkey install in the dedicated Chrome Dev profile and then run read-only runtime API smoke only?

Strict boundaries:

- Do not approve `continue_now`.
- Do not approve CAC prompt submission.
- Do not approve CAC artifact auto-download.
- Do not approve unattended operation.
- Do not approve production install.
- Do not treat syntax pass as sufficient for install approval.

Required files in your returned zip:

- `decisions/cac-independent-install-gate.json`
- `reviews/cac-independent-install-review.md`
- `reviews/cac-install-smoke-plan.md`
- `logs/cac-review-monitor.txt`

Required final chat block:

```text
[CAC_INDEPENDENT_REVIEW]
project=chatgpt-auto-continue
version=v216
reviewer_role=independent_reviewer
source_access=attached_fallback_package
source_sha256=3110048a354d4500c277d1cdccd7dc0af3956978f84ecff9ff51930c7fdf5206
reviewed_at=<ISO timestamp>
decision=<accept_isolated_install_read_only_smoke|needs_changes_before_install|reject_install>
artifact_name=cac-independent-review-v216-install-gate-20260506.zip
artifact_sha256=<sha256 of your returned zip>
scope=isolated_tampermonkey_install_read_only_runtime_api_smoke_only
isolated_tampermonkey_install=<approved|not_approved>
read_only_runtime_api_smoke=<approved|not_approved>
continue_now=forbidden
prompt_submit_by_cac=forbidden
artifact_auto_download=forbidden
unattended_operation=forbidden
production_install=forbidden
reason=<one line>
next=<one line>
[/CAC_INDEPENDENT_REVIEW]
```

If any source or API contract cannot be reviewed, return `needs_changes_before_install` or `reject_install`.
