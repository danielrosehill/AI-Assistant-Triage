# AI Assistant Triage

A public notebook of quick, point-in-time triage scorecards for conversational AI tools
with native agentic capabilities, looked at through one lens: **how well they integrate
with external tools** (MCP servers, plugins, connectors, apps, actions: the name varies
by vendor).

The point is to decide whether a tool is worth investing serious time in, before doing so.

## Scope

- **In:** chat-first AI assistants available as SaaS (ChatGPT is the reference example)
  that support external connectors in some form. Self-hosted conversational front ends
  may be included as a second tier.
- **Out:** coding agents/IDEs, bare model APIs, agent frameworks without an end-user chat product.

## Caveat

This space moves fast. Every scorecard is dated and states the plan/tier evaluated.
A feature marked absent may have shipped since. Treat everything here as a snapshot,
not a current verdict.

## Candidates

Grouped by classification (K01-K03 in [`criteria.md`](criteria.md)). Compare tools within a bucket.

**SaaS / Vendor** (vendor builds the app and the models), with scorecards:
ChatGPT, Claude (official Claude apps), Grok, Gemini, Le Chat.

**SaaS / Third-party**, with scorecards: Perplexity, Microsoft Copilot (consumer), Lindy (added 2026-10-31).

**Watchlist** (no scorecard yet; refreshed 2026-10-31, unverified leads). Full list with
connector notes, MCP transport, sources and evidence level: [`candidates.json`](candidates.json).

- SaaS / Third-party: Manus, Genspark, Abacus ChatLLM, TypingMind, Notion AI (custom MCP
  on Business+); Poe and T3 Chat (no native MCP found).
- SaaS / Vendor: Qwen Chat, Kimi (chat-app MCP unconfirmed); Alexa+ (developer MCP
  add-ons, voice-first); Meta AI (no connectors found).
- Self-hosted or self-deployed (BYOK): LibreChat, Open WebUI, LobeHub (formerly LobeChat).
- Desktop (BYOK): AnythingLLM, Cherry Studio, Msty Studio, Jan, Chatbox, Raycast AI,
  Witsy, 5ire, Goose (also a coding agent; scope check).
- Added 2026-10-31 for the Google Workspace / multi-account gap (SaaS / Third-party,
  integration-first): Lindy (now a scorecard); Relevance AI, Superhuman
  Go, Tasklet, Gumloop Agents, Dust, Poke, Zapier Agents, Jenova, meinGPT (maybe).

## Criteria

See [`criteria.md`](criteria.md).

## Summary

Classification rows (K) come first, then criteria (C). Criteria are rows and tools are columns, so adding a tool adds a column. `?` = not yet verified. `(D)` = scored by Daniel; unmarked cells are agent-researched (see `By` in each scorecard; many are `assumed`, not confirmed).

