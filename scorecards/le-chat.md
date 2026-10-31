# Le Chat

Vendor: Mistral AI
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Not determined; docs name no plan for Gmail/Calendar. Free assumed but unverified. Custom MCP connectors admin-only (account owner is admin on Free/Pro/Student). (from docs; per-row notes give tier detail)
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
| C03 | Google Workspace integration | high | Yes | Native Featured connectors (Gmail, Google Calendar) via OAuth; Google Drive is a Knowledge connector. Personal vs Workspace not stated. | confirmed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-only | Native Knowledge connector; docs say admin must set up indexing, files indexed in EU. No write feature documented (read-only inferred from absence). | assumed: https://help.mistral.ai/en/collections/911943-connectors | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Native Gmail connector reads/searches/drafts; sending requires approval prompt (Continue/Always allow/Decline). Draft-only vs send: docs say sending email needs approval so send exists. | confirmed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | ? | Attachment handling not stated in fetched docs. Gmail how-to article 404'd on fetch. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | None | Google Contacts not in Featured connector list. | confirmed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Native Google Calendar connector; creating events listed as example, needs approval. Edit/delete and secondary calendars not stated. | confirmed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | ? | Not documented. Custom MCP could be added with unique names (so likely Partial via third-party Google MCP) but docs don't say one catalogue connector can be connected twice. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | ? | Only custom MCP connectors have a user-set name (unique, no spaces/special chars); native connectors not renameable per docs read. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | ? | No limit documented; native connectors appear single per workspace/user. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | ? | No profile selection documented; one connection per connector. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
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
