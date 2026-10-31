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
| C23 | Custom MCP connections | high | ? | | | |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | ? | | | |
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