| ID | Criterion | Priority | [ChatGPT](scorecards/chatgpt.md) | [Claude](scorecards/claude.md) | [Grok](scorecards/grok.md) | [Gemini](scorecards/gemini.md) | [Le Chat](scorecards/le-chat.md) | [Perplexity](scorecards/perplexity.md) | [Copilot](scorecards/copilot.md) | [Lindy](scorecards/lindy.md) |
|----|-----------|----------|---|---|---|---|---|---|---|---|
| K01 | Authorship | | Vendor | Vendor | Vendor | Vendor | Vendor | Third-party | Third-party | Third-party |
| K02 | Model access | | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription |
| K03 | Deployment | | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS |
| | **Evaluated** | | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (A, B, C) |
| | **Tier evaluated** | | Plus | Free | all users | not stated | not stated | Pro | Free (assumed) | see scorecard |
| | **A. Connector ecosystem** | | | | | | | | | |
| C25 | Purpose-built for integrations | top | ? | ? | ? | ? | ? | ? | ? | Integration-first |
| C01 | Connector catalogue size | normal | ? | ? | ? | ? | ? | ? | ? | Large (1,500+) |
| C40 | Official connector directory: URLs | normal | Human only | Both | Human only | Human only | Human only | In-app only | None | Human only |
| C23 | Custom MCP connections | high | ? | ? | ? | ? | ? | ? | ? | Yes |
| C41 | Native private connectors | normal | Partial | Yes | Partial | Yes | Partial | Yes | No | Yes |
| C42 | Plugin authorship and listing | normal | Open submission | Open submission | ? | Open submission | Partner only | ? | Closed | Closed |
| C32 | Progressive tool discovery and tool limits | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C33 | Plugin packaging format | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C34 | Custom marketplaces | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C02 | Connector access by subscription tier | normal | Tiered | Free | Free | Tiered | Free | Tiered | Free | All paid |
| C39 | Subscription pricing and restrictions | normal | Plus $20/mo | Free $0 | Free $0 | Free? / AI Pro ₪74.9 | Free $0 | Pro $17/mo (annual) | Free $0 (assumed) | Plus ~$29.99/mo (A/B) |
| | **B. Google Workspace** | | | | | | | | | |
| C03 | Google Workspace integration | high | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| C04 | Google Drive access level | high | Read-write | Read-write | Read-write | Read-only | Read-only | Read-only | Read-only | Read-write |
| C05 | Gmail access level | high | Read-write | Read-write | Read-write | Read-only | Read-write | Read-write | Read-only | Read-write |
| C06 | Gmail attachments | high | ? | None | Read only | ? | ? | ? | ? | Both |
| C07 | Google Contacts access level | high | Read-only | None | None | Read-write | None | ? | Read-only | ? |
| C12 | Google Calendar access level | high | Read-write | Read-write | Read-write | Read-write | Read-write | Read-write | Read-only | Read-write |
| | **C. Multiple accounts per connector** | | | | | | | | | |
| C08 | Multiple accounts per connector | top | Yes (D) | No | No (D) | No | ? | No | ? | Yes |
| C09 | Profile naming / aliases | top | Yes (D) | No | N/A | No | ? | No | No | Yes |
| C10 | Profile limit per connector | top | ? | 1 | 1 | 1 | ? | 1 | ? | 2-5 inboxes by plan (pricing page); d... |
| C11 | Profile selection handling | top | Prompt only | N/A | N/A | N/A | ? | N/A | ? | Explicit |
| | **D. Connector usage and control** | | | | | | | | | |
| C19 | Connector invocation mode | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C20 | Human-in-the-loop controls | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C36 | Autonomy modes and permission structure | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C43 | Team federation of plugin access | normal | Granular | Granular | Coarse | Granular | Coarse | Granular | N/A | Coarse |
| | **E. Own infrastructure and local tools** | | | | | | | | | |
| C31 | Distributed deployments / satellites | top | ? | ? | ? | ? | ? | ? | ? | ? |
| C24 | Tunnels to own infrastructure / AI gateway | high | ? | ? | ? | ? | ? | ? | ? | ? |
| C30 | Locally hosted tool integration, e.g. Home Assistant | high | ? | ? | ? | ? | ? | ? | ? | ? |
| | **F. Data ownership** | | | | | | | | | |
| C26 | Output routing to own storage | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C27 | Backup / export API | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C28 | Bring your own memory | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| | **G. Agents, projects and coding** | | | | | | | | | |
| C35 | Agent-to-agent (A2A) support | top | ? | ? | ? | ? | ? | ? | ? | ? |
| C29 | Background agents, scheduled tasks and reminders | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C22 | Project boundaries and where project data lives | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C21 | Parallel CLI coding product | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C37 | CLI working-directory binding | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C38 | Native GitHub integration | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| | **H. Clients and platforms** | | | | | | | | | |
| C13 | Linux desktop app | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C14 | Linux CLI | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C15 | Android app | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C16 | Cross-device conversation history sync | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C17 | Native speech-to-text, desktop | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| C18 | Native speech-to-text, Android | normal | ? | ? | ? | ? | ? | ? | ? | ? |
| | **Verdict** | | | | | | | | | |

## Connector directories (C40)

Official lists, read 2026-10-31 (agent-researched). Community mirrors not listed.

| Tool | Human-readable | Programmatic (JSON) |
|---|---|---|
| ChatGPT | https://chatgpt.com/apps | none found |
| Claude | https://claude.com/connectors | https://api.anthropic.com/mcp-registry/v0/servers?version=latest&visibility=commercial (no auth) |
| Grok | https://grok.com/connectors (may need login) | none found |
| Gemini | https://support.google.com/gemini/table/17434654 | none found |
| Le Chat | https://chat.mistral.ai/connectors (login) | none public (`api.mistral.ai/v1/connectors` needs a key; unverified) |
| Perplexity | in-app only; per-connector help articles | none |
| Copilot | none | none |
| Lindy | https://www.lindy.ai/integrations | none (sitemap lists ~1,410 integration pages) |

Per-tool detail: [`scorecards/`](scorecards/).
