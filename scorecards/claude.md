# Claude

Vendor: Anthropic (official Claude apps: web, desktop, mobile)
Classification: K01 Vendor / K02 Subscription / K03 SaaS
Status: candidate, not yet evaluated (added 2026-10-31).

Newest evaluation goes at the top. Do not edit an old evaluation; add a new dated one.

## Evaluation: 2026-10-31 (partial: groups B and C only)

- Date: 2026-10-31
- Tier evaluated: Free (Google connectors stated available to all users); Team/Enterprise need Owner enablement (from docs; per-row notes give tier detail)
- Evaluator: groups B and C researched by agent from vendor docs; rows marked `Daniel` are his own observations. Other groups not yet scored.

| ID | Criterion | Priority | Score | Implementation note | Source / confirmed vs assumed | By |
|----|-----------|----------|-------|---------------------|-------------------------------|----|
| | **A. Connector ecosystem** | | | | | |
| C25 | Purpose-built for integrations | top | ? | | | |
| C01 | Connector catalogue size | normal | ? | | | |
| C40 | Official connector directory: URLs | normal | Both | Human: claude.com/connectors. JSON: Anthropic MCP subregistry API, no auth (curl 200 2026-10-31). Fields: server.name, description, remotes[].url (transport), title, version; _meta com.anthropic.api/mcp-registry: uuid, slug, displayName, oneLiner, toolNames, isAuthless, worksWith, permissions, directoryUrl, documentation, publishedOn, visibility. | confirmed: https://api.anthropic.com/mcp-registry/v0/servers?version=latest&visibility=commercial | Agent (Claude Sonnet 5.5) |
| C23 | Custom MCP connections | high | ? | | | |
| C41 | Native private connectors | normal | Yes | Custom connectors need no directory listing or Anthropic review: Free/Pro/Max users add by remote MCP URL (Customize > Connectors); Team/Enterprise Owners add org-wide (Organization settings > Connectors > Add > Custom), members then click Connect. Auth: OAuth (Claude published identity/CIMD, DCR, or own client ID/secret), no sign-in, or request headers (API key; beta, limited orgs). Org plugins privately via GitHub/GitLab private repo or zip marketplace (Organization settings > Plugins & skills). Install-link URL can prefill dialog. Custom connectors are labelled Custom and never suggested. Local servers via plugins. | confirmed: https://claude.com/docs/connectors/custom/remote-mcp | Agent (Claude Sonnet 5.5) |
| C42 | Plugin authorship and listing | normal | Open submission | Remote MCP servers and plugins submitted via developer portal claude.ai/directory/manage (Submit new > MCP connector). Any paid Claude plan can submit (Team/Enterprise role rules: Owners by default). Requirements: HTTPS remote server, OAuth 2.0 for authenticated services, tool title + readOnlyHint/destructiveHint, docs URL, privacy policy, support contact, icon, reviewer test account, Anthropic Software Directory Terms/Policy; MCP Apps need 3-5 PNG screenshots. Local MCPB listings deprecated (use plugins). Review time and fees not stated on page read; no revenue share mentioned. Per-tenant URL listings need Verified label. | confirmed: https://claude.com/docs/connectors/building/submission.md | Agent (Claude Sonnet 5.5) |
| C32 | Progressive tool discovery and tool limits | normal | ? | | | |
| C33 | Plugin packaging format | normal | ? | | | |
| C34 | Custom marketplaces | normal | ? | | | |
| C02 | Connector access by subscription tier | normal | Free | Pricing page matrix: Connectors Yes on Free, Pro, Max, Ultra. Custom remote-MCP connectors on Free (limited to 1), Pro, Max, Ultra, Team, Enterprise. Team/Enterprise: Owner must enable first; only Owners add custom connectors on Team. | confirmed: https://claude.com/pricing | Agent (Claude Sonnet 5.5) |
| C39 | Subscription pricing and restrictions | normal | Free $0/mo | Free gets Gmail/Calendar/Drive connectors (RW) but single Google account (no multi-account) and no Contacts; those gaps are not unlocked by any tier. Workaround for more accounts/Contacts: third-party MCP as custom connector: Free limited to 1, so Pro $20/mo (or $17/mo annual, $200 up front) for several. Prices as shown for US/default per page; Anthropic says region currency/tax vary (claude.ai/upgrade). | confirmed: https://claude.com/pricing | Agent (Claude Sonnet 5.5) |
| | **B. Google Workspace** | | | | | |
| C03 | Google Workspace integration | high | Yes | Native Gmail, Calendar, Drive connectors (plus Docs/Sheets/Slides live-edit connectors); available to all users incl. free; Team/Enterprise Owner must enable first; docs do not distinguish personal vs Workspace (both assumed work) | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C04 | Google Drive access level | high | Read-write | Search/read Docs, Sheets, Slides, PDFs, Office files; upload any file, create folders, share, move, trash (approval by default); save generated files | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C05 | Gmail access level | high | Read-write | Search/read, draft, send, reply, forward, labels/threads; approval before send by default | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C06 | Gmail attachments | high | None | Attachment metadata only, not content; no send-with-attachment documented | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C07 | Google Contacts access level | high | None | No Google Contacts connector in the Google Workspace connectors article; only via custom MCP | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| C12 | Google Calendar access level | high | Read-write | Create/update/delete events, attendees, RSVP, recurring; views shared calendars | confirmed: https://support.claude.com/en/articles/10166901-use-google-workspace-connectors | Agent (Claude Sonnet 5.5) |
| | **C. Multiple accounts per connector** | | | | | |
| C08 | Multiple accounts per connector | top | No | Docs say Claude accesses 'the Google account you've connected' (singular), silent on multiples. Open feature request (2026-10-08) says a second account replaces the first. Workaround: add a third-party multi-account MCP as custom connector (paid tiers; Free limited to 1 custom). Matches Daniel's experience | assumed: https://claudeissues.com/issue/100407-feature-google-connectors-allow-more-than-one-google-account-per-claude-account | Agent (Claude Sonnet 5.5) |
| C09 | Profile naming / aliases | top | No | Custom connectors have user-chosen names, but built-in Google connector has a single profile; no alias feature | assumed: https://support.claude.com/en/articles/11176164-use-connectors-to-extend-claude-s-capabilities | Agent (Claude Sonnet 5.5) |
| C10 | Profile limit per connector | top | 1 | One Google account per connector per user; second sign-in replaces first (issue report, not vendor docs) | assumed: https://claudeissues.com/issue/100407-feature-google-connectors-allow-more-than-one-google-account-per-claude-account | Agent (Claude Sonnet 5.5) |
| C11 | Profile selection handling | top | N/A | N/A: only one account per connector (C08), so there is nothing to select or name. Original finding: ?, Only per-chat connector on/off toggle (+ > Connectors); no profile selection since one account | confirmed: https://support.claude.com/en/articles/11176164-use-connectors-to-extend-claude-s-capabilities | Agent (Claude Sonnet 5.5) |
| | **D. Connector usage and control** | | | | | |
| C19 | Connector invocation mode | normal | ? | | | |
| C20 | Human-in-the-loop controls | normal | ? | | | |
| C36 | Autonomy modes and permission structure | normal | ? | | | |
| C43 | Team federation of plugin access | normal | Granular | Connectors: Owners/Primary Owners enable per org at Organization settings > Connectors (Browse connectors > Add to your team), member request flow with approve/decline/block, org-wide read/write action restrictions, per-user auth by default; Enterprise-managed auth (beta) authorizes once for the whole org; custom connectors can use a shared credential (request headers). Connector access itself is org-wide, not per-group. Plugins (Organization settings > Plugins & skills; Owners, or Enterprise custom role with Libraries permission): per-plugin availability hidden/available/installed/required, Enterprise per-group overrides including SCIM-provisioned groups (group access is not a security boundary, most permissive wins). Granular overall, strongest on plugins. | confirmed: https://claude.com/docs/plugins/admin.md | Agent (Claude Sonnet 5.5) |
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

