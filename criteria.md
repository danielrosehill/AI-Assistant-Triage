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
- `N/A`: the criterion does not apply to this kind of tool (e.g. subscription tiers for a
  self-hosted BYOK app). Not the same as `No`.

Every score also carries a one-line implementation note. Every non-`?` score carries a source link or "observed by Daniel, YYYY-MM-DD".

## Classification (K01-K03)

Not scored. These describe what kind of tool it is, so tools are compared within
like-for-like buckets. The README groups candidates by bucket.

### K01 Authorship

- `Vendor`: the app is built and supported by the company that makes the main models it
  runs (OpenAI/ChatGPT, Anthropic/Claude, xAI/Grok, Google/Gemini, Mistral/Le Chat). One
  vendor owns the model, the app, the connectors and support.
- `Third-party`: the app is built by someone else and runs other companies' models,
  even if it adds some of its own (e.g. Perplexity, Microsoft Copilot, LibreChat).

### K02 Model access

- `Subscription`: you pay the app vendor; models are included.
- `BYOK`: bring your own API key(s); you pay model providers directly.
- `Both`

### K03 Deployment

- `SaaS`: vendor-hosted; you just sign in.
- `Self-deployed`: you deploy the vendor's software into infrastructure you rent or
  control (e.g. a cloud VM, one-click Railway/Vercel/Docker template).
- `Self-hosted`: runs on your own hardware (home server, NAS).
- `Desktop`: a local app on your machine, no server.

Buckets used in the README: **SaaS / Vendor**, **SaaS / Third-party**,
**Self-hosted or self-deployed (BYOK)**, **Desktop (BYOK)**.

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

## Clients and platforms group (C13-C18)

Priority: normal (no weighting given, 2026-10-31).

For C13-C15, score `Yes` only for an **official** vendor client. A community or
unofficial client scores `No`, with it named in the note (e.g. `No (community: AppImage
wrapper)`), since it may lag features or break. A PWA / "install the website" counts as
`No` with `PWA` noted, unless the vendor ships it as its official app for that platform.

**Type** = how it is distributed. Record every channel offered.

### C13 Linux desktop app (`daniel`)

**Score:** `Yes` / `No`, plus type: `deb`, `rpm`, `AppImage`, `Flatpak`, `Snap`, `AUR`,
`tarball`, `PWA`.

### C14 Linux CLI (`daniel`)

**Asks:** Is there an official command-line client that runs on Linux and uses the
same account/subscription (not just a raw API key)?

**Score:** `Yes` / `No`, plus type: `npm`, `pip/uv`, `binary`, `Homebrew`, `apt/repo`,
`cargo`, `go install`, `Docker`. Note if it only works with API billing rather than the
subscription.

### C15 Android app (`daniel`)

**Score:** `Yes` / `No`, plus type: `Play Store`, `APK`, `F-Droid`, `PWA`.

### C16 Cross-device conversation history sync (`daniel`)

**Asks:** Is conversation history synced through the cloud, so a chat started on one
device (web, desktop, Android, CLI) is available on the others?

**Score:** `Yes` / `Partial` (e.g. CLI or desktop history stays local) / `No` / `?`.
Note which clients are in the sync and which are not.

### C17 Native speech-to-text, desktop (`daniel`)

**Asks:** Does the desktop client (or web app, if there is no desktop app) have built-in
voice dictation into the chat input?

**Score:** `Yes` / `No` / `?`. Note dictation vs full voice-conversation mode, and
whether it works on the Linux client specifically.

### C18 Native speech-to-text, Android (`daniel`)

**Asks:** Does the Android app have built-in voice dictation beyond the system keyboard's?

**Score:** `Yes` / `No` / `?`. Note dictation vs voice mode, and language support
(Hebrew if known).

## Connector usage and control group (C19-C20)

Priority: normal (no weighting given, 2026-10-31).

### C19 Connector invocation mode (`daniel`)

**Asks:** How are connectors used in practice? Are they available in ordinary chat, or
only in a specific mode (e.g. an "agent", "developer", "deep research" or "connectors"
mode, a particular model, or a project/workspace setting)?

**Score (best to worst):**
- `Always on`: enabled connectors are available in any normal chat; the model calls them
  when relevant.
- `Per-chat toggle`: available in normal chat but must be switched on per conversation
  (e.g. via a composer menu or @-mention).
