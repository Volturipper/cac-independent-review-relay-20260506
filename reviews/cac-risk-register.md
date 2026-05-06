# CAC risk register

| Risk | Severity | Mitigation |
|---|---:|---|
| Mistakenly clicking microphone/voice/download/share/menu | P0 | no geometry fallback; explicit safe submit only; dangerous button firewall |
| Multiple tabs dispatch same command | P0 | target-aware routing, send lease, command receipt replay guard |
| Same owner approval reused with new requestId | P0 | owner approval consumption ledger |
| Marker/hash/receipt treated as approval | P0 | all markers state not_owner_approval=true; real-run requires ownerApprovalArtifact |
| Existing user draft overwritten | P0 | BLOCKED_DRAFT hard stop |
| Helper/evidence logic blocks auto-trigger core | P1 | keep core separate; diagnostics should not gate except safety boundaries |
| Script becomes too large to maintain | P1 | modularize into core/API/contracts/archive SDK |
| LocalStorage pressure | P1 | memory watchdog, compact snapshots, bounded prompt previews |
| Background automation surprises user | P1 | Global/Scope controls, emergency stop, Only this chat, owner approval for real loop |
| Incomplete archive chain | P1 | archive completion probe and repair plan |
| Raw chat loss | P1 | this escrow snapshot |
