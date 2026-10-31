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

**SaaS / Third-party**, with scorecards: Perplexity, Microsoft Copilot (consumer).

**Watchlist** (no scorecard yet; refreshed 2026-10-31, unverified leads). Full list with
connector notes, MCP transport, sources and evidence level: [`candidates.json`](candidates.json).

- SaaS / Third-party: Manus, Genspark, Abacus ChatLLM, TypingMind, Notion AI (custom MCP
  on Business+); Poe and T3 Chat (no native MCP found).
- SaaS / Vendor: Qwen Chat, Kimi (chat-app MCP unconfirmed); Alexa+ (developer MCP
  add-ons, voice-first); Meta AI (no connectors found).
- Self-hosted or self-deployed (BYOK): LibreChat, Open WebUI, LobeHub (formerly LobeChat).
- Desktop (BYOK): AnythingLLM, Cherry Studio, Msty Studio, Jan, Chatbox, Raycast AI,
  Witsy, 5ire, Goose (also a coding agent; scope check).

## Criteria

See [`criteria.md`](criteria.md).

## Summary

Classification rows (K) come first, then criteria (C). Criteria are rows and tools are columns, so adding a tool adds a column. `?` = not yet verified. `(D)` = scored by Daniel; unmarked cells are agent-researched (see `By` in each scorecard; many are `assumed`, not confirmed).

| ID | Criterion | Priority | [ChatGPT](scorecards/chatgpt.md) | [Claude](scorecards/claude.md) | [Grok](scorecards/grok.md) | [Gemini](scorecards/gemini.md) | [Le Chat](scorecards/le-chat.md) | [Perplexity](scorecards/perplexity.md) | [Copilot](scorecards/copilot.md) |
|----|-----------|----------|---|---|---|---|---|---|---|
| K01 | Authorship | | Vendor | Vendor | Vendor | Vendor | Vendor | Third-party | Third-party |
| K02 | Model access | | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription |
| K03 | Deployment | | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS |
| | **Evaluated** | | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) | 2026-10-31 (B, C only) |
| | **Tier evaluated** | | Plus | Free | all users | not stated | not stated | Pro | Free (assumed) |
| | **A. Connector ecosystem** | | | | | | | | |
| C25 | Purpose-built for integrations | top | ? | ? | ? | ? | ? | ? | ? |
| C01 | Connector catalogue size | normal | ? | ? | ? | ? | ? | ? | ? |
| C23 | Custom MCP connections | high | ? | ? | ? | ? | ? | ? | ? |
| C32 | Progressive tool discovery and tool limits | normal | ? | ? | ? | ? | ? | ? | ? |
| C33 | Plugin packaging format | normal | ? | ? | ? | ? | ? | ? | ? |
| C34 | Custom marketplaces | normal | ? | ? | ? | ? | ? | ? | ? |
| C02 | Connector access by subscription tier | normal | ? | ? | ? | ? | ? | ? | ? |
| | **B. Google Workspace** | | | | | | | | |
| C03 | Google Workspace integration | high | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| C04 | Google Drive access level | high | Read-write | Read-write | Read-write | Read-only | Read-only | Read-only | Read-only |
| C05 | Gmail access level | high | Read-write | Read-write | Read-write | Read-only | Read-write | Read-write | Read-only |
| C06 | Gmail attachments | high | ? | None | Read only | ? | ? | ? | ? |
| C07 | Google Contacts access level | high | Read-only | None | None | Read-write | None | ? | Read-only |
| C12 | Google Calendar access level | high | Read-write | Read-write | Read-write | Read-write | Read-write | Read-write | Read-only |
| | **C. Multiple accounts per connector** | | | | | | | | |
| C08 | Multiple accounts per connector | top | Yes (D) | No | No (D) | No | ? | No | ? |
| C09 | Profile naming / aliases | top | Yes (D) | No | N/A | No | ? | No | No |
| C10 | Profile limit per connector | top | ? | 1 | 1 | 1 | ? | 1 | ? |
| C11 | Profile selection handling | top | Prompt only | N/A | N/A | N/A | ? | N/A | ? |
| | **D. Connector usage and control** | | | | | | | | |
| C19 | Connector invocation mode | normal | ? | ? | ? | ? | ? | ? | ? |
| C20 | Human-in-the-loop controls | normal | ? | ? | ? | ? | ? | ? | ? |
| C36 | Autonomy modes and permission structure | normal | ? | ? | ? | ? | ? | ? | ? |
| | **E. Own infrastructure and local tools** | | | | | | | | |
| C31 | Distributed deployments / satellites | top | ? | ? | ? | ? | ? | ? | ? |
| C24 | Tunnels to own infrastructure / AI gateway | high | ? | ? | ? | ? | ? | ? | ? |
| C30 | Locally hosted tool integration, e.g. Home Assistant | high | ? | ? | ? | ? | ? | ? | ? |
| | **F. Data ownership** | | | | | | | | |
| C26 | Output routing to own storage | normal | ? | ? | ? | ? | ? | ? | ? |
| C27 | Backup / export API | normal | ? | ? | ? | ? | ? | ? | ? |
| C28 | Bring your own memory | normal | ? | ? | ? | ? | ? | ? | ? |
| | **G. Agents, projects and coding** | | | | | | | | |
| C35 | Agent-to-agent (A2A) support | top | ? | ? | ? | ? | ? | ? | ? |
| C29 | Background agents, scheduled tasks and reminders | normal | ? | ? | ? | ? | ? | ? | ? |
| C22 | Project boundaries and where project data lives | normal | ? | ? | ? | ? | ? | ? | ? |
| C21 | Parallel CLI coding product | normal | ? | ? | ? | ? | ? | ? | ? |
| C37 | CLI working-directory binding | normal | ? | ? | ? | ? | ? | ? | ? |
| C38 | Native GitHub integration | normal | ? | ? | ? | ? | ? | ? | ? |
| | **H. Clients and platforms** | | | | | | | | |
| C13 | Linux desktop app | normal | ? | ? | ? | ? | ? | ? | ? |
| C14 | Linux CLI | normal | ? | ? | ? | ? | ? | ? | ? |
| C15 | Android app | normal | ? | ? | ? | ? | ? | ? | ? |
| C16 | Cross-device conversation history sync | normal | ? | ? | ? | ? | ? | ? | ? |
| C17 | Native speech-to-text, desktop | normal | ? | ? | ? | ? | ? | ? | ? |
| C18 | Native speech-to-text, Android | normal | ? | ? | ? | ? | ? | ? | ? |
| | **Verdict** | | | | | | | | |

Per-tool detail: [`scorecards/`](scorecards/).