- `Mode-gated`: only usable inside a specific mode or with specific models; note which,
  and what that mode loses (e.g. memory, other tools, model choice).
- `?`

**Record:** the exact mode/toggle names, whether custom connectors and catalogue
connectors behave differently (custom ones are often mode-gated when catalogue ones are
not), and whether the mode differs between web, desktop and mobile.

### C20 Human-in-the-loop controls (`daniel`)

**Asks:** Is there deterministic, user-configurable control over when the assistant must
ask before a connector action runs, or does it rely on the model choosing to ask, or on
generic notifications?

"Deterministic" means the platform enforces it regardless of what the model decides:
e.g. per-connector or per-tool settings such as always allow / always ask / never allow,
or "reads run automatically, writes need approval".

**Score (best to worst):**
- `Deterministic, granular`: per-tool (or read vs write) approval policy set by the user
  and enforced by the platform.
- `Deterministic, coarse`: platform-enforced confirmation, but all-or-nothing (e.g. every
  write action asks, with no way to tune it per tool).
- `Model-driven`: confirmation happens only if the model decides to ask in chat; no
  platform-level policy.
- `Notifications only`: approvals surface as push/email notifications for background or
  agent tasks, with no per-tool policy.
- `None` / `?`

**Record:** where the settings live, whether approvals can be "remember for this chat"
or "always", whether the policy applies to custom connectors too, and how approval works
for background/scheduled tasks (in-app prompt, push notification, task waits vs fails).

## Coding product and projects group (C21-C22)

Priority: normal (no weighting given, 2026-10-31).

### C21 Parallel CLI coding product (`daniel`)

**Asks:** Does the vendor also ship a coding agent product in the CLI (alongside the
chat assistant), and how is it handled relative to the chat app?

**Score:** `Yes` / `No`, plus the product name and the relationship, summarised as:
- `Separate workspace`: own sessions/history, not visible in the chat app (the common approach).
- `Partly shared`: same subscription and maybe shared settings or connectors, but
  separate history.
- `Integrated`: coding sessions appear in, or can be continued from, the chat app.

**Record:** whether it is included in the same subscription, whether connectors/MCP
configured in the chat app carry over to the CLI, and whether a web/cloud version of the
coding agent shows up inside the chat app.

### C22 Project boundaries and where project data lives (`daniel`)

**Asks:** Can you define projects (workspaces) that bound context, files, instructions
and connectors? Is that project data synced to the cloud or kept locally?

**Score:** `Yes` / `Partial` / `No`, plus storage: `Cloud`, `Local`, `Both` (e.g. cloud
in the chat app, local in the CLI).

**Record:** what a project scopes (custom instructions, files, memory, chat history,
connectors enabled), whether memory leaks across project boundaries or can be isolated,
and whether projects sync across devices.

## Custom connections and own infrastructure group (C23-C24)

Daniel flagged this group as very important (2026-10-31).

### C23 Custom MCP connections (`daniel`, `priority: high`)

**Asks:** Can the user add their own MCP server, not just pick from the catalogue?

**Score:** `Yes` / `Partial` (e.g. mode-gated, admin-only, read-only tools, desktop-only)
/ `No` / `?`.

**Record:** remote (URL) and/or local (stdio) servers; transports accepted (streamable
HTTP, SSE); auth supported (OAuth, bearer/API-key header, none); which tiers; which
clients (web, desktop, mobile: a server added on web may not work on Android); whether
an admin must approve it on business plans; any limits on tools per server.

### C24 Tunnels to own infrastructure / AI gateway (`daniel`, `priority: high`)

**Asks:** Is there support for reaching your own infrastructure (home server, private
network, your own MCP/AI gateway) from the assistant? If so, how is it implemented?

**Score:**
- `Official tunnel`: vendor-provided tunnel/connector/agent that reaches private
  networks without exposing a public endpoint.
- `Local bridge`: a desktop app or CLI on your machine can reach local/private servers
  (e.g. local stdio MCP), but cloud/mobile chats cannot.
- `DIY only`: works only if you expose the server publicly yourself (e.g. Cloudflare
  Tunnel, Tailscale Funnel, ngrok) and add it as a remote custom connector.
- `No` / `?`

