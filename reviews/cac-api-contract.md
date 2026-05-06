# CAC API contract summary

Primary external API namespace:

```js
window.__cgptAutoContinueAPI
```

Important API groups:

- Control: status, aiSummary, emergencyStop, resume, setGlobal, onlyThisChat, allowAllChats, pauseThisChat, continueNow.
- State: supervisorState, machineState, routePlan, compactContract, automationGate.
- Command: canRun, dryRun, nextCommandEnvelope, commandReplayStatus, commandReceipts.
- Evidence: evidencePacket, commandEvidencePair, realLoopArchivalEnvelope, archiveIndexCompletionProbe, archiveRepairPlan.
- Approval: ownerApprovalArtifactTemplate, validateOwnerApprovalArtifact, ownerApprovalConsumptionStatus, ownerApprovalExecutionChecklist.
- Relay: executionChecklistMarker, relayAckMarker, finalArchiveIndexAckMarker, archiveRepairPlanMarker.
- Templates: n8n contracts, ASK_ROUTER contracts, WebAI Transfer packets, Nexusync packets, Codex cards.

Rules:

- Read-only APIs must be text-free by default.
- send-risk commands require targetTabId or targetConversationId unless explicitly browser-wide safe.
- Real-run requires ownerApprovalArtifact and single-use consumption guard.
- External authoritative hashes must be computed outside the page when used as Nexusync/archive proof.