### Pricing and directory detail (C39, C40), read 2026-10-31

| Tier | Price | Currency | Period | Limits | Connectors |
|---|---|---|---|---|---|
| Free | 0 | USD as shown | month | Limited usage per 5 hours and per week; Projects up to 5; no Claude Code, no scheduled tasks, no Research | Connectors yes; custom connectors max 1 |
| Pro | 20 monthly / 17 effective annual ($200 up front) | USD as shown | month / year | 1x usage per 5h and weekly; Claude Code; scheduled tasks | Connectors + custom MCP |
| Max | 100 | USD | month | 5x Pro usage; $100/mo API credits; monthly billing only | Same |
| Ultra | 200 | USD | month | No 5-hour limit (verified accounts), 10x Pro weekly; $200/mo API credits | Same |
| Team Standard | 25 monthly / 20 annual | USD (US customers; varies by region) | per member per month | Min 2 members, up to 150; spend controls; usage credits purchasable | Owner enables connectors org-wide; admin controls; enterprise search |
| Team Premium | 125 monthly / 100 annual | USD | per member per month | More usage than Standard; min 2 members | Same |
| Enterprise (self-serve and sales-assisted) | not read | n/a | n/a | SSO, SCIM, audit logs | Org-wide enterprise-managed auth (beta) |

Prices as shown or documented on the date read; no US egress, so region may differ. Researched by Agent (Claude Sonnet 5.5).

- Directory (human): https://claude.com/connectors
- Directory (programmatic): https://api.anthropic.com/mcp-registry/v0/servers?version=latest&visibility=commercial (auth: None (curl 200); docs at https://api.anthropic.com/mcp-registry/docs; MCP registry-spec JSON with Anthropic _meta)

### Verdict

_TBD_
