# Triage criteria

_Last changed 2026-10-31. Criteria are a mix of general ones and ones specific to Daniel's use; each is tagged `general` or `daniel`, and with a priority weighting: `priority: top` (near the top of Daniel's list), `priority: high` (very important), otherwise normal._

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

## Google Workspace group (C03-C07, C12)

Daniel flagged this group as very important. Score them together. For every one, the
implementation note must say **how** access is provided: a native vendor connector, a
catalogue connector built by a third party, or only via a custom MCP server the user
hosts. Only the first two count as `Yes`; custom-MCP-only scores `Partial`.
Also note whether the connector works for personal Google accounts, Workspace (business)
accounts, or both.

Access-level scores for C04, C05, C07 and C12: `Read-write`, `Read-only`, `None`, `?`.
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

### C12 Google Calendar access level (`daniel`, `priority: high`)

_Added 2026-10-31 after C08-C11; IDs are stable, so it is numbered C12 but belongs to this group._

**Asks:** Is Google Calendar access read-only or read-write?

**Record:** whether write means creating events, editing/deleting them, or both; whether
it can see calendars other than the primary one.

## Multiple accounts per connector group (C08-C11)

Daniel weights this group near the top. The use case: one connector type (e.g. Gmail)
connected twice, once to a personal account and once to a work Workspace account, each
usable in the same assistant.

Reference example (observed by Daniel, 2026-10-31): ChatGPT allows a Gmail connector for
a personal account and a second one for a work Workspace account, each with its own name.

### C08 Multiple accounts per connector (`daniel`, `priority: top`)

**Asks:** Can the same connector be connected more than once, to different accounts
(profiles)?

**Score:** `Yes` / `Partial` (e.g. only by adding the same service again as a custom
MCP server, or only one active at a time) / `No` / `?`.

### C09 Profile naming / aliases (`daniel`, `priority: top`)

**Asks:** Can each connected profile be given its own name or alias (e.g. "Gmail
personal", "Gmail work")?

**Score:** `Yes` / `No` / `?`. Note whether the alias is visible to the model (so you can
say "use my work mail") or only shown in the settings UI.

### C10 Profile limit per connector (`daniel`, `priority: top`)

**Asks:** Is there a maximum number of profiles per connector, or per account?

**Score:** the number, `Unlimited` (no documented or observed limit), or `?`. Note
whether the limit is documented or observed.

### C11 Profile selection handling (`daniel`, `priority: top`)

**Asks:** When several profiles of one connector exist, how do you specify which one
to use?

**Record (implementation, not a single score):** the mechanisms available, e.g. naming
it in the prompt, per-chat toggle, per-project/workspace default, picker in the
composer, model picks automatically. Note what happens when it is ambiguous (asks,
guesses, uses all). Summarise in the matrix as `Explicit` (user can pin a profile),
`Prompt only` (only by naming it), `Auto only`, or `?`.
