# Triage criteria

_Last changed 2026-10-31. Criteria are a mix of general ones and ones specific to Daniel's use; each is tagged `general` or `daniel`, and with a priority weighting: `priority: top` (near the top of Daniel's list), `priority: high` (very important), otherwise normal._

Triage looks at two things per criterion: **whether** the feature exists, and **how**
it is implemented (e.g. remote vs local MCP, OAuth vs pasted key, per-chat vs global
enablement, bundled in a plugin vs configured by hand). The implementation note often
matters more than the yes/no.

A machine-readable copy with allowed values, suggested points and weights is in
[`criteria.json`](criteria.json), rendered as [`docs/evaluation-matrix.pdf`](docs/evaluation-matrix.pdf)
(weights and points are suggestions, not yet adopted). Keep both in step.

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

### Attribution (who scored it)

_Added 2026-10-31._ Every non-`?` score records who made it, in the scorecard's `By` column:

- `Daniel`: Daniel's own observation or call. The note is his, kept in his words where
  possible. Counts as confirmed.
- `Agent (<model>)`: researched by an AI agent, e.g. `Agent (Claude Opus 5.5)`. The
  source column says whether the vendor page was read (`confirmed`) or not (`assumed`).

Where both exist for one criterion, Daniel's score wins and the agent's finding goes in
the note (flag any contradiction rather than silently overriding). In the README matrix,
a cell scored by Daniel is suffixed `(D)`; unsuffixed cells are agent-researched.

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

## Criteria by category

IDs are stable identifiers and do not imply order. Within each category, criteria are
listed most important first. Category letters (A-H) are also used in the README matrix
and scorecards. When adding a criterion, give it the next free C number and place it
in a category.

- **A. Connector ecosystem**: C25, C01, C40, C23, C41, C42, C32, C33, C34, C02, C39
- **B. Google Workspace**: C03, C04, C05, C06, C07, C12
- **C. Multiple accounts per connector**: C08, C09, C10, C11
- **D. Connector usage and control**: C19, C20, C36, C43
- **E. Own infrastructure and local tools**: C31, C24, C30
- **F. Data ownership**: C26, C27, C28
- **G. Agents, projects and coding**: C35, C29, C22, C21, C37, C38
- **H. Clients and platforms**: C13, C14, C15, C16, C17, C18

## A. Connector ecosystem

What connectors exist, who gets them, and whether integration is the product's core.

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

### C40 Official connector directory: URLs (`general`)

_Added 2026-10-31. Companion to C01._

**Asks:** Does the vendor publish its connector/plugin library at an official URL a
human can browse, and a programmatic list (JSON or an API/registry endpoint) an agent
can read?

**Score:** `Both` / `Human only` / `JSON only` / `In-app only` (no public URL) / `None` / `?`.

**Record:** both URLs, whether the JSON needs auth, what fields it carries (name,
description, auth type, MCP URL), and whether it is official or a community mirror
(community mirrors are noted but do not count).

### C23 Custom MCP connections (`daniel`, `priority: high`)

**Asks:** Can the user add their own MCP server, not just pick from the catalogue?

**Score:** `Yes` / `Partial` (e.g. mode-gated, admin-only, read-only tools, desktop-only)
/ `No` / `?`.

**Record:** remote (URL) and/or local (stdio) servers; transports accepted (streamable
HTTP, SSE); auth supported (OAuth, bearer/API-key header, none); which tiers; which
clients (web, desktop, mobile: a server added on web may not work on Android); whether
an admin must approve it on business plans; any limits on tools per server.

### C41 Native private connectors (`daniel`)

_Added 2026-10-31._

**Asks:** Is there native support for private connectors: ones you or your org build
and use without publishing them to the public directory? How is it done?

**Score:** `Yes` (first-class private connectors, e.g. org-private directory entries or
unlisted apps, available to the people you choose) / `Partial` (only as a per-user
custom MCP URL, or only on business plans) / `No` / `?`.

**Record:** the mechanism (custom MCP URL, unlisted/draft app, org-private catalogue,
developer mode), who can create and who can see it, which tiers, auth options, and
whether it needs vendor review.

### C42 Plugin authorship and listing (`general`)

_Added 2026-10-31._

**Asks:** How does a third party get a connector/plugin listed in the official
directory?

**Score:** `Open submission` (anyone can submit; review then listing) / `Partner only`
(application, partnership or approved developers only) / `Closed` (vendor-built only)
/ `?`.

**Record:** the submission URL, requirements (MCP server, manifest, privacy policy,
security review, verified domain/business), typical review time if stated, fees or
revenue share, and whether individuals can publish or only companies.

### C32 Progressive tool discovery and tool limits (`daniel`)

_Added 2026-10-31._

