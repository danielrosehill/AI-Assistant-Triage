# Grok

Vendor: xAI
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Docs say connectors available to all Grok users; Business/Enterprise need admin provisioning. Date 2026-10-31 (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | Human only | grok.com/connectors is the in-app catalog (HTTP 200 SPA; login need unverified); docs list built-ins and catalog. No JSON/registry endpoint found. | assumed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Partial | Custom MCP connector by URL. Consumer/individual: grok.com/connectors > New Connector > Custom, public-internet URL (tunnel needed for local), tools auto-discovered, 'any required authentication' (methods unnamed). Business/Enterprise: admin with Team Read-Write adds via cloud console Grok Business > Connectors > + Add Connector > Other > MCP URL. No vendor review. No org-private catalogue or draft/unlisted app concept; just a per-team MCP URL. Doc does not say who sees personal custom connectors. | confirmed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | ? | Neither docs.x.ai connectors page nor connector-management page mentions a directory submission process or partner programme. Built-in catalogue appears vendor-curated, but no statement found either way, so not scored Closed. | assumed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Free | Docs: 'Connectors are available to all Grok users'; Business/Enterprise admin must provision a connector in the cloud console first. Custom MCP also listed for all (public URL required). x.ai/pricing Free tier lists limited chat/agent requests. Gmail write/send enabled progressively by org admins. | confirmed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Free $0/mo (single account); Business $30/user/mo for admin-enabled write scopes | Gmail/Calendar/Drive RW exists but write scopes are admin-enabled; no multi-account and no Contacts on any tier. Prices from x.ai/pricing shown with $ and no explicit currency (a combined X + Grok plan page, fetched via exa proxy, egress unknown, so USD assumed). SuperGrok/Heavy ($30/$300) appear only in secondary sources; not on the page read. | confirmed: https://x.ai/pricing | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native built-in OAuth connectors (Gmail & Calendar; Google Drive), plus catalog and custom MCP (public URL). Personal vs Workspace not stated. | confirmed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-write | News post: 'Grok can read and write emails, documents, spreadsheets, and events'. Dedicated Drive docs page 404'd, scopes unverified. | confirmed: https://x.ai/news/grok-connectors | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Base gmail.readonly; gmail.modify adds drafts/labels, gmail.send adds send/reply/forward; write/send enabled progressively by org admins. | confirmed: https://docs.x.ai/grok/connectors/gmail-google-calendar.md | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | Read only | Docs: reads full messages incl. attachments. Sending with attachments not documented. | confirmed: https://docs.x.ai/grok/connectors/gmail-google-calendar.md | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | None | No Contacts connector or scope listed in Google connector docs. | confirmed: https://docs.x.ai/grok/connectors/gmail-google-calendar.md | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | calendar.readonly base; calendar.events adds create/update/delete; freebusy and calendarlist scopes for other calendars. | confirmed: https://docs.x.ai/grok/connectors/gmail-google-calendar.md | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | No | Daniel: Grok does not support multiple accounts per connector; by default a connector is limited to one account. Agent research: No, Docs silent on multiple accounts. Daniel's observation (2026-10-31): one per account; third-party blogs agree (second account means disconnect first). No docs contradict. Custom MCP could add another (Partial route). | observed by Daniel, 2026-10-31; agent source: https://docs.x.ai/grok/connectors | Daniel |
| C09 | Profile naming / aliases | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: ?, Docs silent; with one profile no aliasing documented. | assumed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 1 | Daniel's observation: one per connector per account; not documented. | assumed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: Auto only, Docs: Grok uses connector tools automatically when questions relate to the service; no picker documented. | confirmed: https://docs.x.ai/grok/connectors | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Coarse | Admin adds connector once in cloud console (Grok Business > Connectors); members then connect their own accounts at grok.com/connectors (per-user auth, inferred). 'Configure' offers access controls/allowed sites, undescribed. Page says nothing on per-group scoping, SSO/SCIM, shared credentials. Applies to Business and Enterprise. Scored Coarse on absence of documented group scoping; could be revised. | confirmed: https://docs.x.ai/grok/connector-management | Agent (Claude Sonnet 5.5) |
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
| Free | 0 | $ (USD assumed) | month | Limited chat and agent requests | All connectors incl. custom MCP per docs |
| Plus | 8 | $ | month | Shared AI usage pool, Grok API access, Cursor | Same |
| Premium | 30 | $ | month | 4x Plus usage; cloud agents and automations | Same |
| Super | 100 | $ | month | 15x Plus; priority at peak | Same |
| Ultra | 200 | $ | month | 50x Plus; allowance refreshes weekly; top-ups available | Same |
| Business | 30 | $ per user | month | Increased rate limits, SSO, RBAC; seat minimum not stated | Admin must provision connectors; Gmail write/send enabled by admin |
| Enterprise | custom | n/a | n/a | SCIM, CMEK, dedicated data plane | As Business |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://grok.com/connectors
- Directory (programmatic): None (auth: No official JSON found; docs https://docs.x.ai/grok/connectors)

### Verdict

_TBD_
