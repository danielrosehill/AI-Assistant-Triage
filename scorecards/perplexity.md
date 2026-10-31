# Perplexity

Vendor: Perplexity AI
Classification: K01 Third-party / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Pro (Drive connector Pro/Max/Enterprise per docs; Gmail+Calendar article names no plan; Comet needed for write actions) (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | In-app only | No public directory or JSON found. Help Center collection of 26 per-connector articles (not a catalogue); Connectors tab inside Computer is the in-product list. Agent API docs: no list endpoint, connector IDs copied from console Project connectors page; API key Bearer auth for use. | confirmed: https://www.perplexity.ai/help-center/en/collections/18799295-connectors-integrations | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Yes | Custom remote connectors (Streamable HTTP MCP URL). Individual scope = private to creator; Organization scope = shared with all members (admins only; starts off). Auth: none, API key, OAuth 2.0 (manual client id/secret if no DCR); Cloudflare Access service token supported. Enterprise members need admin toggle 'Allow members to add custom connectors' (off by default). Plans: help article lists none; third parties say Pro/Max/Enterprise (assumed). No vendor review. | confirmed: https://www.perplexity.ai/help-center/en/articles/13915507-adding-custom-remote-connectors | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | ? | Article links to 'Submit a Connector Proposal' but that page was not found/read; no submission URL or requirements confirmed. Likely proposal-based (possibly Partner only). | assumed: https://www.perplexity.ai/help-center/en/articles/13915507-adding-custom-remote-connectors | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Tiered | Custom MCP connectors: Pro, Max, Enterprise (changelog quote). File app connectors: Pro (Free not stated). Pricing table lists '400+ app connectors' but cell-to-tier mapping unreadable; Snowflake article says Pro/Max/Ent Pro/Ent Max; Linear/GitHub are enterprise-slugged; org admins can disable connectors. Free-tier connector access not confirmed. Cheapest connector tier: Pro $17/mo billed annually ($ shown, currency not named). | assumed: https://www.perplexity.ai/changelog/what-we-shipped---march-13-2026 | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Pro $17/mo billed annually (page shows '$', unnamed currency; third-party says $20 monthly) | Cheapest tier assumed sufficient for Gmail (read; send needs Comet) + Calendar (create/update needs Comet) + Drive read-only + custom MCP; no multi-account anyway (C08 No). Max $167/mo annual adds higher limits/10,000 monthly credits. Comet is free to download (third-party). Enterprise price not listed on page (demo-gated); third-party: Ent Pro ~$40/seat/mo, Ent Max ~$325/seat/mo, unverified. Local MCP: Mac app only, tier not stated. | confirmed: https://www.perplexity.ai/hub/pricing | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native connectors: Gmail with Calendar, Google Drive; Gmail covers Gmail and Google Workspace Mail. | confirmed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-only | Native. Searches/syncs Docs, Sheets, Slides, Office, PDF, CSV, MD, JSON, TXT; states it does not modify Drive file content. Pro and up. Workspace not distinct; admin OAuth may block. | confirmed: https://www.perplexity.ai/help-center/en/articles/12870620-connecting-perplexity-with-google-drive | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Native. Read; send requires Comet. Permission is read/compose/send; drafting not described. | confirmed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | ? | Attachments not mentioned. | assumed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | ? | Connector requests contacts/directory permission but no contacts feature documented; no standalone Contacts connector in the 26-article collection. | assumed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Native, combined with Gmail. Create/update events requires Comet; primary calendar only, secondary calendars not possible. | confirmed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | No | Docs silent; connector is tied to your account and applies everywhere. Third-party (Carly) claims single account; Daniel's experience also single. Not stated by vendor. | assumed: https://www.perplexity.ai/help-center/en/articles/11185411-faq-file-app-connectors-for-pro-subscribers | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | No | No aliasing documented. | assumed: https://www.perplexity.ai/help-center/en/articles/12168040-connecting-perplexity-with-gmail-and-google-calendar | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 1 | One Google account per connector (inferred; undocumented). | assumed: https://www.perplexity.ai/help-center/en/articles/12870620-connecting-perplexity-with-google-drive | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: ?, Single profile so not applicable; nothing documented. | assumed: https://www.perplexity.ai/help-center/en/articles/12870620-connecting-perplexity-with-google-drive | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Granular | Admin: Organization settings > Connectors (some builds: Enterprise settings > Permissions > Connector permissions). Per-connector Enabled toggle + role list (All Members, Admin, custom roles); 'Manage connector defaults' permission; 'New connectors' default can be Disabled. SCIM/IdP groups flow into roles. OAuth: admin can authenticate once org-wide or require per-member auth. Custom/remote org connectors pushable to all members. Audit logs for enable/disable/role changes. Roles grant only; no deny. RBAC on sales-assisted Enterprise; plugins rolling out first to Self-Serve Enterprise. | confirmed: https://www.perplexity.ai/help-center/en/articles/2026100201-role-based-access-control-for-connectors | Agent (Claude Sonnet 5.5) |
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
| Free | 0 | $ (unnamed) | month | limited daily usage, basic models | not stated |
| Pro | 17 | $ (unnamed) | month, billed annually | higher limits, 4,000 bonus credits; file sync not available on Pro; connectors work in sessions not Projects; files over 40MB excluded | 400+ app connectors, file connectors, custom MCP; Gmail/Calendar write via Comet |
| Max | 167 | $ (unnamed) | month, billed annually | 10,000 monthly credits, 35,000 bonus, highest limits | same as Pro, plus custom MCP |
| Enterprise Pro | not listed (third-party ~40/seat) | ? | month/seat | sales-led; seat minimum unknown | admin-controlled, RBAC for connectors, enterprise connectors (GitHub, Linear) |
| Enterprise Max | not listed (third-party ~325/seat) | ? | month/seat | sales-led | as Ent Pro, Comet Max Assistant (third-party) |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): None
- Directory (programmatic): None (auth: n/a (none found); help center: https://www.perplexity.ai/help-center/en/collections/18799295-connectors-integrations)

### Verdict

_TBD_
