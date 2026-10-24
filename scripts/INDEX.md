# Script index

Running index of Simple Proof Shorts drafts. Each written topic has a folder `scripts/<number>-<slug>/` laid out like `Examples/` (brief, script A/B, review, fact-check, metadata, status.json, licenses.csv, Choose A/B.bat, Compare scripts.html). Numbers are never reused; skipped topics keep their number so they are not tried again by accident.

**Status key**
- `DRAFT: awaiting fact-check approval`: every claim has two quoted sources (or PROOF in Simple Proofs). Justin ticks `Approved by Justin` in `02 SCRIPT/factcheck.md` before recording; it is left unticked on purpose.
- `NEEDS SOURCES`: script written, but at least one fact-check row is missing its second source (named in the notes). Do not record until it is fixed.
- `SKIPPED: NEEDS SOURCES`: no folder; the topic could not be sourced in the session that tried it. Retry when the sources below are reachable.

**How these were sourced (read this before approving)**
- The session's network policy blocked direct access to NASA, ESA, NIST, gps.gov, university sites, arXiv and journals. The only reachable sources were open textbooks that publish their full text on GitHub: OpenStax (Rice University), OpenIntro, APEX Calculus, Mooculus (Ohio State), Judson's *Abstract Algebra: Theory and Applications*, Levin's *Discrete Mathematics*, Poldrack's *Statistical Thinking for the 21st Century*.
- Every link in a fact-check points to the source file that was actually opened and read. Every quote was checked word for word against that file by a script; maths markup in the sources appears as plain text in the quotes (e.g. `c2` for c², `103` for 10³).
- Many claims rest on two different OpenStax books. The playbook allows "different books", but they come from the same publisher; where that matters it is said in the notes.

**Where the brief and PLAYBOOK.md differ (PLAYBOOK.md wins)**
- Length: the playbook says 60 to 85 spoken words and the brief says 75 to 115, so every script is 75 to 85 words: inside both ranges.
- Titles: 5 per Short (playbook), which includes the brief's 3.
- Series names: "Cosmic Math" is filed as **The Universe, Explained**, the playbook's astronomy series.
- `[MINE]`: as in the example, each script header names a suggested line for Justin to rewrite and mark `[MINE]` in `script_final.md`. No line is pre-marked `[MINE]`, because the playbook forbids marking a line Justin did not write.
- Pinned comment: not in the playbook; added as a last section `## Pinned comment (suggested)` at the end of `06 EXPORT/metadata.md`.

