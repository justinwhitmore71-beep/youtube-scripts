---
name: simple-proof-shorts
description: Produce research briefs, two script versions, fact-check sheets, scene plans and titles for The Simple Proof math/physics YouTube Shorts, in the exact file formats the Simple Proof Studio expects.
---

# The Simple Proof: Short production playbook

The Simple Proof is Justin's YouTube channel of 30 to 45 second math and physics Shorts in his own voice. Edge: simple explanations people actually learn from, without sacrificing accuracy. Audience: curious learners (students and science enthusiasts), always followable by a beginner. Tone: playful narration over calm, dark visuals.

Everything lives on Justin's PC under `C:\Users\Justin\Desktop\The Simple Proof\`:

- `channel\` brand.json, series.json, style_guide.md, topic_log.csv, topic_ideas.md
- `studio\` the Studio app (do not edit code from this playbook)
- `videos\<YYYY-MM-DD>_<series-slug>_<topic-slug>\` one folder per Short

Work through the linked computer's file tools. Never delete Justin's files. Write plain-text files only (Markdown, JSON, CSV).

## The stages and who does what

| # | Stage | Claude writes | Justin |
| --- | --- | --- | --- |
| 1 | Topic ideas | `channel\topic_ideas.md` (ranked) | picks one |
| 2 | Research | `01 RESEARCH\brief.md` | - |
| 3 | Two scripts + harsh review | `02 SCRIPT\script_A.md`, `script_B.md`, `review.md` | picks one |
| 4 | Fact-check | `02 SCRIPT\factcheck.md` | reads, ticks approval |
| 5 | Final script | `02 SCRIPT\script_final.md` (chosen version, Justin's edits kept) | edits, adds his `[MINE]` line |
| 6 | Scene plan | `04 SCENES\scene_plan.json` | approves the storyboard |
| 7 | Metadata + thumbnail | `06 EXPORT\metadata.md` (5 titles, paste-ready description), `06 EXPORT\thumbnail.png` | picks a title |
| 8 | Topic log | append a row to `channel\topic_log.csv` | - |

Create the folder with `studio\New Short.bat` or by making the six subfolders: `01 RESEARCH`, `02 SCRIPT`, `03 AUDIO`, `04 SCENES`, `05 RENDER`, `06 EXPORT`.

After writing files, ALWAYS run the checker and fix every FIX line before telling Justin a stage is done:
`python -m mwlab.shortcheck check "<video folder>"` (run from `studio`), or Justin drags the folder onto `Check video folder.bat`.

## 1. Topic ideas

Read `channel\topic_log.csv` first; never repeat a topic + angle already logged. Propose 8 to 10 ideas in `channel\topic_ideas.md` as a table: rank, series, topic, the hook in one line, **the core visual** (the one moving picture that explains it, in one sentence), **the template that draws it** (an existing one, or "NEW: <name>" to build first), why it's a good Short, difficulty to explain in 45 s (low/medium/high). Rank by: a counterintuitive or surprising core, a clean one-idea explanation, a strong visual, evergreen interest.

**No visual, no Short (learned 2026-10-16).** 39 Shorts built only from text scenes (opener, mascot, hook, equation, derivation, takeaway) were dropped: a geometry Short opened on a giant letter "w" and never showed the triangle it was about. Rules:
- Every Short animates its idea. Equations and derivations are words on screen, not visuals; they may support the animation, never replace it.
- If no template can draw the core visual, build the template (or a reusable kit piece) before writing the script, or drop the topic. Never fall back to text to hit a daily count.
- The first frame should show the subject itself when it is a thing (a shape, a board, dice, a chessboard), not a stand-in symbol.
- The checker blocks a Short with no visual scene and warns when visual scenes fill under 40% of the runtime. Mostly evergreen topics; occasionally a timely one (an eclipse, a science news story).

Series (exactly these names):
- **Brain Breakers**: a counterintuitive puzzle or paradox, solved.
- **One Equation**: one famous equation, built symbol by symbol.
- **Everyday Physics**: the physics hidden in daily life.

## 2. Research brief (`01 RESEARCH\brief.md`)

```
# Brief: <topic>

