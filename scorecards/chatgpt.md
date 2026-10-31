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
| C23 | Custom MCP connections | high | ? | | | |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | ? | | | |
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
