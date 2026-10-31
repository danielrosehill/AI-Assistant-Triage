# ChatGPT

Vendor: OpenAI
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Plus (cheapest tier named for multi-account and email send); Business/Enterprise differ in admin defaults. Free not listed for multi-account (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | Human only | Plugin directory chatgpt.com/apps (app directory migrated to Plugin directory 2026-07-09). No public JSON/registry found. Enterprise has a 'Connector registry' feature (admin, in-product). | confirmed: https://chatgpt.com/apps | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Partial | Mechanism: Plugins > plus > Add custom MCP server (public HTTPS URL or Secure MCP Tunnel tunnel_id; legacy path Workspace settings > Apps > Create, Scan Tools, Drafts). Developer Mode no longer required in the current Plugins UI; risk acknowledgement per server. Creator: Business = admins/owners only; Enterprise/Edu = admins/owners plus members granted 'Create plugins with MCPs' via RBAC. Only admins/owners publish to the workspace (Admin Console > Plugins > Manage Legacy Apps > Drafts > Publish). Visible to workspace only; shown as 'custom'. Auth: OAuth (needs refresh tokens/offline_access), others per config. No OpenAI review for workspace-private. Not available on Free/Plus/Pro per this page (Business, Enterprise/Edu only), hence Partial. | confirmed: https://help.openai.com/en/articles/12584461-developer-mode-apps-and-full-mcp-connectors-in-chatgpt | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Open submission | Apps are now submitted as plugins via the plugin submission portal in the OpenAI Platform Dashboard. Requirements: identity verification (individual or business) for the publish name, enforced at review; api.apps.write permission (org owners have it); public MCP server on its own domain with CSP defined; Scan Tools; app name, logo, description, company and privacy policy URLs, test prompts/responses, localization; OAuth creds if used. Individuals can publish (individual verification). One version published/in review at a time; EU data-residency projects cannot submit yet. Templated (per-tenant) URLs only for trusted developers. Review queue with email status; review time, fees and revenue share not stated on page read. Separate 'Submit plugins' page not fetched (404 via Exa). | confirmed: https://developers.openai.com/apps-sdk/deploy/submission | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Tiered | Help: app availability depends on plan, region, workspace, role, model, interface. Multiple Google accounts: Plus, Pro, Business, Enterprise only (2026-08-28 release note). Full MCP/developer mode (custom MCP apps incl. write): Business, Enterprise/Edu only, web, admin-gated (Business: only admins/owners). Free and Go plan-level plugin access not stated in pages read (pricing-page feature matrix lost its tick marks in fetch). Cheapest tier with Google connectors confirmed: Plus $20/mo; Go $8/mo (price from secondary sources only). | confirmed: https://help.openai.com/en/articles/11487775-connectors-in-chatgpt | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Plus $20/mo | Cheapest tier with multi-account Gmail/Calendar/Contacts + Drive read-write + Gmail send. Contacts read-only. Pro $100 (5x Plus) / $200 (20x Plus) add usage only. USD; OpenAI says prices vary by country/currency; no annual for Go/Plus/Pro. Business Standard $25/user/mo ($20 annual), min 2 seats, adds custom MCP. chatgpt.com/pricing fetch stripped prices; prices taken from help articles. | confirmed: https://help.openai.com/en/articles/6950777-what-is-chatgpt-plus | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native OpenAI-built Gmail/Calendar/Contacts/Drive plugins (apps); Workspace admin may need to approve OAuth scopes; personal and Workspace Google accounts both connectable (personal+work per Aug 28 2026 note) | confirmed: https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-write | Drive app: search/read Docs/Sheets/Slides; create, update, move, share, upload, copy, delete Drive files if workspace enables action (Enterprise/Edu off by default, Business on); needs full drive scope | confirmed: https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Scope gmail.modify; draft and send from chat (web only, Plus/Pro/Business/Enterprise, user clicks send). Release note 'Send an email directly from within a chat' is undated in the fetched snippet | confirmed: https://help.openai.com/en/articles/6825453-chatgpt-release-notes-whats-new | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | ? | No help page fetched states attachment read/send support for the Gmail app; not documented in pages read | assumed: https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | Read-only | Contacts scopes listed are contacts.readonly and contacts.other.readonly only | confirmed: https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Scope calendar.events (create/edit events) plus Meet lookup (meetings.space.readonly); other-calendar visibility not documented in pages read | confirmed: https://help.openai.com/en/articles/10408842-google-app-for-chatgpt-data-controls-faq | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | Yes | Daniel: Gmail connected twice, a personal account and a work Workspace account. ChatGPT is the only major assistant he has found that supports this. Agent research: Yes, Aug 28 2026 release note: multiple accounts for Gmail, Google Calendar and Google Contacts plugins, personal and work in the same conversation; Plus, Pro, Business, Enterprise (Free not listed). Settings > Plugins > Connect another account. Other apps: 'some apps support more than one'. Consistent with Daniel's observation; older community/blog claims of one account are superseded | observed by Daniel, 2026-10-31; agent source: https://help.openai.com/en/articles/6825453-chatgpt-release-notes-whats-new | Daniel |
| C09 | Profile naming / aliases | top | Yes | Daniel: each connected account has its own name. Agent research: ?, Docs show provider account under 'Connected accounts'; no user-defined alias/name feature documented in pages read. Daniel observed his own names per account (2026-10-31, recorded separately); docs do not contradict but do not confirm | observed by Daniel, 2026-10-31; agent source: https://help.openai.com/en/articles/20001494-connecting-and-managing-app-accounts-in-chatgpt | Daniel |
| C10 | Profile limit per connector | top | ? | No limit documented in pages read; 'availability depends on the app and your account' | assumed: https://help.openai.com/en/articles/20001494-connecting-and-managing-app-accounts-in-chatgpt | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | Prompt only | Docs: 'When supported, specify the account you want to use in your request'; release note: queries run across connected inboxes together (ambiguous = all). Per-chat pin or default account not documented | confirmed: https://help.openai.com/en/articles/20001494-connecting-and-managing-app-accounts-in-chatgpt | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Granular | Admin > Plugins (plus Workspace settings > Permissions & roles > Custom roles > Plugins & connected data > Use plugins > Select specific apps). Enterprise/Edu: RBAC per custom role for plugin install policy (Available vs Installed), app access, and per-app Read/Write action controls plus permission prompts; admins publish custom/private MCP apps to the whole workspace. Business: coarse, workspace-wide app on/off only. Role-to-SSO/SCIM group mapping not confirmed on pages read. Credentials: per-user auth by default (shared-credential option not confirmed). | confirmed: https://help.openai.com/en/articles/11509118-admin-controls-security-and-compliance-in-apps-enterprise-edu-and-business | Agent (Claude Sonnet 5.5) |
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
| Free | 0 | USD (assumed) | month | Unlimited text chats on GPT-5.6 Luna (abuse guardrails); limited uploads/deep research/Codex/Work; up to 3 active scheduled tasks, no webhook tasks | Plan-level plugin access not stated in pages read; multi-account no (Plus+) |
| Go | 8 (secondary sources, not vendor-page confirmed) | USD | month (monthly only) | More messages with tools/uploads; may include ads; no GPT-5.6 Sol; no webhook tasks | Plugin Directory open; install depends on plan; multi-account no |
| Plus | 20 | USD | month (monthly only, no annual) | Message caps vary with demand; expanded Work/Codex; webhook tasks | Multi-account Gmail/Calendar/Contacts; Gmail send; Drive RW |
| Pro $100 | 100 | USD | month | 5x Plus usage; lower per-model allowances than $200 | Same as Plus |
| Pro $200 | 200 | USD | month | 20x Plus usage | Same as Plus |
| Business Standard | 25 monthly / 20 annual | USD (most countries; varies by country) | per user per month | Min 2 seats total; credits for usage beyond included limits | Apps, company knowledge, developer mode/custom MCP (admin/owner only, beta); Drive write on by default |
| Business Premium | 125 monthly / 100 annual | USD | per user per month | 5x Standard, no 5-hour limit; min 2 seats total | Same as Standard |
| Enterprise/Edu | custom | n/a | annual | RBAC; Drive write off by default | Developer mode via RBAC, connector registry |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://chatgpt.com/apps
- Directory (programmatic): None (auth: No official JSON found)

### Verdict

_TBD_
