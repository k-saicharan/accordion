# Accordion
### Scriptment-First, Director-Led

## Personal Note

This workflow was built by a solo director — no team, working entirely from vision. The scriptment came first, scenes were drafted one by one, and somewhere in that process something unexpected happened: the screenplay started changing the scriptment. The writing forced a reckoning with what the story actually was, and the prose went back to reflect it. The pipeline runs both ways.

The Accordion Method turned out to be a place to think as much as a place to draft. Locking an Action Summary and reading it back reveals what you actually believe about a scene — not just what you planned. That analytical layer wasn't designed in. It emerged from using the process.

If you're building your first screenplay, working without a team, or coming to this from the direction side rather than the writing side — this was made in that spirit. The process will meet you wherever your story is.

---

A plug-and-use AI skill for developing a feature screenplay from a prose scriptment. The skill handles translation, formatting, and continuity discipline. You handle every creative decision.

---

## What This Is

A workflow for turning a prose scriptment into a formatted screenplay using an AI drafting agent — scene by scene, under your authority at every step.

The AI's role is **translation**, not authorship. You write the emotional truth in prose. The AI converts it into camera language, formats it in Fountain syntax, and keeps continuity across scenes. You lock every beat before anything is drafted. You author dialogue. The AI formats what you give it.

## What This Is Not

- Not a script generator. The AI does not generate scenes from a prompt.
- Not a co-writer. The AI does not invent story logic or dialogue.
- Not a final draft tool. This is a drafting workflow — the output is a working draft, not a polished script.
- Not dependent on a specific AI platform. Any AI agent that can read files and follow multi-step instructions can run this skill.

---

## Core Philosophy

**Truth lives in prose before it lives in screenplay format.**

Write the scriptment first. A full script would be even more helpful. Not bullet points. A full narrative prose document that captures the emotional logic, body language, subtext, and world of the film in non-technical language. Everything downstream is a translation of that document.

The scriptment is not frozen. It informs the screenplay, and the screenplay informs it back. Both documents evolve together. The execution log records every moment they diverged and why.

---

## How to Install

**Step 1 — Install the `/accord` command (once)**

```bash
curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/install.sh | bash
```

This places `/accord` in `~/.claude/commands/` so it's available in Claude Code from any project.

**Step 2 — Scaffold a new screenplay project**

Navigate to your project folder, then:

```bash
curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/new-project.sh | bash
```

This creates the full folder structure, downloads `Workflow.md` and `mission.md`, and generates empty source files with a pre-filled `session_primer.md` template.

**Step 3 — Fill in your source material**

- `session_primer.md` — project context (tone, world, continuity rules)
- `mission.md` — current phase and scene state
- `00_source_material/scriptment.md` — your prose scriptment
- `00_source_material/outline.txt` — scene structure
- `00_source_material/dialogue_log.txt` — confirmed verbatim dialogue (can start empty)

**Step 4 — Start a session**

Open the project folder in Claude Code and type `/accord`.

---

## The Accordion Method

Every scene follows a six-step sequence. The name describes the motion: expand (gather vision), compress (confirm it), expand (write the scene).

**Step 1 — Ingestion.** The AI reads the scene's outline entry, scriptment section, and any confirmed dialogue. Then it surfaces a read of the scene and asks 1–2 clarifying questions. It stops and waits for you.

**Step 2 — Directorial Dump.** You provide the vision: camera movements, blocking, emotional intent, visual effects. The AI receives. It does not lead or pre-fill.

> If you ask the AI to propose the vision instead, it will ground the proposal entirely in the source material and the visual language of scenes already drafted — never in generic filmmaking convention. Treat any proposal as raw material for you to override, not a vision to approve. If you don't react strongly, discard it and lead yourself.

> If you provide part of the vision, the AI contributes the rest. It merges both, presents the full picture, and confirms before proceeding.

**Step 3 — Action Summary.** The AI produces a bulleted list of every beat, every camera move, every transition, in order. You can see the whole scene from this list without reading the formatted script. It stops and waits.

**Step 4 — Lock.** You say "locked" or "yes." Nothing is drafted before this step. Enthusiasm is not a lock.

**Step 5 — Draft.** The AI writes the scene in Fountain format, using verbatim dialogue from the dialogue log exactly as written.

**Step 6 — Log.** The AI appends a full entry to the execution log before the session ends.

---

## The Execution Log (This is the most important part of the project as it helped me to analyse my work and improve it.)

The execution log is not a progress tracker. It is a **record of why**.

Over the course of a full screenplay, the log accumulates decisions that are invisible in the final script files:

