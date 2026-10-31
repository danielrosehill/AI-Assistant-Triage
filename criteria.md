# Triage criteria

_Last changed 2026-10-31. Criteria are a mix of general ones and ones specific to Daniel's use; each is tagged `general` or `daniel`, and `priority: high` where Daniel has said it is critical._

Triage looks at two things per criterion: **whether** the feature exists, and **how**
it is implemented (e.g. remote vs local MCP, OAuth vs pasted key, per-chat vs global
enablement, bundled in a plugin vs configured by hand). The implementation note often
matters more than the yes/no.

Each criterion is documented below with: a short name and ID (`C01`, `C02`...), what it
asks, why it matters, and what implementation variants to record.

Each criterion is scored per tool as:

- `Yes`: present and confirmed
- `Partial`: present with notable limits (tier-gated, beta, read-only, desktop-only...)
- `No`: confirmed absent
- `?`: not yet verified

Every score also carries a one-line implementation note. Every non-`?` score carries a source link or "observed by Daniel, YYYY-MM-DD".

## Criteria

### C01 Connector catalogue size (`general`)

**Asks:** How many ready-to-integrate plugins or connectors does the platform offer
out of the box, i.e. ones a user can switch on without writing or hosting anything?

**Why it matters:** A large first-party or curated catalogue means common integrations
(Google Workspace, GitHub, Notion, Slack...) work on day one, and shows how much the
vendor is investing in the ecosystem.

**Record:**
- Approximate count, with the date counted and where (directory page, docs, in-app).
- Who builds them: vendor-built, partner-built, or open community directory.
- Whether custom/bring-your-own connectors (e.g. a remote MCP URL) are also allowed. Note
  only; a separate criterion may score this.

**Score:** this is a count, not Yes/No. Record the number; banding is
`Large` (100+), `Medium` (20-99), `Small` (1-19), `None` (0). Bands are provisional.

### C02 Connector access by subscription tier (`general`)

**Asks:** Is connector access restricted by subscription tier, or available to every
paying subscriber? Do free users get it?

**Why it matters:** If connectors only unlock on Team/Enterprise or a top consumer tier,
the real cost of using the platform agentically is much higher than its entry price.

**Score (best to worst):**
- `Free`: free-tier users get connectors (full or a meaningful subset). Best result.
- `All paid`: every paid tier gets connectors; free tier does not.
- `Tiered`: only some paid tiers, or the catalogue/custom connectors differ by tier.
- `Enterprise only`: business/enterprise plans only.

**Record:** which tiers get what, the cheapest tier with connector access and its
monthly price (note currency and region; no US egress from this machine), and whether
custom connectors are gated differently from catalogue ones.

## Google Workspace group (C03-C07)

Daniel flagged this group as very important. Score them together. For every one, the
implementation note must say **how** access is provided: a native vendor connector, a
catalogue connector built by a third party, or only via a custom MCP server the user
hosts. Only the first two count as `Yes`; custom-MCP-only scores `Partial`.
Also note whether the connector works for personal Google accounts, Workspace (business)
accounts, or both.

Access-level scores for C04, C05 and C07: `Read-write`, `Read-only`, `None`, `?`.
Read-write means the assistant can create or modify (e.g. upload/edit a Drive file,
send or draft an email, create/edit a contact), not just search and read.

### C03 Google Workspace integration (`daniel`, `priority: high`)

**Asks:** Does the platform support Google Workspace integration at all?

**Score:** `Yes` / `Partial` / `No` / `?`, per the rules above.

### C04 Google Drive access level (`daniel`, `priority: high`)

**Asks:** Is Google Drive access read-only or read-write?

**Record:** whether it searches/reads Docs, Sheets and arbitrary files or only some
types; whether write means creating new files, editing existing ones, or both.

### C05 Gmail access level (`daniel`, `priority: high`)

**Asks:** Is Gmail access read-only or read-write?

**Record:** whether write means sending directly, creating drafts only, or labelling/
archiving. Draft-only is scored `Read-write` with that noted.

### C06 Gmail attachments (`daniel`, `priority: high`)

**Asks:** Does the Gmail integration support attachments?

**Score:** `Both` (read incoming attachments and send with attachments), `Read only`,
`Send only`, `None`, `?`.

### C07 Google Contacts access level (`daniel`, `priority: high`)

**Asks:** Is Google Contacts access read-only or read-write?