**Asks:** Does the platform load every connected tool's definition into context up
front, or discover tools progressively (tool search, deferred loading, loading a
server's tools only when it is needed)? What limits apply to the number of tools?

**Why it matters:** an AI gateway exposes hundreds of tools. With eager loading, a
hard tool cap or context bloat makes that unusable; with progressive discovery it works.

**Score:** `Progressive` (native search/deferred loading) / `Eager, high limit` /
`Eager, low limit` / `?`.

**Record:** documented and observed limits (tools per server, per chat, total enabled
servers), what happens at the limit (error, silent truncation, tools dropped), and
whether progressive loading applies to custom MCP servers as well as catalogue ones.

### C33 Plugin packaging format (`daniel`)

_Added 2026-10-31._

**Asks:** How does the platform expect a plugin (a bundle of connectors/MCP servers,
instructions, skills, commands) to be packaged and declared? Is the format an open
standard or proprietary?

**Score:** `Standard` (an open, cross-vendor format, e.g. MCP server config, Agent
Skills `SKILL.md`, a documented manifest other tools also read) / `Documented
proprietary` / `Closed` (only the vendor or approved partners can publish) / `No
plugins` / `?`.

**Record:** the manifest file and schema (name, link to spec), what a plugin can
contain, whether it can be installed from a local path or Git URL, and whether the
same package works in another vendor's tool.

### C34 Custom marketplaces (`daniel`)

_Added 2026-10-31._

**Asks:** Can you add your own plugin marketplaces (catalogues/registries), beyond the
vendor's? Is there a limit to how many? What format must a marketplace be in?

**Score:** `Yes` (number allowed, or `Unlimited`) / `Partial` (e.g. admin-only, one
private catalogue on business plans) / `No` / `?`, plus `Standard` or `Proprietary`
format.

**Record:** how a marketplace is declared (Git repo with a manifest, JSON URL, MCP
registry API), the documented or observed limit on marketplaces, whether private
(authenticated) marketplaces work, and whether marketplaces sync across clients.

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

### C39 Subscription pricing and restrictions (`daniel`)

_Added 2026-10-31._

**Asks:** What does each consumer and business tier cost, and what usage restrictions
apply that affect agentic use (message/credit caps, connector or account caps, tool-call
or task limits, seat minimums, annual-only billing)?

**Score:** the cheapest tier that gets the connector features Daniel needs (C03-C12 at
their best level for that tool), with its monthly price, e.g. `Plus $20/mo`. `?` if
not found.

**Record:** every tier with price, currency and billing period as shown (note the
region/currency the page displayed; no US egress from this machine, so don't assume US
prices), what each tier unlocks for connectors, and the documented restrictions. Price
pages change often: always link the pricing page and the date read.

## B. Google Workspace

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

## C. Multiple accounts per connector

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

## D. Connector usage and control

How connectors are invoked and what stops them acting without you.

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

### C36 Autonomy modes and permission structure (`daniel`)

_Added 2026-10-31. Broader than C20: C20 is approval of connector calls; this is the
overall autonomy dial for everything the agent does (connectors, shell, files, browser)._

**Asks:** What levels of agent supervision are available, from fully supervised to
fully autonomous ("YOLO" / bypass permissions), and how is the permission structure
built?

**Score:** `Full range` (several named modes, from ask-for-everything to fully
autonomous, plus allow/deny rules) / `Partial` (e.g. supervised or autonomous, nothing
between; or rules without modes) / `Supervised only` / `Autonomous only` / `?`.

**Record:** the mode names (e.g. plan / ask / auto-accept edits / bypass), how rules are
expressed (per tool, per command pattern, per path, per connector), where they are
stored (user, project, admin-managed policy) and which layer wins, whether mode can be
switched mid-session, and whether chat app and CLI share the same model.

### C43 Team federation of plugin access (`daniel`)

_Added 2026-10-31._

**Asks:** On team/business plans, how is connector and plugin access federated:
can an admin add connectors once for the whole org, allowlist or block them, scope
them to groups, and decide whether each user authenticates individually or shares an
org credential?

**Score:** `Granular` (admin catalogue plus per-group/role scoping and allow/block
lists) / `Coarse` (org-wide on/off or allowlist only) / `None` (each user on their
own) / `N/A` (no team plan) / `?`.

**Record:** where admins manage it, whether SSO/SCIM groups drive access, per-user vs
shared (service) credentials, whether custom/private connectors can be pushed to all
members, audit logging, and which tier is needed.

## E. Own infrastructure and local tools

Reaching things you host: gateways, home network tools, your own servers.

### C31 Distributed deployments / satellites (`daniel`, `priority: top`)

_Raised to `priority: top` 2026-10-31, alongside C35 (delegation between instances is key)._

**Asks:** Is there built-in support for a network of deployments, e.g. the main app
here plus a CLI installed on a local server that acts as a subagent or satellite the
main app can delegate to?

**Score:** `Native` (official pairing of instances; main app can dispatch tasks to a
remote CLI/agent) / `Partial` (e.g. remote control of one CLI session, no delegation)
/ `DIY` (only by wrapping the CLI as an MCP server yourself) / `No` / `?`.

**Record:** how instances are paired and authenticated, whether the satellite can use
its local tools/files on behalf of the main app, and whether this works from mobile.

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

## F. Data ownership

Getting your data out and keeping memory under your control.

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

## G. Agents, projects and coding

Work that outlives a single chat: background agents, project boundaries, the companion coding product.

### C35 Agent-to-agent (A2A) support (`daniel`, `priority: top`)

_Added 2026-10-31._

**Asks:** Can the assistant talk to other agents as peers: call an external agent,
be called by one, and delegate tasks between its own instances? Does it support an
open agent-to-agent protocol (e.g. Google's A2A, now under the Linux Foundation) or
only a proprietary mechanism?

**Score:** `Standard A2A` (open protocol, as client and/or server) / `Proprietary`
(delegation works, vendor-only mechanism) / `Subagents only` (spawns its own
subagents within a task, no external agents) / `No` / `?`.

**Record:** direction (can call agents, can be called, both), which protocol and
version, auth between agents, whether delegated agents keep their own tools and
connectors, and how results come back. Links to C31 (delegation to satellite instances).

### C29 Background agents, scheduled tasks and reminders (`daniel`)

**Asks:** Can you create background or persistent agents that run tasks without an open
chat, and schedule future tasks and reminders? How are they held?

**Score:** `Yes` / `Partial` (e.g. reminders only, or tasks without connector access)
/ `No` / `?`.

**Record:** where they run (vendor cloud, your machine), whether they can use
connectors and custom MCP, how results and reminders are delivered (push, email, in
chat), limits on number/frequency, and whether they keep running when all clients are
closed. Links to C20 for approvals during background runs.

### C22 Project boundaries and where project data lives (`daniel`)

**Asks:** Can you define projects (workspaces) that bound context, files, instructions
and connectors? Is that project data synced to the cloud or kept locally?

**Score:** `Yes` / `Partial` / `No`, plus storage: `Cloud`, `Local`, `Both` (e.g. cloud
in the chat app, local in the CLI).

**Record:** what a project scopes (custom instructions, files, memory, chat history,
connectors enabled), whether memory leaks across project boundaries or can be isolated,
and whether projects sync across devices.

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

### C37 CLI working-directory binding (`daniel`)

_Added 2026-10-31. Applies to the vendor's CLI (C14, C21); `N/A` if there is none._

**Asks:** How tightly is the CLI bound to the directory it was launched in? Can it
read, write and run commands in arbitrary directories, or only inside the CWD tree?

**Score:** `Arbitrary` (any path, subject to permissions) / `Expandable` (CWD by
default; extra directories can be added per session or in config) / `Strict` (CWD
tree only) / `N/A` / `?`.

**Record:** whether the binding is enforced by the permission system or by a sandbox,
how extra directories are added (flag, command, config), whether project config and
memory are keyed to the CWD (and so lost when launched elsewhere), and whether it can
be run from `~` as a general assistant.

### C38 Native GitHub integration (`daniel`)

_Added 2026-10-31._

**Asks:** Is there a native, vendor-supported GitHub integration (connector or
built-in), rather than only a custom MCP server or the CLI calling `gh`?

**Score:** `Read-write` (can create/edit files, issues, PRs, commit) / `Read-only`
(search and read repos) / `Custom only` (only via a self-added GitHub MCP server) /
`No` / `?`.

**Record:** connector vs GitHub App vs OAuth, private repo access, org access, which
actions are supported, whether it works in chat, in the coding agent, or both, and
whether the cloud coding agent can open PRs.

## H. Clients and platforms

Priority: normal (no weighting given, 2026-10-31).

For C13-C15, score `Yes` only for an **official** vendor client. A community or
unofficial client scores `No`, with it named in the note (e.g. `No (community: AppImage
wrapper)`), since it may lag features or break. A PWA / "install the website" counts as
`No` with `PWA` noted for C14-C15, unless the vendor ships it as its official app for
that platform. C13 (Linux desktop) is the exception: a PWA is acceptable there (Daniel,
2026-10-31), but the score must say which it is.

**Type** = how it is distributed. Record every channel offered.

### C13 Linux desktop app (`daniel`)

**Score:** `Yes (native)` / `Yes (PWA)` / `No`. A PWA is acceptable here (Daniel,
2026-10-31) but must always be labelled as such, never as plain `Yes`. A tool with both
scores `Yes (native)` and notes the PWA too.

**Type** (native): `deb`, `rpm`, `AppImage`, `Flatpak`, `Snap`, `AUR`, `tarball`.
For `Yes (PWA)`, note how it installs (Chrome/Edge "Install app", vendor-provided
manifest) and anything it loses versus a native app (e.g. global hotkey, local MCP,
desktop dictation).

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
