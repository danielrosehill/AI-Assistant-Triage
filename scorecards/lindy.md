# Lindy

Vendor: Lindy (Lindy AI, Inc.)
Classification: K01 Third-party / K02 Subscription / K03 SaaS
Status: scorecard started 2026-10-31 (promoted from watchlist as the strongest multi-account lead).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups A, B and C only)

- Date: 2026-10-31
- Tier evaluated: none hands-on; public pricing page and docs read without login (Plus price A/B tested)
- Evaluator: agent-researched from vendor docs (`By` column); no Daniel observations yet. Groups D-H not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | Integration-first | Positioned as 'connects to all your tools'; 1,500+ integrations + MCP, guardrails, per-inbox settings, browser/own-API fallback for tools with no integration. | confirmed: https://www.lindy.ai/pricing | Agent (Claude Sonnet 5.5) |
| C01 | Connector catalogue size | normal | Large (1,500+) | Integrations page says 'Showing 100 out of 1,500+'; sitemap lists ~1,410 /integrations/ URLs (2026-10-31). Builder not stated; mostly third-party apps wrapped by Lindy actions. Custom MCP also allowed. | confirmed: https://www.lindy.ai/integrations | Agent (Claude Sonnet 5.5) |
| C40 | Official connector directory: URLs | normal | Human only | Browsable directory at /integrations (one page per tool) and ~1,410 URLs in sitemap.xml; no public JSON/API/registry list found (api.lindy.ai/integrations 404). docs.lindy.ai/llms.txt indexes docs only, not connectors. | confirmed: https://www.lindy.ai/integrations | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | Yes | Remote only: public HTTPS streamable-HTTP URL; no stdio/SSE mentioned. Auth: none, server's own OAuth, or static bearer/custom header/query param. Availability Only you / Workspace; guardrail Always allow or Ask approval; display name to tell servers on one host apart; all tools enabled by default (trim >100). | confirmed: https://docs.lindy.ai/integrations/mcp.md | Agent (Claude Sonnet 5.5) |
| C41 | Native private connectors | normal | Yes | Integrations > + Add > MCP; public HTTPS streamable-HTTP URL, display name. Auth: none, own OAuth, or bearer/custom header/query param (Advanced). Availability per connection: 'Only you' (default) or 'Your workspace' (incl. Lindy Teammate). Per-tool toggles. Page does not state plan requirement or vendor review. | confirmed: https://docs.lindy.ai/integrations/mcp | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Closed | No third-party app/integration submission documented; integrations built by Lindy (via Pipedream Connect). Partners page is service/content/affiliate program only. Contact support@lindy.ai. | assumed: https://lindy.ai/partners | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | All paid | Free tier is only a 7-day $50 credit trial (no card); integrations and MCP listed as general features, not tier-gated. Custom MCP not shown as gated differently. Which tier first allows what is not stated. | confirmed: https://www.lindy.ai/pricing | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Plus ~$29.99/user/mo or $49.99 (A/B tested price); Team page shows $49.99/mo for 5,000 credits | Currency '$' with no code, no region shown (assumed USD). Public page and docs disagree on plan names; Plus price is under an A/B test ('plus-49-packaging'). Inbox cap 2-5 by plan. | assumed: https://www.lindy.ai/pricing | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native Lindy actions for Gmail, Calendar, Drive, Docs, Sheets (OAuth). Personal vs Workspace account type not stated. | confirmed: https://www.lindy.ai/integrations | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-write | Upload files (from URL), create file from text/template, create folder, read/download file, update metadata/comments, shared drives. Native Lindy action. | confirmed: https://www.lindy.ai/integrations/google-drive | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Send Email, Create/Edit Draft, Forward, add/remove/delete labels. Note the inbox-drafting feature itself only creates drafts. | confirmed: https://www.lindy.ai/integrations/gmail | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | Both | Download Attachment from messages; Create Draft takes optional attachments; Forward keeps attachments. Attachments on plain Send Email not explicitly listed. | confirmed: https://www.lindy.ai/integrations/gmail | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | ? | No Google Contacts integration found; /integrations/google-contacts is 404 and it is absent from the sitemap and the first 100k chars of the directory. Remainder of directory not read. | assumed: https://www.lindy.ai/integrations/google-contacts | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | 27 actions: create, quick-add, update, delete events; list/view calendars (so non-primary calendars visible). | confirmed: https://www.lindy.ai/integrations/google-calendar | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | Yes | 'For tools that support more than one login, such as Gmail, you can add more accounts under the same integration.' Email feature: unlimited inboxes across Gmail and Outlook. Calendar/Drive multi-account not documented. | confirmed: https://docs.lindy.ai/integrations/overview.md | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | Yes | Connections can be renamed; inboxes show as chips with the email address. Whether the alias is visible to the model is not documented. | confirmed: https://docs.lindy.ai/integrations/overview.md | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 2-5 inboxes by plan (pricing page); docs say 'as many inboxes as you like' | Docs and pricing page conflict; per-plan mapping not published (earlier lead Plus 2, Pro 3, Max 5 not verified). Other connectors: no limit documented. | confirmed: https://www.lindy.ai/pricing | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | Explicit | In inbox-management features you select the account chip first, since settings are per-inbox. For general tasks/other connectors the selection mechanism is undocumented. Guardrails are per integration, covering all its accounts, not per account. | confirmed: https://docs.lindy.ai/features/inbox-management/email-drafting.md | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Coarse | Connection owner sets Availability to workspace; workspace owner/admin can revoke sharing but not grant or reconnect others' credentials; other members use only. Guardrails (Always allow/Ask) are per person. Credential stays the owner's (shared, not per-user). No groups, SSO/SCIM, allowlist or audit documented. Tier not stated. | confirmed: https://docs.lindy.ai/integrations/mcp | Agent (Claude Sonnet 5.5) |
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
| Free (trial) | $0 | $ (no code shown; region not shown) | 7 days | $50 free credits, no card | Not stated as restricted |
| Team (public pricing page) | $49.99 per active user, from 5,000 credits; ladder to $1,999.90 for 350,000 and $9,999.50 for 1,750,000 | $ (no code; assumed USD) | monthly | Pooled credits; top-ups $10 per 1,000; Everyday Asks 2-250 credits, Deep Work 250-1,000, Big Builds 1,000-2,500; connect 2-5 inboxes by plan | 1,500+ integrations and MCP in all; per-task model choice, computer use, live onboarding |
| Plus / Pro / Max (docs naming; third-party Sep 2026 sources) | Plus $29.99 (older $49.99, A/B), Pro $99.99, Max $199.99 per user | $ (assumed USD, third-party) | monthly | 3,000 / 15,000 / 35,000 credits per seat, pooled; base credits $0.01 each (docs) | Docs: live onboarding Pro and up; computer use Pro and Max; inbox caps vary by plan |
| Enterprise | Custom | n/a | custom | Custom credits | SSO, SCIM, audit logs, HIPAA/BAA, dedicated support |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://www.lindy.ai/integrations
- Directory (programmatic): None (auth: No public JSON found; sitemap https://www.lindy.ai/sitemap.xml lists integration URLs without auth (not a connector list))

### Verdict

_TBD_