**Record:** how it is implemented, what auth it supports in front of the tunnel
(e.g. can it pass Cloudflare Access service-token headers, or OAuth only), and **user
feedback**: a short summary of reports from forums, GitHub issues, Reddit, with links
and dates (reliability, timeouts, auth breakage, IP allowlisting).

## Purpose, data ownership, agents and local infrastructure group (C25-C31)

Added 2026-10-31.

### C25 Purpose-built for integrations (`daniel`, `priority: top`)

A looser, judgement-based criterion, and the one Daniel most wants to find a strong
match for.

**Asks:** Is connecting an AI to external tools the platform's main purpose (a
specialist platform built precisely for this), or is it a general conversational tool
with an integration feature added on?

**Score:** `Integration-first` / `General + integrations` / `?`.

**Record:** the evidence for the call (positioning, where connectors sit in the UI and
docs, whether the product is usable at all without them, depth of connector management:
profiles, permissions, logs, testing).

### C26 Output routing to own storage (`daniel`)

Expected to be rare; Daniel has not seen it anywhere (2026-10-31).

**Asks:** Is there native support for routing conversations (and/or outputs, files) to
storage you own as they happen, e.g. a Drive folder, S3/R2 bucket, Git repo, webhook,
local folder?

**Score:** `Yes` / `Partial` (e.g. one destination only, manual per chat) / `No` / `?`.

**Record:** destinations supported, automatic vs manual, format (Markdown, JSON).

### C27 Backup / export API (`daniel`)

**Asks:** Is there a native API (or scheduled export) for getting your data out
(conversations, projects, memory, files) to somewhere else?

**Score:** `API` (programmatic, on demand) / `Scheduled export` / `Manual export only`
(e.g. a "download my data" email) / `No` / `?`.

**Record:** what is included (memory and project files are often missing), format,
whether business plans get a compliance/export API that consumer plans don't.

### C28 Bring your own memory (`daniel`)

**Asks:** Is there native, first-party support for using your own memory store (e.g. an
external memory MCP server or API), or are you forced to use the tool's built-in memory?

**Score:** `First-party BYO` (built-in memory can be replaced or disabled in favour of
yours, with official support) / `Workaround` (built-in memory can be turned off and an
external memory connector used via custom MCP, but it is not a supported memory
backend) / `Forced built-in` / `?`.

**Record:** whether built-in memory can be disabled, viewed, edited and exported.

### C29 Background agents, scheduled tasks and reminders (`daniel`)

**Asks:** Can you create background or persistent agents that run tasks without an open
chat, and schedule future tasks and reminders? How are they held?

**Score:** `Yes` / `Partial` (e.g. reminders only, or tasks without connector access)
/ `No` / `?`.

**Record:** where they run (vendor cloud, your machine), whether they can use
connectors and custom MCP, how results and reminders are delivered (push, email, in
chat), limits on number/frequency, and whether they keep running when all clients are
closed. Links to C20 for approvals during background runs.

### C30 Locally hosted tool integration, e.g. Home Assistant (`daniel`, `priority: high`)

Home Assistant is the **example**, standing for any locally hosted tool on a home
network. The criterion is about how the platform handles local tools natively, not about
Home Assistant specifically.

**Asks:** How would the platform reach and control a locally hosted tool like Home
Assistant natively?

**Score:**
- `Native`: an official connector or integration that reaches the local tool, without
  exposing it publicly.
- `Via tunnel`: works through the platform's own tunnel/bridge (see C24).
- `DIY`: only by exposing the tool's MCP/API publicly yourself and adding it as a
  custom connector.
- `No` / `?`

**Record:** the concrete Home Assistant route (official connector, HA's MCP server
integration, a desktop app reaching the LAN), which clients it works from (mobile often
cannot reach local tools), and user reports.

### C31 Distributed deployments / satellites (`daniel`)

**Asks:** Is there built-in support for a network of deployments, e.g. the main app
here plus a CLI installed on a local server that acts as a subagent or satellite the
main app can delegate to?

**Score:** `Native` (official pairing of instances; main app can dispatch tasks to a
remote CLI/agent) / `Partial` (e.g. remote control of one CLI session, no delegation)
/ `DIY` (only by wrapping the CLI as an MCP server yourself) / `No` / `?`.

**Record:** how instances are paired and authenticated, whether the satellite can use
its local tools/files on behalf of the main app, and whether this works from mobile.