- **Structural decisions.** Why a scene was cut. Why a new scene was added. Why two scenes were combined into one file.
- **Draft rejections.** When a first draft was wrong — wrong register, wrong logic, wrong voice — the log records what failed and why. The director's correction is logged alongside the failure.
- **Director authorship.** When you wrote a line yourself and locked it, the log marks it explicitly. The distinction between sourced text (from the dialogue log), constructed text (built from subtext and confirmed), and director-authored text (written by you, formatted by AI) is preserved.
- **Director additions.** When you added a detail not in the source material — a prop, a camera position, a timing note — the log marks it as a director addition. This matters for knowing what belongs to the source and what belongs to the directorial interpretation.
- **Downstream consequences.** When a decision in one scene required revisions to another scene, the log records the chain.

Without the log, the screenplay exists but its reasoning does not.

### The Somatic/Camera Translation

The scriptment writes in **felt experience.** The screenplay requires **camera language.** The translation between these two modes is the central creative act of this workflow.

Every execution log entry includes a somatic/camera translation section that records:
- What the scriptment said (the felt quality, in the prose's own words)
- What physical/visual equivalent was chosen
- Why that specific choice serves the emotional argument

Examples of this translation in practice:

| Scriptment | Camera equivalent | Why |
|---|---|---|
| "The room has the quality of a held breath" | Static wide shot, no movement, held for 8 seconds | Motion would release the tension; the stillness performs the breath |
| "He disappears into himself" | Camera stays on his back; no reverse to his face | The absence of face is the content — we are locked out with everyone else |
| "The sounds arrive before she does" | Cut to sound before picture; 2-second gap | Her presence is felt before it is visible — the body registers threat ahead of the eye |

This section is mandatory for every scene. It is where the creative reasoning lives, and it is the record that separates a translation from a transcription.

---

## On Dialogue

The dialogue log holds confirmed verbatim lines for scenes that have them. Many scenes — particularly visual, action, or silent scenes — will have none. This is expected.

When a scene needs dialogue that has no scripted source, **you author it.** The AI formats what you give it. The AI does not generate dialogue unilaterally. The log marks every line the director wrote themselves.

---

## On the Outline

The outline is authoritative on structure but is not permanent. During development, scenes may be cut by director decision, new scenes may be added as story logic demands, and numbering may shift. Every change is logged with the reason. The reconciled outline is the authoritative version.

---

## On the Scriptment

Write it before anything else. The scriptment should capture:
- The emotional logic of every scene
- Subtext and body language (what isn't said aloud)
- The world's texture — sounds, smells, quality of light — in non-technical language
- Character psychology

Do not write it as a technical document. Write it as if you are describing a film you have already seen. The AI will figure out the camera language. Your job is to capture what the film feels like.

The more complete your source material, the faster you move. A scriptment is enough to begin. A full script lets you focus entirely on achieving your vision — the structure is already decided, and every session becomes pure translation and also a process of discovery.

Both paths work: complete the script first and move through the screenplay with full clarity, or build the script and the screenplay in parallel, letting each inform the other. The only requirement is that you arrive at each session with your story and your vision in some form. The workflow cannot supply those. It can only serve them.


---

## File Structure

```
[project_root]/
│
├── Workflow.md                 ← The skill file. The AI's operating instructions.
├── session_primer.md           ← Project context. Read first, every session.
├── mission.md                  ← Current phase, scene state, and session protocol.
│
├── 00_source_material/         ← Read-only during drafting.
│   ├── scriptment.md
│   ├── outline.txt
│   └── dialogue_log.txt
│
├── 01_scenes_drafted/          ← Output. One .fountain file per scene.
│
└── 02_verification_artifacts/
    └── execution_log.md        ← The authoritative decision record.
```

The `.claude/commands/accord.md` file lives in this repo and enables the `/accord` slash command in Claude Code. Copy it to your project's `.claude/commands/` folder during setup.

---

## Key Principles

1. **Start from prose.** The scriptment is where the emotional truth lives. Translate it — don't replace it.
2. **The director authors.** The AI formats and translates. Dialogue is never drafted by the AI without the director's authorship.
3. **Lock before drafting.** The Accordion Method is non-negotiable. Nothing is written before the director confirms the Action Summary.
4. **The dialogue log is a ceiling, not a floor.** Use verbatim lines when they exist. When they don't, the director writes.
5. **The outline is authoritative but not permanent.** Scenes can be cut, added, or renumbered. Every change is logged with the reason.
6. **The scriptment is a living document.** It informs the screenplay, and the screenplay informs it back.
7. **Log every session.** The execution log is the record of why. Without it, the screenplay exists but its reasoning does not.

---

## Caution

The Accordion Method is designed to keep the director in authority at every step. The biggest risk is letting the AI's proposals feel like decisions.

When the AI produces an Action Summary, it is a summary of what you told it. When the AI proposes a vision (AI-led dump variant), it is a proposal, not a vision. The lock step exists precisely because enthusiasm for a proposal is not the same as authoring it. Take the time to read the Action Summary. Change what is wrong. Lock what is yours.

The execution log is what makes this recoverable. If a scene goes in a direction you didn't intend, the log tells you exactly where the translation diverged from your intent, and why.

---

