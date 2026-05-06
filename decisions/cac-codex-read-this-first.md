# CAC asset escrow — read this first

Status: asset-preservation snapshot, not a new v217 patch and not a production release.

Purpose: preserve the ChatGPT Auto Continue (CAC) project assets so GitHub/local Codex can take over if the current account or chat is lost.

Current baseline: v216 archive repair plan candidate. v216 is a static-checked candidate package. It has not been fully real-browser end-to-end tested here.

Rules for takeover:

✅ Treat source/ as the current candidate source.
✅ Treat versions/ as historical recovery assets.
✅ Use manifests/ and indexes/ first; do not ask Codex to read every version by default.
✅ Keep Auto Continue core separate from external supervisor contracts.
✅ Preserve emergency stop, target-aware command routing, draft protection, no-mic/no-download/no-menu safe-click boundary.
✅ External evidence hashes must be computed by the external supervisor/Nexusync adapter when used authoritatively.

Do not do:

❌ Do not auto-install or globally enable this without owner action-time approval.
❌ Do not treat relay markers, receipts, hashes, archive packets, or smoke results as owner approval.
❌ Do not include secrets, cookies, tokens, .env files, browser profiles, or private local configs in future escrows.
❌ Do not put .git/, .github/workflows/, .ai-patches/, absolute paths, or ../ entries in this repository snapshot.

Recommended next step after importing to GitHub: create a repository README from this file, then run a local static validation pass on source/chatgpt_auto_continue_v216_archive_repair_plan.txt and source/validate_v216_static.sh before any browser test.
