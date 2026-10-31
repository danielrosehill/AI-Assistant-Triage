// Evaluation matrix: renders ../criteria.json.
// Build: typst compile --root .. docs/evaluation-matrix.typ docs/evaluation-matrix.pdf
//   (run from the repo root: typst compile --root . docs/evaluation-matrix.typ)

#let data = json("/criteria.json")
#let accent = rgb("#1f4e79")
#let muted = rgb("#5a6470")
#let rule = rgb("#c9d1da")

#set document(title: "AI Assistant Triage: evaluation matrix", author: "Daniel Rosehill")
#set page(
  paper: "a4",
  margin: (x: 2cm, top: 2.2cm, bottom: 2cm),
  footer: context [
    #set text(8pt, fill: muted)
    AI Assistant Triage · evaluation matrix · criteria as of #data.updated
    #h(1fr) #counter(page).display("1 / 1", both: true)
  ],
)
#set text(font: "IBM Plex Sans", size: 9.5pt, lang: "en")
#set par(justify: false, leading: 0.6em)
#show raw: set text(font: "IBM Plex Mono", size: 8pt)
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(below: 0.8em, text(16pt, weight: "bold", fill: accent, it.body))
}
#show heading.where(level: 2): it => block(above: 1.2em, below: 0.6em,
  text(12pt, weight: "bold", fill: accent, it.body))

#let weights = data.scoring.weights
#let prio-badge(p) = {
  let (bg, label) = if p == "top" { (rgb("#b03a2e"), "TOP ×3") }
    else if p == "high" { (rgb("#d68910"), "HIGH ×2") }
    else { (rgb("#7f8c8d"), "NORMAL ×1") }
  box(fill: bg, inset: (x: 4pt, y: 2pt), radius: 2pt,
    text(7pt, weight: "bold", fill: white, label))
}
#let tag-badge(t) = box(stroke: 0.5pt + muted, inset: (x: 4pt, y: 1.5pt), radius: 2pt,
  text(7pt, fill: muted, t))

#let fmt-points(p) = if p == none { text(fill: muted, "excluded") } else { str(calc.round(p, digits: 2)) }

#let json-repr(c) = {
  let vals = c.score.values.map(v => v.value)
  let q = c.score.at("qualifier", default: none)
  let lines = (
    "\"" + c.id + "\": {",
    "  \"value\": " + vals.map(v => "\"" + v + "\"").join(" | ") + ",",
  )
  if c.score.type == "count_band" or c.score.type == "price" {
    lines.push("  \"raw\": <" + c.score.record + ">,")
  }
  if q != none {
    let qv = q.at("values", default: none)
    lines.push("  \"" + q.name + "\": " + if qv == none { "<string>" } else { qv.map(v => "\"" + v + "\"").join(" | ") } + ",")
  }
  lines.push("  \"note\": <string>, \"source\": <url | \"observed by Daniel, YYYY-MM-DD\">,")
  lines.push("  \"evidence\": \"confirmed\" | \"assumed\", \"by\": \"Daniel\" | \"Agent (<model>)\"")
  lines.push("}")
  raw(lines.join("\n"), lang: "jsonc", block: true)
}

#let criterion(c) = block(breakable: false, width: 100%, above: 1em, below: 1em,
  stroke: (left: 2pt + accent), inset: (left: 8pt, y: 2pt))[
  #text(11pt, weight: "bold")[#c.id #h(4pt) #c.name]
  #h(6pt) #prio-badge(c.priority) #h(3pt) #tag-badge(c.tag)

  #grid(columns: (3.1cm, 1fr), row-gutter: 0.55em, column-gutter: 6pt,
    text(weight: "bold", fill: muted)[Evaluates], c.asks,
    text(weight: "bold", fill: muted)[Based on], c.basis,
    text(weight: "bold", fill: muted)[Suggested weight],
      [#weights.at(c.priority) (priority: #c.priority)],
    text(weight: "bold", fill: muted)[Score values],
    table(
      columns: (auto, auto, 1fr), stroke: 0.4pt + rule, inset: (x: 5pt, y: 3pt),
      fill: (_, y) => if y == 0 { rgb("#eef2f6") },
      table.header([*Value*], [*Points*], [*Meaning*]),
      ..c.score.values.map(v => (
        raw(v.value),
        fmt-points(v.points),
        text(fill: muted, v.at("meaning", default: v.at("range", default: ""))),
      )).flatten()
    ),
    ..if c.score.at("note", default: none) != none {
      (text(weight: "bold", fill: muted)[Note], text(fill: muted, c.score.note))
    },
    text(weight: "bold", fill: muted)[Record as], json-repr(c),
  )
]

// ---------- Title ----------
#align(left)[
  #v(1cm)
  #text(24pt, weight: "bold", fill: accent)[AI Assistant Triage]
  #v(-0.4em)
  #text(15pt)[Evaluation matrix: criteria, basis, weights and data format]
  #v(0.4em)
  #text(fill: muted)[Criteria as of #data.updated · #data.criteria.len() scored criteria in #data.groups.len() groups · generated from `criteria.json`]
]

#v(0.6cm)

== How to read this

Each criterion below shows *what it evaluates*, *what the score is based on* (the evidence
an evaluator must record), its *suggested weight*, the allowed *score values* with
suggested points, and how a score is *recorded* programmatically. Criteria are listed
alphabetically by name within each group. IDs (`C01`–`C43`) are stable and do not imply order.

#block(fill: rgb("#fdf2e9"), inset: 8pt, radius: 3pt, width: 100%)[
  *Status:* #data.status_of_weights_and_points
]

== Suggested scoring

#table(columns: (auto, 1fr), stroke: 0.4pt + rule, inset: 5pt,
  [*Weights*], [`top` = #weights.top, `high` = #weights.high, `normal` = #weights.normal. #data.scoring.weights_basis],
  [*Points*], [0 to 1 per value, best value = 1. `?` and `N/A` are excluded, not scored 0.],
  [*Tool score*], [#data.scoring.formula],
  [*Group score*], [#data.scoring.group_score],
  [*Qualifiers*], [#data.scoring.qualifier_note],
)

== Every score also records

- *Value*: one of the allowed values for the criterion.
- *Note*: a one-line implementation note (the _how_ often matters more than the yes/no).
- *Source*: a link, or "observed by Daniel, YYYY-MM-DD". Required for every non-`?` value.
- *Evidence*: `confirmed` (tested, or current vendor docs read) or `assumed`.
- *By*: `Daniel` or `Agent (<model>)`. Daniel's observation wins; contradictions are flagged in the note.
- At scorecard level: evaluation date (`YYYY-MM-DD`) and plan/tier evaluated.

== Groups at a glance

#table(columns: (auto, 1fr, auto, auto), stroke: 0.4pt + rule, inset: 5pt,
  fill: (_, y) => if y == 0 { rgb("#eef2f6") },
  table.header([*Group*], [*Criteria (alphabetical)*], [*Count*], [*Weight sum*]),
  ..data.groups.map(g => {
    let cs = data.criteria.filter(c => c.group == g.id).sorted(key: c => lower(c.name))
    (
      [*#g.id* #g.name],
      text(8.5pt, cs.map(c => c.id + " " + c.name).join(" · ")),
      str(cs.len()),
      str(cs.map(c => weights.at(c.priority)).sum()),
    )
  }).flatten()
)

// ---------- Criteria ----------
#for g in data.groups [
  = #g.id. #g.name
  #text(fill: muted, g.summary)
  #for c in data.criteria.filter(c => c.group == g.id).sorted(key: c => lower(c.name)) {
    criterion(c)
  }
]
