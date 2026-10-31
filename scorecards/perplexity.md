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
| C23 | Custom MCP connections | high | ? | | | |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | ? | | | |
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