Series: <series>
Idea: <the one idea, one sentence>
Misconception: <what most people believe>
Hook angle: <the bold true statement that sounds wrong>
Narrowed to: <what is included / left out to fit 45 s>
Key condition to say aloud: <assumptions the answer depends on, if any>
Candidate sources: <list>
Originality: <how this is usually explained, and how ours differs>
Not used: <tempting claims left out and why (e.g. only one source)>
```

One Short = one idea. If it can't be explained clearly in 45 s, narrow it to a smaller slice.

## 3. Scripts (`02 SCRIPT\script_A.md`, `script_B.md`)

Two genuinely different versions (different hook or angle), same facts.

```
# Script A: <working title>
Series: <series>
Angle: <one line>
---
[HOOK] <bold statement>. {c1}
[MASCOT: <the viewer's doubt>] <line>
[EQUATION: <equation>] <line> {c2}
<line>
[TAKEAWAY] <one memorable sentence>
```

Rules (the checker enforces the first four):
- The header ends with a line `---`. Below it: ONE spoken sentence per line, in order.
- 60 to 85 spoken words, aim for about 75 (30 to 38 s at Justin's pace). Shorter Shorts get watched to the end; over 40 s means narrow the idea, never talk faster.
- Every factual claim carries a marker `{c1}`, `{c2}`... matching a row in factcheck.md. Markers and `[cues]` are not spoken.
- Shape: Hook (0 to 3 s, bold true statement, no greeting) -> Mascot question (the viewer's doubt) -> Explanation (animated: simulation, diagram or a topic template; an equation only alongside it) -> Takeaway (one memorable sentence). Write each explanation line so it describes what the viewer SEES at that moment. The logo sting is added by the scene plan, not the script.
- Short sentences, everyday words; define a technical term the first time it appears.
- Playful throughout: one or two light jokes or witty lines. Never mocking, never forced.
- Say conditions aloud ("for small swings", "if the host always knows").
- Simplify only when it doesn't mislead.
- Pronunciation notes in braces are allowed: `{Euler: OY-ler}`.
- Never use the banned phrases in `channel\style_guide.md` (e.g. "let's dive in", "mind-blowing", "in today's video").
- Don't copy another creator's explanation, wording or examples. The brief's Originality line says how ours differs.

## 3a. The model script: birthday paradox (Justin's favourite, 2026-10-09)

Compare every new script against this one. It works because it does five things:

1. **Names the wrong guess out loud.** The mascot says the viewer's instinct ("wouldn't you need about half of 365 people?"), so the answer lands as a reveal.
2. **Explains WHY the guess is wrong.** "That answers a different question: does anyone share YOUR birthday?" The mistake is diagnosed, not just corrected.
3. **Counts something concrete.** 23 × 22 ÷ 2 = 253 pairs: arithmetic a beginner can follow on screen.
4. **One sentence carries the why.** "Each pair has a one in 365 chance, but 253 pairs push the odds of a match to about 50.7%."
5. **States the assumption briefly.** "Equally likely birthdays and no leap years": honest without slowing down.

```
[HOOK] In a room of just twenty-three people, it's a coin flip that two share a birthday. {c1}
[MASCOT: Don't you need 183 people?] Wait, wouldn't you need about half of three hundred sixty-five people?
That answers a different question: does anyone share YOUR birthday?
[MINE] You see any two people can match, it is not just you.
[EQUATION: 23 × 22 / 2 = 253] Count the pairs: twenty-three times twenty-two, divided by two, makes two hundred fifty-three pairs. {c3}
Each pair has a one in three hundred sixty-five chance, but two hundred fifty-three pairs push the odds of a match to about fifty point seven percent. {c1} {c2} {c3}
That assumes equally likely birthdays and no leap years. {c2}
[TAKEAWAY] Count the pairs, not the people.
```

Before the harsh review, ask: does my script name the wrong guess, explain the mistake, count something concrete, and have one "why" sentence? If a topic has no common wrong guess, the hook's surprise must do that job instead.

## 3b. Harsh review (before Justin sees any script)

Justin asked for this after Monty Hall: that script gave the answer (1/3 vs 2/3) without the one sentence that makes it click. Grade BOTH scripts against the model script (3a) and these five tests and rewrite until each passes. Never hand over a script that fails one.

1. **The "why" test.** There is one sentence that explains WHY the result is true, not just WHAT it is. A viewer asked "why?" afterwards could answer in their own words. (Monty Hall's missing line: "your first pick has a 1 in 3 chance, so the other two doors share 2 in 3, and the host's reveal moves all of that 2 in 3 onto the one door he leaves closed.")
2. **No magic jumps.** Every line follows from the one before. An analogy (100 doors) must be followed by what it shows. A number on screen must be connected to where it came from.
3. **The first 2 seconds.** The hook would make a stranger stop scrolling: a bold, true, surprising statement. No warm-up.
4. **No hidden jargon.** Every technical word is explained the first time it appears ("bob", "wavelength", "probability"), or replaced with an everyday word.
5. **Every line earns its place.** Cut any line that doesn't move the idea forward, and spend the words on the "why" instead.

Write the result to `02 SCRIPT\review.md`:

```
# Harsh review: <topic>

| Test | Script A | Script B |
| --- | --- | --- |
| 1 Why | PASS: "<the why sentence>" | ... |
| 2 No jumps | PASS / FIXED: <what changed> | ... |
| 3 Hook | ... | ... |
| 4 Jargon | ... | ... |
| 5 Every line | ... | ... |

Still weak: <the honest weakest point of the chosen script, so Justin can push back before recording>
```

Any line added to fix a test is a claim like any other: give it a `{cN}` marker and fact-check it.

## 4. Fact-check (`02 SCRIPT\factcheck.md`)

```
# Fact-check: <topic> (both scripts)

| # | Claim | Source 1 | Source 2 | Status |
| --- | --- | --- | --- | --- |
| c1 | <claim exactly as used> | [<Source title>](<url>): "<exact supporting words>" | [<Source title>](<url>): "<exact supporting words>" | OK |

Notes: <derived numbers and how they were computed; caveats; what was left out>

Approved by Justin: [ ]
```

- Every `{cN}` in the scripts has a row. Two INDEPENDENT sources per claim (different sites or books; two pages of one site don't count).
- Each source cell = a link (or a book with page/section) AND the exact quoted words that support the claim. Open the page and copy the words; never quote from memory or a search snippet.
- Accepted sources: university textbooks (OpenStax, Feynman Lectures...), university course pages, peer-reviewed papers, official institutions (NASA, NIST, CERN, NOAA...), reputable references (Britannica, Wolfram MathWorld, Stanford Encyclopedia of Philosophy, HyperPhysics). NOT accepted: Wikipedia, blogs, forums, YouTube videos, AI answers.
- Simple Proofs series: a claim that is fully proven on screen (pure arithmetic or algebra the video shows step by step) may use Status PROOF instead of two sources; put the proof steps in the Source 1 column ("Proven on screen: ...") and leave Source 2 as "-". Any historical or factual claim (who discovered it, definitions, conventions) still needs two sources. Metadata Sources may then say "Proven on screen (pure math)".
- Status: OK (supported), PROOF (Simple Proofs only, see above), SOFTENED (reworded to what sources support: say so in Notes), CUT (removed from the script), DISPUTED (genuinely unresolved science: the script must say it's unresolved and present the main views fairly).
- Numbers shown in animations (speeds, probabilities, simulation parameters) are claims too.
- Derived numbers (e.g. 2π√(1/9.8) = 2.0 s) cite the formula's sources and show the arithmetic in Notes.
- Only Justin ticks `Approved by Justin: [x]`. Never tick it yourself. Recording is blocked until he does.

## 5. Final script (`02 SCRIPT\script_final.md`)

After Justin picks A or B: copy it to `script_final.md` (same format; header may add `Status:`), apply his edits exactly, and keep his own line marked `[MINE]` at the start of that line. If he hasn't written his line yet, leave a clearly marked placeholder for him and say so. Never invent a line and mark it `[MINE]` as if he wrote it.

## 6. Scene plan (`04 SCENES\scene_plan.json`)

```json
{"script": "script_final.md", "scenes": [
 {"id": "s1", "template": "hook", "line": 1, "duration": 3.2, "beats_on": ["switching"],
  "text": "Switching doors doubles your chance of winning.", "highlight": ["doubles"]},
 {"id": "s7", "template": "sting", "duration": 0.9}
]}
```

- Scenes follow the script in order. `line` = the script line number (1 = first line under `---`) or `[first, last]`. Every line should be covered.
- First scene: an `opener`, or a visual template that draws the subject from the first frame (learned 2026-10-10: a black first frame and small corner text lost ~68% of viewers in the feed; learned 2026-10-16: a giant symbol is the wrong opener for a topic about a shape or object, show the object). The first spoken line is a question the viewer wants answered, optionally followed by its one-line answer. Last scene: always `sting` (no `line`, no `beats_on`, duration 0.9).
- `beats_on` = the spoken word on which each step appears, one word per step, each word spoken in that scene's lines. Pick the word that NAMES the thing appearing (say "mass" when the mass appears). The number of steps per template is below; the checker enforces it.
- `duration` = estimated seconds for those lines (words / 2.6). Milestone 5 replaces it with real timings.
- Colors are roles, never hex: `key` (lime: the key quantity), `answer` (coral: the answer), `text`, `muted`. Lime always marks the key quantity; coral always the answer.

### Templates (params, and how many beats each needs)

| template | params | beats |
| --- | --- | --- |
| opener | FIRST SCENE OF EVERY SHORT. `big` (giant symbol, short: "1", "0.999...", "45?", "8% of 50"), `text` (the question, under ~45 characters), `highlight`, `answer`, `tag` (coral stamp, optional: "NOPE", "= 1"). Full screen from frame 0, no fade-in; the symbol pulses; the stamp lands on the beat | 1 |
| hook | `text`, `highlight` [words -> lime], `answer` [words -> coral], `sub` (smaller second line, optional) | 1, or 2 with `sub` |
| mascot | `question` (the viewer's doubt, under ~40 characters) | 2 (mascot, bubble) |
| equation | `parts` [LaTeX pieces, appear one by one], `roles` {index: key/answer/muted}, `notes` {index: short meaning}, `title` (optional) | len(parts), +1 with `title` |
| graph | `function` (in x, e.g. `"9.8*x"`; math names only), `x_range`, `y_range`, `x_label`, `y_label`, `curve_role`, `highlight` {x, label, role} (optional) | 2, or 3 with `highlight` |
| diagram | `items`: [{type: arrow/line/circle/dot/rect/label, from/to/at [x,y], radius, text, role, size, label_side}] on a 10 x 10 grid, (0,0) bottom-left | len(items) |
| simulation | `kind`: fall {objects [{label, drag, role}], height}, pendulum {length, angle}, projectile {v0, angle}, orbit {speed_factor}; `g`; `caption` (optional) | 1, or 2 with `caption` |
| takeaway | `text`, `highlight`, `answer` | 1 |
| derivation | `steps` [{tex, note (short, optional), role}]: each line morphs out of the one above, older lines dim; `box` true frames the last line; `size` | len(steps), +1 with `box` |
| bars | `bars` [{label, value, role}], `max`, `prefix` ("$"), `suffix`, `decimals`: bars grow with counting numbers | len(bars) |
| squares | `n` (1 to 7): odd numbers wrap L-shapes into a growing square, running sum morphs | n |
| zoomgap | `labels` (left end at each x10 zoom, e.g. ["0.9","0.99","0.999"]), `right` ("1"), `gaps` (readouts), `final` (merged label), `final_gap`: zooms into the gap between two numbers, then closes it | len(labels) + 1 |
| anglesum | (none): triangle angles a, b, c; parallel line through the top; a and b half-turn up to the top; a + b + c = 180° | 5 |
| sumsquare | `a`, `b` (small whole numbers): square of side a+b, then the a×a corner, the b×b corner, the two a×b rectangles, then the total | 5 |
| decimalstack | `rows` (decimals lined up on the point), `show` (rows per beat, e.g. [6, 3]), `total`, `label`: column addition built row by row, then the sum | len(show) + 1 |
| uturn | `a`, `b`: number line; a hops of b; each minus sign spins the arrows around 0 (U-turn counter); answer boxed | 4 |
| dotgrid | `rows`, `cols` (people as dots), `hits`, `false`, `labels` (5 captions): everyone; real cases turn coral; they get a ring; false alarms light up lime; all positives line up | 5 |
| plot | Calculus workhorse. `function` (in x), `x_range`, `y_range`, `x_label`, `y_label`, `tex` (the curve's name, shown in the side column), `curve_role` (default text), `numbers` (true: numbered axes), `steps` (see "plot steps" below) | len(steps) |
| transform | Linear algebra workhorse: the whole plane moves under a 2x2 matrix. `matrix` [[a, b], [c, d]] (rows), `range` (grid units from the centre to the nearest content edge, default 4), `steps` (see "transform steps" below) | len(steps) |
| geo | Geometry kit: shapes that move. `steps` (see "geo steps" below), `setup` (steps on screen from frame 0, no beat: use it to OPEN a Short with the subject itself), `title` (+ `highlight`/`answer`, opener-style words on top from frame 0), `range` (units from the centre to the nearest edge, default 4), `center` | len(steps) |
| sting | (none) | 0 |
| cannon | Newton's cannon with real inverse-square gravity (Earth radius 1). `shots` [{speed (fraction of orbit speed: under 1 lands, 1 orbits), caption, caption_role, role} or {caption_only: true, caption}], `mountain` (default 0.12), `orbit_seconds` | len(shots) |
| race | Balls slide (frictionless) from A to B, timed from v = sqrt(2gh). `tracks` [{kind: line/cycloid/dive, label, role, power}], `width`, `drop` (m), `g`, `slow` (slow-motion factor) | 3 (tracks, release, finish times) |
| pairs | Birthday paradox: people arrive on a ring, each new one draws a line to everyone; readouts people / pairs / exact chance two share. `stops` (people after each beat), `days` | len(stops) |
| doors | Monty Hall: doors with 1/3 each; your pick + "2/3" brace; host opens a goat, the 2/3 lands on the shut door; 1,000 seeded games with stay/switch tallies. `games`, `seed`, `labels` (4) | 4 |
| galton | Galton board, seeded: one ball's zig-zag, then the pour into bins, then the bell curve. `rows`, `balls`, `seed`, `labels` (4) | 4 |
| spintop | Gyroscope in 3D: `stages` from fall, spin, gravity, push, precess (default all); `labels` (one per stage), `precess_seconds` | len(stages) |
| boomerang | `stages` from loop (top view), side (side-on, spinning), speeds (forward ± spin arrows), lift (more/less lift, "tips over?"), turn (top view with turning arrow); `labels` | len(stages) |
| elevator | Einstein's elevator: `stages` from boxes (Earth box + rocket box), drop (same fall inside), outside (floor rushes up), light (beam curves inside; dashed = straight outside); `labels`, `bend` | len(stages) |

### plot steps (one per beat; a plain string like `"curve"` means `{"do": "curve"}`)

The axes are on screen from the first frame. Widescreen: plot on the left, a column on the right for readouts, notes and curve names. Shorts: plot on top, column below (room for about 3 rows).

| step | what it does |
| --- | --- |
| `curve` | draws the function (if no `curve` step is listed, the curve is on screen from the start). With its own `function` (+ `role`, `tex`, `name`, `from`, `to`) it adds a second curve, e.g. the derivative, or the right half of a jump. Scene param `domain` [a, b] limits the main curve the same way |
| `point` {x, guides} | a dot on the curve at x (`guides`: dashed lines to the axes). A second `point` slides the dot instead |
| `move` {to} | slides the dot to x = to; everything attached follows (tangent, secant, area, trace, readouts) |
| `tangent` {length} | tangent line at the dot (role key) |
| `secant` {h, name} | the line through x and x + h, with the rise and run drawn dashed. h can be negative (a secant to the left); give two secants different `name`s to show both |
| `shrink` {h, name} | shrinks the (latest or named) secant's h (e.g. to 0.01): the secant becomes the tangent |
| `zoom` {x, y, factor} / `unzoom` | the camera zooms in on the point (10 = ten times closer; repeat to go further) and back out; lines keep their thickness, so a smooth curve visibly turns straight |
| `hole` {x, y} | an open circle: a point missing from the graph |
| `area` {from, to} | shades the area under the curve; `to: "point"` makes its right edge follow the dot |
| `riemann` {from, to, n, sample} | n rectangles (sample left/right/mid); a later `riemann` with a bigger n morphs into more, thinner bars |
| `band` {y, eps} / `vband` {x, delta} | epsilon band (lime) / delta band (coral) for limits; repeating it with a smaller eps or delta animates the squeeze |
| `trace` {of: slope or area, from, tex} | a coral dot that draws the derivative (or the running integral) as the point moves |
| `readout` {what, label, decimals, name} | live number in the column: x, y, slope, secant, h, area, sum, epsilon, delta (secant and h follow the latest secant, or the one named in `name`) |
| `note` {tex or text, role} | a line in the column (an equation or a short sentence) |
| `label` {tex or text, at: [x, y]} | text placed on the plot itself, in the plot's coordinates |
| `hide` {what} | fades out a named piece: point, tangent, secant, area, riemann, band, vband, trace, curve, note3... |

### transform steps

The grid is on screen from the first frame unless a `grid` step draws it in. Colours: i-hat lime, j-hat coral, and the matrix columns match them (column 1 = where i-hat lands). The matrix panel, readouts and notes stack in the top-left corner.

| step | what it does |
| --- | --- |
| `grid` | draws the grid in |
| `basis` | grows i-hat and j-hat |
| `vector` {v, tex, role, name} | an extra vector (default white) that moves with the plane |
| `circle` {radius} | the unit circle (or radius r), moving with the plane: a symmetric matrix turns it into an ellipse along its eigenvectors |
| `area` | shades the unit square; it becomes the parallelogram whose area is the determinant |
| `matrix` {matrix, tex} | shows the matrix (the scene's, or a new one) in the corner |
| `eigen` {matrix, vectors} | dashed eigenvector lines with their lambda; vectors on them only stretch when the plane moves. Error if the matrix only rotates (no real eigenvectors) |
| `apply` {matrix, max_run} | the plane moves under the matrix (the scene's, or a new one: applies compose) |
| `inverse` | undoes everything applied so far |
| `det` | live readout of the determinant (signed: negative means the plane flipped) |
| `note`, `label` {at, follow}, `hide` | as in plot; `at` is in the original grid's units (it stays put), or with `follow: true` the label moves with the plane |

Layout tips (learned from previews):
- Equation `parts`: split where the narration names things (`"T"`, `"="`, `"2\\pi\\sqrt{\\frac{L}{g}}"`). Escape backslashes in JSON. Keep `notes` short (under ~30 characters).
- Diagram: labels are about 5 to 7 grid units wide at the default size. Keep at least 1.5 units between labels and arrows; put vertical arrows near an edge (x around 8.5) so labels on the left don't collide.
- Simulation physics is computed from the real equations; parameters must match the script and fact-check (e.g. a 1 m pendulum, angle under 15 degrees for the small-swing formula).
- Hook `text` is what's on screen: a punchy version of the spoken line, under ~60 characters.

### geo steps (geometry kit; one per beat, any step may also carry `"note": "..."` to swap the caption line under the drawing, and `"hide": [names]` to clear old things first)

Units: (0, 0) is the middle of the drawing; `range` units reach its nearest edge. Points are `[x, y]`, or `"name.k"` (corner k of a shape, from 0), or `"name"` (its centre).

| step | what it does |
| --- | --- |
| `shape` {name, kind, role, fill, at, draw: create/fade, on_ground} | kinds: `circle` {radius}, `triangle`/`square`/`regular` {n, side or radius}, `reuleaux` {width, n odd}, `rect` {w, h}, `polygon` {points: where it sits; it turns about its own centre}, `staircase` {radius, steps per quarter: the pi = 4 fake} |
| `arc` {arcs: [{center, from, to, long}], role} | a compass arm sweeps each arc in turn |
| `fill` {name, role, fill, hide} | fills a shape, can fade others out |
| `rollers` {name, kind circle/reuleaux, width, count, ground, role} | a plank riding on rollers along the ground (stays level for any constant-width roller); `roll` {speed} starts all rollers moving, `stop` stops |
| `spin` {name, speed deg/s, on_ground} | keeps turning a shape between beats; with on_ground it turns while resting on the ground |
| `rotate` {name, angle, on_ground} | one turn by `angle` degrees |
| `move` {name, to or by, turn} | slides (and turns) a shape or a rollers group |
| `morph` {name, into: shape spec} | reshapes, e.g. staircase steps 2 -> 4 -> 12, circle -> reuleaux |
| `calipers` {name, tex, axis h/v, spin, on_ground} | two parallel lines touching the shape, redrawn every frame (constant width: they never move) |
| `drill` {name, speed, trace, centre, role} | (added 2026-10-16) the shape turns while its lowest AND leftmost points stay pinned: a constant-width shape turns inside a fixed square touching all four sides; `trace` (default true) lets its corners draw the hole, `centre` draws the small loop its centre makes |
| `measure` {from, to, tex/text, offset, side} | dimension arrow with a label |
| `rollout` {names, roles, grounds, froms, turns} | shapes roll one full turn along tracks; the track left behind IS the perimeter |
| `unroll` {name, at, tex} | the outline straightens into a segment of the same length |
| `line` {from, to, dashed}, `dot` {at}, `label` {at, text/tex, follow}, `note` {text/tex} | marks and words |
| `indicate` {name}, `zoom` {at, scale}, `unzoom`, `hide` {what}, `wait` | emphasis, camera, clean-up |

Example (the rolling-triangle Short, `videos\2026-10-15_simple-proofs_the-triangle-that-rolls-like-a-circle\04 SCENES\scene_plan.json`): the hook opens on two lanes of rollers, circles and Reuleaux triangles, both planks perfectly level; then the triangle, compass arcs, the radius w, the shape spinning between calipers; then both shapes roll one turn and end at the same mark (perimeter = pi w).

After writing the plan, run the checker, then render a preview: Justin drags `scene_plan.json` onto `Preview scenes.bat` (or `python -m mwlab.visuals "<plan>" --preview`). Look at `05 RENDER\storyboard.png` yourself if you can open it, and fix overlaps or crowding before asking Justin to approve. Any `WARNING ... outside safe zone` must be fixed.

## 7. Metadata (`06 EXPORT\metadata.md`)

```
# Metadata: <topic>

## Titles
1. <option>
2. <option>
3. <option>

## Description
<2 to 4 plain sentences: the idea and the condition it depends on>

## Sources
- <Source title>: <url>

## Hashtags
#Shorts #<subject> #<topic>
```

5 numbered titles (since 2026-10-17; older videos had 3), each under 100 characters, curiosity-driven but never misleading (the title must be true). Sources = every source in the fact-check.

Then a section `## YouTube description (paste this)` with ONE code block Justin copies straight into YouTube: the description, a blank line, `Sources:` with each source on its own line, a blank line, the hashtags.

**Thumbnail, every time (Justin's rule, 2026-10-17: never skip it).** Write `06 EXPORT\thumbnail.json` and run `python -m mwlab.thumbnail "<video folder>"` (from `studio`) to make `06 EXPORT\thumbnail.png` (1080x1920, channel look: two lines of Sora caps on top, white then lime; the subject drawn in the middle; a tilted coral stamp; one short white line at the bottom). The format is documented at the top of `studio\mwlab\thumbnail.py`. Open the PNG and look at it before saying done. The checker shows a FIX for any video created from 2026-10-17 on that lacks the thumbnail, the 5 titles or the paste-ready description.

## 8. Topic log

Append to `channel\topic_log.csv`: `date,series,topic,angle,status` (status: drafted / published).

## Quality bar before saying "done"

- Harsh review written to `02 SCRIPT\review.md`, all five tests passed, with an honest "Still weak" line.

- Checker: no FIX lines (CHECK lines explained to Justin).
- Every claim has two independent, quoted sources; nothing in the script goes beyond what they support.
- A beginner could explain the idea back after one viewing.
- Storyboard previewed with no overlaps and no safe-zone warnings.
- Tell Justin plainly what is ready, what needs him (pick a version, add his line, tick approval, approve storyboard), and anything uncertain.


## Long-form videos (added 2026-10-10)

- Series "Long Form"; scene_plan.json has `"format": "long"` (1920x1080, 30 fps). Every template adapts; `chapter` (num, total, title) and `checklist` (items, mode reveal/tick) are made for long-form.
- Script: 950 to 1,600 words (about 8 to 11 min at Justin's pace), one sentence per line, chapters of 120 to 220 words, the mascot heckles about once per chapter (light, dry humor). Exactly one [MINE] line.
- No burned-in captions: upload 06 EXPORT\captions.srt in YouTube Studio (Subtitles). Music runs 6 dB quieter than in Shorts.
- Make video writes 06 EXPORT\chapters.txt (YouTube chapter timestamps) from the `chapter` scenes plus any scene with `outro_chapter`; paste it into the description.
- Record the whole script in one go; pause and simply repeat any line you fumble (the editor keeps the best take).

## Deep Dives (added 2026-10-16)

- Eight playlist series, each a YouTube playlist of the same name: Calculus, Unlocked; Linear Algebra From Scratch; Probability & Statistics Playbook; Numbers That Run the Universe; The Edge of Known Math; Physics Beyond the Classroom; Topology & Shape; Computer Science, Mathematically. Each week every playlist gets one "most searched" video and one niche, university-level one (The Edge of Known Math is niche only).
- 5 to 7 minutes: 650 to 1,000 words at Justin's pace (the checker enforces it). Widescreen: scene_plan.json has `"format": "long"` (the checker enforces it). Same chapters, captions.srt and quieter music as Long Form.
- Show, don't tell: text-only scenes (opener, hook, mascot, takeaway, chapter, checklist) may fill at most 25% of the runtime (the checker counts it; for comparison the six-rules Long Form video was 55%). Every key idea should be on screen as a moving object: `plot` for calculus, `transform` for linear algebra, `derivation` for algebra, `diagram`/`simulation` otherwise.
- "Long Form" stays the series for the rare standalone videos that fit no playlist.
- Fact-check: worked math shown step by step on screen may use Status PROOF (as in Simple Proofs); definitions, theorems and history still need two quoted sources.
- Both versions come ready to record: `04 SCENES\scene_plan_A.json` and `scene_plan_B.json` are written with the scripts, and `Compare scripts.html` shows both versions side by side, and `Choose A.bat` / `Choose B.bat` (they ask first) copy the chosen script to script_final.md and its plan to scene_plan.json. Each script header suggests a line for Justin's [MINE] rewrite that no animation depends on.

## Playlists (since 2026-10-11)
Every metadata.md starts with a "## Playlist" section. Series -> playlist: Simple Proofs and Long Form -> "Simple Proofs: Math Rules, Proven"; Brain Breakers -> "Paradoxes & Brain Breakers"; Everyday Physics -> "Everyday Physics"; One Equation -> "One Equation". What Computers Can't Do -> "What Computers Can't Do" (computer science, since 2026-10-15); The Universe, Explained -> "The Universe, Explained" (astronomy, since 2026-10-15). Each Deep Dive series -> the playlist with the same name (since 2026-10-16). Mix target per 10 Shorts: 4 math, 3 physics, 2 CS, 1 astronomy (see the Phase 2 Plan doc).
- Recording in parts (2026-10-16): Choose A/B.bat (and every Make video run) writes 03 AUDIO\RECORDING GUIDE.txt and read_part1.txt, read_part2.txt ... (part 1 = intro, then one part per [CHAPTER]). Justin saves each take as part1.wav, part2.wav ... (mp3/m4a/flac also fine); Make video joins them in order with a 0.6 s pause. To redo a part, replace that one file.

## Physics and chance kits (added 2026-10-16)
- New templates in `studio\mwlab\visuals\kits.py`: cannon, race, pairs, doors, galton, spintop, boomerang, elevator (table above), plus the geometry kit's `drill` step. Each draws its picture from the real equations or a seeded random run, so numbers on screen match the fact-check (say the seed and results in its Notes).
- spintop, boomerang and elevator take `stages`, so one picture can be split: e.g. the first stage under the hook, the rest after the mascot.
- Originals before this change: `_backup_2026-10-16_before_new_kits`.

## Rule for Studio changes (2026-10-17)
When a change adds a new kind of input (a new recording type, a new folder or file the pipeline reads), update EVERY place that looks for it in the same change: `panel.py` (the status the Studio window shows), `shortcheck.py` (the checker) and `makevideo.py`/`facecam.py` (the pipeline). Then run `python tests\test_recording_detect.py` and open the Studio on a real folder to confirm the status shows it. Learned when the face cam update taught Make video to read OBS .mkv takes but the panel still said "not recorded yet".

## Face cam in long-form videos (2026-10-18)
- Same as Shorts: record each part in OBS (webcam + Rode mic) and save part1.mkv, part2.mkv ... in 03 AUDIO (mp4 works too). Use one kind for the whole video (all webcam takes or all audio). The RECORDING GUIDE says this.
- When a long-form folder has a webcam take, every scene leaves a strip on the circle's side empty (circle size + 40 px), so the circle never covers graphs, readouts or labels. Nothing to do in the scene plan; the storyboard and Make video both apply it. `"face": "off"` in scene_plan.json switches the face cam (and the strip) off.
- Circle: 300 px, bottom-right, lime ring; hidden while the atom speaks, like Shorts. Change size/corner in channel\facecam.json under "long".
- Faculty Lounge sketches (Euler, Gauss...): Justin is NEVER on screen during a sketch (his rule, 2026-10-18). Mark every sketch scene in scene_plan.json with `"sketch": true`; Make video hides the circle for those scenes automatically (`"face": false` on any scene does the same). The face cam shows only in the math segments he narrates on camera.

## Face cam rule: Justin and the atom are never on screen together (2026-10-18)
The circle hides for the whole time the atom's scene is on screen, and the atom's scene is never held into Justin's next line (the hold-the-last-step rule skips mascot scenes). Learned when the atom stayed 0.4 s into "Join the point..." and the circle came back early, showing both for about 0.9 s. Beat words also match singular/plural now ("distances" heard as "distance").

## Circle-chords kit (added 2026-10-22): template `chords` (studio\mwlab\visuals\kits2.py)
Points on a circle (or marks on two edges, `"mode": "axes"`) joined by a rule. Params: `n`, `angles` (regions: irregular degrees so no three chords meet), `numbers` (label the dots), `title`/`highlight`/`answer`, `setup` (steps done at frame 0), `steps` (one per beat):
| step | what it does |
| --- | --- |
| `points` | the dots (or the two edges with their marks) appear |
| `rule` {mult, from, count, role, run} | chords i -> mult x i (mod n), swept in |
| `lines` {role, run} | axes mode: mark i joined to mark n - i (string art) |
| `curve` {mult, role} | the exact envelope over the chords: cardioid (mult 2), nephroid (3)..., or the parabola in axes mode |
| `clear` | fades the chords |
| `add` {k, text, role} | regions: dots up to k, every pair joined, every region coloured (vector polygons; neighbours differ); caption "k points: R regions"; errors if the angles hide a region |
| `crossings` {text, role} | lights up every crossing point of the current chords |
| `note` {text, role} | caption under the picture |
Thumbnails: `thumbnail.py` now draws characters Sora lacks (π, fractions, arrows) in IBM Plex Sans on the same baseline, and shrinks stamps that are too wide.

## Drops and grid kits (added 2026-10-22): templates `drops` and `grid` (studio\mwlab\visuals\kits3.py)
- `drops` (kind `darts` or `needles`): random items rain onto a board with a live "π ≈" readout. The run is SEEDED (`seed`, `total`), so the numbers in the script and fact-check come from the exact run the viewer sees. Steps: `board`, `drop` {n, run}, `note`. Set `readout: false` for explaining scenes with only a few items (small counts give silly estimates).
  - darts: circle inside a square, estimate 4 x inside / thrown. needles: 4 boards, needle length = board width, estimate 2 x needles / crossings.
  - Before writing numbers into a script, compute them from the seed (the generator does this) and say "this run", never "always".
- `grid` (mode `spiral` or `orchard`):
  - spiral steps: `spiral` {size, labels, primes, dim, build}, `diag` (soft highlight on the main diagonal 1, 3, 7, 13, 21...), `note`. size up to ~101 without labels; labels only up to 9.
  - orchard steps: `orchard` {m, visible}, `ray` {through, to} (line of sight from the corner, first tree lime, hidden ones coral), `note`.
- Thumbnails for these use plain dots/lines/polygons in thumbnail.json (no manim needed).

## Billiards and spirograph kits (added 2026-10-22): templates `billiards` and `spiro` (studio\mwlab\visuals\kits4.py)
- `billiards` (w, h whole numbers): steps `table` {w, h}, `shoot` {run} (ball at 45 degrees from the bottom-left corner, path and ball move together, end pocket lights coral), `unfold` {run} (grid of reflected tables, one straight diagonal), `note`. A table is drawn automatically if setup has none.
- `spiro` (R ring teeth, r gear teeth, pen = pen distance as a share of the gear radius, default 0.75): steps `ring`, `draw` {laps, run} (full drawing by default: r / gcd laps), `gear` {r} (new gear, clears the drawing), `hide_gear`, `note`. Petals = R / gcd(R, r).
- Coprime gears give very dense drawings: give `draw` a long run (5 s+), and let a caption carry the petal count.

## Evening batch tools (added 2026-10-22)
geo kit, three new steps (one beat each):
- `shapes` {items: [shape specs], draw: fade/create}: several shapes appear together.
- `moves` {items: [{name, to | by, turn}], max_run}: several shapes slide/turn to their OWN targets together (e.g. torn corners closing a full turn). `to` is the shape's centre (mean of its points); to put a wedge's tip at a point after turning it, use the generator helper `place()` in `_incoming\_claude_tmp\b2\c2.py`.
- `labels` {items: [{name, at, text or tex, role, size}]}: several labels at once (digits, grids of numbers).

New templates:
| template | file | what it draws | steps |
| --- | --- | --- | --- |
| clock | kits5.py | clock hands on fast-forward; coral mark + counter at every meeting (every 12/11 h) | face, run {to, run}, note |
| squarewheel | kits6.py | square wheel on a road of upside-down catenary humps; axle stays level | road, roll {bumps, run}, back, level, note |
| coins | kits6.py | coin rolling on a flat line (1 turn) or around an equal coin (2 turns), arrow + turn counter | flat, around {laps, run, done}, note |
| ladder | kits6.py | ladder sliding down a wall, midpoint trail (quarter circle) | slide {to, run}, box, radius, circle, note |
| cup | kits6.py | top view of a rolling paper cup; both ends trace circles around the cone tip | cup, roll {turns, run}, note |
| solid | kits7.py | simple 3D: kind cube (shadow outline; `turn {diagonal: true}` gives the hexagon), cubelets (painted 3x3x3, explode, highlight {faces}), mobius (walk {laps}: the ant comes back upside down), globe (triangle, angles) | show, turn {yaw, pitch, run}, shadow, explode, highlight, walk, triangle, angles, note |

thumbnail.json polygons can now take `"outline": "<role>"` (outline colour different from the fill).

## Pivot step (added 2026-10-24)
geo kit: `pivot` {name, about, angle (default 180), max_run} or {items: [{name, about, angle}]}: turns shapes about a FIXED point (not their own centre), e.g. a half turn about the middle of a side, so the copy visibly swings into place. `about` is [x, y] or "shape.k". Used in videos\2026-10-24_simple-proofs_every-four-sided-shape-tiles (generator: _incoming\_claude_tmp\tile\s_tile.py). Original geometry.py in _backup_2026-10-24_before_pivot.