**Not done in these folders (later stages, need the Studio on Justin's PC)**
- No `04 SCENES` scene plans, no thumbnail, no `03 AUDIO/read_this.txt`, and the Studio checker (`mwlab.shortcheck`) was not run. `Choose A/B.bat` will print a "file not found" line for the missing scene plan, but still copies the script.
- `script_final.md` is a copy of the recommended version, as in the example. The Choose .bat files can swap it.
- `channel/topic_log.csv` and `channel/style_guide.md` are not in this repo, so topics were not checked against already-published Shorts, and the banned-phrase check used only the brief's three phrases. Check the topic log before recording.

**Self-check run on every batch:** spoken words in range, script format (header ending `---`, `[HOOK]` first, `[MASCOT: ...]` second, an `[EQUATION: ...]`, `[TAKEAWAY]` last, one sentence per line), suggested `[MINE]` line present, no banned phrases, every `{cN}` marker has a fact-check row, two independent quoted sources per claim (or PROOF in Simple Proofs), quotes verified against the opened source, 5 titles under 100 characters, pinned comment present, approval box unticked.

## Batches
- Batch 1 (2026-10-24): the 10 requested topics in order (001 to 010); 4 of them skipped for sources and replaced with 011 to 014 so the batch has 10 written scripts. Mix of the 10 written: 3 Simple Proofs, 3 Brain Breakers, 2 One Equation, 2 The Universe, Explained. No Everyday Physics this batch: the one requested (GPS) could not be sourced.
- Batch 2 (2026-10-24): own topics 015 to 024, using the brief's weekly mix scaled to 10: 3 Simple Proofs (015 to 017), 3 Brain Breakers (018 to 020), 1 One Equation and 2 Everyday Physics (021 to 023), 1 The Universe, Explained (024). All ten fully sourced. Topics considered and dropped for sources: Earth's spin you can't feel, sizes of infinity, lightning-before-thunder, drinking straws, rainbows' 42°.
- Batch 3 (2026-10-24): own topics 025 to 034: 3 Simple Proofs (025 to 027), 3 Brain Breakers (028 to 030), 1 One Equation and 2 Everyday Physics (031 to 033), 1 The Universe, Explained (034). Dropped for sources: why the Moon and Sun look the same size (the diameters are in one book only), the doubling penny, Earth's spin.

| # | Title | Series | Category | Words (A / B) | Status | Folder / notes |
| --- | --- | --- | --- | --- | --- | --- |
| 001 | Why i × i = −1: it's a quarter turn | Simple Proofs | math | 85 / 83 | DRAFT: awaiting fact-check approval | [001-i-is-a-quarter-turn](001-i-is-a-quarter-turn/) |
| 002 | Where e comes from (it's in your bank account) | One Equation | math | 84 / 85 | DRAFT: awaiting fact-check approval | [002-where-e-comes-from](002-where-e-comes-from/) |
| 003 | Why the night sky is dark (Olbers' paradox) | The Universe, Explained | astronomy | - | SKIPPED: NEEDS SOURCES | Only source reachable: an exercise question in OpenStax College Physics 2e §34.1 that states the paradox; no reachable source explains the resolution (finite age of the universe / light travel time). NASA, ESA and university pages were blocked by the session's network policy. |
| 004 | Earth as a black hole: 9 mm from centre to edge | The Universe, Explained | astronomy | 83 / 85 | DRAFT: awaiting fact-check approval | [004-earth-as-a-9mm-black-hole](004-earth-as-a-9mm-black-hole/) |
| 005 | Benford's law: why 1 is the most common first digit | Brain Breakers | math | - | SKIPPED: NEEDS SOURCES | One source only: OpenStax Contemporary Mathematics §7.5 (1 is 'about 6 times as likely' as 9 as a first digit). No second source for the law or its log10(1 + 1/d) form could be opened (MathWorld, journals and university pages blocked). |
| 006 | Better at both, worse overall: Simpson's paradox | Brain Breakers | math | 83 / 84 | DRAFT: awaiting fact-check approval | [006-simpsons-paradox](006-simpsons-paradox/) c3 is invented arithmetic marked PROOF outside Simple Proofs: Justin to confirm. |
| 007 | Zeno's paradox: infinite steps, finite trip | Brain Breakers | math | 84 / 83 | NEEDS SOURCES | [007-zenos-paradox](007-zenos-paradox/) c1 (what Zeno argued) has one source (OpenStax Introduction to Philosophy); needs a second. The maths (c2, c3) has two. |
| 008 | Why moving clocks tick slower | One Equation | physics | 85 / 85 | DRAFT: awaiting fact-check approval | [008-light-clock-time-dilation](008-light-clock-time-dilation/) |
| 009 | GPS clocks and relativity drift | Everyday Physics | physics | - | SKIPPED: NEEDS SOURCES | The key numbers (about -7 and +45 microseconds/day, net +38) are in one source only: OpenStax Astronomy 2e §24.4. No reachable book gives the gravitational time-dilation formula to derive the 45, and gps.gov / NIST / papers were blocked. |
| 010 | The golden angle, 137.5 degrees | Simple Proofs | math | - | SKIPPED: NEEDS SOURCES | 360/φ² ≈ 137.5° can be proven on screen, but no reachable source says plants use the golden angle (phyllotaxis); the only plant claim found (OpenStax Calculus Vol. 2 §5.1, sunflower spirals 'always' Fibonacci) overstates it. Fails the 2-source test for the claim that makes it interesting. |
| 011 | Why 0! = 1 (not 0) | Simple Proofs | math | 85 / 80 | DRAFT: awaiting fact-check approval | [011-why-zero-factorial-is-one](011-why-zero-factorial-is-one/) |
| 012 | Add 1 m to a rope around Earth: it lifts 16 cm | Brain Breakers | math | 84 / 85 | DRAFT: awaiting fact-check approval | [012-rope-around-the-earth](012-rope-around-the-earth/) |
| 013 | Astronauts get 90% gravity. So why do they float? | The Universe, Explained | astronomy | 85 / 85 | DRAFT: awaiting fact-check approval | [013-astronauts-float-in-90-percent-gravity](013-astronauts-float-in-90-percent-gravity/) Check topic_log.csv: may overlap an earlier Newton's-cannon or elevator Short. |
| 014 | Why anything to the power 0 is 1 | Simple Proofs | math | 83 / 83 | DRAFT: awaiting fact-check approval | [014-why-anything-to-the-zero-is-one](014-why-anything-to-the-zero-is-one/) |
| 015 | Why the primes never run out | Simple Proofs | math | 84 / 85 | DRAFT: awaiting fact-check approval | [015-primes-never-run-out](015-primes-never-run-out/) |
| 016 | Why the digit trick for 9 works | Simple Proofs | math | 82 / 85 | DRAFT: awaiting fact-check approval | [016-why-the-nines-digit-trick-works](016-why-the-nines-digit-trick-works/) |
| 017 | Add 1 to 100 in five seconds | Simple Proofs | math | 83 / 83 | DRAFT: awaiting fact-check approval | [017-add-one-to-a-hundred-fast](017-add-one-to-a-hundred-fast/) |
| 018 | Why a poll of 1,000 people works for a whole country | Brain Breakers | math | 85 / 85 | DRAFT: awaiting fact-check approval | [018-why-a-poll-of-1000-works](018-why-a-poll-of-1000-works/) |
| 019 | Why tails is never 'due' | Brain Breakers | math | 85 / 85 | DRAFT: awaiting fact-check approval | [019-gamblers-fallacy](019-gamblers-fallacy/) |
| 020 | Why the worst scorers improve even if you do nothing | Brain Breakers | math | 83 / 84 | DRAFT: awaiting fact-check approval | [020-regression-to-the-mean](020-regression-to-the-mean/) |
| 021 | Twice the speed, four times the braking distance | One Equation | physics | 82 / 85 | DRAFT: awaiting fact-check approval | [021-twice-the-speed-four-times-the-braking](021-twice-the-speed-four-times-the-braking/) |
| 022 | Why a skater spins faster with arms in | Everyday Physics | physics | 81 / 83 | DRAFT: awaiting fact-check approval | [022-why-a-skater-spins-faster](022-why-a-skater-spins-faster/) |
| 023 | Why a thrown ball and a dropped ball land together | Everyday Physics | physics | 82 / 81 | DRAFT: awaiting fact-check approval | [023-thrown-and-dropped-land-together](023-thrown-and-dropped-land-together/) |
| 024 | The Sun you see is 8 minutes old | The Universe, Explained | astronomy | 82 / 76 | DRAFT: awaiting fact-check approval | [024-sunlight-is-eight-minutes-old](024-sunlight-is-eight-minutes-old/) |
| 025 | Why a polygon's outside angles always add to 360° | Simple Proofs | math | 83 / 84 | DRAFT: awaiting fact-check approval | [025-exterior-angles-always-360](025-exterior-angles-always-360/) |
| 026 | Why you can't divide by zero | Simple Proofs | math | 80 / 82 | DRAFT: awaiting fact-check approval | [026-why-you-cant-divide-by-zero](026-why-you-cant-divide-by-zero/) |
| 027 | Down 50%, up 50%, and you're still down 25% | Simple Proofs | math | 85 / 85 | DRAFT: awaiting fact-check approval | [027-down-50-up-50-still-down](027-down-50-up-50-still-down/) |
| 028 | Why one rich person wrecks the average | Brain Breakers | math | 85 / 84 | DRAFT: awaiting fact-check approval | [028-mean-vs-median](028-mean-vs-median/) c3 is invented arithmetic marked PROOF outside Simple Proofs: Justin to confirm. |
| 029 | Why moving together doesn't mean causing | Brain Breakers | math | 76 / 79 | DRAFT: awaiting fact-check approval | [029-correlation-is-not-causation](029-correlation-is-not-causation/) c3 is an invented illustration marked PROOF outside Simple Proofs: Justin to confirm. |
| 030 | Why a doubling pond is half covered the day before | Brain Breakers | math | 84 / 83 | DRAFT: awaiting fact-check approval | [030-half-full-the-day-before](030-half-full-the-day-before/) c3/c4 are arithmetic on an invented example marked PROOF outside Simple Proofs: Justin to confirm. |
| 031 | Why the Sun gets 4 million tons lighter every second | One Equation | physics | 84 / 85 | DRAFT: awaiting fact-check approval | [031-the-sun-gets-lighter-every-second](031-the-sun-gets-lighter-every-second/) |
| 032 | Why bridges have gaps in them | Everyday Physics | physics | 84 / 80 | DRAFT: awaiting fact-check approval | [032-why-bridges-have-gaps](032-why-bridges-have-gaps/) |
| 033 | Why a steel ship floats but a steel bolt sinks | Everyday Physics | physics | 85 / 83 | DRAFT: awaiting fact-check approval | [033-why-steel-ships-float](033-why-steel-ships-float/) |
| 034 | Why we always see the same side of the Moon | The Universe, Explained | astronomy | 82 / 84 | DRAFT: awaiting fact-check approval | [034-why-we-see-one-side-of-the-moon](034-why-we-see-one-side-of-the-moon/) c3 is a geometric thought experiment marked PROOF outside Simple Proofs: Justin to confirm. |
