#!/usr/bin/env bash
set -euo pipefail
SCRIPT="${1:-chatgpt_auto_continue_v216_archive_repair_plan.txt}"
if [[ ! -f "$SCRIPT" ]]; then
  if [[ -f "/mnt/data/$SCRIPT" ]]; then SCRIPT="/mnt/data/$SCRIPT"; else echo "missing script: $SCRIPT" >&2; exit 2; fi
fi
TMP_JS="$(mktemp --suffix=.js)"
cp "$SCRIPT" "$TMP_JS"
node --check "$TMP_JS" >/dev/null
rm -f "$TMP_JS"
needles=(
  "ChatGPT Auto Continue v216 archive-repair-plan"
  "const SCRIPT_VERSION_LABEL = 'v216'"
  "cgpt_auto_continue.control_api.v31"
  "ARCHIVE_REPAIR_PLAN_SCHEMA"
  "archiveRepairPlanEnabled"
  "buildArchiveRepairPlanContract"
  "buildArchiveMissingHashRecoveryHints"
  "buildArchiveRepairPlan"
  "validateArchiveRepairPlan"
  "buildArchiveRepairPlanMarker"
  "validateArchiveRepairPlanMarker"
  "buildArchiveRepairPlanFixturePack"
  "validateArchiveRepairPlanFixtures"
  "buildWebAiTransferArchiveRepairPacket"
  "buildNexusyncArchiveRepairPacket"
  "buildN8nArchiveRepairPlanContract"
  "buildCodexArchiveRepairPlanCard"
  "archiveRepairPlanValidation"
  "archive-repair-plan-validation-hold"
  "archive_repair_plan"
  "[CGPT_AUTO_CONTINUE_ARCHIVE_REPAIR_PLAN]"
  "not_owner_approval"
  "dispatch_executed"
  "authoritative_hash_external"
)
for n in "${needles[@]}"; do
  grep -Fq "$n" "$SCRIPT" || { echo "missing required token: $n" >&2; exit 1; }
done
for forbidden in "geometry fallback" "enable microphone" "requestSubmit() without"; do
  true
done
echo "validate_v216_static: pass"
