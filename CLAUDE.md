# AI-Assistant-Triage: context for agents

## What this repo is

A public notebook. Daniel triages AI assistant products that have native agentic
capabilities, judged specifically on how they integrate with external tools:
plugins, connectors, MCP servers, or whatever a vendor calls them. The output is a
short scorecard per tool, used to decide whether a tool is worth investing more time in.

It is not a full product review. It is a quick go/no-go triage against a fixed set of
features.

## Scope

**In scope**

- Conversational AI tools whose primary interface is chat. ChatGPT is the reference example.
- SaaS products first. Self-hosted conversational front ends (e.g. Open WebUI, LibreChat,
  LobeChat) may be added as a second tier.
- Must support external connectors in some form: MCP (remote or local), plugins,
  "apps", "connectors", "extensions", "actions", custom tools.

**Out of scope**

- Coding agents and IDE tools whose main purpose is not conversation (Claude Code,
  Cursor, etc.), unless Daniel adds them explicitly.
- Bare model APIs and agent frameworks/SDKs with no end-user chat product.

## Point-in-time caveat

These capabilities are changing fast. Every evaluation is a snapshot. Each scorecard
must carry:

- the evaluation date (absolute, `YYYY-MM-DD`),
- the plan/tier evaluated (free, Plus, Team, Enterprise...), since connector features
  are often tier-gated,
- for each feature: whether it was **confirmed** (tested, or read in current vendor
  docs, with a source link) or **assumed** (secondhand, older article, inferred).

Never update an old scorecard in place to reflect a new state; add a new dated
evaluation so the history is kept.

## Triage criteria

The fixed feature checklist lives in `criteria.md`. Score every tool against that list
and nothing else. If a new criterion is added, older scorecards are not retro-scored
unless re-evaluated (and re-dated).

## Layout

- `criteria.md`: the feature checklist and scoring scheme.
- `scorecards/<tool-slug>.md`: one file per tool, newest evaluation at the top.
- `README.md`: purpose, scope, candidates, and the summary matrix (criteria as rows, tools as columns).
- When a criterion is added to `criteria.md`, add its row to the README matrix and to every scorecard table.

## Research rules

- Validate a feature against the vendor's current docs or changelog where possible and
  link the source. Daniel's own observations count as confirmed; mark them as such.
- No US egress from this machine: don't infer US-only pricing or availability from a fetch.
