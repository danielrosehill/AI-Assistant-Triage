# Microsoft Copilot (consumer)

Vendor: Microsoft
Classification: K01 Third-party / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Free consumer Copilot assumed; support page only mentions M365 Personal/Family/Premium/Pro articles applicability, no plan gate stated. Web (copilot.com) and mobile. (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | None | No consumer connector directory or JSON found; connectors are a short fixed list on the support page. Copilot Studio / M365 admin MCP catalogues are business products, out of scope. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | No | Consumer connectors are a fixed list: OneDrive, Outlook.com, Google Drive, Gmail/Calendar/Contacts. Page mentions no custom/MCP connectors; third-party guides say consumer Copilot cannot add own MCP server. Private MCP exists only in Copilot Studio / M365 Copilot (work account), labelled M365. | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Closed | No third-party submission for consumer Copilot connectors (not mentioned on support page). M365 Copilot has separate agent/Copilot Studio publishing, out of scope. | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Free | Support page applies to personal accounts (M365 Personal, Family, Premium, Pro) and says sign-in to Copilot is needed; it does not restrict by tier or explicitly mention the free tier, so Free access is inferred. Connectors: OneDrive, Outlook.com, Google Drive, Gmail, Calendar, Contacts. Available on Copilot.com and mobile only. No custom MCP found for consumer. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Free $0 (assumed; M365 Personal 8.49/mo if tier needed) | Best Google access is read-only (Gmail, Drive, Calendar, Contacts) and multi-account undocumented, and no tier changes that, so the cheapest tier is Free. Paid tiers raise usage limits (AI credits 60/mo owner on Personal/Family per search snippet; Premium 'extensive', agents Tasks/Analyst/Researcher). AI only for subscription owner. Pricing page displayed currency as generic symbol, no currency named. | confirmed: https://www.microsoft.com/en/copilot/pricing/individuals | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native consumer connectors: Gmail, Google Drive, Google Calendar, Google Contacts; page says personal Google account, Workspace not mentioned. | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-only | Native; 'find' files. Insider post describes search only. Copilot can generate Office/PDF files separately but not documented as saved to Drive. | confirmed: https://blogs.windows.com/windows-insider/2025/10/09/copilot-on-windows-connectors-and-document-creation/ | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-only | Native; search/summarize. No send/draft documented ('act on' undefined). | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | ? | Attachments not covered. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | Read-only | Native Contacts connector (works per Windows Latest 2026-02-28 test; third-party). Official: 'checking contacts'. | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-only | Native; checking events. No create documented. | confirmed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | ? | Windows post says users can link Microsoft and third-party accounts to find content across accounts; no statement on two accounts of the same Google connector. Third-party sources say no. | assumed: https://blogs.windows.com/windows-insider/2025/10/09/copilot-on-windows-connectors-and-document-creation/ | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | No | No aliasing documented. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | ? | No limit documented; likely 1 per service. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | ? | Not documented. | assumed: https://support.microsoft.com/en-us/microsoft-copilot/connecting-microsoft-copilot-to-other-services | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | N/A | No team plan for consumer Copilot; page says personal accounts only (M365 Personal/Family/Premium/Pro). M365 Copilot (labelled, work): admin center > Copilot > Agents & connectors; block/deploy agents for org or specific users/groups; roadmap RM501585 says admins can create custom MCP connectors and deploy org-wide (Roles: AI Admin/Global Admin). Likely Granular but only seen via search snippets. | assumed: https://learn.microsoft.com/en-us/microsoft-365/copilot/extensibility/manage | Agent (Claude Sonnet 5.5) |
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
| Copilot Free | 0 | n/a | month | subject to capacity and limits | assumed yes (see C02) |
| Microsoft 365 Personal | 8.49 / 84.99 | unnamed (symbol shown) | month / year | 1 person; AI credits (60/mo per third-party/support snippet); voice 30 min/day | connectors page covers Personal |
| Microsoft 365 Family | 10.49 / 104.99 | unnamed (symbol shown) | month / year | 1-6 people, AI for owner only; credits as Personal | covered |
| Microsoft 365 Premium | 19.99 / 199.99 (UK page: GBP 18.99 / 189.99, third-party) | unnamed on pricing page | month / year | extensive use, agents Tasks/Analyst/Researcher, AI owner only; voice 60 min/day | covered |
| Microsoft 365 Pro | 99.99 | unnamed | month only | highest usage; 1-6 people, AI owner only | covered |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): None
- Directory (programmatic): None (auth: n/a)

### Verdict

_TBD_
