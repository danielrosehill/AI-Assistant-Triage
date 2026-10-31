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

**Watchlist** (no scorecard yet; candidates found 2026-10-31, mostly from third-party
blogs, unverified):

- SaaS / Third-party: Manus, Genspark (agent-first); Poe, Abacus ChatLLM, T3 Chat
  (multi-model aggregators); Qwen Chat, Kimi (vendor apps with some MCP; would move to
  SaaS / Vendor if scored); Meta AI (few connectors).
- Self-hosted or self-deployed (BYOK): LibreChat, Open WebUI, LobeChat, AnythingLLM.
- Desktop (BYOK): Cherry Studio, Msty, Jan, Chatbox.

## Criteria

See [`criteria.md`](criteria.md).

## Summary

Classification rows (K) come first, then criteria (C). Criteria are rows and tools are columns, so adding a tool adds a column. `?` = not yet verified.

| ID | Criterion | Priority | [ChatGPT](scorecards/chatgpt.md) | [Claude](scorecards/claude.md) | [Grok](scorecards/grok.md) | [Gemini](scorecards/gemini.md) | [Le Chat](scorecards/le-chat.md) | [Perplexity](scorecards/perplexity.md) | [Copilot](scorecards/copilot.md) |
|----|-----------|----------|---|---|---|---|---|---|---|
| K01 | Authorship | | Vendor | Vendor | Vendor | Vendor | Vendor | Third-party | Third-party |
| K02 | Model access | | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription | Subscription |
| K03 | Deployment | | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS | SaaS |
| | **Evaluated** | | not yet | not yet | not yet | not yet | not yet | not yet | not yet |
| | **Tier evaluated** | | | | | | | | |
| C01 | Connector catalogue size | normal | ? | ? | ? | ? | ? | ? | ? |
| C02 | Connector access by subscription tier | normal | ? | ? | ? | ? | ? | ? | ? |
| C03 | Google Workspace integration | high | ? | ? | ? | ? | ? | ? | ? |
| C04 | Google Drive access level | high | ? | ? | ? | ? | ? | ? | ? |
| C05 | Gmail access level | high | ? | ? | ? | ? | ? | ? | ? |
| C06 | Gmail attachments | high | ? | ? | ? | ? | ? | ? | ? |
| C07 | Google Contacts access level | high | ? | ? | ? | ? | ? | ? | ? |
| C08 | Multiple accounts per connector | top | ? | ? | ? | ? | ? | ? | ? |
| C09 | Profile naming / aliases | top | ? | ? | ? | ? | ? | ? | ? |
| C10 | Profile limit per connector | top | ? | ? | ? | ? | ? | ? | ? |
| C11 | Profile selection handling | top | ? | ? | ? | ? | ? | ? | ? |
| C12 | Google Calendar access level | high | ? | ? | ? | ? | ? | ? | ? |
| C13 | Linux desktop app | normal | ? | ? | ? | ? | ? | ? | ? |
| C14 | Linux CLI | normal | ? | ? | ? | ? | ? | ? | ? |
| C15 | Android app | normal | ? | ? | ? | ? | ? | ? | ? |
| C16 | Cross-device conversation history sync | normal | ? | ? | ? | ? | ? | ? | ? |
| C17 | Native speech-to-text, desktop | normal | ? | ? | ? | ? | ? | ? | ? |
| C18 | Native speech-to-text, Android | normal | ? | ? | ? | ? | ? | ? | ? |
| C19 | Connector invocation mode | normal | ? | ? | ? | ? | ? | ? | ? |
| C20 | Human-in-the-loop controls | normal | ? | ? | ? | ? | ? | ? | ? |
| C21 | Parallel CLI coding product | normal | ? | ? | ? | ? | ? | ? | ? |
| C22 | Project boundaries and where project data lives | normal | ? | ? | ? | ? | ? | ? | ? |
| C23 | Custom MCP connections | high | ? | ? | ? | ? | ? | ? | ? |
| C24 | Tunnels to own infrastructure / AI gateway | high | ? | ? | ? | ? | ? | ? | ? |
| | **Verdict** | | | | | | | | |

Per-tool detail: [`scorecards/`](scorecards/).
