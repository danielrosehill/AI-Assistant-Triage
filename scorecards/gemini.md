# Gemini

Vendor: Google
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Workspace plans (admin-enabled) and personal accounts; tier gating for personal not documented on pages read. Date 2026-10-31 (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | Human only | Human table at support.google.com/gemini/table/17434654 (apps, account types, age, region, device). No public JSON/API/registry found (not exhaustively probed). | confirmed: https://support.google.com/gemini/table/17434654?hl=en | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Yes | Gemini Enterprise: custom MCP server data store (and custom connector); needs roles/discoveryengine.editor; optional OAuth 2.0 (Google Identity or Okta/Azure AD; redirect https://vertexaisearch.cloud.google.com/oauth-redirect); VPC/private connectivity via Agent Gateway; no public listing or Google review. Third-party sources say an org policy blocks custom MCP stores by default and feature is Public Preview (not read in vendor docs; assumed). Gemini app consumer 'Add a custom app' by MCP URL is per third-party sources only (assumed). | confirmed: https://docs.cloud.google.com/gemini/enterprise/docs/connectors/custom-mcp-server/set-up-vpc-custom-mcp-server | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Open submission | Connected Apps Platform: developers self-onboard via Google Connected Console, register tools, then review and publish to Gemini app, Search, or both. Apply for preview at connected.google.com/console/help/?apply; docs at developers.google.com/connected-apps. Integration: remote MCP server + OAuth 2.1, or Android AppFunctions. Preview phase, so access may be gated/phased. Eligibility, fees, review time, individual vs company not stated on the page. Gemini Enterprise gallery has no separate public submission path found. Gemini CLI extensions are a separate open framework (out of scope). | confirmed: https://developers.google.com/connected-apps | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Tiered | Connected apps (Workspace, YouTube Music, GitHub etc.) are in the Gemini app for personal and work/school accounts; page lists no plan requirement for them (Free included, unverified per-plan). Gemini inside Gmail/Docs/Vids is tier-gated (AI Plus: Gmail, Vids; Pro: Gmail, Docs, Vids). Custom MCP connectors mentioned on the Connected Apps help page without tier info. Work/school needs admin enablement. Cheapest paid tier shown: AI Plus 19 ILS/mo (Israel page). | confirmed: https://support.google.com/gemini/table/17434654?hl=en | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | AI Pro 74.9 ILS/mo (Israel page); Workspace Business Starter 6.80 EUR/user/mo for work accounts | Best access per scorecard: Gmail read-only, Drive read-only, Calendar R/W, Contacts R/W (assumed), one account only. Same connector set for personal and Workspace accounts, so the cheapest tier is arguably Free 0 ILS (connected apps list shows no plan gate; not tested). Paid tiers add limits and in-app Gemini. Limits are multipliers of Free (5-hour reset, weekly cap); no message counts published. | confirmed: https://gemini.google/subscriptions/ | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native Google 'Workspace' connected apps (Gmail, Drive, Docs, Calendar, Keep, Tasks; Chat enterprise only). Workspace editions per GA post; help page says sign in with same account, admin must enable for work/school. Personal-account coverage not stated on pages read. | confirmed: https://support.google.com/gemini/answer/15229592?hl=en | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-only | Finds/summarizes Drive/Docs; help page says it cannot manage Drive content (create folders/move). No documented file create/edit via the app. | confirmed: https://support.google.com/gemini/answer/15229592?hl=en | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-only | Native app reads/summarizes Gmail. Help page 14959807 says it cannot 'create an email draft or delete emails'; no send. (Drafting exists only in Gemini side panel inside Gmail, a different surface; third-party says app cannot send.) | confirmed: https://support.google.com/gemini/answer/14959807?hl=en | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | ? | Official pages do not mention attachments; help page says no access to comments/images in Gmail. Attachment strings seen in an APK teardown only. | assumed: https://www.dragapp.com/blog/connect-gmail-to-gemini/ | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | Read-write | Google Contacts app: find/add/edit/delete; still rolling out as of 2026-06-05, seen on an AI Ultra account; account types/tier unstated. Not in official help page list (read). | assumed: https://9to5google.com/2026/06/05/gemini-google-contacts/ | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Calendar: find, create, modify events (GA post). Other-calendar visibility not documented. | confirmed: https://workspaceupdates.googleblog.com/2025/05/google-workspace-apps-are-now-generally-available-for-the-gemini-app.html | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | No | Works with the one signed-in Google account, not across accounts (third-party); official pages silent. Browser-profile switching only = at best Partial; scored No. | assumed: https://www.dragapp.com/blog/connect-gmail-to-gemini/ | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | No | No profile concept; nothing to alias. | assumed: https://www.dragapp.com/blog/connect-gmail-to-gemini/ | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 1 | One Google account per session; inferred from single-account behaviour, not documented. | assumed: https://www.dragapp.com/blog/connect-gmail-to-gemini/ | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: ?, Single account, so no selection; official docs do not address it. | assumed: https://support.google.com/gemini/answer/15229592?hl=en | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Granular | Gemini Enterprise: Gemini Enterprise Admin role enables resource access control (Settings toggle); Gemini Enterprise User/Admin/Viewer granted per app and per data store via console (Apps/Data Stores > User permissions) or setIamPolicy; users need rights on both app and data store; project-level roles override. Restricted-user custom roles. Document-level ACLs/identity mapping for custom connectors. Console grants are by user/principal (examples use user:; group support likely via IAM but not confirmed). SSO/SCIM group mapping and shared vs per-user credential choice not confirmed; OAuth per-user for private MCP is implied. Remaining ~13k chars of page unread. | confirmed: https://docs.cloud.google.com/gemini/enterprise/docs/iam-policy-for-apps-and-data-stores | Agent (Claude Sonnet 5.5) |
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
| Free | 0 | ILS | month | Baseline; resets every 5h until weekly cap | Connected apps list shows no plan requirement; Gemini in Gmail/Docs not listed |
| Google AI Plus | 19 | ILS | month | ~2x Free | Gemini in Gmail and Vids |
| Google AI Pro | 74.9 | ILS | month | ~4x Free; basic Antigravity agent quota | Gemini in Gmail, Docs, Vids; agentic features in Search |
| Google AI Ultra (5x) | from 390 | ILS | month | 5x Pro limits; higher Antigravity quotas | as Pro |
| Google AI Ultra (20x) | 749.9 | ILS | month | 20x Pro limits | as Pro |
| Workspace Business Starter | 6.80 (promo 3.40 Nov 14 2026-Feb 14 2027) | EUR | user/month excl tax, monthly; annual commitment saves 16% | max 300 users; no min seats shown | Limited Gemini in Workspace apps; admin must enable connected apps |
| Workspace Business Standard | 13.60 (promo 6.80) | EUR | user/month | max 300 users | Gemini in Gmail, Docs, Meet |
| Workspace Business Plus | 21.10 (promo 10.55) | EUR | user/month | max 300 users | as Standard plus |
| Workspace Enterprise | contact sales |  |  | no user min/max | Gemini in Workspace apps; Chat enterprise only (earlier finding) |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://support.google.com/gemini/table/17434654?hl=en
- Directory (programmatic): None (auth: n/a)

### Verdict

_TBD_
