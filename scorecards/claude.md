# Claude

Vendor: Anthropic (official Claude apps: web, desktop, mobile)
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Free (Google connectors stated available to all users); Team/Enterprise need Owner enablement (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C23 | Custom MCP connections | high | ? | | | |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | ? | | | |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native Gmail, Calendar, Drive connectors (plus Docs/Sheets/Slides live-edit connectors); available to all users incl. free; Team/Enterprise Owner must enable first; docs do not distinguish personal vs Workspace (both assumed work) | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-write | Search/read Docs, Sheets, Slides, PDFs, Office files; upload any file, create folders, share, move, trash (approval by default); save generated files | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Search/read, draft, send, reply, forward, labels/threads; approval before send by default | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | None | Attachment metadata only, not content; no send-with-attachment documented | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | None | No Google Contacts connector in the Google Workspace connectors article; only via custom MCP | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Create/update/delete events, attendees, RSVP, recurring; views shared calendars | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | No | Docs say Claude accesses 'the Google account you've connected' (singular), silent on multiples. Open feature request (2026-10-08) says a second account replaces the first. Workaround: add a third-party multi-account MCP as custom connector (paid tiers; Free limited to 1 custom). Matches Daniel's experience | assumed: https://claudeissues.com/issue/100407-feature-google-connectors-allow-more-than-one-google-account-per-claude-account | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | No | Custom connectors have user-chosen names, but built-in Google connector has a single profile; no alias feature | assumed: https://support.claude.com/en/articles/11176164-use-connectors-to-extend-claude-s-capabilities | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 1 | One Google account per connector per user; second sign-in replaces first (issue report, not vendor docs) | assumed: https://claudeissues.com/issue/100407-feature-google-connectors-allow-more-than-one-google-account-per-claude-account | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: ?, Only per-chat connector on/off toggle (+ > Connectors); no profile selection since one account | confirmed: https://support.claude.com/en/articles/11176164-use-connectors-to-extend-claude-s-capabilities | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| | **E. Own infrastructure and local tools** | | | | | |
| C31 | Distributed deployments / satellites | top | ? | | | |
| C24 | Tunnels to own infrastructure / AI gateway | high | ? | | | |
| C30 | Locally hosted tool integration, e.g. Home Assistant | high | ? | | | |
| | **F. Data ownership** | | | | | |
| C26 | Output routing to own storage | normal | ? | | | |
| C27 | Backup / export API | normal | ? | | | |
| C28 | Bring your own memory | normal | ? | | | |
| | **G. Agents, projects and coding** | | | | | |
| C35 | Agent-to-agent (A2A) support | top | ? | | | |
| C29 | Background agents, scheduled tasks and reminders | normal | ? | | | |
| C22 | Project boundaries and where project data lives | normal | ? | | | |
| C21 | Parallel CLI coding product | normal | ? | | | |
| C37 | CLI working-directory binding | normal | ? | | | |
| C38 | Native GitHub integration | normal | ? | | | |
| | **H. Clients and platforms** | | | | | |
| C13 | Linux desktop app | normal | ? | | | |
| C14 | Linux CLI | normal | ? | | | |
| C15 | Android app | normal | ? | | | |
| C16 | Cross-device conversation history sync | normal | ? | | | |
| C17 | Native speech-to-text, desktop | normal | ? | | | |
| C18 | Native speech-to-text, Android | normal | ? | | | |

### Verdict

_TBD_
