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
| C40 | Official connector directory: URLs | normal | Human only | In-app directory (Connectors page, '+ Add Connector') at chat.mistral.ai/connectors requires login; docs describe it. api.mistral.ai/v1/connectors exists (returns JSON content type) but belongs to the developer Connectors API for workspace connectors; whether it lists the directory is unverified and it needs an API key. Mistral docs llms.txt is a docs index, not a connector list. Community mirror: github.com/rdmgator12/awesome-mistral-connectors (not counted). | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Partial | Mechanism: custom MCP connector by server URL (Connectors page; one guide says Mistral Studio console.mistral.ai). Admin-only; on Free/Pro/Student the owner is the sole admin. Auth auto-detected: none, Bearer/Basic, OAuth 2.1 with DCR. No vendor review for custom. Org-level visibility/scoping not documented on the page. | confirmed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Partner only | No public submission URL found. Directory is 'curated'; third-party sources (Tallyfy, unverified) say listing is a business-development conversation, no form. Self-serve alternative is custom connector (no listing). | assumed: https://tallyfy.com/how-to-list-mcp-server-mistral-le-chat/ | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Free | Docs state no tier gating for connectors or custom MCP; on Free/Pro/Student the account owner is the admin by default, so they can add directory and custom MCP connectors. Pricing page lists connectors (beta) and custom MCP (beta) without tier split, but lists Knowledge connectors (e.g. Drive indexing) under Team/Enterprise. Not tested on a Free account, so Free is read from docs absence of gating. | assumed: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Free 0 (Gmail R/W, Calendar R/W via featured connectors; Drive needs Team+ Knowledge connector; no Contacts; no multi-account); Pro 14.99 USD/mo if higher limits wanted | Pricing page fetch showed USD (fetch egress, not Israel); EUR toggle exists. Team 24.99/user/mo, 2-seat min inferred. Limits given as multipliers of Free or daily caps (Flash answers 150/day Pro, 200/day Team); no exact message or agent caps. | confirmed: https://mistral.ai/pricing | Agent (Claude Sonnet 5.5) |
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
| C43 | Team federation of plugin access | normal | Coarse | Admin-only add (directory or custom) in Le Chat/console admin. Docs read show no per-group/role scoping or allow/block lists, no SSO/SCIM/audit mention. Sept 2025 Mistral announcement claims admins control which connectors are available to whom, with on-behalf auth (not verified on docs page). Tier: Team/Enterprise (exact tier not confirmed). | assumed: https://mistral.ai/fr/news/le-chat-mcp-connectors-memories/ | Agent (Claude Sonnet 5.5) |
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

### Pricing and directory detail (C39, C40), read 2026-10-31

| Tier | Price | Currency | Period | Limits | Connectors |
|---|---|---|---|---|---|
| Free | 0 | USD shown (EUR toggle) | month | Limited messages, searches, coding sessions, libraries | Owner is admin; can add connectors per docs (assumed) |
| Pro | 14.99 | USD excl tax | month | Up to 6x messages, 5x searches vs Free; 150 Flash answers/day; 5 scheduled tasks (inferred); 15 USD API credits | Connectors and custom MCP (beta) |
| Education | 5.99 | USD | month, max 12 months | Verified students | as Pro |
| Team | 24.99 | USD excl tax | user/month | 2-seat min inferred; 200 Flash/day; 30GB/user; unlimited scheduled tasks | Knowledge connectors (Drive); admin can disable connectors org-wide |
| Enterprise | custom |  |  | SAML SSO, audit logs, on-prem | all, custom |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://chat.mistral.ai/connectors (login required; docs: https://docs.mistral.ai/le-chat/knowledge-integrations/connectors/mcp-connectors)
- Directory (programmatic): https://api.mistral.ai/v1/connectors (unverified as directory; likely API key) (auth: API key presumed; HTTP status see summary)

### Verdict

_TBD_
